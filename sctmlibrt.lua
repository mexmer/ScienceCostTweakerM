-- Runtime helper library

local sctmlibrt = {}

-- Enable the recipe with name ``recipe_name``.  If no recipe with such a name
-- exists nothing is done.
--
-- @recipes the table with recipes, e.g. force.recipes
-- @recipe_name the name of the recipe to enable
function sctmlibrt.enable_recipe(recipes, recipe_name)
  if recipes and recipes[recipe_name] then
    recipes[recipe_name].enabled = true
  end
end

return sctmlibrt
