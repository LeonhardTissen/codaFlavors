local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"

customEntities.extend {
    name="Suda",
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
            friendlyName={name="Suda"},
            CodaFlavors_menu={
                order = 130,
                explanation = "Coda with Suzu Dash"
            },
			textCharacterSelectionMessage = { text = "Suda mode!\nPower of Suzu!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Suda/SudaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Suda/SudaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Suda/SudaClone.png",
            },
            initialEquipment={
                items={"ShovelBasic","Sync_WeaponLance","Bomb","CharmNazar"},
            },
            inventoryCursedSlots = {
                slots = {
                    shovel = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    RingRegeneration = itemBan.Type.FULL,
                }
            },
            CodaFlavors_shovedaCoinSuppress = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Through and Through",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Suda.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Suda/SudaHead.png",
            },
        },
    },
}