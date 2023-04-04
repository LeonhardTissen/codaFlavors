local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"
customEntities.register{name = "SpelldaCharm",
DynChar_dynamicItem = {
    cropOffset = 14,
    framesX = 1,
    framesY = 1,
    height = 24,
    offsetX = -12,
    offsetY = -9,
    texture = "mods/DynChar/gfx/spell_charm.png",
    width = 24
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
  editorHidden = false,
  friendlyName = {
    name = "Spellda's Sexyness"
  },
  hoverEffect = {
    offset = -2,
    period = 1.35
  },
  hoverEffectAlwaysEnabled = {},
  item = {},
  itemCastOnUse = {
    direction = 0,
    spell = "Sync_SpellcastCharmGreater"
  },
  itemCommon = {},
  itemDestructible = {},
  itemHUDCooldown = {},
  itemHintLabel = {
    text = "Makes enemies fight for you"
  },
  itemNegateLowPercent = {},
  itemPickupAnimation = {},
  itemPickupFlyaway = {},
  itemPickupSound = {},
  itemPrice = {
    coins = 1000
  },
  itemResetDamageCountdown = {},
  itemScreenFlash = {},
  itemSlot = {
    name = "action"
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
    cooldown = 80
  },
  spellReusable = {},
  sprite = {
    height = 24,
    texture = "mods/Sync/gfx/item/spell_charm.png",
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
    suffix = "Charm"
  }
}