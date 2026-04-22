if mods["omnimatter_science"] and mods["omnimatter_crystal"] then
  --	sctm.debug(serpent.block(data.raw.tool["omni-pack"]))
  --	sctm.debug(serpent.block(data.raw.recipe["omni-pack"]))
  if data.raw.tool["omni-pack"] and data.raw.recipe["omni-pack"] then
    -- remove omnipack from basic lab
    sctm.lab_input_remove("lab", "omni-pack")
    -- remove omnipack from aai burner lab
    sctm.lab_input_remove("burner-lab", "omni-pack")
    -- add omnipack to sct labs
    sctm.lab_input_add("sct-lab-t2", "omni-pack")
    sctm.lab_input_add("sct-lab-t3", "omni-pack")
    sctm.lab_input_add("sct-lab-t4", "omni-pack")
    -- add omnipack to bob labs
    sctm.lab_input_add("bob-lab-2", "omni-pack")
    sctm.lab_input_add("bob-lab-alien", "omni-pack")
    -- add t3 lab dep on omnipack research (because it reuqires it)
    sctm.tech_dependency_add("sct-lab-t3", "omnipack-technology")
    -- omnipack icons
    data.raw.tool["omni-pack"].icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/omni/omni-pack-64.png",
      },
    }
    data.raw.tool["omni-pack"].subgroup = "sct-omni-science-pack"
    data.raw.recipe["omni-pack"].subgroup = "sct-omni-science-pack"

    -- add crystalonics deps
    sctm.tech_dependency_add("chemical-science-pack", "crystallonics-1")
    sctm.tech_dependency_add("production-science-pack", "crystallonics-2")
    sctm.tech_dependency_add("advanced-logistic-science-pack", "crystallonics-2")
  else
    -- disable omni pack research if not present
    --		data.raw.technology["sct-research-omni"].enabled = false
  end
  sctm.tech_unlock_add("omnipack-technology", "sct-omni-pack-minerals")
  sctm.tech_unlock_add("omnipack-technology", "sct-omni-pack-tools")
  if data.raw.technology["omnipack-technology"] then
    data.raw.technology["omnipack-technology"].icons = {
      {
        icon_size = 128,
        icon = "__ScienceCostTweakerM__/graphics/omni/omni-pack-128.png",
      },
    }
  end
  if mods["boblogistics"] and settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
    sctm.recipe_ingredient_replace("sct-omni-pack-tools", "fast-inserter", "long-handed-inserter")
  end
end

if mods["omnimatter_energy"] then
  --Move energy SP subgroup to SCT
  if data.raw.recipe["energy-science-pack"] then
    data.raw.recipe["energy-science-pack"].subgroup = "sct-science-pack-0"
  end
  if data.raw.tool["energy-science-pack"] then
    data.raw.tool["energy-science-pack"].subgroup = "sct-science-pack-0"
  end

  --Set SCTs subgroup for the omnitor lab
  if data.raw.recipe["omnitor-lab"] then
    data.raw.recipe["omnitor-lab"].subgroup = "sct-labs"
    data.raw.recipe["omnitor-lab"].order = "a[labs]-a[a-omnitor-lab]"
  end
  if data.raw.item["omnitor-lab"] then
    data.raw.item["omnitor-lab"].subgroup = "sct-labs"
  end

  --Disable omnis lab tech and shift prereqs
  sctm.tech_disable("omnitech-anbaric-lab")
  if data.raw.technology["omnitech-anbaric-lab"] then
    local deps = sctm.tech_dependency_get("omnitech-anbaric-lab")
    if deps and #deps then
      --sctm.log(serpent.block(deps))
      for _, prereq in pairs(deps) do
        sctm.tech_dependency_add("sct-lab-t1", prereq)
      end
    end
  end

  --Disable omnis automation SP tech and shift prereqs
  sctm.tech_disable("automation-science-pack")
  if data.raw.technology["automation-science-pack"] then
    local deps = sctm.tech_dependency_get("automation-science-pack")
    --sctm.log(serpent.block(deps))
    if deps and #deps then
      for _, prereq in pairs(deps) do
        sctm.tech_dependency_add("automation-science-pack", prereq)
      end
    end
  end

  --Add omnis energy SP to SCT lab and automation SP techs
  if data.raw.tool["energy-science-pack"] and not data.raw.tool["sct-science-pack-0"] then
    local tech = data.raw.technology["automation-science-pack"]
    tech.research_trigger = nil
    tech.unit = {
      count = 45,
      ingredients = {
        { "energy-science-pack", 1 },
      },
      time = 20,
    }

    tech = data.raw.technology["sct-lab-t1"]
    tech.research_trigger = nil
    tech.unit = {
      count = 40,
      ingredients = {
        { "energy-science-pack", 1 },
      },
      time = 20,
    }
    data.raw.technology["sct-lab-t1"].unit.time = 20
    data.raw.technology["sct-lab-t1"].unit.count = 40
  end

  --Readd the automation SP tech to steam power, the electric omnitractor and omnium power 1
  sctm.tech_dependency_remove("sct-lab-t1", "steam-power")
  sctm.tech_dependency_add("steam-power", "automation-science-pack")
  sctm.tech_dependency_add("omnitech-omnitractor-electric-1", "automation-science-pack")
  sctm.tech_dependency_add("omnitech-omnium-power-1", "automation-science-pack")

  --Remove the automation SP from military and stone-wall tech again
  sctm.tech_dependency_remove("military", "automation-science-pack")
  sctm.tech_dependency_remove("stone-wall", "automation-science-pack")
  sctm.tech_dependency_remove("gun-turret", "automation-science-pack")

  --Update SCT lab inputs
  sctm.lab_input_add("lab", "energy-science-pack")
  sctm.lab_input_add("sct-lab-t2", "energy-science-pack")
  sctm.lab_input_add("sct-lab-t3", "energy-science-pack")
  sctm.lab_input_add("sct-lab-t4", "energy-science-pack")
end
