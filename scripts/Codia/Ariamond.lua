local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Ariamond",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Ariamond"},
			textCharacterSelectionMessage = { text = "Ariamond mode!\nMove diagonally!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Codiago/AriamondClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Codiago/AriamondBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Codiago/AriamondBody.png",
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
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Codiago/AriamondHead.png",
            },
        },
    },
}