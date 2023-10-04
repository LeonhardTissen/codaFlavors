local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Ghostda",
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
            friendlyName={name="Ghostda"},
            CodaFlavors_menu={
                order = 46,
                explanation = "Coda but Ghost"
            },
			textCharacterSelectionMessage = { text = "Ghostda mode!\n You are ethereal!\n Haunt the crypt with your ghostly presence!"},
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Ghostda/GhostdaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Ghostda/GhostdaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Ghostda/GhostdaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Ghostda/GhostdaClone.png",
            },
            enemyBans = {
            },
            initialEquipment={
                items={"RingPhasing","WeaponDaggerPhasing"},
            },
            inventoryCursedSlots = {
                slots = {
                    weapon = true,
                    shovel = true,
                    body = true,
                    head = true,
                    feet = true,
                    torch = true,
                    ring = true,
                    shield = true,
                    action = true
                }
            },
            traitRemoveEnemies = {
                count = 3
            },
            traitSmallerShops = {},
            traitInnatePeace = {},
            traitNoTrapdoors = {},
            shoplifter = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Can't touch this!",
                    version = 2,
                    icon = "mods/CodaFlavors/sprites/Achievements/Ghostda.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Ghostda/GhostdaHead.png",
            },
        },
    },
}
