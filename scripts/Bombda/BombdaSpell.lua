local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "SpellBomb",
  DynChar_dynamicItem = {
    cropOffset = 14,
    framesX = 1,
    framesY = 1,
    height = 10,
    offsetX = -4,
    offsetY = -2,
    texture = "mods/DynChar/gfx/spell_bomb.png",
    width = 8
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
    name = "Bomb Spell"
  },
  hoverEffect = {
    offset = -2,
    period = 1.35
  },
  hoverEffectAlwaysEnabled = {},
  item = {},
  itemCastOnUse = {
    direction = 0,
    spell = "SpellcastMagicBomb"
  },
  itemCleanable = {},
  itemCommon = {},
  itemDestructible = {},
  itemDiamondDealable = {
    diamonds = 3
  },
  itemHUDCooldown = {},
  itemHintLabel = {
    text = "Bomb spell"
  },
  itemNegateLowPercent = {},
  itemPickupAnimation = {},
  itemPickupFlyaway = {},
  itemPickupSound = {},
  itemResetDamageCountdown = {},
  itemScreenFlash = {},
  itemSlot = {
    name = "bomb"
  },
  itemTransmutable = {},
  itemUnlockable = {
    key = "SpellBomb"
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
    offsetX = -1,
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
    sound = "bombLit"
  },
  spellCooldownTime = {
    cooldown = "2"
  },
  spellReusable = {},
  sprite = {
    height = 24,
    texture = "ext/items/spell_bomb.png",
    width = 26
  },
  spriteCropOnDescent = {},
  spriteSheet = {},
  storable = {},
  visibility = {},
  visibilityRevealWhenLit = {},
  visibilityVisibleOnProximity = {},
  visibleByMonocle = {},
  voiceSpellTypeSuffix = {
    suffix = "Bomb"
  }
}