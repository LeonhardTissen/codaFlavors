local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "WeaponLynda",
    DynChar_dynamicItem = {
        framesX = 4,
        framesY = 1,
        height = 24,
        offsetX = 0,
        offsetY = 0,
        texture = "mods/DynChar/gfx/weapon_dagger.png",
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
        name = "Dagger"
    },
    hoverEffect = {
        offset = -2,
        period = 1.35
    },
    hoverEffectAlwaysEnabled = {},
    item = {},
    itemActivablePromptHUD = {},
    itemBaseDagger = {},
    itemCommon = {},
    itemDestructible = {},
    itemHintLabel = {
        text = "Dagger, throwable"
    },
    itemNegateLowPercent = {},
    itemOverlaySpriteHUD = {
        height = 24,
        texture = "ext/items/weaponglow_dagger.png",
        width = 24
    },
    itemPickupAnimation = {},
    itemPickupFlyaway = {},
    itemPickupSound = {
        sound = "pickupWeapon"
    },
    itemPrice = {
        blood = 1,
        coins = 1
    },
    itemResetDamageCountdown = {},
    itemSlot = {
        name = "weapon"
    },
    itemTraining = {},
    itemUnlockable = {
        key = "WeaponDagger"
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
    soundItemActivate = {
        sound = "readyThrow"
    },
    soundWeaponThrow = {},
    sprite = {
        height = 24,
        texture = "mods/CodaFlavors/sprites/LyndaDagger.png",
        width = 24
    },
    spriteCropOnDescent = {},
    spriteSheet = {},
    storable = {},
    visibility = {},
    visibilityRevealWhenLit = {},
    visibilityVisibleOnProximity = {},
    visibleByMonocle = {},
    weapon = {},
    weaponCheckOriginCollision = {},
    weaponMaterial = {
        component = "weaponMaterialBase",
        name = "Base"
    },
    weaponMaterialBase = {},
    weaponPattern = {
        pattern = {
        swipe = "dagger",
        tiles = { {
            offset = { 1, 0 }
            } }
        }
    },
    weaponType = {
        component = "weaponTypeDagger",
        name = "Dagger"
    },
    weaponKnockback = {
        distance = 99
    },
    weaponTypeDagger = {}
}