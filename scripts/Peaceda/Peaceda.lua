local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local LevelExit = require "necro.game.tile.LevelExit"

customEntities.extend {
    name="Peaceda",
    template=customEntities.template.player(7),
    components = {
        {
            DynChar_dynamicCharacter = {
                slotMirrors = {},
                slotOffsets = {
                    action = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    base = { -1, 4, -1, 4, -1, 4, -1, 4 },
                    body = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    bomb = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    feet = { -0.5, 3, -0.5, 3, -0.5, 3, -0.5, 3 },
                    head = { -0.5, -1, -0.5, 1, -0.5, 3, -0.5, 1 },
                    hud = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    misc = { -0.5, 0, -0.5, 2, -0.5, 4, -0.5, 2 },
                    ring = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    shovel = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    spell = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                    torch = { -2.5, 2, -3.5, 2, -4.5, 1, -2.5, 1 },
                    weapon = { 1.5, 2, 3.5, 2, 4.5, 1, 2.5, 2 }
                }
            },
            friendlyName={name="Peaceda"},
            CodaFlavors_menu={
                order = 46,
                explanation = "Coda with Peace"
            },
			textCharacterSelectionMessage = { text = "Peaceda mode!\n Spread love, not war!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Peaceda/PeacedaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Peaceda/PeacedaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Peaceda/PeacedaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Peaceda/PeacedaClone.png",
            },
            enemyBans = {
                types = {"Harpy","Monkey","Monkey2","Monkey3","Monkey4","Sync_ShockMonkey"},
            },
            initialEquipment={
                items={"ShovelCrystal","WeaponFlower","Bomb","CharmNazar","RingPeace"},
            },
            inventoryCursedSlots = {
                slots = {
                    weapon = true
                }
            },
            inventoryBannedItems = {
                components = {
                  itemBanKillPoverty = itemBan.Flag.PICKUP_DEATH,
                  itemBanHealthlocked = 2916352,
                  itemBanNoDamage = 2916352,
                  itemBanPacifist = 4169217,
                  itemBanPoverty = 2916352,
                  itemBanShoplifter = 2916352,
                  itemBanWeaponlocked = 4169217,
                  shovel = 2916352,
                  shrineBanPacifist = 4169217,
                  shrineBanWeaponlocked = 4169217,
                  shrineBanHealthlocked = 2916352,
                }
            },
            noNeedDamage = {},
            bypassStairLock = {
                level = 2
            },
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
            traitNoSarcophagus = {},
            traitNoTrapdoors = {},
            songEndCast = {
              spell = "SpellcastSuicide"
            },
            shoplifter = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Blooming Elegance",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Peaceda.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Peaceda/PeacedaHead.png",
            },
        },
    },
}