local sound = require "necro.audio.Sound"
local soundGroups = require "necro.audio.SoundGroups"
local delay = require "necro.game.system.Delay"
local settings = require "necro.config.Settings"
local settingsMenu = require "necro.menu.settings.SettingsMenu"
local remoteSettings = require "necro.config.RemoteSettings"
local playerList = require "necro.client.PlayerList"
local customEntities = require "necro.game.data.CustomEntities"
local ecs = require "system.game.Entities"
local menu = require "necro.menu.Menu"

--+++-- REGISTER SOUND EFFECT --+++--
local _groups = { 
	-- BOOK PAGE TURNED
	codaShrineSound = {
		sounds = { 
			"mods/CodaFlavors/sprites/CodaShrineSound.ogg"
		},
		volume = 1,
		delay = 0
	}
}
soundGroups.register(_groups)

--+++-- MAIN --+++--
local _openModsMenu = delay.new(function (entity, args) --Opens menu.
	menu.open("CodaFlavorsMenu_select")
end, {--[[arguments]]})
customEntities.extend { --Shrine entity.
	name = "codaFlavorsShrine",
	template = customEntities.template.enemy("trainer"),
	components = {
		-- Replacements
		friendlyName = { name = "Coda Flavors Shrine" },
		interactable = {},
		npcUnlockable = false,
		targetRing = false,
		editorHidden = {}, --Not found in Level Editor.
		-- Sprite
		sprite = {
			texture = "mods/CodaFlavors/sprites/CodaShrine.png",
		},
		shadow = { visible = false },
	},
}
event.objectInteract.add("codaFlavorsShrineInteraction", { order = "activate" }, function (ev) --Handle interaction.
	if ev.entity.name == "CodaFlavors_codaFlavorsShrine" then
		-- Open Coda Flavors Menu (only for player who interacted with pedestal)
		local _activePlayerHit = false
		if ev.interactor.controllable then
			if ev.interactor.controllable.playerID == playerList.getLocalPlayerID() then
				_activePlayerHit = true
			end
		end
		if _activePlayerHit and not menu.isOpen() then
			_openModsMenu(ev.interactor, {}, 0.01)
			sound.playUI("codaShrineSound") --Play sound.
		end
	end
end)
event.levelLoad.add("codaFlavorsLobbyChanges", { order = "lobbyLevel", sequence = 1000 }, function (ev) --Edit lobby.
	if ev.name == "lobby" then --Change lobby.
		-- Spawn Coda Flavors Pedestal.
		local _entity = ecs.spawn("CodaFlavors_codaFlavorsShrine")
		_entity.position.x = 2
		_entity.position.y = -2
	end
end)