local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Lara",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Lara"},
            CodaFlavors_menu={
                order = 41,
                explanation = "Aria with Lunging and Knockback"
            },
			textCharacterSelectionMessage = { text = "Lara mode!\nLunging &\nKnockback." },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Lynda/LaraBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Lynda/LaraBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Lynda/LaraClone.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_FeetBootsLara","Bomb","CharmNazar","CodaFlavors_WeaponLynda","MiscPotion"},
            },
            inventoryCursedSlots = {
                slots = {
                    feet = true;
                }
            },
            inventoryBannedItemTypes = {
            },
            traitStoryBosses = {
                bosses = {}
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Do I look like?",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Lynda/LaraHead.png",
            },
        },
    },
}