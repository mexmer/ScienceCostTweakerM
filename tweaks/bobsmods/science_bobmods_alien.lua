if
  mods["bobtech"]
  and mods["bobenemies"]
  and settings.startup["bobmods-enemies-enablenewartifacts"]
  and settings.startup["bobmods-enemies-enablenewartifacts"].value
  and settings.startup["bobmods-enemies-enableartifacts"]
  and settings.startup["bobmods-enemies-enableartifacts"].value
then
  -- science groups
  data:extend({
    {
      type = "item-subgroup",
      name = "sct-alien-science-pack",
      group = "sct-science",
      order = "k[alien]",
    },
  })

  -- technology lab
  data:extend({
    {
      type = "technology",
      name = "sct-lab-alien",
      essential = true,
      icon_size = 128,
      icons = {
        {
          icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-lab-128.png",
          icon_size = 128,
        },
        {
          icon = "__ScienceCostTweakerM__/graphics/overlays/alien-128.png",
          icon_size = 128,
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-lab-alien",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-science-pack-gold",
        },
      },
      prerequisites = {
        "bob-artifact-processing",
        "chemical-science-pack",
        "military-science-pack",
      },
      unit = {
        count = 45,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "military-science-pack", 1 },
        },
        time = 30,
      },
      order = "sct-lab-d[alien]",
    },
  })
  sctm.tech_unlock_remove("bob-alien-research", "bob-science-pack-gold")
end
