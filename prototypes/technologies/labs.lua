-- add new technology tree for labs
data:extend({
  -- TIER 1
  -- tier 1 lab
  {
    type = "technology",
    name = "sct-lab-t1",
    icons = {
      {
        icon = "__ScienceCostTweakerM__/graphics/sct-lab-t1/icon-128.png",
        icon_size = 128,
      },
      {
        icon = "__ScienceCostTweakerM__/graphics/overlays/1-128.png",
        icon_size = 128,
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "lab",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-lab1-construction",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-lab1-mechanization",
      },
      {
        type = "unlock-recipe",
        recipe = "iron-stick",
      },
    },
    prerequisites = {
      "electronics",
      "steam-power",
    },
    research_trigger = {
      type = "craft-item",
      item = "electronic-circuit",
      count = 10,
    },
    order = "sct-lab-a[t1]",
  },

  -- TIER 2
  -- tier 2 lab
  {
    type = "technology",
    name = "sct-lab-t2",
    icons = {
      {
        icon = "__ScienceCostTweakerM__/graphics/sct-lab-t2/icon-128.png",
        icon_size = 128,
      },
      {
        icon = "__ScienceCostTweakerM__/graphics/overlays/2-128.png",
        icon_size = 128,
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sct-lab-t2",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-lab2-construction",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-lab2-automatization",
      },
    },
    prerequisites = {
      "fast-inserter",
      "steel-processing",
      "logistics",
    },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 20,
    },
    order = "sct-lab-b[t2]",
  },
  -- TIER 3
  -- tier 3 lab
  {
    type = "technology",
    name = "sct-lab-t3",
    icons = {
      {
        icon = "__ScienceCostTweakerM__/graphics/sct-lab-t3/icon-128.png",
        icon_size = 128,
      },
      {
        icon = "__ScienceCostTweakerM__/graphics/overlays/3-128.png",
        icon_size = 128,
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sct-lab-t3",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-t3-laser-foci",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-t3-laser-emitter",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-t3-femto-lasers",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-waste-processing-copper",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-lab3-construction",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-lab3-optics",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-t3-sulfur-lightsource",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-t3-flash-fuel",
      },
    },
    prerequisites = {
      "oil-processing",
      "plastics",
      "sulfur-processing",
    },
    unit = {
      count = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "sct-lab-c[t3]",
  },

  -- TIER 4
  -- t4 lab
  {
    type = "technology",
    name = "sct-lab-t4",
    icons = {
      {
        icon = "__ScienceCostTweakerM__/graphics/sct-lab-t4/icon-128.png",
        icon_size = 128,
      },
      {
        icon = "__ScienceCostTweakerM__/graphics/overlays/4-128.png",
        icon_size = 128,
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sct-lab-t4",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-lab4-construction",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-lab4-manipulators",
      },
      {
        type = "unlock-recipe",
        recipe = "sct-htech-injector",
      },
    },
    prerequisites = {
      "processing-unit",
      "uranium-processing",
      "bulk-inserter",
      "logistics-3",
      "low-density-structure",
      "production-science-pack",
    },
    unit = {
      count = 60,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 40,
    },
    order = "sct-lab-d[t4]",
  },
})
