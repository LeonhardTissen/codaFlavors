local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Bombolt",
    template=customEntities.template.player(8),
    components = {
        {   
            friendlyName={name="Bombolt"},
            CodaFlavors_menu={
                order = 62,
                explanation = "Bolt with Bomb Spell"
            },
			textCharacterSelectionMessage = { text = "Bombolt mode!\nNo Dagger &\nInstant Bombs" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Bombda/BomboltBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Bombda/BomboltBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Bombda/BomboltClone.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"CodaFlavors_SpellBomb","CodaFlavors_HeadBlastHelmBoomia","CharmNazar","ShovelBasic"},
            },
            inventoryCursedSlots = {
                slots = {
                    shovel = true,
                    weapon = true
                }
            },
            wallDropSuppressor = {},
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
                    HeadBlastHelm = itemBan.Type.FULL,
                    CharmRisk = itemBan.Type.FULL,
                    CharmStrength = itemBan.Type.FULL,
                    RingMight = itemBan.Type.FULL,
                    RingPiercing = itemBan.Type.FULL,
                    RingRegeneration = itemBan.Type.FULL,
                    RingWar = itemBan.Type.FULL,
                    RingFrost = itemBan.Type.FULL,
                    RingPain = itemBan.Type.FULL,
                    RingCourage = itemBan.Type.FULL,
                    Sync_CharmThrowing = itemBan.Type.FULL,
                    SpellBomb = itemBan.Type.FULL,
                    ScrollEnchantWeapon = itemBan.Type.FULL,
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Shaboom!!",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Bombolt.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Bombda/BomboltHead.png",
            },
        },
    },
}