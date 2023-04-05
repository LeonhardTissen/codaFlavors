local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Shoveda",
    template=customEntities.template.player(7),
    components = {
        {
            friendlyName={name="Shoveda"},
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
                    RingMight = itemBan.Type.FULL,
                    RingPiercing = itemBan.Type.FULL,
                    RingRegeneration = itemBan.Type.FULL,
                }
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Shoveda/ShovedaHead.png",
            },
        },
    },
}