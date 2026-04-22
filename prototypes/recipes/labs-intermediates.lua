-- lab intermediates
data:extend({
  -- lab vanilla ingredients {{"electronic-circuit", 10}, {"iron-gear-wheel", 10}, {"transport-belt", 4}},
  -- lab1 intermediates
  {
    type = "recipe",
    name = "sct-lab1-construction",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-stick", amount = 4 },
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-lab1-construction", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-lab1-mechanization",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "transport-belt", amount = 10 },
      { type = "item", name = "electronic-circuit", amount = 10 },
    },
    results = {
      { type = "item", name = "sct-lab1-mechanization", amount = 1 },
    },
  },

  -- lab2 intermediates
  {
    type = "recipe",
    name = "sct-lab2-construction",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-gear-wheel", amount = 4 },
      { type = "item", name = "steel-plate", amount = 2 },
    },
    results = {
      { type = "item", name = "sct-lab2-construction", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-lab2-automatization",
    energy_required = 8,
    enabled = false,
    ingredients = {
      { type = "item", name = "fast-inserter", amount = 2 },
      { type = "item", name = "splitter", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-lab2-automatization", amount = 1 },
    },
  },

  -- lab3 intermediates
  {
    type = "recipe",
    name = "sct-lab3-construction",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "chemical-plant", amount = 5 },
      { type = "item", name = "steel-plate", amount = 5 },
    },
    results = {
      { type = "item", name = "sct-lab3-construction", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-lab3-optics",
    energy_required = 12,
    enabled = false,
    ingredients = {
      { type = "item", name = "sct-t3-sulfur-lightsource", amount = 3 },
      { type = "item", name = "sct-t3-femto-lasers", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-lab3-optics", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-t3-sulfur-lightsource",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sulfur", amount = 2 },
      { type = "item", name = "plastic-bar", amount = 2 },
    },
    results = {
      { type = "item", name = "sct-t3-sulfur-lightsource", amount = 1 },
    },
  },

  -- lab4 intermediates
  {
    type = "recipe",
    name = "sct-lab4-construction",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "centrifuge", amount = 1 },
      { type = "item", name = "low-density-structure", amount = 10 },
      { type = "item", name = "express-underground-belt", amount = 2 },
    },
    results = {
      { type = "item", name = "sct-lab4-construction", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-lab4-manipulators",
    energy_required = 12,
    enabled = false,
    ingredients = {
      { type = "item", name = "sct-htech-injector", amount = 1 },
      { type = "item", name = "bulk-inserter", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = {
      { type = "item", name = "sct-lab4-manipulators", amount = 1 },
    },
  },
})
