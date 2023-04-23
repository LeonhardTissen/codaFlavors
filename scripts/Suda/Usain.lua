local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"

customEntities.extend {
    name="Usain",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Usain"},
            CodaFlavors_menu={
                order = 132,
                explanation = "Bolt with Suzu Dash"
            },
			textCharacterSelectionMessage = { text = "Usain mode!\nPower of Suzu!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Suda/UsainBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Suda/UsainBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Suda/UsainClone.png",
            },
            initialEquipment={
                items={"ShovelBasic","Sync_WeaponLance","Bomb"},
            },
            inventoryCursedSlots = {
                slots = {
                    weapon = true
                }
            },
            inventoryBannedItemTypes = {
                types = {
                }
            },
            itemBanWeaponlocked = {},
            shrineBanWeaponlocked = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Greatest Sprint",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Usain.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Suda/UsainHead.png",
            },
        },
    },
}