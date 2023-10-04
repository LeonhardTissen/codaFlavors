local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Spectria",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Spectria"},
            CodaFlavors_menu={
                order = 1011,
                explanation = "Aria but Ghost"
            },
			textCharacterSelectionMessage = { text = "Spectria mode!\n You are ethereal!\n Haunt the crypt with your ghostly presence!"},
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Ghostda/SpectriaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Ghostda/SpectriaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Ghostda/SpectriaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Ghostda/SpectriaClone.png",
            },
            enemyBans = {},
            initialEquipment={
                items={"RingPhasing","WeaponDaggerPhasing","MiscPotion"},
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
                    action = true,
                    bomb = true
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    BagHolding = itemBan.Type.FULL,
                    HudBackpack = itemBan.Type.FULL,
                    CharmBomb = itemBan.Type.GENERATION_ALL
                }
            },
            traitRemoveEnemies = {
                count = 3
            },
            traitSmallerShops = {},
            traitInnatePeace = {},
            traitNoTrapdoors = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "A Haunting Performance",
                    version = 2,
                    icon = "mods/CodaFlavors/sprites/Achievements/Spectria.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Ghostda/SpectriaHead.png",
            },
        },
    },
}
