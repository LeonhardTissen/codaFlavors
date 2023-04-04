local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Throwda",
    template=customEntities.template.player(7),
    components = {
        {
            friendlyName={name="Throwda"},
			textCharacterSelectionMessage = { text = "Throwda mode!\nNo Attack.\nOnly Throw." },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/ThrowdaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/ThrowdaBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_WeaponThrowda","Bomb","CharmNazar","CodaFlavors_CharmInfiniteThrowing"},
            },
            inventoryCursedSlots = {
            },
            inventoryBannedItemTypes = {
                types = {
                    RingPiercing = itemBan.Type.FULL,
                    Sync_CharmThrowing = itemBan.Type.FULL
                }
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/ThrowdaHead.png",
            },
        },
    },
}