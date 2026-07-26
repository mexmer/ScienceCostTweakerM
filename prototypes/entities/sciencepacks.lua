-- since this overriding existing item, we only alter grouping here, recipe changes are in recipe

data.raw.item["automation-science-pack"].subgroup = "sct-sciencepack-1"
data.raw.item["automation-science-pack"].order = "d[t1]-a[automation-science-pack]"

data.raw.item["logistic-science-pack"].subgroup = "sct-sciencepack-2"
data.raw.item["logistic-science-pack"].order = "e[t2]-a[logistic-science-pack]"

data.raw.item["chemical-science-pack"].subgroup = "sct-sciencepack-3"
data.raw.item["chemical-science-pack"].order = "f[t3]-a[chemical-science-pack]"

data.raw.item["military-science-pack"].subgroup = "sct-sciencepack-mil"
data.raw.item["military-science-pack"].order = "g[mil]-a[military-science-pack]"

data.raw.item["production-science-pack"].subgroup = "sct-sciencepack-prod"
data.raw.item["production-science-pack"].order = "h[prod]-a[production-science-pack]"

data.raw.item["utility-science-pack"].subgroup = "sct-sciencepack-hightech"
data.raw.item["utility-science-pack"].order = "i[ht]-a[utility-science-pack]"

data.raw.item["space-science-pack"].subgroup = "sct-sciencepack-space"
data.raw.item["space-science-pack"].order = "z[space]-a[space-science-pack]"

if data.raw.item["satellite"] then
  data.raw.item["satellite"].subgroup = "sct-sciencepack-space"
  data.raw.item["satellite"].order = "z[space]-b[satellite]"
end

-- icons
data.raw.item["automation-science-pack"].icons = {
  {
    icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-1-64.png",
    icon_size = 64,
  },
}
data.raw.item["automation-science-pack"].icon = nil
data.raw.item["logistic-science-pack"].icons = {
  {
    icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-2-64.png",
    icon_size = 64,
  },
}
data.raw.item["logistic-science-pack"].icon = nil
data.raw.item["chemical-science-pack"].icons = {
  {
    icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-3-64.png",
    icon_size = 64,
  },
}
data.raw.item["chemical-science-pack"].icon = nil
data.raw.item["military-science-pack"].icons = {
  {
    icon = "__ScienceCostTweakerM__/graphics/icons/military-science-pack-64.png",
    icon_size = 64,
  },
}
data.raw.item["military-science-pack"].icon = nil
data.raw.item["production-science-pack"].icons = {
  {
    icon = "__ScienceCostTweakerM__/graphics/icons/production-science-pack-64.png",
    icon_size = 64,
  },
}
data.raw.item["production-science-pack"].icon = nil
data.raw.item["utility-science-pack"].icons = {
  {
    icon = "__ScienceCostTweakerM__/graphics/icons/utility-science-pack-64.png",
    icon_size = 64,
  },
}
data.raw.item["utility-science-pack"].icon = nil
data.raw.item["space-science-pack"].icons = {
  {
    icon = "__ScienceCostTweakerM__/graphics/icons/space-science-pack-64.png",
    icon_size = 64,
  },
}
data.raw.item["space-science-pack"].icon = nil
