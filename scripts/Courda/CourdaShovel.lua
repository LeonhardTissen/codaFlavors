local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "CourdaShovel",
    DynChar_dynamicItem = {
        framesX = 4,
        framesY = 1,
        height = 24,
        offsetX = 0,
        offsetY = 0,
        offsetZ = -0.01,
        texture = "mods/DynChar/gfx/shovel_courage.png",
        width = 24
    },
    DynChar_dynamicItemCopyHolderAnimation = {},
    audioChannel = {
        mask = 32768
    },
    collision = {
        mask = 1024
    },
    descentDurationOverride = {
        duration = 0.4
    },
    descentIntangibleOnCompletion = {},
    descentPersistToNextLevel = {},
    descentPositionOffset = {
        collisionMask = 67087,
        offsetX = -1
    },
    friendlyName = {
        name = "Shovel Of Courage"
    },
    hoverEffect = {
        offset = -2,
        period = 1.35
    },
    hoverEffectAlwaysEnabled = {},
    item = {},
    itemBanPoverty = false,
    itemCleanable = {},
    itemCommon = {},
    itemConditionalInvincibility = {},
    itemConditionalInvincibilityBlinkEffect = {},
    itemConditionalInvincibilityGrabImmunity = {},
    itemConditionalInvincibilityOnDig = {},
    itemDashOnDig = {},
    itemDestructible = {},
    itemDiamondDealable = {
        diamonds = 4
    },
    itemHintLabel = {
        text = "+1 dig, dig dash"
    },
    itemHintLabelRebalanced = {
        text = "Dig invulnerability+dash"
    },
    itemIncomingDamageImmunityFlyaway = {
        text = "Courage!"
    },
    itemNegateLowPercent = {},
    itemPickupAnimation = {},
    itemPickupFlyaway = {},
    itemPickupSound = {},
    itemResetDamageCountdown = {},
    itemSlot = {
        name = "shovel"
    },
    itemTransmutable = {},
    itemUnlockable = {
        key = "ShovelCourage"
    },
    minimapStaticPixel = {
        color = -16718593,
        depth = 2
    },
    pingable = {
        type = 16
    },
    position = {},
    positionalSprite = {
        offsetX = -1,
        offsetY = -1
    },
    rowOrder = {},
    sale = {},
    saleRemoveOnCollect = {},
    saleRemoveOnDespawn = {},
    shadow = {},
    shadowPosition = {},
    shovel = {
        strength = 2
    },
    silhouette = {},
    soundHitSuppressedItem = {
        sound = "courage"
    },
    sprite = {
        height = 26,
        texture = "ext/items/shovel_courage.png",
        width = 26
    },
    spriteCropOnDescent = {},
    spriteSheet = {},
    storable = {},
    visibility = {},
    visibilityRevealWhenLit = {},
    visibilityVisibleOnProximity = {},
    visibleByMonocle = {}
}