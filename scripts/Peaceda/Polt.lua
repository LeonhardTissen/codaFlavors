local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Polt",
    template=customEntities.template.player(6),
    components = {
        {
            friendlyName={name="Polt"},
            CodaFlavors_menu={
                order = 48,
                explanation = "Bolt with Peace"
            },
			textCharacterSelectionMessage = { text = "Polt mode!\n Spread love, not war!" },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Peaceda/PoltBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Peaceda/PoltBody.png",
            },
            cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Peaceda/PoltClone.png",
            },
            enemyBans = {
                types = {"Bat2","Bat4"},
            },
            initialEquipment={
                items={"ShovelCrystal","WeaponFlower","Bomb","CharmNazar","RingPeace"},
            },
            inventoryCursedSlots = {
            },
            inventoryBannedItemTypes = {
                types = {}
            },
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Thunderstruck",
                    version = 1,
                    icon = "mods/CodaFlavors/sprites/Achievements/Polt.png"
                },
            },
            rhythmSubdivision = {
                factor = 2
            },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Peaceda/PoltHead.png",
            },
        },
    },
}
}