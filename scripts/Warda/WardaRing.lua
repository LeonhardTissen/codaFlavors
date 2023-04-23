local customEntities = require "necro.game.data.CustomEntities"

customEntities.register{name = "RingWarda",
    DynChar_dynamicItem = {
        framesX = 4,
        framesY = 1,
        height = 24,
        offsetX = 0,
        offsetY = 0,
        texture = "mods/DynChar/gfx/ring_war.png",
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
        name = "Ring Of Warda"
    },
    hoverEffect = {
        offset = -2,
        period = 1.35
    },
    hoverEffectAlwaysEnabled = {},
    item = {},
    itemAttackDamageIncrease = {
        increase = 1
    },
    itemAttackOverrideKnockback = {
        distance = 1
    },
    itemCleanable = {},
    itemCommon = {},
    itemDestructible = {},
    itemDiamondDealable = {
        diamonds = 3
    },
    itemHintLabel = {
        text = "+1 damage, more enemies"
    },
    itemNegateLowPercent = {},
    itemPickupAnimation = {},
    itemPickupFlyaway = {},
    itemPickupSound = {},
    itemResetDamageCountdown = {},
    itemSetRunFlag = {
        name = "warRingActive"
    },
    itemSlot = {
        name = "misc"
    },
    itemTransmutable = {},
    itemUnlockable = {
        key = "RingWar"
    },
    itemWar = {},
    minimapStaticPixel = {
        color = -16718593,
        depth = 2
    },
    pingable = {
        type = 16
    },
    position = {},
    positionalSprite = {
        offsetX = 0,
        offsetY = 0
    },
    rowOrder = {},
    sale = {},
    saleRemoveOnCollect = {},
    saleRemoveOnDespawn = {},
    shadow = {},
    shadowPosition = {},
    silhouette = {},
    sprite = {
        height = 24,
        texture = "ext/items/ring_war.png",
        width = 24
    },
    spriteCropOnDescent = {},
    spriteSheet = {},
    storable = {},
    visibility = {},
    visibilityRevealWhenLit = {},
    visibilityVisibleOnProximity = {},
    visibleByMonocle = {}
}