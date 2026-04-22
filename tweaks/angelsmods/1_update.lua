if mods["angelspetrochem"] then
  -- Military Science Pack:
  -- =============================
  sctm.recipe_ingredient_add("sct-mil-circuit3", { type = "item", name = "angels-solid-carbon", amount = 4 })
  sctm.recipe_ingredient_add("sct-mil-circuit2", { type = "item", name = "angels-solid-carbon", amount = 3 })
  sctm.recipe_ingredient_replace(
    "sct-mil-circuit1",
    "coal",
    { type = "item", name = "angels-solid-carbon", amount = 0 }
  )

  -- Blue Science Pack:
  -- =============================
  sctm.recipe_ingredient_replace("sct-t3-femto-lasers", "water", "angels-gas-nitrogen")
  sctm.tech_dependency_add("sct-lab-t3", "angels-nitrogen-processing-1")

  sctm.recipe_ingredient_remove("sct-t3-flash-fuel", "angels-gas-methane")
  sctm.recipe_ingredient_add("sct-t3-flash-fuel", { type = "fluid", name = "angels-liquid-naphtha", amount = 10 })
  sctm.recipe_ingredient_add("sct-t3-flash-fuel", { type = "fluid", name = "angels-liquid-fuel-oil", amount = 10 })

  sctm.recipe_ingredient_replace("sct-lab3-construction", "chemical-plant", "angels-chemical-plant-2")
  sctm.tech_dependency_add("sct-lab-t3", "angels-advanced-chemistry-1")

  -- Production Science Pack:
  -- =============================
  sctm.tech_dependency_add("advanced-material-processing-2", "angels-gas-processing")

  -- Utility Science Pack:
  -- =============================
  if mods["bobelectronics"] then
    sctm.tech_dependency_add("sct-utility-science-pack", "angels-rubbers")
  end
end

if not mods["angelssmelting"] then
  -- Do nothing
elseif mods["bobplates"] then
  sctm.tech_dependency_add("sct-logistic-science-pack", "angels-lead-smelting-1")
  sctm.tech_dependency_add("sct-logistic-science-pack", "angels-tin-smelting-1")

  sctm.tech_dependency_add("sct-production-science-pack", "angels-gold-smelting-1")
else
  -- Red Science Pack:
  -- =============================

  -- Green Science Pack:
  -- =============================
  sctm.recipe_ingredient_replace("sct-t2-instruments", "iron-plate", "angels-plate-tin")
  sctm.recipe_ingredient_replace("sct-t2-micro-wafer", "iron-plate", "angels-plate-lead")
  sctm.recipe_ingredient_replace("sct-t2-reaction-nodes", "sct-t1-magnet-coils", "angels-wire-tin")

  sctm.tech_dependency_add("sct-logistic-science-pack", "angels-lead-smelting-1")
  sctm.tech_dependency_add("sct-logistic-science-pack", "angels-tin-smelting-1")

  -- Military Science Pack:
  -- =============================

  -- Blue Science Pack:
  -- =============================
  data.raw.recipe["sct-t3-laser-foci"].ingredients = {
    { type = "item", name = "copper-plate", amount = 5 },
    { type = "item", name = "angels-plate-glass", amount = 8 },
    { type = "item", name = "angels-plate-silver", amount = 2 },
  }
  sctm.tech_dependency_add("sct-lab-t3", "angels-glass-smelting-1")
  sctm.tech_dependency_add("sct-lab-t3", "angels-silver-smelting-1")

  sctm.recipe_ingredient_replace("sct-t3-sulfur-lightsource", "plastic-bar", "angels-plate-glass")
  sctm.tech_dependency_remove("sct-lab-t3", "plastics")

  data.raw.recipe["sct-t3-laser-emitter"].ingredients = {
    { type = "item", name = "electronic-circuit", amount = 6 },
    { type = "item", name = "copper-plate", amount = 8 },
    { type = "item", name = "angels-plate-glass", amount = 4 },
    { type = "item", name = "angels-plate-aluminium", amount = 5 },
  }
  data.raw.recipe["sct-t3-laser-emitter"].results = {
    { type = "item", name = "sct-t3-laser-emitter", amount = 1 },
    { type = "item", name = "sct-waste-copperonly", amount = 1 },
  }
  sctm.tech_dependency_add("sct-lab-t3", "angels-aluminium-smelting-1")

  data.raw.recipe["sct-t3-atomic-sensors"].ingredients = {
    { type = "item", name = "advanced-circuit", amount = 1 },
    { type = "item", name = "angels-plate-aluminium", amount = 5 },
    { type = "item", name = "angels-plate-silver", amount = 2 },
    { type = "item", name = "copper-plate", amount = 12 },
    { type = "fluid", name = "angels-gas-nitrogen", amount = 15 },
  }
  data.raw.recipe["sct-t3-atomic-sensors"].results = {
    { type = "item", name = "sct-t3-atomic-sensors", amount = 1 },
    { type = "item", name = "sct-waste-copperonly", amount = 1 },
  }

  -- Production Science Pack:
  -- =============================
  data.raw.recipe["sct-prod-overclocker"].ingredients = {
    { type = "item", name = "angels-plate-tin", amount = 10 },
    { type = "item", name = "angels-plate-lead", amount = 10 },
    { type = "item", name = "angels-plate-gold", amount = 10 },
    { type = "item", name = "sct-prod-chipcase", amount = 1 },
    { type = "fluid", name = "angels-gas-sulfur-dioxide", amount = 120 },
  }
  data.raw.recipe["sct-prod-overclocker"].results = {
    { type = "item", name = "sct-prod-overclocker", amount = 1 },
    { type = "item", name = "sulfur", amount = 4 },
  }
  sctm.tech_dependency_add("sct-production-science-pack", "angels-gold-smelting-1")

  sctm.recipe_ingredient_replace("sct-cyan-wire", "copper-cable", "angels-wire-tin")
  sctm.recipe_ingredient_replace("sct-magenta-wire", "copper-cable", "angels-wire-silver")

  -- Utility Science Pack:
  -- =============================
  sctm.recipe_ingredient_replace("sct-htech-capbank", "iron-plate", "angels-plate-platinum")
  sctm.recipe_ingredient_replace("sct-htech-capbank", "copper-cable", "angels-wire-gold")
  sctm.recipe_ingredient_add("sct-htech-capbank", { type = "item", name = "angels-powder-silicon", amount = 10 })
  sctm.recipe_ingredient_add("sct-htech-capbank", { type = "fluid", name = "angels-gas-nitrogen", amount = 20 })
  sctm.tech_dependency_add("sct-utility-science-pack", "angels-silicon-smelting-1")

  data.raw.recipe["sct-htech-injector"].ingredients = {
    { type = "item", name = "angels-wire-platinum", amount = 20 },
    { type = "item", name = "processing-unit", amount = 5 },
    { type = "item", name = "angels-plate-titanium", amount = 20 },
    { type = "item", name = "angels-powder-tungsten", amount = 20 },
    { type = "item", name = "angels-geode-red", amount = 2 },
  }
  sctm.tech_dependency_add("sct-lab-t4", "angels-platinum-smelting-1")
  sctm.tech_dependency_add("sct-lab-t4", "angels-titanium-smelting-1")
  sctm.tech_dependency_add("sct-lab-t4", "angels-tungsten-smelting-1")

  data.raw.recipe["sct-htech-thermalstore"].ingredients = {
    { type = "item", name = "angels-plate-tungsten", amount = 20 },
    { type = "item", name = "angels-plate-cobalt", amount = 20 },
  }
  sctm.tech_dependency_add("sct-utility-science-pack", "angels-cobalt-smelting-1")

  sctm.recipe_ingredient_replace("sct-htech-random", "iron-gear-wheel", "angels-plate-tungsten")
  sctm.recipe_ingredient_add("sct-htech-random", { type = "item", name = "angels-plate-titanium", amount = 15 })
  sctm.recipe_ingredient_add("sct-htech-random", { type = "fluid", name = "lubricant", amount = 10 })

  -- lab intermediates

  sctm.recipe_ingredient_replace("sct-lab3-construction", "steel-plate", "angels-plate-aluminium")
  sctm.recipe_ingredient_replace("sct-lab4-construction", "steel-plate", "angels-plate-tungsten")
end

if mods["angelsbioprocessing"] then
  sctm.tech_dependency_add("angels-bio-temperate-farming", "sct-bio-science-pack")
  sctm.tech_dependency_add("angels-bio-swamp-farming", "sct-bio-science-pack")
  sctm.tech_dependency_add("angels-bio-desert-farming", "sct-bio-science-pack")
  sctm.lab_input_add("bob-lab-2", "sct-bio-science-pack")
end
