local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Diabolt",
    template=customEntities.template.player(8),
    components = {
        {
            friendlyName={name="Diabolt"},
            CodaFlavors_menu={
                order = 92,
                explanation = "Bolt + Diamond"
            },
			textCharacterSelectionMessage = { text = "Diabolt mode!\nMove diagonally!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Codiago/DiaboltBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Codiago/DiaboltBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Codiago/DiaboltClone.png",
            },
            enemyBans = {
            },
            initialEquipment={
                items={"ShovelBasic","WeaponSpear","Bomb","Torch1"},
            },
            actionFilter = {
                ignoreActions = {
                    [10] = true,
                    [12] = true,
                    [13] = true,
                    [14] = true
                }
            },
            hudHideSlots = {
                hidden = {
                    [12] = true
                }
            },
            inventoryBannedItems = {
                types = {
                    Sync_CharmThrowing = itemBan.Type.FULL
                }
            },
            actionRemap = {},
            inventoryCursedSlots = {
                slots = {
                    weapon = true,
                    hud = true,
                    spell = true
                }
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Diabolical",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Diabolt.png"
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Codiago/DiaboltHead.png",
            },
        },
    },
}