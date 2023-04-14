local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "BlindaRing",
DynChar_dynamicItem = {
    framesX = 4,
    framesY = 1,
    height = 24,
    offsetX = 0,
    offsetY = 0,
    texture = "mods/DynChar/gfx/ring_shadows.png",
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
  enableVisionOnPickup = {},
  friendlyName = {
    name = "Ring Of Shadows"
  },
  hoverEffect = {
    offset = -2,
    period = 1.35
  },
  hoverEffectAlwaysEnabled = {},
  item = {},
  itemBlockVision = {},
  itemCleanable = {},
  itemCommon = {},
  itemDestructible = {},
  itemDiamondDealable = {
    diamonds = 2
  },
  itemForceSilhouetteVision = {
    component = "silhouette"
  },
  itemHintLabel = {
    text = "???"
  },
  itemIgnoreSingleChoice = {},
  itemLimitTileVisionRadius = {
    radius = 1.5
  },
  itemNegateLowPercent = {},
  itemPerspectiveModifier = {},
  itemPickupAnimation = {},
  itemPickupFlyaway = {},
  itemPickupSound = {},
  itemPurchasePriceMultiplier = {
    multiplier = 0.5
  },
  itemResetDamageCountdown = {},
  itemSlot = {
    name = "ring"
  },
  itemTransmutable = {},
  itemUnlockable = {
    key = "RingShadows"
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
  sprite = {
    height = 24,
    texture = "ext/items/ring_shadows.png",
    width = 24
  },
  spriteCropOnDescent = {},
  spriteSheet = {},
  storable = {},
  visibility = {},
  visibilityRevealWhenLit = {},
  visibilityVisibleOnProximity = {},
  visibleByMonocle = {},
  visionRadial = {
    radius = 640
  }
}