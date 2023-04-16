local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Colt",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Colt"},
            CodaFlavors_menu={
                order = 82,
                explanation = "Bolt with a Gun"
            },
			textCharacterSelectionMessage = { text = "Colt mode!\nNo Dagger.\nOnly Rifle." },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Gunda/AriflaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Gunda/AriflaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Gunda/AriflaClone.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_WeaponRifle","Bomb","CharmNazar"},
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
                    friendlyName = "Jump the Gun",
                    version = 0,
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