if mods["omnimatter_science"] and mods["omnimatter_crystal"] then
  -- omniscience
  sctm.tech_dependency_add("base-omnitraction", "automation-science-pack")
  sctm.tech_dependency_add("water-omnitraction-1", "automation-science-pack")
  -- let's break this purple bottle
  if data.raw.tool["omni-pack"] and data.raw.recipe["omni-pack"] then
    local omnipack = table.deepcopy(data.raw.recipe["sct-omni-science-pack"])
    omnipack.name = "omni-pack"
    data.raw.recipe["omni-pack"] = omnipack
  end
end
