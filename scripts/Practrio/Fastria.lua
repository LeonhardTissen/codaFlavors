local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Fastria",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Fastria"},
			textCharacterSelectionMessage = { text = "Fastria mode!\nPractice for Coda\nAria + Bolt" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Practrio/FastriaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Practrio/FastriaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Practrio/FastriaBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Practrio/FastriaClone.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","WeaponDagger","Bomb","CharmNazar","MiscPotion"},
            },
            rhythmSubdivision = {
                factor = 2
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Tired yet?",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Practrio/FastriaHead.png",
            },
        },
    },
}