local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Slowda",
    template=customEntities.template.player(7),
    components = {
        {
            friendlyName={name="Slowda"},
			textCharacterSelectionMessage = { text = "Slowda mode!\nPractice for Coda\nAria + Monk" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Practrio/SlowdaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Practrio/SlowdaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Practrio/SlowdaBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","WeaponDagger","Bomb","CharmNazar","MiscPotion"},
            },
            rhythmSubdivision = {
                factor = 1
            },
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Practrio/SlowdaHead.png",
            },
        },
    },
}