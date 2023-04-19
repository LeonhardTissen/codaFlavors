local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"

customEntities.extend {
    name="Usain",
    template=customEntities.template.player(8),
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
            friendlyName={name="Usain"},
            CodaFlavors_menu={
                order = 132,
                explanation = "Bolt with Suzu Dash"
            },
			textCharacterSelectionMessage = { text = "Usain mode!\nPower of Suzu!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Suda/UsainBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Suda/UsainBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Suda/UsainClone.png",
            },
            initialEquipment={
                items={"ShovelBasic","Sync_WeaponLance","Bomb"},
            },
            inventoryCursedSlots = {
                slots = {
                }
            },
            inventoryBannedItemTypes = {
                types = {
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Greatest Sprint",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Usain.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Suda/UsainHead.png",
            },
        },
    },
}