local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local damage = require "necro.game.system.Damage"

customEntities.extend {
    name="Arigato",
    template=customEntities.template.player(2),
    components = {
        {
            friendlyName={name="Arigato"},
			textCharacterSelectionMessage = { text = "Arigato mode!\nNo Attack.\nOnly Throw." },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Throwda/ArigatoBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Throwda/ArigatoBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_WeaponThrowda","CharmNazar","MiscPotion","CodaFlavors_CharmInfiniteThrowing"},
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
                texture= "mods/CodaFlavors/sprites/Throwda/ArigatoHead.png",
            },
        },
    },
}