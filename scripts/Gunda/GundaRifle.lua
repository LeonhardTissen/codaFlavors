local customEntities = require "necro.game.data.CustomEntities"

customEntities.register{name = "WeaponRifle",
  DynChar_dynamicItem = {
    framesX = 8,
    framesY = 1,
    height = 24,
    offsetX = 0,
    offsetY = 0,
    texture = "mods/DynChar/gfx/weapon_rifle.png",
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
    name = "Rifle"
  },
  hoverEffect = {
    offset = -2,
    period = 1.35
  },
  hoverEffectAlwaysEnabled = {},
  item = {},
  itemCleanable = {},
  itemCommon = {},
  itemDestructible = {},
  itemFlyawayOnActivation = {
    text = "Reloading!"
  },
  itemHintLabel = {
    text = "Ranged attack, needs loading, piercing"
  },
  itemNegateLowPercent = {},
  itemPickupAnimation = {},
  itemPickupFlyaway = {},
  itemPickupSound = {
    sound = "pickupWeapon"
  },
  itemResetDamageCountdown = {},
  itemSlot = {
    name = "weapon"
  },
  itemSpriteOffsetHUD = {
    offsetY = -5
  },
  itemTraining = {},
  itemTransmutable = {},
  itemUnlockOnPickup = {
    key = "WeaponRifle"
  },
  itemUnlockable = {
    key = "WeaponRifle"
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
    offsetX = -0,
    offsetY = -10
  },
  rowOrder = {},
  sale = {},
  saleRemoveOnCollect = {},
  saleRemoveOnDespawn = {},
  shadow = {},
  shadowPosition = {},
  silhouette = {},
  soundItemActivate = {
    sound = "blunderbussReload"
  },
  soundWeaponAttackLoaded = {
    sound = "rifleShoot"
  },
  soundWeaponAttackLoadedLast = {
    sound = "rifleLastshot"
  },
  sprite = {
    height = 37,
    texture = "ext/items/weapon_rifle.png",
    width = 25
  },
  spriteCropOnDescent = {},
  spriteSheet = {},
  storable = {},
  visibility = {},
  visibilityRevealWhenLit = {},
  visibilityVisibleOnProximity = {},
  visibleByMonocle = {},
  weapon = {},
  weaponAmmoCounterHUD = {
    offsetX = -4
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
  weaponRanged = {},
  weaponReloadable = {
    ammo = 0,
    ammoPerReload = 1,
    maximumAmmo = 3,
    pattern = {
      attackFlags = 4,
      damageType = 41,
      dashCollisionMask = 0,
      dashDirection = 5,
      dashMoveType = 827383,
      forceAttack = true,
      multiHit = true,
      multiSwipe = "trail",
      multiSwipeExtraTile = true,
      passWalls = false,
      repeatTiles = 20,
      tiles = { {
          damageMultiplier = 3,
          offset = { 1, 0 }
        } }
    }
  },
  weaponReloadableAmmoSprite = {
    frameXOffsets = { 0,
      [0] = 1
    },
    whileDropped = false
  },
  weaponType = {
    component = "weaponTypeRifle",
    name = "Rifle"
  },
  weaponTypeRifle = {}
}