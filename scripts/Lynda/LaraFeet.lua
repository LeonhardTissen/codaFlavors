local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "FeetBootsLara",
    DynChar_dynamicItem = {
        framesX = 4,
        framesY = 1,
        height = 24,
        offsetX = 0,
        offsetY = 2,
        texture = "mods/DynChar/gfx/feet_boots_lunging.png",
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
        name = "Boots Of Lunging"
    },
    hoverEffect = {
        offset = -2,
        period = 1.35
    },
    hoverEffectAlwaysEnabled = {},
    item = {},
    itemBanMoveAmplifier = {},
    itemCommon = {},
    itemDestructible = {},
    itemDiamondDealable = {
        diamonds = 2
    },
    itemHintLabel = {
        text = "Long jump attack"
    },
    itemHopInPlace = {},
    itemInflictDamageOnMove = {
        damage = 999,
        flyaway = "Lunge!",
        inhibitOnSlide = true,
        knockback = 1,
        type = 0
    },
    itemMoveAmplifier = {
        collisionMask = 1,
        distance = 4
    },
    itemNegateLowPercent = {},
    itemPickupAnimation = {},
    itemPickupFlyaway = {},
    itemPickupSound = {},
    itemPoolLockedChest = {
        weights = { 0 }
    },
    itemPoolLockedShop = {
        weights = { 1 }
    },
    itemPoolNeed = {},
    itemPoolSecret = {
        weights = { 0 }
    },
    itemPrice = {
        blood = 1,
        coins = 10
    },
    itemRequireTangibleHolder = {},
    itemResetDamageCountdown = {},
    itemSlot = {
        name = "feet"
    },
    itemToggleable = {
        inactiveSlotImage = "ext/gui/hud_slot_boots3.png"
    },
    itemTransmutable = {},
    minimapStaticPixel = {
        color = -16718593,
        depth = 2
    },
    name = "FeetBootsLara",
    pingable = {
        type = 16
    },
    position = {},
    positionalSprite = {
        offsetX = 4,
        offsetY = 0
    },
    rowOrder = {},
    sale = {},
    saleRemoveOnCollect = {},
    saleRemoveOnDespawn = {},
    shadow = {},
    shadowPosition = {},
    silhouette = {},
    soundItemActivate = {
        sound = "bounceTrap"
    },
    sprite = {
        height = 24,
        texture = "ext/items/feet_boots_lunging.png",
        width = 15
    },
    spriteCropOnDescent = {},
    spriteSheet = {},
    storable = {},
    visibility = {},
    visibilityRevealWhenLit = {},
    visibilityVisibleOnProximity = {},
    visibleByMonocle = {}
}