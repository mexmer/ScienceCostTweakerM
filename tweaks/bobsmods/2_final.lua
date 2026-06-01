if mods["bobtech"] then
  sctm.tech_pack_add("sct-space-science-pack", { "bob-advanced-logistic-science-pack", 5 })
  if mods["angelspetrochem"] then
    sctm.recipe_ingredient_remove("chemical-science-pack", "bob-solid-sodium-hydroxide")
    sctm.recipe_ingredient_remove("production-science-pack", "angels-chemical-plant")
  else
    sctm.recipe_ingredient_remove("chemical-science-pack", "bob-sodium-hydroxide")
  end
  sctm.recipe_ingredient_remove("production-science-pack", "chemical-plant")
  sctm.recipe_ingredient_remove("production-science-pack", "assembling-machine-2")
  sctm.recipe_ingredient_remove("utility-science-pack", "bob-silver-zinc-battery")
  sctm.recipe_ingredient_remove("utility-science-pack", "processing-unit")
  sctm.recipe_ingredient_remove("utility-science-pack", "bob-titanium-bearing")

  sctm.lab_input_add("bob-lab-2", "logistic-science-pack")
end

if mods["bobplates"] then
  sctm.recipe_ingredient_remove("chemical-science-pack", "bob-bronze-alloy")
  sctm.recipe_ingredient_remove("utility-science-pack", "bob-battery-2")
  sctm.recipe_ingredient_remove("utility-science-pack", "bob-silicon-nitride")
  sctm.tech_dependency_remove("chemical-science-pack", "bob-alloy-processing")
end
