local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Boltash",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Boltash"},
            CodaFlavors_menu={
                order = 72,
                explanation = "Bolt with Infinite Dash"
            },
			textCharacterSelectionMessage = { text = "Boltash mode!\nInfinite Dash" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Codash/BoltashBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Codash/BoltashBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Codash/BoltashClone.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","WeaponSpear","CodaFlavors_SpellDashda","Bomb"},
            },
            inventoryCursedSlots = {
                slots = {
                    spell = true,
                    weapon = true
                }
            },
            inventoryBannedItemTypes = {
                types = {
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Everywhere at once",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Boltash.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Codash/BoltashHead.png",
            },
        },
    },
}