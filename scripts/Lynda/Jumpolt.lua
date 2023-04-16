local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Jumpolt",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Jumpolt"},
            CodaFlavors_menu={
                order = 42,
                explanation = "Bolt with Lunging and Knockback"
            },
			textCharacterSelectionMessage = { text = "Jumpolt mode!\nLunging &\nKnockback." },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Lynda/JumpoltBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Lynda/JumpoltBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Lynda/JumpoltClone.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_FeetBootsLunging","Bomb","CodaFlavors_WeaponLynda"},
            },
            inventoryCursedSlots = {
                slots = {
                    feet = true;
                    weapon = true;
                }
            },
            inventoryBannedItemTypes = {
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Who's the harpy now?",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Lynda/JumpoltHead.png",
            },
        },
    },
}