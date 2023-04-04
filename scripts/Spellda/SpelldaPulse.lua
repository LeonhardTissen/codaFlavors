local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"
customEntities.register{name = "SpelldaPulse",
DynChar_dynamicItem = {
    cropOffset = 14,
    framesX = 1,
    framesY = 1,
    height = 11,
    offsetX = -5,
    offsetY = -2,
    texture = "mods/DynChar/gfx/spell_pulse.png",
    width = 11
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
    name = "Pulse Spell"
  },
  hoverEffect = {
    offset = -2,
    period = 1.35
  },
  hoverEffectAlwaysEnabled = {},
  item = {},
  itemCastOnUse = {
    direction = 0,
    spell = "SpellcastPulse"
  },
  itemCommon = {},
  itemDestructible = {},
  itemDiamondDealable = {
    diamonds = 4
  },
  itemHUDCooldown = {},
  itemHintLabel = {
    text = "X-shaped attack"
  },
  itemNegateLowPercent = {},
  itemPickupAnimation = {},
  itemPickupFlyaway = {},
  itemPickupSound = {},
  itemPrice = {
    blood = 2,
    coins = 50,
    diamonds = 1
  },
  itemResetDamageCountdown = {},
  itemScreenFlash = {},
  itemSlot = {
    name = "spell"
  },
  itemTransmutable = {},
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
    offsetY = -0
  },
  rowOrder = {},
  sale = {},
  saleRemoveOnCollect = {},
  saleRemoveOnDespawn = {},
  shadow = {},
  shadowPosition = {},
  silhouette = {},
  spellCooldownTime = {
    cooldown = "4"
  },
  spellReusable = {},
  sprite = {
    height = 25,
    texture = "ext/items/spell_pulse.png",
    width = 25
  },
  spriteCropOnDescent = {},
  spriteSheet = {},
  storable = {},
  visibility = {},
  visibilityRevealWhenLit = {},
  visibilityVisibleOnProximity = {},
  visibleByMonocle = {},
  voiceSpellTypeSuffix = {
    suffix = "Pulse"
  }
}