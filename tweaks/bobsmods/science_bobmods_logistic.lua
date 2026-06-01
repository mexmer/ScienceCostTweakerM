if mods["bobtech"] then
  -- science groups
  data:extend({
    {
      type = "item-subgroup",
      name = "sct-advanced-logistic-science-pack",
      group = "sct-science",
      order = "h_a[logistic]",
    },
  })

  -- technology
  data:extend({
    {
      type = "technology",
      name = "sct-advanced-logistic-science-pack",
      icon = "__ScienceCostTweakerM__/graphics/bobmods/logistic-science-pack-128.png",
      icon_size = 128,
      essential = true,
      effects = {
        --[[      
        {
          type = "unlock-recipe",
          recipe = "advanced-logistic-science-pack",
        },
]]
        --
        {
          type = "unlock-recipe",
          recipe = "sct-logistic-cargo-unit",
        },
        {
          type = "unlock-recipe",
          recipe = "sct-logistic-memory-unit",
        },
        {
          type = "unlock-recipe",
          recipe = "sct-logistic-unimover",
        },
        {
          type = "unlock-recipe",
          recipe = "sct-logistic-automated-storage",
        },
      },
      prerequisites = {
        --        "chemical-science-pack"
      },
      unit = {
        count = 90,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "sct-pack-d[logistic]",
    },
  })
  sctm.tech_dependency_add("sct-advanced-logistic-science-pack", "processing-unit")

  -- logistic pack items
  data:extend({
    {
      type = "item",
      name = "sct-logistic-cargo-unit",
      icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-cargo-unit.png",
      icon_size = 32,
      subgroup = "sct-advanced-logistic-science-pack",
      order = "h_a[logistic]-b[cargo]",
      stack_size = 200,
    },

    {
      type = "item",
      name = "sct-logistic-unimover",
      icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-unimover.png",
      icon_size = 32,
      subgroup = "sct-advanced-logistic-science-pack",
      order = "h_a[logistic]-c[unimover]",
      stack_size = 200,
    },

    {
      type = "item",
      name = "sct-logistic-automated-storage",
      icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-automated-storage.png",
      icon_size = 32,
      subgroup = "sct-advanced-logistic-science-pack",
      order = "h_a[logistic]-d[storage]",
      stack_size = 200,
    },

    {
      type = "item",
      name = "sct-logistic-memory-unit",
      icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-memory-unit.png",
      icon_size = 32,
      subgroup = "sct-advanced-logistic-science-pack",
      order = "h_a[logistic]-e[memory-unit]",
      stack_size = 200,
    },
  })

  -- logistic science pack
  data:extend({
    {
      type = "recipe",
      name = "sct-advanced-logistic-science-pack",
      subgroup = "sct-advanced-logistic-science-pack",
      order = "h_a[logistic]",
      enabled = false,
      always_show_made_in = true,
      allow_productivity = true,
      energy_required = 14,
      ingredients = {
        { type = "item", name = "sct-logistic-cargo-unit", amount = 1 },
        { type = "item", name = "sct-logistic-memory-unit", amount = 1 },
      },
      results = {
        { type = "item", name = "bob-advanced-logistic-science-pack", amount = 2 },
      },
    },
  })

  -- logistic intermediate recipes
  data:extend({
    {
      type = "recipe",
      name = "sct-logistic-cargo-unit",
      subgroup = "sct-advanced-logistic-science-pack",
      order = "h_a[logistic]-b[cargo]",
      enabled = false,
      energy_required = 3,
      ingredients = {
        { type = "item", name = "sct-logistic-unimover", amount = 1 },
        { type = "item", name = "sct-logistic-automated-storage", amount = 1 },
      },
      results = {
        { type = "item", name = "sct-logistic-cargo-unit", amount = 1 },
      },
    },
  })

  if mods["bobplates"] then
    data:extend({
      {
        type = "recipe",
        name = "sct-logistic-automated-storage",
        subgroup = "sct-advanced-logistic-science-pack",
        order = "h_a[logistic]-d[storage]",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "bob-titanium-gear-wheel", amount = 1 },
          { type = "item", name = "bob-titanium-bearing-ball", amount = 3 },
          { type = "item", name = "processing-unit", amount = 1 },
          { type = "item", name = "bob-cobalt-steel-alloy", amount = 2 },
        },
        results = {
          { type = "item", name = "sct-logistic-automated-storage", amount = 1 },
        },
      },
    })

    data:extend({
      {
        type = "recipe",
        name = "sct-logistic-unimover",
        subgroup = "sct-advanced-logistic-science-pack",
        order = "h_a[logistic]-c[unimover]",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "advanced-circuit", amount = 4 },
          { type = "item", name = "bob-titanium-bearing-ball", amount = 6 },
          { type = "item", name = "bob-titanium-gear-wheel", amount = 3 },
          { type = "item", name = "bob-aluminium-plate", amount = 8 },
          { type = "fluid", name = "lubricant", amount = 20 },
        },
        results = {
          { type = "item", name = "sct-logistic-unimover", amount = 1 },
        },
      },
    })
    sctm.tech_dependency_add("sct-advanced-logistic-science-pack", "bob-cobalt-processing")
    sctm.tech_dependency_add("sct-advanced-logistic-science-pack", "bob-titanium-processing")
  else
    data:extend({
      {
        type = "recipe",
        name = "sct-logistic-automated-storage",
        subgroup = "sct-advanced-logistic-science-pack",
        order = "h_a[logistic]-d[storage]",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "fast-inserter", amount = 1 },
          { type = "item", name = "steel-chest", amount = 2 },
        },
        results = {
          { type = "item", name = "sct-logistic-automated-storage", amount = 1 },
        },
      },
    })

    data:extend({
      {
        type = "recipe",
        name = "sct-logistic-unimover",
        subgroup = "sct-advanced-logistic-science-pack",
        order = "h_a[logistic]-c[unimover]",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "flying-robot-frame", amount = 1 },
          { type = "item", name = "express-transport-belt", amount = 2 },
        },
        results = {
          { type = "item", name = "sct-logistic-unimover", amount = 1 },
        },
      },
    })
    sctm.tech_dependency_add("sct-advanced-logistic-science-pack", "robotics")
    sctm.tech_dependency_add("sct-advanced-logistic-science-pack", "logistics-3")
  end

  if not mods["bobelectronics"] then
    data:extend({
      {
        type = "recipe",
        name = "sct-logistic-memory-unit",
        subgroup = "sct-advanced-logistic-science-pack",
        order = "h_a[logistic]-e[memory-unit]",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "arithmetic-combinator", amount = 1 },
          { type = "item", name = "constant-combinator", amount = 2 },
        },
        results = {
          { type = "item", name = "sct-logistic-memory-unit", amount = 1 },
        },
      },
    })
  elseif mods["bobplates"] then
    data:extend({
      {
        type = "recipe",
        name = "sct-logistic-memory-unit",
        subgroup = "sct-advanced-logistic-science-pack",
        order = "h_a[logistic]-e[memory-unit]",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "bob-gilded-copper-cable", amount = 3 },
          { type = "item", name = "bob-integrated-electronics", amount = 2 },
          { type = "item", name = "bob-solder", amount = 2 },
        },
        results = {
          { type = "item", name = "sct-logistic-memory-unit", amount = 1 },
        },
      },
    })
    sctm.tech_dependency_add("sct-advanced-logistic-science-pack", "bob-gold-processing")
  else
    data:extend({
      {
        type = "recipe",
        name = "sct-logistic-memory-unit",
        subgroup = "sct-advanced-logistic-science-pack",
        order = "h_a[logistic]-e[memory-unit]",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "bob-integrated-electronics", amount = 4 },
          { type = "item", name = "constant-combinator", amount = 2 },
        },
        results = {
          { type = "item", name = "sct-logistic-memory-unit", amount = 1 },
        },
      },
    })
  end
end
