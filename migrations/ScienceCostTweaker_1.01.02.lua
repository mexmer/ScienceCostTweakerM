local sctmlibrt = require("sctmlibrt")

for _, force in pairs(game.forces) do
  if force.recipes["sct-t3-flash-fuel"] and force.recipes["sct-t3-flash-fuel"].enabled then
    sctmlibrt.enable_recipe(force.recipes, "sct-t3-sulfur-lightsource")
  end
end
