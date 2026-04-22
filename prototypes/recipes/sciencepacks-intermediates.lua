data:extend({
  -- Setup the recipe for smelting the junk byproducts back into useful stuff.
  -- ===================================================================

  {
    type = "recipe",
    name = "sct-waste-processing-copper",
    localised_name = { "recipe-name.sct-waste-processing-copper" },
    category = "advanced-crafting",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-copperonly.png",
    icon_size = 32,
    subgroup = "sct-byproducts",
    order = "c[bp]-a[copperwaste]",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "sct-waste-copperonly", amount = 2 },
    },
    results = {
      { type = "item", name = "copper-ore", amount = 2 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "sct-waste-processing-mixed",
    category = "advanced-crafting",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-ironcopper.png",
    icon_size = 32,
    subgroup = "sct-byproducts",
    order = "c[bp]-b[mixedewaste]",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "sct-waste-ironcopper", amount = 2 },
    },
    results = {
      { type = "item", name = "copper-ore", amount = 1 },
      { type = "item", name = "iron-ore", amount = 1 },
    },
    allow_decomposition = false,
  },

  -- Recipes for new science packs intermediary products.
  -- ===================================================================

  -- Tier 1 Intermediary products.
  -- =============================
  -- Vanilla Tier 1 Science Pack:
  -- 5.5x time, 2x Iron plate, 1x Copper plate
  -- <- 1x Iron gear (2x Iron plate) + 1x Copper plate
  --
  -- New cost: 8.72x time, 2x Iron plate, 1x Copper plate
  {
    type = "recipe",
    name = "sct-t1-ironcore",
    subgroup = "sct-sciencepack-1",
    order = "d[t1]-b[ironcore]",
    enabled = false,
    energy_required = 1.25,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 2 },
    },
    results = {
      { type = "item", name = "sct-t1-ironcore", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-t1-magnet-coils",
    subgroup = "sct-sciencepack-1",
    order = "d[t1]-c[magnet-coils]",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 4 },
    },
    results = {
      { type = "item", name = "sct-t1-magnet-coils", amount = 8 },
    },
  },

  -- Tier 2 Intermediary products.
  -- =============================
  -- Vanilla Tier 2 Science Pack:
  -- 8.8x time, 5.5x Iron plate, 1.5x Copper plate
  -- <- 1x Transport Belt (0.5x Iron gear + 0.5x Iron plate) + 1x Inserter (1x Electronic circuit + 1x Iron gear + 1x Iron plate)
  -- <- 1.5x Gear + 2.5x Iron plate + 3x Copper cable (1.5x copper plate)
  -- <- 5.5x Iron plate + 1.5x Copper plate
  --
  -- New cost: 8.7x time, 8x Iron plate, 2x Copper plate
  {
    type = "recipe",
    name = "sct-t2-instruments",
    subgroup = "sct-sciencepack-2",
    order = "e[t2]-b[instruments]",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
      { type = "item", name = "sct-t2-microcircuits", amount = 10 },
      { type = "item", name = "electronic-circuit", amount = 1 },
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-t2-instruments", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-t2-microcircuits",
    subgroup = "sct-sciencepack-2",
    order = "e[t2]-c[microcircuits]",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 1 },
      { type = "item", name = "sct-t2-micro-wafer", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-t2-microcircuits", amount = 10 },
    },
  },

  {
    type = "recipe",
    name = "sct-t2-micro-wafer",
    subgroup = "sct-sciencepack-2",
    order = "e[t2]-d[micro-wafer]",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 2 },
      { type = "item", name = "sct-t2-wafer-stamp", amount = 4 },
    },
    results = {
      { type = "item", name = "sct-t2-micro-wafer", amount = 2 },
    },
  },

  {
    type = "recipe",
    name = "sct-t2-wafer-stamp",
    subgroup = "sct-sciencepack-2",
    order = "e[t2]-e[wafer-stamp]",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 4 },
    },
    results = {
      { type = "item", name = "sct-t2-wafer-stamp", amount = 4 },
    },
  },

  {
    type = "recipe",
    name = "sct-t2-reaction-nodes",
    subgroup = "sct-sciencepack-2",
    order = "e[t2]-f[reaction-nodes]",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
      { type = "item", name = "sct-t1-magnet-coils", amount = 2 },
      { type = "item", name = "iron-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-t2-reaction-nodes", amount = 1 },
    },
  },

  -- Tier 3 Intermediary products.
  -- =============================
  {
    type = "recipe",
    name = "sct-t3-femto-lasers",
    category = "crafting-with-fluid",
    subgroup = "sct-sciencepack-3",
    order = "f[t3]-b[femtolasers]",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "sct-t3-laser-emitter", amount = 1 },
      { type = "item", name = "sct-t3-laser-foci", amount = 1 },
      { type = "item", name = "sct-t3-flash-fuel", amount = 1 },
      { type = "fluid", name = "water", amount = 10 },
    },
    results = {
      { type = "item", name = "sct-t3-femto-lasers", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-t3-flash-fuel",
    category = "chemistry",
    always_show_made_in = true,
    subgroup = "sct-sciencepack-3",
    order = "f[t3]-c[flashfuel]",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "fluid", name = "petroleum-gas", amount = 20 },
      { type = "item", name = "steel-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-t3-flash-fuel", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-t3-laser-foci",
    subgroup = "sct-sciencepack-3",
    order = "f[t3]-d[laserfoci]",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 4 },
      { type = "item", name = "iron-plate", amount = 6 },
    },
    results = {
      { type = "item", name = "sct-t3-laser-foci", amount = 1 },
      { type = "item", name = "sct-waste-copperonly", amount = 1 },
    },
    main_product = "sct-t3-laser-foci",
  },

  {
    type = "recipe",
    name = "sct-t3-laser-emitter",
    subgroup = "sct-sciencepack-3",
    order = "f[t3]-e[laseremitter]",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "electronic-circuit", amount = 6 },
      { type = "item", name = "copper-plate", amount = 2 },
      { type = "item", name = "iron-plate", amount = 2 },
    },
    results = {
      { type = "item", name = "sct-t3-laser-emitter", amount = 1 },
      { type = "item", name = "sct-waste-copperonly", amount = 1 },
    },
    main_product = "sct-t3-laser-emitter",
  },

  {
    type = "recipe",
    name = "sct-t3-atomic-sensors",
    category = "crafting-with-fluid",
    subgroup = "sct-sciencepack-3",
    order = "f[t3]-f[atomicsensors]",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "advanced-circuit", amount = 1 },
      { type = "item", name = "iron-plate", amount = 12 },
      { type = "item", name = "sct-t1-magnet-coils", amount = 22 },
      { type = "fluid", name = "water", amount = 20 },
    },
    results = {
      { type = "item", name = "sct-t3-atomic-sensors", amount = 1 },
      { type = "item", name = "sct-waste-copperonly", amount = 2 },
    },
    main_product = "sct-t3-atomic-sensors",
  },

  -- Military Intermediary products.
  -- =============================
  {
    type = "recipe",
    name = "sct-mil-plating",
    category = "advanced-crafting",
    subgroup = "sct-sciencepack-mil",
    order = "g[mil]-b[plating]",
    enabled = false,
    energy_required = 9,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 1 },
      { type = "item", name = "iron-plate", amount = 6 },
      { type = "item", name = "sct-mil-subplating", amount = 7 },
      { type = "item", name = "copper-plate", amount = 2 },
    },
    results = {
      { type = "item", name = "sct-mil-plating", amount = 1 },
      { type = "item", name = "sct-waste-ironcopper", amount = 1 },
    },
    main_product = "sct-mil-plating",
  },

  {
    type = "recipe",
    name = "sct-mil-subplating",
    subgroup = "sct-sciencepack-mil",
    order = "g[mil]-c[subplating]",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 3 },
      { type = "item", name = "copper-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-mil-subplating", amount = 1 },
      { type = "item", name = "sct-waste-ironcopper", amount = 1 },
    },
    main_product = "sct-mil-subplating",
  },

  {
    type = "recipe",
    name = "sct-mil-circuit3",
    category = "advanced-crafting",
    subgroup = "sct-sciencepack-mil",
    order = "g[mil]-d[circuit3]",
    enabled = false,
    energy_required = 3,
    ingredients = {
      { type = "item", name = "sct-mil-circuit2", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = {
      { type = "item", name = "sct-mil-circuit3", amount = 1 },
      { type = "item", name = "sct-waste-ironcopper", amount = 2 },
      { type = "item", name = "sct-waste-copperonly", amount = 1 },
    },
    main_product = "sct-mil-circuit3",
  },

  {
    type = "recipe",
    name = "sct-mil-circuit2",
    subgroup = "sct-sciencepack-mil",
    order = "g[mil]-e[circuit2]",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "sct-mil-circuit1", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    },
    results = {
      { type = "item", name = "sct-mil-circuit2", amount = 1 },
      { type = "item", name = "sct-waste-ironcopper", amount = 2 },
      { type = "item", name = "sct-waste-copperonly", amount = 1 },
    },
    main_product = "sct-mil-circuit2",
  },

  {
    type = "recipe",
    name = "sct-mil-circuit1",
    subgroup = "sct-sciencepack-mil",
    order = "g[mil]-f[circuit1]",
    enabled = false,
    energy_required = 1,
    ingredients = {
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "coal", amount = 5 },
    },
    results = {
      { type = "item", name = "sct-mil-circuit1", amount = 1 },
      { type = "item", name = "sct-waste-ironcopper", amount = 1 },
    },
    main_product = "sct-mil-circuit1",
  },

  -- Production Intermediary products.
  -- =============================
  {
    type = "recipe",
    name = "sct-cyan-wire",
    category = "crafting",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-b[cyan-wire]",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-cyan-wire", amount = 1 },
    },
  },
  {
    type = "recipe",
    name = "sct-magenta-wire",
    category = "crafting",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-c[magenta-wire]",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "copper-cable", amount = 1 },
      { type = "item", name = "electronic-circuit", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-magenta-wire", amount = 1 },
    },
  },
  {
    type = "recipe",
    name = "sct-prod-bioprocessor",
    category = "advanced-crafting",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-d[bioprocessor]",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "sct-prod-baked-biopaste", amount = 1 },
      { type = "item", name = "sct-magenta-wire", amount = 6 },
      { type = "item", name = "processing-unit", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-prod-bioprocessor", amount = 1 },
      { type = "item", name = "sct-waste-ironcopper", amount = 4 },
    },
    main_product = "sct-prod-bioprocessor",
  },

  {
    type = "recipe",
    name = "sct-prod-baked-biopaste",
    category = "smelting",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-e[biopaste]",
    always_show_made_in = true,
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sct-prod-biosilicate", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-prod-baked-biopaste", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-prod-biosilicate",
    category = "chemistry",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-f[biosilicate]",
    always_show_made_in = true,
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "stone", amount = 20 },
      { type = "item", name = "steel-plate", amount = 8 },
      { type = "item", name = "plastic-bar", amount = 4 },
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "fluid", name = "petroleum-gas", amount = 20 },
    },
    results = {
      { type = "item", name = "sct-prod-biosilicate", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-prod-overclocker",
    category = "crafting-with-fluid",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-g[overclocker]",
    enabled = false,
    energy_required = 15,
    ingredients = {
      { type = "item", name = "iron-gear-wheel", amount = 17 },
      { type = "item", name = "copper-cable", amount = 16 },
      { type = "item", name = "steel-plate", amount = 9 },
      { type = "item", name = "sct-prod-chipcase", amount = 1 },
      { type = "fluid", name = "water", amount = 120 },
    },
    results = {
      { type = "item", name = "sct-prod-overclocker", amount = 1 },
      { type = "item", name = "sct-waste-ironcopper", amount = 2 },
      { type = "item", name = "sct-waste-copperonly", amount = 1 },
    },
    main_product = "sct-prod-overclocker",
  },

  {
    type = "recipe",
    name = "sct-prod-chipcase",
    category = "crafting-with-fluid",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-h[chipcase]",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "plastic-bar", amount = 5 },
      { type = "item", name = "sct-cyan-wire", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 1 },
      { type = "fluid", name = "heavy-oil", amount = 120 },
    },
    results = {
      { type = "item", name = "sct-prod-chipcase", amount = 1 },
      { type = "item", name = "sct-waste-copperonly", amount = 1 },
    },
    main_product = "sct-prod-chipcase",
  },

  -- Utility Intermediary products.
  -- =============================

  {
    type = "recipe",
    name = "sct-htech-capbank",
    category = "advanced-crafting",
    subgroup = "sct-sciencepack-hightech",
    order = "i[ht]-b[capbank]",
    enabled = false,
    energy_required = 14,
    ingredients = {
      { type = "item", name = "battery", amount = 1 },
      { type = "item", name = "iron-plate", amount = 10 },
      { type = "item", name = "copper-cable", amount = 15 },
    },
    results = {
      { type = "item", name = "sct-htech-capbank", amount = 1 },
      { type = "item", name = "sct-waste-ironcopper", amount = 2 },
    },
    main_product = "sct-htech-capbank",
  },

  {
    type = "recipe",
    name = "sct-htech-injector",
    category = "advanced-crafting",
    subgroup = "sct-sciencepack-hightech",
    order = "i[ht]-c[injector]",
    enabled = false,
    energy_required = 7,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 3 },
      { type = "item", name = "plastic-bar", amount = 10 },
      { type = "item", name = "iron-plate", amount = 15 },
      { type = "item", name = "copper-cable", amount = 30 },
    },
    results = {
      { type = "item", name = "sct-htech-injector", amount = 1 },
      { type = "item", name = "sct-waste-ironcopper", amount = 2 },
    },
    main_product = "sct-htech-injector",
  },

  {
    type = "recipe",
    name = "sct-htech-random",
    category = "advanced-crafting",
    subgroup = "sct-sciencepack-hightech",
    order = "i[ht]-d[random]",
    enabled = false,
    energy_required = 7,
    ingredients = {
      { type = "item", name = "sct-htech-thermalstore-heated", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
    },
    results = {
      { type = "item", name = "sct-htech-random", amount = 1 },
    },
  },

  {
    type = "recipe",
    name = "sct-htech-thermalstore-heated",
    category = "smelting",
    subgroup = "sct-sciencepack-hightech",
    order = "i[ht]-e[thermalstore-heated]",
    energy_required = 10.5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sct-htech-thermalstore", amount = 1 },
    },
    results = {
      { type = "item", name = "sct-htech-thermalstore-heated", amount = 1 },
    },
    always_show_made_in = true,
  },

  {
    type = "recipe",
    name = "sct-htech-thermalstore",
    category = "advanced-crafting",
    subgroup = "sct-sciencepack-hightech",
    order = "i[ht]-f[thermalstore]",
    enabled = false,
    energy_required = 7,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 40 },
    },
    results = {
      { type = "item", name = "sct-htech-thermalstore", amount = 1 },
      { type = "item", name = "sct-waste-copperonly", amount = 1 },
    },
    main_product = "sct-htech-thermalstore",
  },
})
