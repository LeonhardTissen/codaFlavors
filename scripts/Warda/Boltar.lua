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
            CodaFlavors_menu={
                order = 52,
                explanation = "Bolt with War and Tempo"
            },
			textCharacterSelectionMessage = { text = "Boltar mode!\nYou are bloodthirsty!\nDeclare war on your enemies!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Warda/BoltarClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Warda/BoltarBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Warda/BoltarBody.png",
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
                items={"ShovelBasic","WeaponSpear","CodaFlavors_RingWarda","Food1","Bomb","Sync_CharmThrowing","Torch",},
            },
            inventoryCursedSlots = {
                slots = {
                    ring = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    CodaFlavors_RingWarda = itemBan.Flag.LOSS_SCATTER
                }
            },
            itemBanWeaponlocked = {},
            shrineBanWeaponlocked = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Thunderous Rampage",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Boltar.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Warda/BoltarHead.png",
            },
        },
    },
}

event.entitySchemaLoadNamedEntity.add("sdafdas", {key="RingWar"}, function(ev)
    print(ev.entity)
end)