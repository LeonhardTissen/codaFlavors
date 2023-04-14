local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Ariblind",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Ariblind"},
			textCharacterSelectionMessage = { text = "Blinda mode!\nYou cannot see anything at all!\nMove in the crypt with no navigation tools!"},
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Blinda/AriblindBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Blinda/AriblindBody.png",
            },
            enemyBans = {
                types = {"Monkey","Monkey2","Monkey3","Monkey4","Sync_CoopMonkey","Sync_ShockMonkey"},
            },
            initialEquipment={
                items={"ShovelCrystal","WeaponDagger","Bomb3","CharmNazar","CodaFlavors_BlindaRing","Sync_ShieldWooden","MiscPotion"},
            },
            inventoryCursedSlots = {
                slots = {
                    ring = true;
                    torch = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                    MiscCompass = itemBan.Type.FULL,
                    MiscMap = itemBan.Type.FULL,
                    HeadCircletTelepathy = itemBan.Type.FULL
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Who are you?",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Blinda/AriblindHead.png",
            },
        },
    },
}