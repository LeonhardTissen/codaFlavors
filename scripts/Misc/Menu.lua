-- This code is taken from Reclassify and is heavily modified

local CodaFlavorsMenu = {}

local clientActionBuffer = require "necro.client.ClientActionBuffer"
local customActions = require "necro.game.data.CustomActions"
local characterSelector = require "necro.client.Lobby"
local objectEvents = require "necro.game.object.ObjectEvents"
local ecs = require "system.game.Entities"
local event = require "necro.event.Event"
local health = require "necro.game.character.Health"
local inventory = require "necro.game.item.Inventory"
local menu = require "necro.menu.Menu"
local netplay = require "necro.network.Netplay"
local player = require "necro.game.character.Player"
local playerList = require "necro.client.PlayerList"
local object = require "necro.game.object.Object"
local stateControl = require "necro.client.StateControl"
local sound = require "necro.audio.Sound"
local components = require "necro.game.data.Components"

local color = require "system.utils.Color"
local gfx = require "system.gfx.GFX"
local utils = require "system.utils.Utilities"

-- Component on all Coda Flavors characters defining the menu position and explanation
components.register {
    CodaFlavors_menu = {
		components.field.int("order", -1),
		components.field.string("explanation", "No explanation")
	},
}

function CodaFlavorsMenu.perform(playerID, entityType)
	if playerID and entityType then
		clientActionBuffer.addAction(playerID, clientActionBuffer.findAvailableTurnID(), CodaFlavorsMenu.ID, 0, {
			type = entityType,
		})
	end
end

local function destroySlot(holder, slot, keepItems)
	local itemList = inventory.getItemsInSlot(holder, slot)
	for i = 1, #itemList - (keepItems or 0) do
		object.delete(itemList[i])
	end
end

local function enforceSlotCapacity(holder, slot)
	local capacity = inventory.getSlotCapacity(holder, slot)
	if capacity then
		return destroySlot(holder, slot, capacity)
	end
end

local function replaceIfUncursed(holder, item)
	if item and item.itemSlot then
		local slot = item.itemSlot.name
		if not inventory.isCursedSlot(holder, slot) then
			enforceSlotCapacity(holder, slot)
			inventory.drop(item)
			inventory.add(item, holder)
		end
	end
end

local function handleAction(playerID, entityType)
	local oldEntity = player.getPlayerEntity(playerID)
	if oldEntity and oldEntity.position then
		-- TODO probably switch to conversion instead
		local newEntity = object.spawn(entityType, oldEntity.position.x, oldEntity.position.y, {
			health = {health = oldEntity.health and oldEntity.health.health or 1},
			grooveChain = oldEntity.grooveChain and {
				multiplier = oldEntity.grooveChain.multiplier,
				killCount = oldEntity.grooveChain.killCount,
			} or nil,
			grooveChainImmunity = {idle = true},
			gameObject = { tangible = oldEntity.gameObject.tangible },
			spectator = oldEntity.spectator and { active = oldEntity.spectator.active } or nil,
			killable = oldEntity.killable and { dead = oldEntity.killable.dead } or nil,
			respawn = oldEntity.respawn and { pending = oldEntity.respawn.pending } or nil,
			descent = oldEntity.descent and {
				active = oldEntity.descent.active,
				complete = oldEntity.descent.complete,
				type = oldEntity.descent.type,
			} or nil,
		})

		player.setControlledEntity(playerID, newEntity.id)
		player.setCharacterType(playerID, entityType)
		local initialInventory = oldEntity.initialInventory
			and utils.listToSet(oldEntity.initialInventory.items) or {}

		if initialInventory.WeaponGoldenLute then
			initialInventory.WeaponGoldenLuteInventory = true
		end

		if not inventory.getItemInSlot(oldEntity, "bomb") then
			object.delete(inventory.getItemInSlot(newEntity, "bomb"))
		end

		for _, item in ipairs(inventory.getItems(oldEntity)) do
			item = ecs.getEntityByID(item)
			if not initialInventory[item and item.name] then
				replaceIfUncursed(newEntity, item)
			else
				object.delete(item)
			end
		end

		health.heal {
			entity = newEntity,
			invincibility = 0,
			noParticles = true,
			silent = true,
		}

		object.delete(oldEntity)
	end
end

CodaFlavorsMenu.ID = customActions.registerSystemAction {
	id = "CodaFlavors_ChangeCharacter",
	callback = function (playerID, args)
		if type(args) == "table" and type(args.type) == "string"
			and ecs.isValidEntityType(args.type) and ecs.typeHasComponent(args.type, "controllable")
		then
			handleAction(playerID, args.type)
		end
	end,
}

local function getIcon(entity, i)
	return function ()
		local sprite = entity.sprite
		return {
			image = sprite.texture,
			imageRect = {sprite.textureShiftX, sprite.textureShiftY, sprite.width, sprite.height},
			width = sprite.width,
			height = sprite.height,
			color = color.hsv(0, 0, (menu.getSelectedID() == i) and 1 or 0.5),
		}
	end
end

local function getEntry(entity, x, y, i)
	return {
		x = x,
		y = y,
		icon = getIcon(entity, i),
		selectableIf = function () end,
		action = function () end,
	}
end

local function getSpecialIcon(spritepath, x, y, i)
	return {
		x = x,
		y = y,
		icon = {
			image = spritepath,
			imageRect = {0, 0, 24, 24},
			width = 24,
			height = 24,
			color = color.hsv(0, 0, 1),
		}
	}
end

local function moveEntry(x, y, off)
	return x + (off and off.offsetX or 0), y + (off and off.offsetY or 0)
end

local function startswith(text, prefix)
    return text:find(prefix, 1, true) == 1
end

event.menu.add("CodaFlavorsMenu", "CodaFlavorsMenu_select", function (ev)
	local entities = {}

	local playerType = player.getPlayerEntity().name
	
	for _, entity in ecs.prototypesWithComponents {"playableCharacter"} do
		if startswith(entity.name, "CodaFlavors_") then
			entities[#entities + 1] = entity
		end
	end

	table.sort(entities, function (e1, e2)
		local lo1, lo2 = e1.CodaFlavors_menu.order, e2.CodaFlavors_menu.order
		if lo1 ~= lo2 then
			return lo1 < lo2
		else
			return e1.name < e2.name
		end
	end)

	local entries = {}

	for i, entity in ipairs(entities) do
		local function menuOffset(diff)
			return function ()
				if i + diff <= #entities and i + diff > 0 then
					menu.selectByID(i + diff)
				elseif math.abs(diff) > 1 then
					menu.selectByID("_cancel")
				end
				sound.playUI(diff > 0 and "UISelectDown" or "UISelectUp")
			end
		end

		local rownum = (i - 1) % 9
		local x = math.floor((rownum - 5.5) * 48) + (math.floor(rownum / 3) + 1) * 48
		local y = math.floor((i - 1) / 9) * 54

		local typeName = entity.name
		entries[#entries + 1] = {
			id = i,
			x = x,
			y = y,
			label = not entity.sprite and typeName or nil,
			action = function ()
				playerList.setAttribute(netplay.PlayerAttribute.CHARACTER, typeName)
				characterSelector.setPreferredCharacter(1, typeName)
				CodaFlavorsMenu.perform(playerList.getLocalPlayerID(), typeName)
				stateControl.unpause()
				menu.closeAll()
			end,
			upAction = menuOffset(-9),
			downAction = menuOffset(9),
			rightAction = menuOffset(1),
			leftAction = menuOffset(-1),
			rightSound = "",
			leftSound = "",
			hideArrows = true,
			selected = playerType == typeName,
			characterExplanation = entity.friendlyName.name .. " (" .. entity.CodaFlavors_menu.explanation .. ")"
		}
		if entity.sprite then
			--x, y = moveEntry(x, y, entity.positionalSprite and entity.positionalSprite)
			entries[#entries + 1] = getEntry(entity, x, y, i)
		end
		local head = entity.characterWithAttachment
		and ecs.getEntityPrototype(entity.characterWithAttachment.attachmentType)
		if head and head.sprite then
			x, y = moveEntry(x, y, head.attachmentCopySpritePosition and head.attachmentCopySpritePosition)
			entries[#entries + 1] = getEntry(head, x, y, i)
		end
	end

	-- Add Icon next to character trio
	local icons = {
		"Crystal", "Shove", "Throw",
		"Spell", "Lunge", "Peace",
		"War", "Bomb", "Dash", 
		"Rifle", "Diamond", "Soul", 
		"Darkness", "Courage", "Lance", 
		"Learn", "Phasing"
	}
	for i = 1,16,1
	do
		local rownum = (i - 1) % 3
		local x = math.floor((rownum - 5.5) * 48) + rownum * 48 * 3
		local y = math.floor((i - 1) / 3) * 54

		print(i, icons)
		entries[#entries + 1] = getSpecialIcon("mods/CodaFlavors/sprites/Icons/" .. icons[i] .. ".png", x, y, i)
	end

	local footerY = gfx.getHeight() - 100
	local needStickyFooter = ((entries[#entries] or {}).y or 0) > footerY

	if not needStickyFooter then
		entries[#entries + 1] = {height = 0}

		entries[#entries + 1] = {
			label = function ()
				return (menu.getSelectedEntry() or {}).characterExplanation
			end,
			selectable = false,
		}
	end

	entries[#entries + 1] = {height = 0}

	entries[#entries + 1] = {
		id = "_cancel",
		label = "Cancel",
		action = menu.close,
		sound = "UIBack",
	}

	if needStickyFooter then
		entries[#entries + 1] = {
			label = function ()
				return (menu.getSelectedEntry() or {}).characterExplanation
			end,
			selectable = false,
			sticky = true,
			y = footerY,
		}
	end

	ev.menu = {
		label = "Coda Flavors",
		entries = entries,
		directionalConfirmation = false,
	}
end)

event.menu.add("CodaFlavorsMenuPause", {key = "pause", sequence = 1}, function (ev)
	if ev.menu and ev.menu.entries then
		ev.menu = utils.deepCopy(ev.menu)
		table.insert(ev.menu.entries, 3, {
			label = "Coda Flavors",
			enableIf = function ()
				return player.getPlayerEntity()
			end,
			action = function ()
				menu.open("CodaFlavorsMenu_select")
			end,
		})
	end
end)

return CodaFlavorsMenu
