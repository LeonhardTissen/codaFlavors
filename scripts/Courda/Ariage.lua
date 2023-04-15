local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"

customEntities.extend {
    name="Ariage",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Ariage"},
			textCharacterSelectionMessage = { text = "Ariage mode!\nCourage by heart!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Courda/AriageBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Courda/AriageBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Courda/AriageClone.png",
            },
            initialEquipment={
                items={"CodaFlavors_CourdaShovel","WeaponDagger","Bomb1","CharmNazar","CodaFlavors_CourdaRing","MiscPotion"},
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
                    friendlyName = "Enraged",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Courda/AriageHead.png",
            },
        },
    },
}