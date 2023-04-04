local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "SpellDashda",
    DynChar_dynamicItem = {
        cropOffset = 14,
        framesX = 1,
        framesY = 1,
        height = 24,
        offsetX = -12,
        offsetY = -9,
        texture = "mods/DynChar/gfx/Sync_SpellDash.png",
        width = 24
    },
    DynChar_dynamicItemHover = {
        alignX = 1,
        hoverY = 1.2,
        spacingY = 8
    },
    Sync_itemSupercharge = {
        distance = 99
    },
    Sync_itemSuperchargeTell = {
        texture = "mods/Sync/gfx/swipe/dash_tell.png"
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
        name = "Dash Spell"
    },
    hoverEffect = {
        offset = -2,
        period = 1.35
    },
    hoverEffectAlwaysEnabled = {},
    item = {},
    itemActivable = {
        activeSlotImage = "mods/Sync/gfx/hud/hud_slot_dash_direction.png"
    },
    itemActivablePromptHUD = {
        offsetY = 3,
        text = "Press Arrow Key to Dash"
    },
    itemActivableShowSlotLabelHUD = {},
    itemBanPacifist = {},
    itemCastOnUse = {
        direction = 1,
        spell = "Sync_SpellDash"
    },
    itemCommon = {},
    itemDestructible = {},
    itemDiamondDealable = {
        diamonds = 4
    },
    itemHUDCooldown = {},
    itemHintLabel = {
        text = "Instant dash!"
    },
    itemNegateLowPercent = {},
    itemPickupAnimation = {},
    itemPickupFlyaway = {},
    itemPickupSound = {},
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
    name = "SpellDashda",
    pingable = {
        type = 16
    },
    position = {},
    positionalSprite = {
        offsetX = -1,
        offsetY = -1
    },
    rowOrder = {},
    sale = {},
    saleRemoveOnCollect = {},
    saleRemoveOnDespawn = {},
    shadow = {},
    shadowPosition = {},
    silhouette = {},
    soundItemActivate = {
        sound = "spellDash"
    },
    spellBloodMagic = {
        damage = 2,
        killerName = "Blood Magic (Dash)"
    },
    spellCooldownKills = {
        cooldown = 0
    },
    spellReusable = {},
    spellcastFlyaway = {
        text = "Dash!"
    },
    spellcastUpgradable = {
        upgradeTypes = {
            greater = "Sync_SpellcastDashGreater"
        }
    },
    sprite = {
        height = 26,
        texture = "mods/Sync/gfx/item/spell_dash.png",
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
        suffix = "Dash"
    }
}