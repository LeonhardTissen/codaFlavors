local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local damage = require "necro.game.system.Damage"

customEntities.extend {
    name="Waria",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Waria"},
            CodaFlavors_menu={
                order = 51,
                explanation = "Aria with War and Tempo"
            },
			textCharacterSelectionMessage = { text = "Waria mode!\nYou are bloodthirsty!\nDeclare war on your enemies!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Warda/WariaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Warda/WariaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Warda/WariaBody.png",
            },
            damageCountdown = {
                damage = 999,
                type = damage.Type.SUICIDE,
                countdownReset = 25,
                killerName = "Waria's Curse (Tempo)"
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","WeaponDagger","CodaFlavors_RingWarda","Food1","Bomb","Sync_CharmThrowing","Torch","MiscPotion"},
            },
            inventoryCursedSlots = {
                slots = {
                    ring = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    CodaFlavors_RingWarda = itemBan.Type.LOSS_ALL
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Finally at peace",
                    version = 2,
                    icon = "mods/CodaFlavors/sprites/Achievements/Waria.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Warda/WariaHead.png",
            },
        },
    },
}