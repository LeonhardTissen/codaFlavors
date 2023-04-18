local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Bonk",
    template=customEntities.template.player(5),
    components = {
        {
            friendlyName={name="Bonk"},
            CodaFlavors_menu={
                order = 1002,
                explanation = "Bolt + Monk"
            },
			textCharacterSelectionMessage = { text = "Bonk mode!\nPractice for Coda\nMonk + Bolt" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Practrio/BonkClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Practrio/BonkBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Practrio/BonkBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Practrio/BonkClone.png",
            },
            enemyBans = {
                types = {
                    "Bat2","Bat4"
                },
            },
            initialEquipment={
                items={"ShovelBlood","WeaponSpear","Bomb","CharmNazar"},
            },
            rhythmSubdivision = {
                factor = 2
            },
            health = {
                health = 6,
                maxHealth = 6
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "No Popcorn for me!",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Bonk.png"
                },
            }
        },
		{
			sprite = {
                texture= "mods/CodaFlavors/sprites/Practrio/BonkHead.png"
            },
            attachmentCopySpritePosition = {
                offsetX = 0,
                offsetY = -1,
            },
        },
    },
}