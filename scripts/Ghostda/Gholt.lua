local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Gholt",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Gholt"},
            CodaFlavors_menu={
                order = 48,
                explanation = "Bolt but Ghost"
            },
			textCharacterSelectionMessage = { text = "Gholt mode!\n You are ethereal!\n Haunt the crypt with your ghostly presence!"},
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Ghostda/GholtBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Ghostda/GholtBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Ghostda/GholtClone.png",
            },
            enemyBans = {},
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
                    friendlyName = "They're right behind me, aren't they?",
                    version = 2,
                    icon = "mods/CodaFlavors/sprites/Achievements/Gholt.png"
                },
            },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Ghostda/GholtHead.png",
            },
        },
    },
}
}