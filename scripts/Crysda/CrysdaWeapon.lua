local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "WeaponCrysda",
    template = customEntities.template.item('WeaponDaggerShard'),
    sprite = {
        height = 24,
        texture = "mods/CodaFlavors/sprites/Crysda/CrysdaDagger.png",
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
    spriteCropOnDescent = {},
    spriteSheet = {},
    storable = {},
    visibility = {},
    visibilityRevealWhenLit = {},
    visibilityVisibleOnProximity = {},
    visibleByMonocle = {},
    weapon = {
        damage = 0,
        damageType = 32
    },
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
        distance = 1
    },
    weaponTypeDagger = {}
}