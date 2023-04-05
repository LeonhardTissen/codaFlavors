local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"

customEntities.extend {
    name="Bombda",
    template=customEntities.template.player(7),
    components = {
        {
            friendlyName={name="Bombda"},
			textCharacterSelectionMessage = { text = "Bombda mode!\nNo Dagger &\nInstant Bombs" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Bombda/BombdaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Bombda/BombdaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Bombda/BombdaBody.png",
            },
            enemyBans = {
                types = {},
            },
            initialEquipment={
                items={"CodaFlavors_SpellBomb","CodaFlavors_HeadBlastHelm"},
            },
            inventoryCursedSlots = {
                shovel = true
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
                }
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Bombda/BombdaHead.png",
            },
        },
    },
}