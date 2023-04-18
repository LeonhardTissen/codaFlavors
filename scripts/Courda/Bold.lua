local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"

customEntities.extend {
    name="Bold",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Bold"},
            CodaFlavors_menu={
                order = 122,
                explanation = "Bolt with Strong Courage"
            },
			textCharacterSelectionMessage = { text = "Bold mode!\nCourage by heart!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Courda/BoldBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Courda/BoldBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Courda/BoldClone.png",
            },
            initialEquipment={
                items={"CodaFlavors_CourdaShovel","WeaponSpear","Bomb1","CodaFlavors_CourdaRing"},
            },
            inventoryCursedSlots = {
                slots = {
                    shovel = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    RingMight = itemBan.Type.FULL,
                    RingPiercing = itemBan.Type.FULL,
                    RingRegeneration = itemBan.Type.FULL,
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Fearless",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Bold.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Courda/BoldHead.png",
            },
        },
    },
}