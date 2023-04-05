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
                texture = "mods/CodaFlavors/sprites/Lynda/LyndaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Lynda/LyndaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Lynda/LyndaBody.png",
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
                texture= "mods/CodaFlavors/sprites/Lynda/LyndaHead.png",
            },
        },
    },
}