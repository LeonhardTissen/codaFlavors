local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Throlt",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Throlt"},
            CodaFlavors_menu={
                order = 22,
                explanation = "Bolt with Infinite Throws"
            },
			textCharacterSelectionMessage = { text = "Throlt mode!\nInfinite Throws." },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Throwda/ThroltBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Throwda/ThroltBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Throwda/ThroltClone.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","WeaponDagger","Bomb","CodaFlavors_CharmInfiniteThrowing"},
            },
            inventoryCursedSlots = {
            },
            inventoryBannedItemTypes = {
                types = {
                    Sync_CharmThrowing = itemBan.Type.FULL
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Thunderstruck",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Throlt.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Throwda/ThroltHead.png",
            },
        },
    },
}