local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Codash",
    template=customEntities.template.player(7),
    components = {
        {
            friendlyName={name="Codash"},
			textCharacterSelectionMessage = { text = "Codash mode!\nWeak Dagger &\nInfinite Dash" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/CodashClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/CodashBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/CodashBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_WeaponCodash","CodaFlavors_SpellDashda","Bomb","CharmNazar"},
            },
            inventoryCursedSlots = {
                spell = true
            },
            inventoryBannedItemTypes = {
                types = {
                }
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/CodashHead.png",
            },
        },
    },
}