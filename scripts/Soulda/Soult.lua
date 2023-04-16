local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"
local Follower = require "necro.game.character.Follower"

customEntities.extend {
    name="Soult",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Soult"},
            CodaFlavors_menu={
                order = 102,
                explanation = "Bolt with Souls"
            },
			textCharacterSelectionMessage = { text = "Soult mode!\nSteal your enemies soul" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Soulda/SoultBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Soulda/SoultBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Soulda/SoultClone.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","WeaponSpear","Bomb","Torch1"},
            },
            inventoryCursedSlots = {
            },
            inventoryBannedItemTypes = {
                types = {
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Spiritual Ritual",
                    version = 0,
                },
            },
            spawnSoulOnKill = { soulType = "ReaperSoul" },
            soulLeaderAnimation = {
                variantCount = 8
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Soulda/SoultHead.png",
            },
        },
    },
}