local customEntities = require "necro.game.data.CustomEntities"
local inventory = require "necro.game.item.Inventory"

customEntities.register{name = "WeaponThrowda",
    template = customEntities.template.item('weapon_dagger'),
    itemHintLabel = {
        text = "Only Throwable"
    },
    itemSlot = {
        name = "weapon"
    },
    itemStack = {
        mergeKey = "WeaponThrowda",
        quantity = inventory.INFINITY
    },
    itemTransmutable = {},
    minimapStaticPixel = {
        color = -16718593,
        depth = 2
    },
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
        texture = "mods/CodaFlavors/sprites/Throwda/ThrowdaDagger.png",
        width = 24
    },
    spriteCropOnDescent = {},
    spriteSheet = {},
    storable = {},
}