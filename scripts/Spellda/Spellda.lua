local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Spellda",
    template=customEntities.template.player(7),
    components = {
        {
            friendlyName={name="Spellda"},
			textCharacterSelectionMessage = { text = "Spellda mode!\nUse spells only to defeat enemies!" },
			cloneSprite = {
                texture = "mods/Spellda/sprites/SpelldaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/Spellda/sprites/SpelldaBestiary.png",
            },
			sprite={
                texture= "mods/Spellda/sprites/SpelldaBody.png",
            },
            initialEquipment={
                items={"ShovelBasic","HudBackpack","CodaFlavors_SpelldaFireball","CodaFlavors_SpelldaPulse","CodaFlavors_SpelldaFreeze","CodaFlavors_SpelldaCharm","Bomb3","CharmNazar"},
            },
            inventoryCursedSlots = {
                slots = {
                    shield = true;
                }
            },
            inventoryBannedItemTypes = {
                types = {
                ArmorGi = itemBan.Type.FULL,
                FeetBootsStrength = itemBan.Type.FULL,
                HeadSpikedEars = itemBan.Type.FULL,
                HeadSunglasses = itemBan.Type.FULL,
                HeadGlassJaw = itemBan.Type.FULL,
                CharmRisk = itemBan.Type.FULL,
                CharmStrength = itemBan.Type.FULL,
                RingMight = itemBan.Type.FULL,
                RingPiercing = itemBan.Type.FULL,
                RingRegeneration = itemBan.Type.FULL,
                RingWar = itemBan.Type.FULL,
                RingFrost = itemBan.Type.FULL,
                Sync_CharmThrowing = itemBan.Type.FULL,
                SpellFireball = itemBan.Type.FULL,
                SpellPulse = itemBan.Type.FULL,
                SpellFreezeEnemies = itemBan.Type.FULL,
                Sync_SpellCharm = itemBan.Type.FULL
                }
            }
        },
		{
			sprite={
                texture= "mods/Spellda/sprites/SpelldaHead.png",
            },
        },
    },
}
event.entitySchemaLoadNamedEntity.add("sdafdas", {key="Sync_SpellCharm"}, function(ev)
    print(ev.entity)
end)