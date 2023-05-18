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
            enemyBans = {
                types = {"Harpy","Monkey","Monkey2","Monkey3","Monkey4","Sync_ShockMonkey"},
            },
            initialEquipment={
                items={"ShovelCrystal","WeaponFlower","Bomb","CharmNazar","RingPeace","MiscPotion"},
            },
            inventoryCursedSlots = {
                slots = {
                    weapon = true
                }
            },
            inventoryBannedItems = {
                components = {
                  itemBanHealthlocked = 2916352,
                  itemBanNoDamage = 2916352,
                  itemBanPacifist = 4169217,
                  itemBanShoplifter = 2916352,
                  itemBanWeaponlocked = 4169217,
                  shovel = 2916352,
                  shrineBanPacifist = 4169217,
                  shrineBanWeaponlocked = 4169217,
                  shrineBanHealthlocked = 2916352,
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Thunderstruck",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Polt.png"
                },
            },
            bypassStairLock = {},
            noNeedDamage = {},
            teleportingBombs = {},
            traitBannedSecretRooms = {
                types = {
                  [2] = true,
                  [3] = true,
                  [5] = true,
                }
            },
            traitRemoveEnemies = {
                count = 3
            },
            traitSkipBosses = {},
            traitSmallerShops = {},
            traitInnatePeace = {},
            songEndCast = {
              spell = "SpellcastSuicide"
            },
            shoplifter = {},
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