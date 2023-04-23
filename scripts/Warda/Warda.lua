local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local damage = require "necro.game.system.Damage"

customEntities.extend {
    name="Warda",
    template=customEntities.template.player(7),
    components = {
        {
            friendlyName={name="Warda"},
            CodaFlavors_menu={
                order = 50,
                explanation = "Coda with War and Tempo"
            },
			textCharacterSelectionMessage = { text = "Warda mode!\nYou are bloodthirsty!\nDeclare war on your enemies!" },
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
                killerName = "Warda's Curse (Tempo)"
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","WeaponDagger","CodaFlavors_RingWarda","Food1","Bomb","Sync_CharmThrowing","Torch",},
            },
            inventoryCursedSlots = {
                slots = {
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    CodaFlavors_RingWarda = itemBan.Flag.LOSS_SCATTER
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "A genocide? I call it Pest Control",
                    version = 2,
                    icon = "mods/CodaFlavors/sprites/Achievements/Warda.png"
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