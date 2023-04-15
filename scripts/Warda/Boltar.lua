local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local damage = require "necro.game.system.Damage"

customEntities.extend {
    name="Boltar",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Boltar"},
			textCharacterSelectionMessage = { text = "Boltar mode!\nYou are bloodthirsty!\nDeclare war on your enemies!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Warda/WardaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Warda/WardaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Warda/WardaBody.png",
            },
            damageCountdown = {
                damage = 999,
                type = damage.Type.SUICIDE,
                countdownReset = 33,
                killerName = "Boltar's Curse (Tempo)"
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","WeaponSpear","RingWar","Food1","Bomb","Sync_CharmThrowing","Torch",},
            },
            inventoryCursedSlots = {
                slots = {
                    ring = true;
                }
            },
            inventoryBannedItemTypes = {
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Thunderous Rampage",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Warda/WardaHead.png",
            },
        },
    },
}