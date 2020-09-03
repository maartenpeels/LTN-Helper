--[[
--]]

-- ENTITY
local ltnh_entity = table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
ltnh_entity.name = "ltn-combinator"
ltnh_entity.item_slot_count = 27
ltnh_entity.minable.result = "ltn-combinator"
ltnh_entity.fast_replaceable_group = "constant-combinator"
ltnh_entity.sprites = make_4way_animation_from_spritesheet({
  layers = {
    {
      filename = "__LTN_Helper__/graphics/ltn-combinator.png",
      width = 58,
      height = 52,
      frame_count = 1,
      shift = util.by_pixel(0, 5),
      hr_version = {
        scale = 0.5,
        filename = "__LTN_Helper__/graphics/hr-ltn-combinator.png",
        width = 114,
        height = 102,
        frame_count = 1,
        shift = util.by_pixel(0, 5),
      },
    },
    {
      filename = "__base__/graphics/entity/combinator/constant-combinator-shadow.png",
      width = 50,
      height = 34,
      frame_count = 1,
      shift = util.by_pixel(9, 6),
      draw_as_shadow = true,
      hr_version = {
        scale = 0.5,
        filename = "__base__/graphics/entity/combinator/hr-constant-combinator-shadow.png",
        width = 98,
        height = 66,
        frame_count = 1,
        shift = util.by_pixel(8.5, 5.5),
        draw_as_shadow = true,
      },
    },
  },
})

data:extend({ltnh_entity})

-- ITEM
local ltnh_item = table.deepcopy(data.raw["item"]["constant-combinator"]) 
ltnh_item.name = "ltn-combinator"
ltnh_item.icon = "__LTN_Helper__/graphics/ltn-combinator-item.png"
ltnh_item.icon_size = 64
ltnh_item.icon_mipmaps = 4
ltnh_item.subgroup = "circuit-network"
ltnh_item.place_result="ltn-combinator"
ltnh_item.order = "c[combinators]-z[ltn-combinator]"
ltnh_item.stack_size= 50

data:extend({ltnh_item})

-- RECIPE
local ltnh_recipe = {}
ltnh_recipe.type = "recipe"
ltnh_recipe.name = "ltn-combinator"
ltnh_recipe.icon = "__LTN_Helper__/graphics/ltn-combinator-item.png"
ltnh_recipe.icon_size = 64
ltnh_recipe.icon_mipmaps = 4
ltnh_recipe.enabled = "false"
ltnh_recipe.ingredients = {{"constant-combinator", 1}, {"electronic-circuit", 1}}
ltnh_recipe.result = "ltn-combinator"

data:extend({ltnh_recipe})
