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
    name="Reapia",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Reapia"},
			textCharacterSelectionMessage = { text = "Reapia mode!\nSteal your enemies soul" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Soulda/ReapiaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Soulda/ReapiaBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","WeaponDagger","Bomb","CharmNazar","Torch1","MiscPotion"},
            },
            inventoryCursedSlots = {
            },
            inventoryBannedItemTypes = {
                types = {
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Liberating the Dead",
                    version = 0,
                },
            },
            spawnSoulOnKill = { soulType = "ReaperSoul" },
            soulLeaderAnimation = {
                variantCount = 8
            },
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Soulda/ReapiaHead.png",
            },
        },
    },
}