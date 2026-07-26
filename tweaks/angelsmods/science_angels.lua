if mods["angelsbioprocessing"] then
  -- science groups
  data:extend({
    {
      type = "item-subgroup",
      name = "sct-bio-science-pack",
      group = "sct-science",
      order = "d_a[bio]",
    },
  })

  -- bio pack items
  data:extend({
    {
      type = "item",
      name = "sct-bio-science-pack",
      icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-bio-science-pack-64.png",
      icon_size = 64,
      subgroup = "sct-bio-science-pack",
      order = "d_a[bio]",
      stack_size = 200,
    },

    {
      type = "item",
      name = "sct-bio-ground-sample",
      icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-bio-ground-sample.png",
      icon_size = 32,
      subgroup = "sct-bio-science-pack",
      order = "d_a[bio]-b[groundsample]",
      stack_size = 200,
    },

    {
      type = "item",
      name = "sct-bio-sample-scaffold",
      icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-bio-sample-scaffold.png",
      icon_size = 32,
      subgroup = "sct-bio-science-pack",
      order = "d_a[bio]-c[scaffold]",
      stack_size = 200,
    },

    {
      type = "item",
      name = "sct-bio-sample-filling",
      icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-bio-sample-filling.png",
      icon_size = 32,
      subgroup = "sct-bio-science-pack",
      order = "d_a[bio]-d[filling]",
      stack_size = 200,
    },
  })

  -- bio pack & intermediate recipes
  data:extend({
    {
      type = "recipe",
      name = "sct-bio-science-pack",
      subgroup = "sct-bio-science-pack",
      order = "d_a[bio]",
      enabled = false,
      always_show_made_in = true,
      energy_required = 5,
      ingredients = {
        { type = "item", name = "sct-bio-ground-sample", amount = 1 },
        { type = "item", name = "angels-token-bio", amount = 1 },
      },
      results = {
        { type = "item", name = "sct-bio-science-pack", amount = 1 },
      },
    },

    {
      type = "recipe",
      name = "sct-bio-ground-sample",
      subgroup = "sct-bio-science-pack",
      order = "d_a[bio]-b[groundsample]",
      enabled = false,
      energy_required = 5,
      ingredients = {
        { type = "item", name = "sct-bio-sample-scaffold", amount = 1 },
        { type = "item", name = "sct-bio-sample-filling", amount = 1 },
      },
      results = {
        { type = "item", name = "sct-bio-ground-sample", amount = 1 },
      },
    },

    {
      type = "recipe",
      name = "sct-bio-sample-scaffold",
      subgroup = "sct-bio-science-pack",
      order = "d_a[bio]-c[scaffold]",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "wood", amount = 1 },
        { type = "item", name = "angels-solid-paper", amount = 2 },
      },
      results = {
        { type = "item", name = "sct-bio-sample-scaffold", amount = 1 },
      },
    },

    {
      type = "recipe",
      name = "sct-bio-sample-filling",
      subgroup = "sct-bio-science-pack",
      order = "d_a[bio]-d[filling]",
      categories = { "angels-liquifying" },
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "angels-solid-soil", amount = 1 },
        { type = "item", name = "angels-solid-compost", amount = 2 },
        { type = "fluid", name = "water", amount = 100 },
      },
      results = {
        { type = "item", name = "sct-bio-sample-filling", amount = 1 },
      },
    },
  })

  -- bio pack technology
  data:extend({
    {
      type = "technology",
      name = "sct-bio-science-pack",
      essential = true,
      icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-bio-science-pack-128.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "sct-bio-science-pack",
        },
        {
          type = "unlock-recipe",
          recipe = "sct-bio-ground-sample",
        },
        {
          type = "unlock-recipe",
          recipe = "sct-bio-sample-scaffold",
        },
        {
          type = "unlock-recipe",
          recipe = "sct-bio-sample-filling",
        },
      },
      prerequisites = {
        "angels-composting",
        "angels-gardens",
        "angels-bio-paper-1",
      },
      unit = {
        count = 60,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 20,
      },
      order = "sct-pack-b[bio]",
    },
  })
  angelsmods.functions.allow_productivity("sct-bio-science-pack")
end
