local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Ariacadabra",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Ariacadabra"},
            CodaFlavors_menu={
                order = 31,
                explanation = "Aria with Only Spells"
            },
			textCharacterSelectionMessage = { text = "Ariacadabra mode!\nUse spells only\nto defeat enemies!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Spellda/AriacadabraClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Spellda/AriacadabraBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Spellda/AriacadabraBody.png",
            },
            initialEquipment={
                items={"ShovelBasic","BagHolding","CodaFlavors_SpelldaFireball","CodaFlavors_SpelldaPulse","CodaFlavors_SpelldaFreeze","CodaFlavors_SpelldaCharm","Bomb3","CharmNazar","MiscPotion"},
            },
            inventoryCursedSlots = {
                slots = {
                    weapon = true;
                    spell = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
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
                    RingCourage = itemBan.Type.FULL,
                    Sync_CharmThrowing = itemBan.Type.FULL,
                    SpellFireball = itemBan.Type.FULL,
                    SpellPulse = itemBan.Type.FULL,
                    SpellFreezeEnemies = itemBan.Type.FULL,
                    Sync_SpellCharm = itemBan.Type.FULL,
                    ScrollEnchantWeapon = itemBan.Type.FULL,
                    BagHolding = itemBan.Type.GENERATION_ALL,
                    Holster = itemBan.Type.FULL,
                    HudBackpack = itemBan.Type.FULL
                }
            },
            traitStoryBosses = {
                bosses = {}
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "A Burning Charm",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Ariacadabra.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Spellda/AriacadabraHead.png",
            },
        },
    },
}