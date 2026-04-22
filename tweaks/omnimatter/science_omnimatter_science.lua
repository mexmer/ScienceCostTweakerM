if mods["omnimatter_science"] and mods["omnimatter_crystal"] then
  -- science groups
  data:extend({
    {
      type = "item-subgroup",
      name = "sct-omni-science-pack",
      group = "sct-science",
      order = "e_a[omni]",
    },
  })

  -- omni pack intermediates
  data:extend({
    {
      type = "item",
      name = "sct-omni-pack-minerals",
      icon = "__omnimatter_crystal__/graphics/icons/shattered-omnine.png",
      icon_size = 32,
      subgroup = "sct-omni-science-pack",
      order = "e_a[omni]-b[minerals]",
      stack_size = 200,
    },

    {
      type = "item",
      name = "sct-omni-pack-tools",
      icon = "__omnimatter_crystal__/graphics/icons/crystal-reactor.png",
      icon_size = 32,
      subgroup = "sct-omni-science-pack",
      order = "e_a[omni]-c[tools]",
      stack_size = 200,
    },
  })

  -- logistic science pack
  data:extend({
    {
      type = "recipe",
      name = "sct-omni-science-pack",
      subgroup = "sct-omni-science-pack",
      order = "e_a[omni]",
      enabled = false,
      energy_required = 10,
      ingredients = {
        { type = "item", name = "sct-omni-pack-tools", amount = 1 },
        { type = "item", name = "sct-omni-pack-minerals", amount = 1 },
      },
      results = {
        { type = "item", name = "omni-pack", amount = 2 },
      },
    },
  })

  -- omnipack intermediate recipes
  data:extend({
    {
      type = "recipe",
      name = "sct-omni-pack-minerals",
      subgroup = "sct-omni-science-pack",
      order = "e_a[omni]-b[minerals]",
      category = "crafting-with-fluid",
      enabled = false,
      energy_required = 3,
      ingredients = {
        { type = "fluid", name = "omniston", amount = 20 },
        { type = "item", name = "iron-ore-crystal", amount = 2 },
      },
      results = {
        { type = "item", name = "sct-omni-pack-minerals", amount = 1 },
      },
    },
    {
      type = "recipe",
      name = "sct-omni-pack-tools",
      subgroup = "sct-omni-science-pack",
      order = "e_a[omni]-c[tools]",
      enabled = false,
      energy_required = 3,
      ingredients = {
        { type = "item", name = "fast-transport-belt", amount = 2 },
        { type = "item", name = "fast-inserter", amount = 2 },
      },
      results = {
        { type = "item", name = "sct-omni-pack-tools", amount = 1 },
      },
    },
  })
end
