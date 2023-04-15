local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Aristo",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Aristo"},
			textCharacterSelectionMessage = { text = "Aristo mode!\nWeak Dagger.\nReflect incoming attacks!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Crysda/AristoBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Crysda/AristoBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Crysda/AristoClone.png",
            },
            enemyBans = {
                types = {"Ghost","Monkey","Monkey2","Mole","Shovemonster","Shovemonster2","Sync_ShockMonkey","Monkey3","Monkey4","GoblinBomber","Sync_CoopThief","Sync_CoopMonkey","Sync_CoopGhost","Sync_CoopSpirit"},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_CrysdaShield","CodaFlavors_WeaponCrysda","Bomb3","CharmNazar","MiscPotion"},
            },
            inventoryCursedSlots = {
                slots = {
                    shield = true;
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
                    Sync_CharmThrowing = itemBan.Type.FULL
                }
            },
            traitStoryBosses = {
                bosses = {}
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Clean Cut",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Crysda/AristoHead.png",
            },
        },
    },
}