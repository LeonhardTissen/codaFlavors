local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Codiago",
    template=customEntities.template.player(7),
    components = {
        {
            friendlyName={name="Codiago"},
			textCharacterSelectionMessage = { text = "Codiago mode!\nMove diagonally!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Codiago/CodiagoClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Codiago/CodiagoBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Codiago/CodiagoBody.png",
            },
            enemyBans = {
            },
            initialEquipment={
                items={"ShovelBasic","WeaponDagger","Bomb","CharmNazar","Torch1"},
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
            actionRemap = {},
            inventoryCursedSlots = {
                slots = {
                    weapon = true,
                    hud = true,
                    spell = true
                }
            },
            inventoryBannedItems = {
                types = {
                    Sync_CharmThrowing = itemBan.Type.FULL,
                    ArmorChainmail = itemBan.Type.FULL,
                    ArmorHeavyplate = itemBan.Type.FULL,
                    ArmorLeather = itemBan.Type.FULL,
                    ArmorObsidian = itemBan.Type.FULL,
                    ArmorPlatemail = itemBan.Type.FULL,
                    ArmorQuartz = itemBan.Type.FULL
                }
            },
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Codiago/CodiagoHead.png",
            },
        },
    },
}