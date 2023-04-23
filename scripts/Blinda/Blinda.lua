local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Blinda",
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
            friendlyName={name="Blinda"},
            CodaFlavors_menu={
                order = 110,
                explanation = "Coda but blind"
            },
			textCharacterSelectionMessage = { text = "Blinda mode!\nYou cannot see anything at all!\nMove in the crypt with no navigation tools!"},
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Blinda/BlindaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Blinda/BlindaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Blinda/BlindaClone.png",
            },
            enemyBans = {
                types = {"Monkey","Monkey2","Monkey3","Monkey4","Sync_CoopMonkey","Sync_ShockMonkey"},
            },
            initialEquipment={
                items={"ShovelCrystal","WeaponDagger","Bomb","CharmNazar","CodaFlavors_BlindaRing","Sync_ShieldWooden"},
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
                    friendlyName = "Where did everybody go!?",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Blinda.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Blinda/BlindaHead.png",
            },
        },
    },
}