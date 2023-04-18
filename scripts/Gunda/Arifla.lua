local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Arifla",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Arifla"},
            CodaFlavors_menu={
                order = 81,
                explanation = "Aria with a Gun"
            },
			textCharacterSelectionMessage = { text = "Arifla mode!\nNo Dagger.\nOnly Rifle." },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Gunda/AriflaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Gunda/AriflaBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_WeaponRifle","Bomb","CharmNazar","MiscPotion"},
            },
            inventoryCursedSlots = {
            },
            inventoryBannedItemTypes = {
                types = {
                    RingPiercing = itemBan.Type.FULL
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Clean Shot",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Arifla.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Gunda/AriflaHead.png",
            },
        },
    },
}