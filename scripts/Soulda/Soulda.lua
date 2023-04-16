local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"
local Follower = require "necro.game.character.Follower"

customEntities.extend {
    name="Soulda",
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
            CodaFlavors_menu={
                order = 100,
                explanation = "Coda with Souls"
            },
            friendlyName={name="Soulda"},
			textCharacterSelectionMessage = { text = "Soulda mode!\nSteal your enemies soul" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Soulda/SouldaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Soulda/SouldaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Soulda/SouldaClone.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","WeaponDagger","Bomb","CharmNazar","Torch1"},
            },
            inventoryCursedSlots = {
            },
            inventoryBannedItemTypes = {
                types = {
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Soulless",
                    version = 0,
                },
            },
            spawnSoulOnKill = { soulType = "ReaperSoul" },
            soulLeaderAnimation = {
                variantCount = 8
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Soulda/SouldaHead.png",
            },
        },
    },
}