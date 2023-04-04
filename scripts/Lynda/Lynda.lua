local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Lynda",
    template=customEntities.template.player(7),
    components = {
        {
            friendlyName={name="Lynda"},
			textCharacterSelectionMessage = { text = "Lynda mode!\nLunging &\nKnockback" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/LyndaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/LyndaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/LyndaBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_FeetBootsLunging","Bomb","CharmNazar","CodaFlavors_WeaponLynda"},
            },
            inventoryCursedSlots = {
                slots = {
                    feet = true;
                }
            },
            inventoryBannedItemTypes = {
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/LyndaHead.png",
            },
        },
    },
}