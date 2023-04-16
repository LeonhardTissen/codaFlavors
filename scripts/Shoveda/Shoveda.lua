local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"

components.register {
    CodaFlavors_shovedaCoinSuppress = {},
}
customEntities.extend {
    name="Shoveda",
    template=customEntities.template.player(7),
    components = {
        {
            DynChar_dynamicCharacter = {
                slotMirrors = {},
                slotOffsets = {
                    action = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    base = { -1, 4, -1, 4, -1, 4, -1, 4 },
                    body = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    bomb = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    feet = { -0.5, 3, -0.5, 3, -0.5, 3, -0.5, 3 },
                    head = { -0.5, -1, -0.5, 1, -0.5, 3, -0.5, 1 },
                    hud = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    misc = { -0.5, 0, -0.5, 2, -0.5, 4, -0.5, 2 },
                    ring = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    shovel = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    spell = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    torch = { -2.5, 2, -3.5, 2, -4.5, 1, -2.5, 1 },
                    weapon = { 1.5, 2, 3.5, 2, 4.5, 1, 2.5, 2 }
                }
            },
            friendlyName={name="Shoveda"},
            CodaFlavors_menu={
                order = 10,
                explanation = "Coda with Shove Shield"
            },
			textCharacterSelectionMessage = { text = "Shoveda mode!\nCrush enemies obstructing your path!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Shoveda/ShovedaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Shoveda/ShovedaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Shoveda/ShovedaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Shoveda/ShovedaClone.png",
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_ShovedaShield","Bomb3","CharmNazar"},
            },
            inventoryCursedSlots = {
                slots = {
                    shield = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    RingPiercing = itemBan.Type.FULL,
                    RingRegeneration = itemBan.Type.FULL,
                }
            },
            CodaFlavors_shovedaCoinSuppress = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "When Push comes to Shove",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Shoveda/ShovedaHead.png",
            },
        },
    },
}
event.objectKill.add(nil, {order = "currencyDrop", sequence = 1, filter = "CodaFlavors_shovedaCoinSuppress"}, function (ev)
    local gold = map.firstWithComponent(ev.victim.position.x, ev.victim.position.y, "itemCurrency")
    if gold and gold.item then
        gold.item.suppressPickup = true
    end
end)