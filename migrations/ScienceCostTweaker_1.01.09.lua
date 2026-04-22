local sctmlibrt = require("sctmlibrt")

for _, force in pairs(game.forces) do
  if force.technologies["advanced-material-processing-2"].researched then
    sctmlibrt.enable_recipe(force.recipes, "sct-prod-biosilicate")
    sctmlibrt.enable_recipe(force.recipes, "sct-prod-baked-biopaste")
  end
end
