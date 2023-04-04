local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "CharmInfiniteThrowing",
    DynChar_dynamicItem = {
        framesX = 4,
        framesY = 1,
        height = 24,
        offsetX = 0,
        offsetY = 0,
        texture = "mods/DynChar/gfx/Sync_CharmThrowing.png",
        width = 24
    },
    DynChar_dynamicItemCopyHolderAnimation = {},
    Sync_itemThrowAnyWeapon = {
        pattern = {
        damageType = 41,
        forceAttack = true,
        multiHit = true,
        multiSwipe = "trail",
        multiSwipeExtraTile = true,
        repeatTiles = 100,
        tiles = { {
            attackFlags = 5,
            damageType = 41,
            multiHit = true,
            multiSwipe = "trail",
            offset = { 1, 0 },
            targetFlags = 1
            }, {
            attackFlags = 6,
            damageType = 41,
            multiHit = true,
            multiSwipe = "trail",
            offset = { 2, 0 },
            targetFlags = 2
            } }
        }
    },
    Sync_itemThrowAutoReturn = {},
    Sync_soundHolderThrowWeapon = {},
    audioChannel = {
        mask = 32768
    },
    collision = {
        mask = 1024
    },
    consumableAllowEmptyStack = {},
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
        name = "Throwing Charm"
    },
    hoverEffect = {
        offset = -2,
        period = 1.35
    },
    hoverEffectAlwaysEnabled = {},
    item = {},
    itemActivable = {},
    itemActivablePromptHUD = {},
    itemBanDiagonal = {},
    itemBlockDuplicatePickup = false,
    itemCommon = {},
    itemDestructible = {},
    itemDiamondDealable = {
        diamonds = 3
    },
    itemHintLabel = {
        text = "Thrown weapons return once per floor"
    },
    itemNegateLowPercent = {},
    itemOverrideDuplicates = false,
    itemPickupAnimation = {},
    itemPickupFlyaway = {},
    itemPickupSound = {},
    itemResetDamageCountdown = {},
    itemSlot = {
        name = "misc",
        priority = 0
    },
    itemStack = {
        mergeKey = "CharmInfiniteThrowing",
        quantity = inventory.INFINITY
    },
    itemStackMergeOnPickup = {},
    itemStackQuantityLabelHUD = {
        minimumQuantity = 2,
        offsetX = 0
    },
    itemTransmutable = {},
    minimapStaticPixel = {
        color = -16718593,
        depth = 2
    },
    name = "CharmInfiniteThrowing",
    pingable = {
        type = 16
    },
    position = {},
    positionalSprite = {
        offsetX = 1,
        offsetY = -2
    },
    rowOrder = {},
    sale = {},
    saleRemoveOnCollect = {},
    saleRemoveOnDespawn = {},
    shadow = {},
    shadowPosition = {},
    silhouette = {},
    soundItemActivate = {
        sound = "readyThrow"
    },
    sprite = {
        height = 27,
        texture = "mods/Sync/gfx/item/charm_throwing.png",
        width = 21
    },
    spriteCropOnDescent = {},
    spriteSheet = {},
    storable = {},
    visibility = {},
    visibilityRevealWhenLit = {},
    visibilityVisibleOnProximity = {},
    visibleByMonocle = {}
}