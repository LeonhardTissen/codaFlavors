local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "ShovedaShield",
DynChar_dynamicItem = {
    framesX = 4,
    framesY = 1,
    height = 24,
    offsetX = 0,
    offsetY = 0,
    texture = "mods/DynChar/gfx/Sync_ShieldShove.png",
    width = 24
  },
  DynChar_dynamicItemCopyHolderAnimation = {},
  Sync_consumableParticleShieldBreak = {},
  Sync_itemDirectionalAttachment = {
    texture = "mods/Sync/gfx/attachment/attachment_shield_shove.png"
  },
  Sync_itemFacingDirectionFollowHolder = {},
  Sync_itemImmunityShoveConsume = {},
  Sync_itemIncomingDamageImmunityDirectional = {},
  Sync_itemShove = {
    damage = 1,
    damageType = 1033
  },
  audioChannel = {
    mask = 32768
  },
  collision = {
    mask = 1024
  },
  consumableFlyaway = {
    text = "Blocked!",
    textLast = "Crushed!"
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
  facingDirection = {},
  friendlyName = {
    name = "Shield of Shove"
  },
  hoverEffect = {
    offset = -2,
    period = 1.35
  },
  hoverEffectAlwaysEnabled = {},
  item = {},
  itemBanPacifist = {},
  itemBanPoverty = {},
  itemCommon = {},
  itemDestructible = {},
  itemExcludeFromBossChests = {},
  itemHintLabel = {
    text = "Shove attack, hit protection"
  },
  itemIncomingDamageImmunityConsume = false,
  itemNegateLowPercent = {},
  itemPickupAnimation = {},
  itemPickupFlyaway = {},
  itemPickupSound = {},
  itemResetDamageCountdown = {},
  itemSlot = {
    name = "weapon"
  },
  itemStack = {
    mergeKey = "ShovedaShield",
    quantity = inventory.INFINITY
  },
  itemStackMergeOnPickup = false,
  itemTransmutable = {},
  minimapStaticPixel = {
    color = -16718593,
    depth = 2
  },
  particleShieldBreak = {
    texture = "virtual/cropFilter?h=24&image=mods/Sync/gfx/attachment/attachment_shield_shove.png&w=24&x=0&y=0"
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
  soundConsumeItem = {
    sound = "skeletonShieldHit",
    soundLast = "skeletonShieldBreak"
  },
  soundWeaponAttackLoaded = {
    sound = "shieldShoveCrush"
  },
  soundWeaponHit = {
    sound = "shieldShovePush"
  },
  sprite = {
    height = 24,
    texture = "mods/Sync/gfx/item/shield_shove.png",
    width = 24
  },
  spriteCropOnDescent = {},
  spriteSheet = {},
  storable = {},
  visibility = {},
  visibilityRevealWhenLit = {},
  visibilityVisibleOnProximity = {},
  visibleByMonocle = {}
}