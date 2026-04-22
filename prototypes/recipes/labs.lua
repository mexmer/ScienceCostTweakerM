-- lab recipes
data:extend({
  -- sct-lab-1
  {
    type = "recipe",
    name = "sct-lab-t1",
    subgroup = "sct-labs",
    order = "a[labs]-a[sct-lab-t1]",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "sct-lab1-construction", amount = 2 },
      { type = "item", name = "sct-lab1-mechanization", amount = 1 },
    },
    results = {
      { type = "item", amount = 1, name = "lab" },
    },
  },

  {
    type = "recipe",
    name = "sct-lab-t2",
    subgroup = "sct-labs",
    order = "a[labs]-b[sct-lab-t2]",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "lab", amount = 1 },
      { type = "item", name = "sct-lab2-construction", amount = 2 },
      { type = "item", name = "sct-lab2-automatization", amount = 1 },
    },
    results = {
      { type = "item", amount = 1, name = "sct-lab-t2" },
    },
  },

  {
    type = "recipe",
    name = "sct-lab-t3",
    subgroup = "sct-labs",
    order = "b[labs]-c[sct-lab-t3]",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "sct-lab-t2", amount = 1 },
      { type = "item", name = "sct-lab3-construction", amount = 2 },
      { type = "item", name = "sct-lab3-optics", amount = 1 },
    },
    results = {
      { type = "item", amount = 1, name = "sct-lab-t3" },
    },
  },

  {
    type = "recipe",
    name = "sct-lab-t4",
    subgroup = "sct-labs",
    order = "b[labs]-d[lab4]",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "sct-lab-t3", amount = 1 },
      { type = "item", name = "sct-lab4-construction", amount = 2 },
      { type = "item", name = "sct-lab4-manipulators", amount = 1 },
    },
    results = {
      { type = "item", amount = 1, name = "sct-lab-t4" },
    },
  },
})
