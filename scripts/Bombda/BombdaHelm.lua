local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "HeadBlastHelm",
  DynChar_dynamicItem = {
    framesX = 4,
    framesY = 1,
    height = 24,
    offsetX = 0,
    offsetY = 0,
    texture = "mods/DynChar/gfx/head_blast_helm.png",
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
    name = "Blast Helm"
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
  itemDiamondDealable = {
    diamonds = 2
  },
  itemHintLabel = {
    text = "Bomb immunity, +3 bombs"
  },
  itemIncomingDamageImmunityFlyaway = {
    text = "Protected!"
  },
  itemIncomingDamageTypeImmunityLate = {
    immuneDamageTypes = 16
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
    key = "HeadBlastHelm"
  },
  itemUpgradeSlotSpellCasts = {
    slots = {
      bomb = true,
      spell = true
    },
    upgradeType = "instantExplosion"
  },
  minimapStaticPixel = {
    color = -16718593,
    depth = 2
  },
  name = "HeadBlastHelm",
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
    height = 21,
    texture = "ext/items/head_blast_helm.png",
    width = 22
  },
  spriteCropOnDescent = {},
  spriteSheet = {},
  storable = {},
  visibility = {},
  visibilityRevealWhenLit = {},
  visibilityVisibleOnProximity = {},
  visibleByMonocle = {}
}