if mods["aai-industry"] then
  -- science group
  if not data.raw["item-subgroup"]["sct-science-pack-0"] then
    data:extend({
      {
        type = "item-subgroup",
        name = "sct-science-pack-0",
        group = "sct-science",
        order = "d[t0]",
      },
    })
  end

  -- intermediates
  data:extend({
    {
      type = "item",
      name = "sct-t0-crate",
      icon = "__ScienceCostTweakerM__/graphics/aai/sct-t0-crate.png",
      icon_size = 32,
      subgroup = "sct-science-pack-0",
      order = "d[t0]-b[crate]",
      stack_size = 200,
    },

    {
      type = "item",
      name = "sct-t0-solvent",
      icon = "__ScienceCostTweakerM__/graphics/aai/sct-t0-solvent.png",
      icon_size = 32,
      subgroup = "sct-science-pack-0",
      order = "d[t0]-c[solvent]",
      stack_size = 200,
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "sct-t0-crate",
      subgroup = "sct-science-pack-0",
      order = "d[t0]-b[crate]",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "stone", amount = 2 },
      },
      results = {
        { type = "item", name = "sct-t0-crate", amount = 1 },
      },
    },

    {
      type = "recipe",
      name = "sct-t0-solvent",
      subgroup = "sct-science-pack-0",
      order = "d[t0]-c[solvent]",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "iron-ore", amount = 2 },
        { type = "item", name = "wood", amount = 2 },
      },
      results = {
        { type = "item", name = "sct-t0-solvent", amount = 1 },
      },
    },
  })
  -- science pack
  data:extend({
    {
      type = "item",
      name = "sct-science-pack-0",
      icons = {
        {
          icon = "__ScienceCostTweakerM__/graphics/aai/sct-science-pack-0-64.png",
          icon_size = 64,
        },
      },
      subgroup = "sct-science-pack-0",
      order = "d[t0]-a[pack]",
      stack_size = 200,
      durability = 1,
      durability_description_key = "description.science-pack-remaining-amount-key",
      durability_description_value = "description.science-pack-remaining-amount-value",
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "sct-science-pack-0",
      subgroup = "sct-science-pack-0",
      order = "d[t0]-a[pack]",
      enabled = false,
      always_show_made_in = true,
      energy_required = 3,
      ingredients = {
        { type = "item", name = "sct-t0-crate", amount = 2 },
        { type = "item", name = "sct-t0-solvent", amount = 2 },
      },
      results = {
        { type = "item", name = "sct-science-pack-0", amount = 4 },
      },
    },
  })
end
