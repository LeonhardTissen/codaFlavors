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
			textCharacterSelectionMessage = { text = "Bold mode!\nCourage by heart!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Courda/CourdaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Courda/CourdaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Courda/CourdaBody.png",
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
            CodaFlavors_shovedaCoinSuppress = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Fearless",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Courda/CourdaHead.png",
            },
        },
    },
}