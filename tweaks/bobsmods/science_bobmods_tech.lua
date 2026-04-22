if mods["bobtech"] then
  -- science groups
  -- technology lab2
  data:extend({
    {
      type = "technology",
      name = "sct-lab-lab2",
      icons = {
        {
          icon = "__ScienceCostTweakerM__/graphics/bobmods/lab2-128.png",
          icon_size = 128,
        },
        {
          icon = "__ScienceCostTweakerM__/graphics/overlays/5-128.png",
          icon_size = 128,
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-lab-2",
        },
      },
      prerequisites = {
        "utility-science-pack",
        "production-science-pack",
        "bob-advanced-logistic-science-pack",
      },
      unit = {
        count = 60,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
          { "bob-advanced-logistic-science-pack", 1 },
        },
        time = 40,
      },
      order = "sct-lab-d[lab2]",
    },
  })

  sctm.tech_dependency_add("space-science-pack", "sct-lab-lab2")
end
