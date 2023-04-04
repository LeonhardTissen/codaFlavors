local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "CrysdaShield",
    template = customEntities.template.item('Sync_ShieldReflective'),
    Sync_itemDirectionalAttachment = {
        texture = "mods/Sync/gfx/attachment/attachment_shield_reflective.png"
    },
    Sync_itemDirectionalAttachmentStackSprite = {
        maxQuantity = 2
    },
    Sync_itemFacingDirectionFollowHolder = {},
    Sync_itemIncomingDamageImmunityDirectional = {},
    Sync_itemIncomingDamageImmunityReflect = {
        minimumDamage = 1
    },
    consumableFlyaway = {
        text = "Crystalled!",
        textLast = "Crystalled!"
    },
    descentPositionOffset = {
        collisionMask = 67087,
        offsetX = -1
    },
    facingDirection = {},
    friendlyName = {
        name = "Reflective Shield"
    },
    hoverEffect = {
        offset = -2,
        period = 1.35
    },
    hoverEffectAlwaysEnabled = {},
    item = {},
    itemBanPacifist = {},
    itemCommon = {},
    itemDestructible = {},
    itemExcludeFromBossChests = {},
    itemIncomingDamageImmunityConsume = {},
    itemSlot = {
        name = "shield"
    },
    itemStack = {
        mergeKey = "CrysdaShield",
        quantity = inventory.INFINITY
    },
    itemStackMergeOnPickup = false,
    itemStackQuantityLabelHUD = false,
    itemStackQuantityLabelWorld = false,
    minimapStaticPixel = {
        color = -16718593,
        depth = 2
    },
    position = {},
    positionalSprite = {
        offsetX = 0,
        offsetY = 0
    },
    sprite = {
        height = 24,
        texture = "mods/Sync/gfx/item/shield_reflective.png",
        width = 24
    },
}