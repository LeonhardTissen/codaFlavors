local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Throwda",
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
            friendlyName={name="Throwda"},
			textCharacterSelectionMessage = { text = "Throwda mode!\nNo Attack.\nOnly Throw." },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Throwda/ThrowdaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Throwda/ThrowdaBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_WeaponThrowda","Bomb","CharmNazar","CodaFlavors_CharmInfiniteThrowing"},
            },
            inventoryCursedSlots = {
            },
            inventoryBannedItemTypes = {
                types = {
                    RingPiercing = itemBan.Type.FULL,
                    Sync_CharmThrowing = itemBan.Type.FULL
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Didn't throw!",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Throwda/ThrowdaHead.png",
            },
        },
    },
}