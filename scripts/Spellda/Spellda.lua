local customEntities = require "necro.game.data.CustomEntities"
local components = require "necro.game.data.Components"
local ecs = require "system.game.Entities"
local itemBan = require "necro.game.item.ItemBan"
local object = require "necro.game.object.Object"
local settings = require "necro.config.Settings"
local inventory = require "necro.game.item.Inventory"
local ActionItem = require "necro.game.item.ActionItem"

components.register {
    CodaFlavors_spelldaThrowSlot = {},
}
customEntities.extend {
    name="Spellda",
    template=customEntities.template.player(7),
    components = {
        {
            DynChar_dynamicCharacter = {
                slotMirrors = {},
                slotOffsets = {
                  action = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                  base = { -1, 4, -1, 4, -1, 4, -1, 4 },
                  body = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                  bomb = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                  feet = { -0.5, 3, -0.5, 3, -0.5, 3, -0.5, 3 },
                  head = { -0.5, -1, -0.5, 1, -0.5, 3, -0.5, 1 },
                  hud = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                  misc = { -0.5, 0, -0.5, 2, -0.5, 4, -0.5, 2 },
                  ring = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                  shovel = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                  spell = { -0.5, 2, -0.5, 2, -0.5, 2, -0.5, 2 },
                  torch = { -2.5, 2, -3.5, 2, -4.5, 1, -2.5, 1 },
                  weapon = { 1.5, 2, 3.5, 2, 4.5, 1, 2.5, 2 }
                }
            },
            friendlyName={name="Spellda"},
			textCharacterSelectionMessage = { text = "Spellda mode!\nUse spells only\nto defeat enemies!" },
			cloneSprite = {
                texture = "mods/CodaFlavors/sprites/Spellda/SpelldaClone.png",
            },
			playableCharacterUnlockable = false,
			playableCharacterUnlockOnRunCompletion = false,
			bestiary = {
                image = "mods/CodaFlavors/sprites/Spellda/SpelldaBestiary.png",
            },
			sprite={
                texture= "mods/CodaFlavors/sprites/Spellda/SpelldaBody.png",
            },
            initialEquipment={
                items={"ShovelBasic","BagHolding","CodaFlavors_SpelldaFireball","CodaFlavors_SpelldaPulse","CodaFlavors_SpelldaFreeze","CodaFlavors_SpelldaCharm","Bomb3","CharmNazar"},
            },
            inventoryCursedSlots = {
                slots = {
                    weapon = true;
                    spell = true;
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
            },
            CodaFlavors_spelldaThrowSlot = {},
            InGameAchievements_allZonesAchievement = {
                data = {
                    friendlyName = "Light the Way",
                    version = 0,
                },
            }
        },
		{
			sprite={
                texture= "mods/CodaFlavors/sprites/Spellda/SpelldaHead.png",
            },
        },
    },
}