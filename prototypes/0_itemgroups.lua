data:extend({

  -- Create new intermediary products unique to science pack creation.
  -- ===================================================================

  -- c group is intermediates, we place after that
  {
    type = "item-group",
    name = "sct-science",
    order = "c-sct",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-science-64.png",
    icon_size = 64,
  },

  {
    type = "item-subgroup",
    name = "sct-labs",
    group = "sct-science",
    order = "a[labs]",
  },

  {
    type = "item-subgroup",
    name = "sct-labparts",
    group = "sct-science",
    order = "b[labparts]",
  },

  {
    type = "item-subgroup",
    name = "sct-byproducts",
    group = "sct-science",
    order = "c[bp]",
  },

  {
    type = "item-subgroup",
    name = "sct-sciencepack-1",
    group = "sct-science",
    order = "d[t1]",
  },

  {
    type = "item-subgroup",
    name = "sct-sciencepack-2",
    group = "sct-science",
    order = "e[t2]",
  },

  {
    type = "item-subgroup",
    name = "sct-sciencepack-mil",
    group = "sct-science",
    order = "f[mil]",
  },

  {
    type = "item-subgroup",
    name = "sct-sciencepack-3",
    group = "sct-science",
    order = "g[t3]",
  },

  {
    type = "item-subgroup",
    name = "sct-sciencepack-prod",
    group = "sct-science",
    order = "h[prod]",
  },

  {
    type = "item-subgroup",
    name = "sct-sciencepack-hightech",
    group = "sct-science",
    order = "i[ht]",
  },

  {
    type = "item-subgroup",
    name = "sct-sciencepack-space",
    group = "sct-science",
    order = "z[space]",
  },
})

-- move everything in science-pack subgroup to sct-science (bilka)
data.raw["item-subgroup"]["science-pack"].group = "sct-science"
data.raw["item-subgroup"]["science-pack"].order = "z"
