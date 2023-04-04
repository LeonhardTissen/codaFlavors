local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"
customEntities.register{name = "SpelldaFreeze",
DynChar_dynamicItem = {
    cropOffset = 14,
    framesX = 1,
    framesY = 1,
    height = 11,
    offsetX = -5,
    offsetY = -2,
    texture = "mods/DynChar/gfx/spell_freeze_enemies.png",
    width = 10
  },
  DynChar_dynamicItemHover = {
    alignX = 1,
    hoverY = 1.2,
    spacingY = 8
  },
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
    name = "Freeze Enemies Spell"
  },
  hoverEffect = {
    offset = -2,
    period = 1.35
  },
  hoverEffectAlwaysEnabled = {},
  item = {},
  itemCastOnUse = {
    direction = 0,
    spell = "SpellcastFreeze"
  },
  itemCleanable = {},
  itemCommon = {},
  itemDestructible = {},
  itemDiamondDealable = {
    diamonds = 5
  },
  itemHUDCooldown = {},
  itemHintLabel = {
    text = "Freeze enemies"
  },
  itemNegateLowPercent = {},
  itemPickupAnimation = {},
  itemPickupFlyaway = {},
  itemPickupSound = {},
  itemPrice = {
    blood = 3,
    coins = 125,
    diamonds = 3
  },
  itemResetDamageCountdown = {},
  itemScreenFlash = {},
  itemSlot = {
    name = "action"
  },
  itemTransmutable = {},
  itemUnlockable = {
    key = "SpellFreezeEnemies"
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
    offsetY = -1
  },
  rowOrder = {},
  sale = {},
  saleRemoveOnCollect = {},
  saleRemoveOnDespawn = {},
  shadow = {},
  shadowPosition = {},
  silhouette = {},
  spellCooldownTime = {
    cooldown = 32
  },
  spellReusable = {},
  sprite = {
    height = 27,
    texture = "ext/items/spell_freeze_enemies.png",
    width = 24
  },
  spriteCropOnDescent = {},
  spriteSheet = {},
  storable = {},
  visibility = {},
  visibilityRevealWhenLit = {},
  visibilityVisibleOnProximity = {},
  visibleByMonocle = {},
  voiceSpellTypeSuffix = {
    suffix = "Freeze"
  }
}