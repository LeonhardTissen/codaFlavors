local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Crysda",
    template=customEntities.template.player(7),
    components = {
        {
            friendlyName={name="Crysda"},
			textCharacterSelectionMessage = { text = "Crysda mode!\nNo Dagger.\nOnly Shield." },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/CrysdaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/CrysdaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/CrysdaBody.png",
            },
            enemyBans = {
                types = {"Ghost","Monkey","Monkey2","Mole","Shovemonster","Shovemonster2","Sync_ShockMonkey","Monkey3","Monkey4","GoblinBomber","Sync_CoopThief","Sync_CoopMonkey","Sync_CoopGhost","Sync_CoopSpirit"},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_WeaponCrysda","CodaFlavors_CrysdaShield","Bomb3","CharmNazar"},
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
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/CrysdaHead.png",
            },
        },
    },
}