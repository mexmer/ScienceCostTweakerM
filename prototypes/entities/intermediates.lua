data:extend({

  -- Junk Byproducts
  -- =============================
  {
    type = "item",
    name = "sct-waste-copperonly",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-copperonly.png",
    icon_size = 32,
    subgroup = "sct-byproducts",
    order = "c[bp]-a[copperwaste]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "sct-waste-ironcopper",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-ironcopper.png",
    icon_size = 32,
    subgroup = "sct-byproducts",
    order = "c[bp]-b[mixedewaste]",
    stack_size = 200,
  },

  -- Tier 1 Intermediary products.
  -- =============================
  {
    type = "item",
    name = "sct-t1-ironcore",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t1-iron-core.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-1",
    order = "d[t1]-b[ironcore]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-t1-magnet-coils",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t1-magnet-coils.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-1",
    order = "d[t1]-c[magnet-coils]",
    stack_size = 200,
  },

  -- Tier 2 Intermediary products.
  -- =============================
  {
    type = "item",
    name = "sct-t2-instruments",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t2-instruments.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-2",
    order = "e[t2]-b[instruments]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-t2-microcircuits",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t2-microcircuits.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-2",
    order = "e[t2]-c[microcircuits]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-t2-micro-wafer",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t2-micro-wafer.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-2",
    order = "e[t2]-d[micro-wafer]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-t2-wafer-stamp",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t2-wafer-stamp.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-2",
    order = "e[t2]-e[wafer-stamp]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-t2-reaction-nodes",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t2-reaction-nodes.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-2",
    order = "e[t2]-f[reaction-nodes]",
    stack_size = 200,
  },

  -- Tier 3 (optics) Intermediary products.
  -- =============================
  {
    type = "item",
    name = "sct-t3-femto-lasers",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t3-femto-lasers.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-3",
    order = "f[t3]-b[femtolasers]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-t3-flash-fuel",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t3-flash-fuel.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-3",
    order = "f[t3]-c[flashfuel]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-t3-laser-foci",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t3-laser-foci.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-3",
    order = "f[t3]-d[laserfoci]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-t3-laser-emitter",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t3-laser-emitter.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-3",
    order = "f[t3]-e[laseremitter]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-t3-atomic-sensors",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-t3-atomic-sensors.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-3",
    order = "f[t3]-f[atomicsensors]",
    stack_size = 200,
  },

  -- Military Intermediary products.
  -- =============================
  {
    type = "item",
    name = "sct-mil-plating",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-plating.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-mil",
    order = "g[mil]-b[plating]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-mil-subplating",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-subplating.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-mil",
    order = "g[mil]-c[subplating]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-mil-circuit3",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-circuit3.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-mil",
    order = "g[mil]-d[circuit3]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-mil-circuit2",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-circuit2.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-mil",
    order = "g[mil]-e[circuit2]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-mil-circuit1",
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-circuit1.png",
    icon_size = 32,
    subgroup = "sct-sciencepack-mil",
    order = "g[mil]-f[circuit1]",
    stack_size = 200,
  },

  -- Production Intermediary products.
  -- =============================
  {
    type = "item",
    name = "sct-cyan-wire",
    icon_size = 64,
    icon = "__ScienceCostTweakerM__/graphics/icons/cyan-wire.png",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-b[cyan-wire]",
    stack_size = 200,
  },

  -- =============================
  {
    type = "item",
    name = "sct-magenta-wire",
    icon_size = 64,
    icon = "__ScienceCostTweakerM__/graphics/icons/magenta-wire.png",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-c[cyan-wire]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-prod-bioprocessor",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-prod-bioprocessor.png",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-d[bioprocessor]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-prod-baked-biopaste",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-prod-baked-biopaste.png",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-e[biopaste]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-prod-biosilicate",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-prod-biosilicate.png",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-f[biosilicate]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-prod-overclocker",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-prod-overclocker.png",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-g[overclocker]",
    stack_size = 200,
  },

  {
    type = "item",
    name = "sct-prod-chipcase",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-prod-chipcase.png",
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-h[chipcase]",
    stack_size = 200,
  },

  -- Utility Intermediary products.
  -- =============================

  -- Energy Bank
  {
    type = "item",
    name = "sct-htech-capbank",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-capbank.png",
    subgroup = "sct-sciencepack-hightech",
    order = "i[ht]-b[capbank]",
    stack_size = 200,
  },

  -- Particle Injector
  {
    type = "item",
    name = "sct-htech-injector",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-injector.png",
    subgroup = "sct-sciencepack-hightech",
    order = "i[ht]-c[injector]",
    stack_size = 200,
  },

  -- Mechanical Random Number Analyzer
  {
    type = "item",
    name = "sct-htech-random",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-random.png",
    subgroup = "sct-sciencepack-hightech",
    order = "i[ht]-d[random]",
    stack_size = 200,
  },

  -- Heated Thermal Store
  {
    type = "item",
    name = "sct-htech-thermalstore-heated",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-thermalstore-heated.png",
    subgroup = "sct-sciencepack-hightech",
    order = "i[ht]-e[thermalstore-heated]",
    stack_size = 200,
  },

  -- Thermal Store
  {
    type = "item",
    name = "sct-htech-thermalstore",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-thermalstore.png",
    subgroup = "sct-sciencepack-hightech",
    order = "i[ht]-f[thermalstore]",
    stack_size = 200,
  },

  --[[ all bellow was never used - might use it in future
  -- Quantum Plating
  {
    type = "item",
    name = "sct-bm4-plating",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
    subgroup = "sct-sciencepack-hightech",
    order = "f[bm4-plating]",
    stack_size = 200
  },

  -- Charged Coils
  {
    type = "item",
    name = "sct-bm4-part3b",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part1c.png",
    subgroup = "sct-sciencepack-hightech",
    order = "f[bm4-part3b]",
    stack_size = 200
  },

  -- Chemical Temper
  {
    type = "item",
    name = "sct-bm4-part3c",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
    subgroup = "sct-sciencepack-hightech",
    order = "f[bm4-part3c]",
    stack_size = 200
  },

  -- Virtual Particle Emitter
  {
    type = "item",
    name = "sct-bm4-part3d",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2b.png",
    subgroup = "sct-sciencepack-hightech",
    order = "f[bm4-part3d]",
    stack_size = 200
  },

  -- Capacitor Stack
  {
    type = "item",
    name = "sct-bm4-part4a",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
    subgroup = "sct-sciencepack-hightech",
    order = "f[bm4-part4a]",
    stack_size = 200
  },

  -- Thermal Shield
  {
    type = "item",
    name = "sct-bm4-part4b",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
    subgroup = "sct-sciencepack-hightech",
    order = "f[bm4-part4b]",
    stack_size = 200
  },

  -- Nanofusion Core
  {
    type = "item",
    name = "sct-bm4-part4c",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
    subgroup = "sct-sciencepack-hightech",
    order = "f[bm4-part4c]",
    stack_size = 200
  },

  -- Virtual Particle Shield
  {
    type = "item",
    name = "sct-bm4-part4d",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
    subgroup = "sct-sciencepack-hightech",
    order = "f[bm4-part4d]",
    stack_size = 200
  },
  ]]
  --

  -- Labs Intermediates
  -- =====================
  -- Electromagnetic lab construction
  {
    type = "item",
    name = "sct-lab1-construction",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-lab1-construction.png",
    subgroup = "sct-labparts",
    order = "b[labparts]-a[lab1]-b[construction]",
    stack_size = 10,
  },
  -- Electromagnetic lab mechanization
  {
    type = "item",
    name = "sct-lab1-mechanization",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-lab1-mechanization.png",
    subgroup = "sct-labparts",
    order = "b[labparts]-a[lab1]-c[mechanization]",
    stack_size = 10,
  },

  -- Electrochemic lab construction
  {
    type = "item",
    name = "sct-lab2-construction",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-lab2-construction.png",
    subgroup = "sct-labparts",
    order = "b[labparts]-b[lab2]-b[construction]",
    stack_size = 10,
  },
  -- Electrochemic lab automatization
  {
    type = "item",
    name = "sct-lab2-automatization",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-lab2-automatization.png",
    subgroup = "sct-labparts",
    order = "b[labparts]-b[lab2]-c[automatization]",
    stack_size = 10,
  },

  -- Spectrum lab construction
  {
    type = "item",
    name = "sct-lab3-construction",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-lab3-construction.png",
    subgroup = "sct-labparts",
    order = "b[labparts]-c[lab3]-c[construction]",
    stack_size = 10,
  },

  -- Spectrum lab optics
  {
    type = "item",
    name = "sct-lab3-optics",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-lab3-optics.png",
    subgroup = "sct-labparts",
    order = "b[labparts]-c[lab3]-c[optics]",
    stack_size = 10,
  },

  -- Sulfur lightsource
  {
    type = "item",
    name = "sct-t3-sulfur-lightsource",
    icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/icons/sct-t3-sulfur-lightsource-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/3.png",
      },
    },
    subgroup = "sct-labparts",
    order = "b[labparts]-c[lab3]-c[sle]",
    stack_size = 10,
  },

  -- Quantum lab construction
  {
    type = "item",
    name = "sct-lab4-construction",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-lab4-construction.png",
    subgroup = "sct-labparts",
    order = "b[labparts]-d[lab4]-b[construction]",
    stack_size = 10,
  },
  -- Quantum lab manipulators
  {
    type = "item",
    name = "sct-lab4-manipulators",
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/icons/sct-lab4-manipulators.png",
    subgroup = "sct-labparts",
    order = "b[labparts]-d[lab4]-c[manipulators]",
    stack_size = 10,
  },
})
