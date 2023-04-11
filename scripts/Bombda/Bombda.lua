local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Bombda",
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
            friendlyName={name="Bombda"},
			textCharacterSelectionMessage = { text = "Bombda mode!\nNo Dagger &\nInstant Bombs" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Bombda/BombdaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Bombda/BombdaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Bombda/BombdaBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"CodaFlavors_SpellBomb","CodaFlavors_HeadBlastHelm","ShovelBasic"},
            },
            inventoryCursedSlots = {
                shovel = true
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
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Kaboom!!!",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Bombda/BombdaHead.png",
            },
        },
    },
}