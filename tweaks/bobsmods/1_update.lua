if data.raw.item["bob-advanced-processing-unit"] then
  sctm.recipe_ingredient_replace("sct-lab4-manipulators", "processing-unit", "bob-advanced-processing-unit")
  sctm.tech_dependency_add("sct-lab-t4", "bob-advanced-processing-unit")
  sctm.recipe_ingredient_replace(
    "sct-htech-injector",
    "processing-unit",
    { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
  )
end

if mods["bobelectronics"] or mods["boblogistics"] or mods["bobplates"] then
  sctm.recipe_ingredient_remove("sct-t3-flash-fuel", "petroleum-gas")
  sctm.recipe_ingredient_add("sct-t3-flash-fuel", { type = "fluid", name = "heavy-oil", amount = 10 })
  sctm.recipe_ingredient_add("sct-t3-flash-fuel", { type = "fluid", name = "light-oil", amount = 10 })
  sctm.tech_dependency_remove("sct-production-science-pack", "advanced-oil-processing")
end

if data.raw["recipe-category"]["electronics"] then
  sctm.add_additional_category("sct-t1-ironcore", "electronics")
  sctm.add_additional_category("sct-t1-magnet-coils", "electronics")
  sctm.add_additional_category("sct-t2-instruments", "electronics")
  sctm.add_additional_category("sct-t2-microcircuits", "electronics")
  sctm.add_additional_category("sct-t2-micro-wafer", "electronics")
  sctm.add_additional_category("sct-t2-wafer-stamp", "electronics")
  sctm.add_additional_category("sct-t2-reaction-nodes", "electronics")
  sctm.add_additional_category("sct-mil-circuit1", "electronics")
  sctm.add_additional_category("sct-mil-circuit2", "electronics")
  sctm.add_additional_category("sct-mil-circuit3", "electronics")
  sctm.add_additional_category("sct-cyan-wire", "electronics")
  sctm.add_additional_category("sct-magenta-wire", "electronics")
  sctm.add_additional_category("sct-prod-bioprocessor", "electronics")
  if data.raw.recipe["sct-logistic-memory-unit"] then
    sctm.add_additional_category("sct-logistic-memory-unit", "electronics")
  end
end

if data.raw["recipe-category"]["electronics-with-fluid"] then
  sctm.add_additional_category("sct-prod-overclocker", "electronics-with-fluid")
  sctm.add_additional_category("sct-prod-chipcase", "electronics-with-fluid")
end

if mods["bobplates"] then
  -- Red Science Pack:
  -- =============================

  -- Green Science Pack:
  -- =============================

  if data.raw.item["bob-tin-plate"] then
    sctm.recipe_ingredient_replace("sct-t2-instruments", "iron-plate", "bob-tin-plate")
  end

  if data.raw.item["bob-lead-plate"] then
    sctm.recipe_ingredient_replace("sct-t2-micro-wafer", "iron-plate", "bob-lead-plate")
  end

  if data.raw.item["bob-tinned-copper-cable"] then
    sctm.recipe_ingredient_replace("sct-t2-reaction-nodes", "sct-t1-magnet-coils", "bob-tinned-copper-cable")
  end

  -- Blue Science Pack:
  -- =============================

  if data.raw.fluid["bob-nitrogen"] then
    sctm.recipe_ingredient_replace("sct-t3-femto-lasers", "water", "bob-nitrogen")
    sctm.tech_dependency_add("sct-lab-t3", "bob-nitrogen-processing")
  end

  if data.raw.item["bob-glass"] and data.raw.item["bob-silver-plate"] then
    data.raw.recipe["sct-t3-laser-foci"].ingredients = {
      { type = "item", name = "copper-plate", amount = 5 },
      { type = "item", name = "bob-glass", amount = 8 },
      { type = "item", name = "bob-silver-plate", amount = 2 },
    }
    if mods["angelssmelting"] then
      sctm.tech_dependency_add("sct-lab-t3", "angels-silver-smelting-1")
    else
      sctm.tech_dependency_add("sct-lab-t3", "bob-lead-processing")
    end
  end

  if data.raw.item["bob-glass"] then
    sctm.recipe_ingredient_replace("sct-t3-sulfur-lightsource", "plastic-bar", "bob-glass")
    sctm.tech_dependency_remove("sct-lab-t3", "plastics")
  end

  if data.raw.item["bob-glass"] and data.raw.item["bob-aluminium-plate"] then
    data.raw.recipe["sct-t3-laser-emitter"].ingredients = {
      { type = "item", name = "electronic-circuit", amount = 6 },
      { type = "item", name = "copper-plate", amount = 8 },
      { type = "item", name = "bob-glass", amount = 4 },
      { type = "item", name = "bob-aluminium-plate", amount = 5 },
    }
    data.raw.recipe["sct-t3-laser-emitter"].results = {
      { type = "item", name = "sct-t3-laser-emitter", amount = 1 },
      { type = "item", name = "sct-waste-copperonly", amount = 1 },
    }
    if mods["angelssmelting"] then
      sctm.tech_dependency_add("sct-lab-t3", "angels-aluminium-smelting-1")
      sctm.tech_dependency_add("sct-lab-t3", "angels-glass-smelting-1")
    else
      sctm.tech_dependency_add("sct-lab-t3", "bob-aluminium-processing")
    end
  end

  if data.raw.item["bob-silver-plate"] and data.raw.item["bob-aluminium-plate"] and data.raw.fluid["bob-nitrogen"] then
    data.raw.recipe["sct-t3-atomic-sensors"].ingredients = {
      { type = "item", name = "advanced-circuit", amount = 1 },
      { type = "item", name = "bob-aluminium-plate", amount = 5 },
      { type = "item", name = "bob-silver-plate", amount = 2 },
      { type = "item", name = "copper-plate", amount = 12 },
      { type = "fluid", name = "bob-nitrogen", amount = 15 },
    }
    data.raw.recipe["sct-t3-atomic-sensors"].results = {
      { type = "item", name = "sct-t3-atomic-sensors", amount = 1 },
      { type = "item", name = "sct-waste-copperonly", amount = 1 },
    }
    sctm.tech_dependency_remove("chemical-science-pack", "bob-alloy-processing")
  end

  -- Military Science Pack:
  -- =============================
  if data.raw.item["bob-invar-alloy"] then
    sctm.recipe_ingredient_replace(
      "sct-mil-subplating",
      "iron-plate",
      { type = "item", name = "bob-invar-alloy", amount = 0 }
    )
    sctm.recipe_ingredient_replace(
      "sct-mil-plating",
      "iron-plate",
      { type = "item", name = "bob-invar-alloy", amount = 0 }
    )
    if mods["angelssmelting"] then
      sctm.tech_dependency_add("sct-military-science-pack", "angels-invar-smelting-1")
    else
      sctm.tech_dependency_add("sct-military-science-pack", "bob-invar-processing")
    end
  end

  if data.raw.item["bob-brass-alloy"] then
    sctm.recipe_ingredient_replace(
      "sct-mil-subplating",
      "copper-plate",
      { type = "item", name = "bob-brass-alloy", amount = 0 }
    )
    sctm.recipe_ingredient_replace(
      "sct-mil-plating",
      "copper-plate",
      { type = "item", name = "bob-brass-alloy", amount = 0 }
    )
    if mods["angelssmelting"] then
      sctm.tech_dependency_add("sct-military-science-pack", "angels-brass-smelting-1")
    else
      sctm.tech_dependency_add("sct-military-science-pack", "bob-zinc-processing")
    end
  end

  if data.raw.item["bob-carbon"] and not mods["angelspetrochem"] then
    sctm.recipe_ingredient_add("sct-mil-circuit3", { type = "item", name = "bob-carbon", amount = 4 })
    sctm.recipe_ingredient_add("sct-mil-circuit2", { type = "item", name = "bob-carbon", amount = 3 })
    sctm.recipe_ingredient_replace("sct-mil-circuit1", "coal", { type = "item", name = "bob-carbon", amount = 0 })
  end

  -- Production Science Pack:
  -- =============================
  if
    data.raw.item["bob-tin-plate"]
    and data.raw.item["bob-lead-plate"]
    and data.raw.item["bob-gold-plate"]
    and data.raw.fluid["bob-sulfur-dioxide"]
  then
    data.raw.recipe["sct-prod-overclocker"].ingredients = {
      { type = "item", name = "bob-tin-plate", amount = 10 },
      { type = "item", name = "bob-lead-plate", amount = 10 },
      { type = "item", name = "bob-gold-plate", amount = 10 },
      { type = "item", name = "sct-prod-chipcase", amount = 1 },
      { type = "fluid", name = "bob-sulfur-dioxide", amount = 120 },
    }
    data.raw.recipe["sct-prod-overclocker"].results = {
      { type = "item", name = "sct-prod-overclocker", amount = 1 },
      { type = "item", name = "sulfur", amount = 4 },
    }
    sctm.tech_dependency_add("sct-production-science-pack", "bob-gold-processing")
  end

  if data.raw.item["bob-tinned-copper-cable"] then
    sctm.recipe_ingredient_replace("sct-cyan-wire", "copper-cable", "bob-tinned-copper-cable")
    sctm.recipe_ingredient_replace("sct-magenta-wire", "copper-cable", "bob-tinned-copper-cable")
  end

  if data.raw.item["bob-invar-alloy"] then
    sctm.recipe_ingredient_replace(
      "sct-prod-biosilicate",
      "steel-plate",
      { type = "item", name = "bob-invar-alloy", amount = 4 }
    )
    if mods["angelssmelting"] then
      sctm.tech_dependency_add("sct-production-science-pack", "angels-invar-smelting-1")
    end
  end

  -- Utility Science Pack:
  -- =============================

  if
    data.raw.item["bob-battery-2"]
    and data.raw.item["bob-silicon-nitride"]
    and data.raw.item["bob-tungsten-gear-wheel"]
  then
    sctm.recipe_ingredient_replace(
      "sct-htech-capbank",
      "iron-plate",
      { type = "item", name = "bob-tungsten-gear-wheel", amount = 5 }
    )
    sctm.recipe_ingredient_replace("sct-htech-capbank", "battery", "bob-battery-2")
    sctm.recipe_ingredient_add("sct-htech-capbank", { type = "item", name = "bob-silicon-nitride", amount = 10 })
    sctm.tech_dependency_remove("sct-utility-science-pack", "battery")
    sctm.tech_dependency_add("sct-utility-science-pack", "bob-battery-2")
    sctm.tech_dependency_add("sct-utility-science-pack", "bob-ceramics")
  end

  if data.raw.item["bob-titanium-plate"] and data.raw.item["bob-powdered-tungsten"] and data.raw.item["bob-ruby-5"] then
    data.raw.recipe["sct-htech-injector"].ingredients = {
      { type = "item", name = "copper-cable", amount = 20 },
      { type = "item", name = "processing-unit", amount = 3 },
      { type = "item", name = "bob-titanium-plate", amount = 20 },
      { type = "item", name = "bob-powdered-tungsten", amount = 20 },
      { type = "item", name = "bob-ruby-5", amount = 1 },
    }
    sctm.tech_dependency_add("sct-lab-t4", "bob-gem-processing-3")
    sctm.tech_dependency_add("sct-lab-t4", "bob-titanium-processing")
    sctm.tech_dependency_add("sct-lab-t4", "bob-tungsten-processing")
  end

  if data.raw.item["bob-tinned-copper-cable"] then
    sctm.recipe_ingredient_replace("sct-htech-injector", "copper-cable", "bob-tinned-copper-cable")
  end

  if data.raw.item["tungsten-plate"] and data.raw.item["bob-cobalt-steel-alloy"] then
    data.raw.recipe["sct-htech-thermalstore"].ingredients = {
      { type = "item", name = "tungsten-plate", amount = 20 },
      { type = "item", name = "bob-cobalt-steel-alloy", amount = 20 },
    }
    if mods["angelssmelting"] then
      sctm.tech_dependency_add("sct-utility-science-pack", "angels-cobalt-steel-smelting-1")
    end
  end

  if data.raw.item["bob-nitinol-bearing"] and data.raw.item["bob-tungsten-gear-wheel"] then
    sctm.recipe_ingredient_replace("sct-htech-random", "iron-gear-wheel", "bob-tungsten-gear-wheel")
    sctm.recipe_ingredient_add("sct-htech-random", { type = "item", name = "bob-nitinol-bearing", amount = 10 })
    sctm.tech_dependency_add("sct-utility-science-pack", "bob-nitinol-processing")
  end

  -- lab intermediates
  if data.raw.item["bob-steel-gear-wheel"] then
    sctm.recipe_ingredient_replace("sct-lab2-construction", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-brass-alloy"] then
    sctm.recipe_ingredient_replace("sct-lab3-construction", "steel-plate", "bob-brass-alloy")
    if mods["angelssmelting"] then
      sctm.tech_dependency_add("sct-lab-t3", "angels-brass-smelting-1")
    else
      sctm.tech_dependency_add("sct-lab-t3", "bob-zinc-processing")
    end
  end

  if data.raw.item["tungsten-plate"] then
    sctm.recipe_ingredient_replace("sct-lab4-construction", "steel-plate", "tungsten-plate")
  end
end

if mods["bobelectronics"] then
  sctm.recipe_ingredient_replace("sct-mil-circuit3", "advanced-circuit", "electronic-circuit")
  sctm.tech_dependency_remove("sct-military-science-pack", "advanced-circuit")
  if data.raw.item["bob-basic-circuit-board"] then
    local recipe = data.raw.recipe["automation-science-pack"]
    recipe.ingredients = {
      { type = "item", name = "bob-basic-circuit-board", amount = 1 },
      { type = "item", name = "sct-t1-magnet-coils", amount = 1 },
      { type = "item", name = "sct-t1-ironcore", amount = 2 },
    }
    recipe.results = {
      { type = "item", name = "automation-science-pack", amount = 2 },
    }
    local trigger = data.raw.technology["sct-lab-t1"].research_trigger
    if trigger and trigger.item == "electronic-circuit" then
      trigger.item = "bob-basic-circuit-board"
    end
    sctm.recipe_ingredient_replace("sct-lab1-mechanization", "electronic-circuit", "bob-basic-circuit-board")
    sctm.recipe_ingredient_replace("sct-mil-circuit1", "electronic-circuit", "bob-basic-circuit-board")
  end
  if data.raw.item["bob-insulated-cable"] then
    sctm.recipe_ingredient_replace("sct-htech-capbank", "copper-cable", "bob-insulated-cable")
    sctm.recipe_ingredient_replace("sct-htech-injector", "copper-cable", "bob-insulated-cable")
  end
end

-- add bob logistic pack if found
if mods["bobtech"] then
  -- repurpose bob lab 2
  if data.raw.lab["bob-lab-2"] then
    sctm.tech_disable("bob-advanced-research")
    sctm.tech_unlock_remove("bob-advanced-research", "bob-lab-2")

    -- move it to sct labs group, and make it hightest tier lab
    data.raw.item["bob-lab-2"].subgroup = "sct-labs"
    data.raw.item["bob-lab-2"].order = "b[labs]-e[lab5]"
    data.raw.item["bob-lab-2"].icons = {
      {
        icon = "__ScienceCostTweakerM__/graphics/bobmods/lab2-64.png",
        icon_size = 64,
      },
      {
        icon = "__ScienceCostTweakerM__/graphics/overlays/5.png",
        icon_size = 32,
      },
    }
    data.raw.item["bob-lab-2"].icon = nil
    data.raw.lab["bob-lab-2"].icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/bobmods/lab2-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/5.png",
      },
    }
    data.raw.lab["bob-lab-2"].icon = nil
    data.raw.recipe["bob-lab-2"].subgroup = "sct-labs"
    data.raw.recipe["bob-lab-2"].order = "b[labs]-e[lab5]"
    sctm.recipe_ingredient_replace("bob-lab-2", "lab", "sct-lab-t4")
    sctm.lab_input_remove("sct-lab-t4", "space-science-pack")
    data.raw.lab["bob-lab-2"].researching_speed = 1
    data.raw.lab["sct-lab-t4"].next_upgrade = "bob-lab-2"
    data.raw.lab["lab"].next_upgrade = "sct-lab-t2"

    -- Update lab energy usage
    data.raw.lab["bob-lab-2"].energy_usage = "10MW"

    data.raw.recipe["bob-lab-2"].ingredients = {
      { type = "item", name = "sct-lab-t4", amount = 1 },
      { type = "item", name = "rocket-silo", amount = 1 },
      { type = "item", name = "bob-nitinol-alloy", amount = 100 },
      { type = "item", name = "bulk-inserter", amount = 2 },
      { type = "item", name = "bob-advanced-processing-unit", amount = 20 },
    }
    if data.raw.item["bob-express-bulk-inserter"] then
      sctm.recipe_ingredient_replace("bob-lab-2", "bulk-inserter", "bob-express-bulk-inserter")
      sctm.tech_dependency_add("sct-lab-lab2", "bob-bulk-inserter-4")
    end
    sctm.tech_dependency_add("sct-lab-lab2", "rocket-silo")
    sctm.tech_dependency_remove("sct-space-science-pack", "rocket-silo")
    sctm.tech_dependency_add("sct-space-science-pack", "sct-lab-lab2")
  end
  if data.raw.item["bob-lab-alien"] then
    data.raw.item["bob-lab-alien"].subgroup = "sct-labs"
    data.raw.item["bob-lab-alien"].order = "b[labs]-f[lab6]"
    data.raw.item["bob-lab-alien"].icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-lab-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/alien.png",
      },
    }
    data.raw.item["bob-lab-alien"].icon = nil
    data.raw.lab["bob-lab-alien"].icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-lab-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/alien.png",
      },
    }
    data.raw.lab["bob-lab-alien"].icon = nil
    data.raw.recipe["bob-lab-alien"].subgroup = "sct-labs"
    data.raw.recipe["bob-lab-alien"].order = "b[labs]-f[lab6]"
    sctm.recipe_ingredient_replace("bob-lab-alien", "lab", "sct-lab-t3")
    sctm.tech_unlock_remove("bob-alien-research", "bob-lab-alien")
    sctm.tech_dependency_add("bob-alien-research", "sct-alien-science-pack")
    sctm.tech_dependency_remove("bob-alien-research", "bob-advanced-research")
    sctm.tech_dependency_add("bob-alien-research", "sct-lab-alien")
    sctm.tech_pack_replace("bob-alien-research", "automation-science-pack", "bob-science-pack-gold")
    sctm.tech_pack_remove("bob-alien-research", "logistic-science-pack")
    sctm.tech_pack_remove("bob-alien-research", "military-science-pack")
    sctm.tech_pack_remove("bob-alien-research", "chemical-science-pack")
  end
  if data.raw.tool["bob-advanced-logistic-science-pack"] and data.raw.recipe["bob-advanced-logistic-science-pack"] then
    -- remove logistic pack from tier 1 lab
    sctm.lab_input_remove("lab", "bob-advanced-logistic-science-pack")
    sctm.lab_input_add("sct-lab-t3", "bob-advanced-logistic-science-pack")
    sctm.lab_input_add("sct-lab-t4", "bob-advanced-logistic-science-pack")
    if data.raw.lab["bob-lab-2"] then
      sctm.lab_input_add("bob-lab-2", "bob-advanced-logistic-science-pack")
    end

    data.raw.tool["bob-advanced-logistic-science-pack"].subgroup = "sct-advanced-logistic-science-pack"
    data.raw.tool["bob-advanced-logistic-science-pack"].order = "h_a[logistic]"
    data.raw.tool["bob-advanced-logistic-science-pack"].icon_size = 64
    data.raw.tool["bob-advanced-logistic-science-pack"].icon =
      "__ScienceCostTweakerM__/graphics/bobmods/logistic-science-pack-64.png"
    local logisticrecipe = data.raw.recipe["sct-advanced-logistic-science-pack"]
    data.raw.recipe["sct-advanced-logistic-science-pack"] = nil
    logisticrecipe.name = "bob-advanced-logistic-science-pack"
    data.raw.recipe["bob-advanced-logistic-science-pack"] = logisticrecipe
  end
  if data.raw.tool["bob-science-pack-gold"] then
    data.raw.tool["bob-science-pack-gold"].subgroup = "sct-alien-science-pack"
    data.raw.tool["bob-science-pack-gold"].order = "0-gold-science-pack"
    data.raw.tool["bob-science-pack-gold"].icon_size = 64
    data.raw.tool["bob-science-pack-gold"].icon = "__ScienceCostTweakerM__/graphics/bobmods/gold-science-pack-64.png"
    data.raw.recipe["bob-science-pack-gold"].subgroup = "sct-alien-science-pack"
    data.raw.recipe["bob-science-pack-gold"].order = "0-gold-science-pack"
  end
  if data.raw.tool["bob-alien-science-pack"] then
    data.raw.tool["bob-alien-science-pack"].subgroup = "sct-alien-science-pack"
    data.raw.tool["bob-alien-science-pack"].icon_size = 64
    data.raw.tool["bob-alien-science-pack"].icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-science-pack-64.png"
    data.raw.tool["bob-alien-science-pack-blue"].subgroup = "sct-alien-science-pack"
    data.raw.tool["bob-alien-science-pack-orange"].subgroup = "sct-alien-science-pack"
    data.raw.tool["bob-alien-science-pack-purple"].subgroup = "sct-alien-science-pack"
    data.raw.tool["bob-alien-science-pack-yellow"].subgroup = "sct-alien-science-pack"
    data.raw.tool["bob-alien-science-pack-green"].subgroup = "sct-alien-science-pack"
    data.raw.tool["bob-alien-science-pack-red"].subgroup = "sct-alien-science-pack"
  end

  if data.raw.item["bob-brass-chest"] then
    sctm.recipe_ingredient_replace("sct-logistic-automated-storage", "steel-chest", "bob-brass-chest")
    sctm.tech_dependency_add("sct-advanced-logistic-science-pack", "bob-brass-processing")
  end

  if mods["bobelectronics"] and mods["bobplates"] then
    sctm.tech_unlock_add("bob-gold-processing", "bob-gilded-copper-cable")
    sctm.tech_unlock_remove("bob-advanced-processing-unit", "bob-gilded-copper-cable")
  end
  if not mods["bobplates"] then
    -- Do nothing
  elseif mods["angelssmelting"] then
    sctm.tech_dependency_add("sct-advanced-logistic-science-pack", "angels-cobalt-steel-smelting-1")
  else
    sctm.tech_dependency_add("sct-advanced-logistic-science-pack", "bob-cobalt-processing")
  end
end

if mods["bobplates"] and mods["bobelectronics"] and mods["bobtech"] then
  sctm.recipe_ingredient_add("sct-logistic-memory-unit", { type = "item", name = "bob-silicon-wafer", amount = 2 })
end

if mods["boblogistics"] then
  if
    settings.startup["bobmods-logistics-inserteroverhaul"]
    and settings.startup["bobmods-logistics-inserteroverhaul"].value
  then
    sctm.tech_dependency_remove("sct-lab-t2", "fast-inserter")
    if data.raw.recipe["inserter"] then
      sctm.recipe_ingredient_replace("sct-lab2-automatization", "fast-inserter", "inserter")
      sctm.tech_dependency_add("sct-lab-t2", "bob-electronics")
    else
      sctm.recipe_ingredient_replace("sct-lab2-automatization", "fast-inserter", "inserter")
    end
    sctm.tech_dependency_add("sct-lab-t4", "bob-bulk-inserter-2")
  end
  if
    settings.startup["bobmods-logistics-beltoverhaul"] and settings.startup["bobmods-logistics-beltoverhaul"].value
  then
    sctm.recipe_ingredient_replace("sct-lab1-mechanization", "transport-belt", "bob-basic-transport-belt")
  end
  sctm.recipe_ingredient_replace("sct-lab4-construction", "express-underground-belt", "bob-turbo-underground-belt")
  sctm.tech_dependency_remove("sct-lab-t4", "logistics-3")
  sctm.tech_dependency_add("sct-lab-t4", "logistics-4")
end

if mods["bobgreenhouse"] then
  sctm.tech_unlock_remove("automated-rail-transportation", "iron-stick")
end
