if mods["omnimatter_energy"] and not data.raw["item-subgroup"]["sct-science-pack-0"] then
  -- science group
  data:extend({
    {
      type = "item-subgroup",
      name = "sct-science-pack-0",
      group = "sct-science",
      order = "d[t0]",
    },
  })
end
