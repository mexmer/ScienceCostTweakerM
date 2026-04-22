require("science_bobmods_logistic")
require("science_bobmods_tech")
require("science_bobmods_alien")

if mods["bobplates"] then
  -- Production Science Pack:
  -- =============================
  if data.raw.item["bob-silicon-plate"] then
    sctm.recipe_ingredient_replace(
      "sct-prod-biosilicate",
      "stone",
      { type = "item", name = "bob-silicon-plate", amount = 2 }
    )
    sctm.tech_dependency_add("advanced-material-processing-2", "bob-silicon-processing")
  end
end
