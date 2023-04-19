local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local map = require "necro.game.object.Map"

customEntities.extend {
    name="Suria",
    template=customEntities.template.player(2),
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
            friendlyName={name="Suria"},
            CodaFlavors_menu={
                order = 131,
                explanation = "Aria with Suzu Dash"
            },
			textCharacterSelectionMessage = { text = "Suria mode!\nPower of Suzu!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Suda/SuriaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Suda/SuriaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Suda/SuriaClone.png",
            },
            initialEquipment={
                items={"ShovelBasic","Sync_WeaponLance","Bomb","MiscPotion","CharmNazar"},
            },
            inventoryCursedSlots = {
                slots = {
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    RingRegeneration = itemBan.Type.FULL,
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Dashing Performance",
                    version = 2,
                    icon = "mods/CodaFlavors/sprites/Achievements/Suria.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Suda/SuriaHead.png",
            },
        },
    },
}