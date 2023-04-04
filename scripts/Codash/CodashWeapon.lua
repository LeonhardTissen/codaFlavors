local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "WeaponCodash",
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
        name = "Codash's Dagger"
    },
    hoverEffect = {
        offset = -2,
        period = 1.35
    },
    hoverEffectAlwaysEnabled = {},
    item = {},
    itemCommon = {},
    itemDestructible = {},
    itemHintLabel = {
        text = "Eli"
    },
    itemNegateLowPercent = {},
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
    itemTransmutable = {},
    minimapStaticPixel = {
        color = -16718593,
        depth = 2
    },
    name = "WeaponCodash",
    pingable = {
        type = 16
    },
    position = {},
    positionalSprite = {
        offsetX = 1,
        offsetY = 1
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
        texture = "mods/CodaFlavors/sprites/CodashDagger.png",
        width = 24
    },
    spriteCropOnDescent = {},
    spriteSheet = {},
    storable = {},
    visibility = {},
    visibilityRevealWhenLit = {},
    visibilityVisibleOnProximity = {},
    visibleByMonocle = {},
    weapon = {
        damage = 0,
        damageType = 40
    },
    weaponCheckOriginCollision = {},
    weaponKnockback = {},
    weaponMaterial = {
        component = "weaponMaterialBase",
        name = "Base"
    },
    weaponMaterialBase = {},
    weaponPattern = {
        pattern = {
            swipe = "dagger",
            tiles = { 
                {
                    offset = { 1, 0 },
                } 
            }
        }
    }
}