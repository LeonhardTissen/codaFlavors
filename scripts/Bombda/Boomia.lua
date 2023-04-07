local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Boomia",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Boomia"},
			textCharacterSelectionMessage = { text = "Boomia mode!\nNo Dagger &\nInstant Bombs" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Bombda/BoomiaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Bombda/BoomiaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Bombda/BoomiaBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"CodaFlavors_SpellBomb","ShovelBasic","CodaFlavors_HeadBlastHelmBoomia","MiscPotion"},
            },
            inventoryCursedSlots = {
                shovel = true
            },
            inventoryBannedItemTypes = {
                types = {
                    CharmBomb = itemBan.Type.FULL,
                    Bomb = itemBan.Type.FULL,
                    Bomb3 = itemBan.Type.FULL,
                    ArmorGi = itemBan.Type.FULL,
                    FeetBootsStrength = itemBan.Type.FULL,
                    HeadSpikedEars = itemBan.Type.FULL,
                    HeadSunglasses = itemBan.Type.FULL,
                    HeadGlassJaw = itemBan.Type.FULL,
                    CharmRisk = itemBan.Type.FULL,
                    CharmStrength = itemBan.Type.FULL,
                    RingMight = itemBan.Type.FULL,
                    RingPiercing = itemBan.Type.FULL,
                    RingRegeneration = itemBan.Type.FULL,
                    RingWar = itemBan.Type.FULL,
                    RingFrost = itemBan.Type.FULL,
                    Sync_CharmThrowing = itemBan.Type.FULL,
                    SpellBomb = itemBan.Type.FULL,
                }
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Bombda/BoomiaHead.png",
            },
        },
    },
}