local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Blindolt",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Blindolt"},
            CodaFlavors_menu={
                order = 112,
                explanation = "Bolt but blind"
            },
			textCharacterSelectionMessage = { text = "Blindolt mode!\nYou cannot see anything at all!\nMove in the crypt with no navigation tools!"},
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Blinda/BlindoltBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Blinda/BlindoltBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Blinda/BlindoltClone.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelTitanium","WeaponTitaniumDagger","Sync_ShieldWooden","CharmNazar","Bomb","CodaFlavors_BlindaRing"},
            },
            inventoryCursedSlots = {
                slots = {
                    torch = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    MiscCompass = itemBan.Type.FULL,
                    MiscMap = itemBan.Type.FULL,
                    HeadCircletTelepathy = itemBan.Type.FULL,
                    CodaFlavors_BlindaRing = itemBan.Type.LOSS_ALL
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Am I there yet?",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Blindolt.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Blinda/BlindoltHead.png",
            },
        },
    },
}