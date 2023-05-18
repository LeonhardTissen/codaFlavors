local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"

customEntities.extend {
    name="Calmia",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Calmia"},
            CodaFlavors_menu={
                order = 47,
                explanation = "Aria with Peace"
            },
			textCharacterSelectionMessage = { text = "Calmia mode!\n Spread love, not war!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Peaceda/CalmiaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Peaceda/CalmiaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Peaceda/CalmiaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Peaceda/CalmiaClone.png",
            },
            initialEquipment={
                items={"ShovelCrystal","WeaponFlower","CharmNazar","RingPeace","MiscPotion"},
            },
            inventoryCursedSlots = {
                slots = {
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    RingWar = itemBan.Type.FULL,
                    RingMight = itemBan.Type.FULL,
                    RingPiercing = itemBan.Type.FULL,
                    FeetBootsStrength = itemBan.Type.FULL,
                    HeadSpikedEars = itemBan.Type.FULL,
                    HeadSunglasses = itemBan.Type.FULL,
                    CharmRisk = itemBan.Type.FULL,
                    CharmStrength = itemBan.Type.FULL,
                    SpellFireball = itemBan.Type.FULL,
                    SpellPulse = itemBan.Type.FULL,
                    Sync_ShieldStrength = itemBan.Type.FULL,
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Broken heart restored!",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Calmia.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Peaceda/CalmiaHead.png",
            },
        },
    },
}