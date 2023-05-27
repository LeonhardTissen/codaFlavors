local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Polt",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Polt"},
            CodaFlavors_menu={
                order = 48,
                explanation = "Bolt with Peace"
            },
			textCharacterSelectionMessage = { text = "Polt mode!\n Spread love, not war!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Peaceda/PoltBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Peaceda/PoltBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Peaceda/PoltClone.png",
            },
            enemyBans = {
                types = {"Harpy","Monkey","Monkey2","Monkey3","Monkey4","Sync_ShockMonkey"},
            },
            initialEquipment={
                items={"ShovelCrystal","WeaponFlower","Bomb","CharmNazar","RingPeace"},
            },
            inventoryCursedSlots = {
                slots = {
                    weapon = true
                }
            },
            inventoryBannedItems = {
                components = {
                    itemBanNoDamage = 2916352,
                    itemBanPacifist = 4169217,
                    itemBanShoplifter = 2916352,
                    itemBanWeaponlocked = 4169217,
                    shovel = 2916352,
                    shrineBanPacifist = 4169217,
                    shrineBanWeaponlocked = 4169217
                }
            },
            health = {
                health = 6,
                maxHealth = 4
            },
            bypassStairLock = {},
            traitSkipBosses = {},
            noNeedDamage = {},
            teleportingBombs = {},
            traitNoSarcophagus = {},
            traitNoTrapdoors = {},
            traitBannedSecretRooms = {
                types = {
                    [2] = true
                }
            },
            traitRemoveEnemies = {
                count = 3
            },
            traitSmallerShops = {},
            traitInnatePeace = {},
            songEndCast = {
                spell = "SpellcastSuicide"
            },
            shoplifter = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Peace the hell out",
                    version = 2,
                    icon = "mods/CodaFlavors/sprites/Achievements/Polt.png"
                },
            },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Peaceda/PoltHead.png",
            },
        },
    },
}
}
event.entitySchemaLoadNamedEntity.add("sdafdas", {key="Aria"}, function(ev)
    print(ev.entity)
end)
