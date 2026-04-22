--
if mods["aai-industry"] then
  local aaitech0 = {
    "basic-logistics",
    "electricity",
    "fuel-processing",
  }
  if mods["omnimatter_water"] then
    aaitech0[#aaitech0 + 1] = "omniwaste"
  end

  for _i, tech in pairs(aaitech0) do
    sctm.tech_pack_replace(tech, "automation-science-pack", "sct-science-pack-0")
  end

  if data.raw.lab["burner-lab"] then
    sctm.lab_input_add("burner-lab", "sct-science-pack-0")
    sctm.tech_pack_add("sct-automation-science-pack", { "sct-science-pack-0", 1 })
    sctm.tech_pack_add("sct-lab-t1", { "sct-science-pack-0", 1 })
    sctm.lab_input_add("lab", "sct-science-pack-0")
    data.raw.item["burner-lab"].order = "a[labs]-a[lab0]"
    data.raw.item["burner-lab"].subgroup = "sct-labs"
    data.raw.recipe["burner-lab"].order = "a[labs]-a[lab0]"
    data.raw.recipe["burner-lab"].subgroup = "sct-labs"
    data.raw.item["burner-lab"].icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/aai/burner-lab-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/flame.png",
      },
    }
    data.raw.lab["burner-lab"].icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/aai/burner-lab-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/flame.png",
      },
    }
    local tech = data.raw.technology["sct-lab-t1"]
    tech.research_trigger = nil
    tech.unit = {
      count = 50,
      ingredients = {
        { "sct-science-pack-0", 1 },
      },
      time = 20,
    }
    sctm.tech_unlock_add("burner-mechanics", "sct-t0-crate")
    sctm.tech_unlock_add("burner-mechanics", "sct-t0-solvent")
    sctm.tech_unlock_add("burner-mechanics", "sct-science-pack-0")
  end
  sctm.tech_dependency_remove("sct-lab-t1", "steam-power")
  sctm.tech_dependency_remove("sct-lab-t1", "electronics")
  sctm.tech_dependency_add("sct-lab-t1", "electricity")
  sctm.tech_dependency_remove("fuel-processing", "automation-science-pack")
  sctm.tech_dependency_add("fuel-processing", "burner-mechanics")
  sctm.recipe_ingredient_replace("sct-lab1-mechanization", "electronic-circuit", "electric-motor")
  sctm.recipe_ingredient_add("lab", { type = "item", name = "burner-lab", amount = 1 })

  sctm.tech_dependency_add("automation", "automation-science-pack")
  sctm.tech_dependency_add("basic-fluid-handling", "automation-science-pack")
  sctm.tech_dependency_add("electronics", "automation-science-pack")
  sctm.tech_dependency_add("sand-processing", "automation-science-pack")
  sctm.tech_dependency_add("toolbelt", "automation-science-pack")

  if
    not mods["boblogistics"]
    or not settings.startup["bobmods-logistics-beltoverhaul"]
    or not settings.startup["bobmods-logistics-beltoverhaul"].value
  then
    sctm.tech_dependency_add("sct-lab-t1", "basic-logistics")
  end

  if
    not mods["boblogistics"]
    or not settings.startup["bobmods-logistics-beltoverhaul"]
    or not settings.startup["bobmods-logistics-beltoverhaul"].value
  then
    sctm.tech_dependency_add("sct-lab-t1", "bob-basic-logistics")
  end

  if mods["angelsrefining"] then
    sctm.recipe_ingredient_replace("sct-t0-crate", "stone", "angels-stone-crushed")
    sctm.recipe_ingredient_replace("sct-t0-solvent", "iron-ore", "angels-ore1-crushed")
  end

  if mods["omnimatter"] then
    sctm.recipe_ingredient_replace("sct-t0-solvent", "iron-ore", "crushed-omnite")
  end

  if mods["omnimatter_wood"] then
    sctm.recipe_ingredient_replace("sct-t0-solvent", "wood", "omniwood")
  end
end
