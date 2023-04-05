local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Gunda",
    template=customEntities.template.player(7),
    components = {
        {
            friendlyName={name="Gunda"},
			textCharacterSelectionMessage = { text = "Gunda mode!\nNo dagger.\nOnly gun." },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Gunda/GundaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Gunda/GundaBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"ShovelBasic","CodaFlavors_WeaponRifle","Bomb","CharmNazar"},
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
                texture= "mods/CodaFlavors/sprites/Gunda/GundaHead.png",
            },
        },
    },
}

event.entitySchemaLoadNamedEntity.add("sdafdas", {key="WeaponRifle"}, function(ev)
    print(ev.entity)
end)