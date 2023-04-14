local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "CourdaRing",
    DynChar_dynamicItem = {
        framesX = 4,
        framesY = 1,
        height = 24,
        offsetX = 0,
        offsetY = 0,
        texture = "mods/DynChar/gfx/ring_courage.png",
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
        name = "Ring Of Courage"
    },
    hoverEffect = {
        offset = -2,
        period = 1.35
    },
    hoverEffectAlwaysEnabled = {},
    item = {},
    itemAttackDamageIncrease = false,
    itemCleanable = {},
    itemCommon = {},
    itemConditionalInvincibility = {},
    itemConditionalInvincibilityBlinkEffect = {},
    itemConditionalInvincibilityGrabImmunity = {},
    itemConditionalInvincibilityOnKill = {},
    itemDashOnKill = {
        moveType = 788861
    },
    itemDestructible = {},
    itemDiamondDealable = {
        diamonds = 3
    },
    itemHintLabel = {
        text = "Kill invulnerability+dash"
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
        name = "misc"
    },
    itemTransmutable = {},
    itemUnlockable = {
        key = "RingCourage"
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
    soundHitSuppressedItem = {
        sound = "courage"
    },
    sprite = {
        height = 24,
        texture = "ext/items/ring_courage.png",
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