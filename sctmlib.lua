-- sctm helper functions
if not sctm then
  sctm = {}
end
-- uncomment this to enable debug output
-- sctm.enabledebug = true

function sctm.debug(logtext)
  if sctm.enabledebug then
    log("SCTD: " .. logtext)
  end
end

function sctm.log(logtext)
  log("SCT: " .. logtext)
end

-- lab functions
function sctm.lab_input_remove(labname, packname)
  local removed = false
  sctm.debug("removing " .. packname .. " from " .. labname)
  if data.raw.lab[labname] and data.raw.lab[labname].inputs then
    local labinputs = data.raw.lab[labname].inputs
    local newinputs = {}
    for _i, inputpack in pairs(labinputs) do
      if inputpack and inputpack == packname then
        removed = true
      else
        table.insert(newinputs, inputpack)
      end
    end
    if removed then
      data.raw.lab[labname].inputs = newinputs
      sctm.debug("removed " .. packname .. " from " .. labname)
    end
  end
  if not data.raw.lab[labname] then
    sctm.debug("attempting to modify nonexistent lab " .. labname)
  end
  return removed
end

function sctm.lab_input_add(labname, packname)
  local added = false
  if data.raw.lab[labname] and data.raw.item[packname] then
    if not data.raw.lab[labname].inputs then
      data.raw.lab[labname].inputs = {}
    end
    local labinputs = data.raw.lab[labname].inputs
    local hasinput = false
    for _i, inputpack in pairs(labinputs) do
      if inputpack and inputpack == packname then
        hasinput = true
        added = true
        break
      end
    end
    if not hasinput then
      local inputsize = table_size(labinputs)
      labinputs[inputsize + 1] = packname
      added = true
    end
  end
  if not data.raw.lab[labname] then
    sctm.debug("attempting to modify nonexistent lab " .. labname)
  end
  if not data.raw.item[packname] then
    sctm.debug("attempting to insert nonexistent science pack " .. packname)
  end
  return added
end

-- technology functions
local function removeprereq(prereqtable, depname)
  local removed = false
  for _i, dep in pairs(prereqtable) do
    if dep and dep == depname then
      table.remove(prereqtable, _i)
      removed = true
      break
    end
  end
  return removed
end

function sctm.tech_dependency_remove(techname, depname)
  local removed = false
  if data.raw.technology[techname] then
    local tech = data.raw.technology[techname]
    if tech.prerequisites then
      removed = removeprereq(tech.prerequisites, depname) or removed
    end
  end
  if not data.raw.technology[techname] then
    sctm.debug("attempting to update nonexistent technology " .. techname)
  end
  return removed
end

local function addprereq(prereqtable, depname)
  local hasdep = false
  local added = false
  for _i, dep in pairs(prereqtable) do
    if dep and dep == depname then
      hasdep = true
      added = true
      break
    end
  end
  if not hasdep then
    local prereqsize = table_size(prereqtable)
    prereqtable[prereqsize + 1] = depname
    added = true
  end
end

function sctm.tech_dependency_add(techname, depname, hidden)
  local added = false
  local addhidden = hidden or false
  sctm.debug("insert dep " .. depname .. " into " .. techname)
  if
    data.raw.technology[techname]
    and (data.raw.technology[techname].enabled or true)
    and not (data.raw.technology[techname].hidden or false)
    and data.raw.technology[depname]
    and (data.raw.technology[depname].enabled or true)
    and (not (data.raw.technology[depname].hidden or false) or addhidden)
  then
    local tech = data.raw.technology[techname]
    if not tech.prerequisites then
      tech.prerequisites = {}
    end
    added = addprereq(tech.prerequisites, depname)
  end
  --sctm.debug(techname .. ":" .. serpent.block(data.raw.technology[techname]))
  if
    not data.raw.technology[techname]
    or not (data.raw.technology[techname].enabled or true)
    or (data.raw.technology[techname].hidden or false)
  then
    sctm.debug("attempting to update nonexistent or disabled technology " .. techname)
  end
  if
    not data.raw.technology[depname]
    or not (data.raw.technology[depname].enabled or true)
    or not (not (data.raw.technology[depname].hidden or false) or addhidden)
  then
    sctm.debug("attempting to insert nonexistent or disabled technology " .. depname)
  end
  return added
end

function sctm.tech_dependency_get(techname)
  local deps = {}
  sctm.debug("retrieving dps for " .. techname)
  if data.raw.technology[techname] then
    local tech = data.raw.technology[techname]
    if tech.prerequisites then
      for _i, prereq in pairs(tech.prerequisites) do
        table.insert(deps, prereq)
      end
    end
  end
  return deps
end

-- ingredients = { "automation-science-pack", 1 }
local function rempack(ingredientstable, packname)
  local removed = false
  for _i, pack in pairs(ingredientstable) do
    if pack and (pack[1] == packname or (pack.name and pack.name == packname)) then
      table.remove(ingredientstable, _i)
      removed = true
      break
    end
  end
  return removed
end

function sctm.tech_pack_remove(techname, packname)
  sctm.debug("remove pack " .. packname .. " from " .. techname)
  local removed = false
  if data.raw.technology[techname] then
    local tech = data.raw.technology[techname]
    if tech.unit and tech.unit.ingredients then
      removed = rempack(tech.unit.ingredients, packname)
    end
  end
  if not data.raw.technology[techname] then
    sctm.debug("attempting to update nonexistent technology " .. techname)
  end
  return removed
end

-- ingredients = { "automation-science-pack", 1 }
local function addpack(ingredientstable, newpack)
  local added = false
  local found = false
  for _i, pack in pairs(ingredientstable) do
    if pack and (pack[1] == newpack[1]) then
      found = true
      break
    end
  end
  if not found then
    local ingredientsize = table_size(ingredientstable)
    ingredientstable[ingredientsize + 1] = newpack
    added = true
  end
  return added
end

function sctm.tech_pack_add(techname, sciencepack)
  local added = false
  sctm.debug("add pack " .. sciencepack[1] .. " to " .. techname)
  if data.raw.technology[techname] and data.raw.item[sciencepack[1]] then
    local tech = data.raw.technology[techname]
    if tech.unit then
      if not tech.unit.ingredients then
        tech.unit.ingredients = {}
      end
      added = addpack(tech.unit.ingredients, sciencepack)
    end
  end
  if not data.raw.technology[techname] then
    sctm.debug("attempting to update nonexistent technology " .. techname)
  end
  if not data.raw.item[sciencepack[1]] then
    sctm.debug("attempting to add nonexistent pack " .. sciencepack[1])
  end
  return added
end

local function replacepack(ingredientstable, oldpackname, newpackname)
  local replaced = false
  for _i, pack in pairs(ingredientstable) do
    if pack and pack[1] == oldpackname then
      pack[1] = newpackname
      replaced = true
      break
    end
    if pack and pack.name and pack.name == oldpackname then
      pack.name = newpackname
      replaced = true
      break
    end
  end
  return replaced
end

function sctm.tech_pack_replace(techname, oldpackname, newpackname)
  sctm.debug("replace pack " .. oldpackname .. " by " .. newpackname .. " in " .. techname)
  local replaced = false
  if data.raw.technology[techname] and data.raw.item[newpackname] then
    local tech = data.raw.technology[techname]
    if tech.unit and tech.unit.ingredients then
      replaced = replacepack(tech.unit.ingredients, oldpackname, newpackname)
    end
  end
  if not data.raw.technology[techname] then
    sctm.debug("attempting to update nonexistent technology " .. techname)
  end
  if not data.raw.item[oldpackname] then
    sctm.debug("attempting to remove nonexistent pack " .. oldpackname)
  end
  if not data.raw.item[newpackname] then
    sctm.debug("attempting to insert nonexistent pack " .. newpackname)
  end
  return replaced
end

local function addunlock(effectstable, recipename)
  local hasunlock = false
  for _i, effect in pairs(effectstable) do
    if effect and effect.type == "unlock-recipe" and effect.recipe == recipename then
      hasunlock = true
      break
    end
  end
  if not hasunlock then
    local effectsize = table_size(effectstable)
    effectstable[effectsize + 1] = { type = "unlock-recipe", recipe = recipename }
  end
end

function sctm.tech_unlock_add(techname, recipename)
  if data.raw.recipe[recipename] and data.raw.technology[techname] then
    local tech = data.raw.technology[techname]
    if not tech.effects then
      tech.effects = {}
    end
    addunlock(tech.effects, recipename)
  end
  if not data.raw.technology[techname] then
    sctm.debug("attempting to update nonexistent technology " .. techname)
  end
  if not data.raw.recipe[recipename] then
    sctm.debug("attempting to insert nonexistent recipe " .. recipename)
  end
end

local function removeunlock(effectstable, recipename)
  local removed = false
  for _i, effect in pairs(effectstable) do
    if effect and effect.type == "unlock-recipe" and effect.recipe == recipename then
      table.remove(effectstable, _i)
      removed = true
      break
    end
  end
  return removed
end

function sctm.tech_unlock_remove(techname, recipename)
  local removed = false
  if data.raw.technology[techname] then
    local tech = data.raw.technology[techname]
    if tech.effects then
      removed = removeunlock(tech.effects, recipename)
    end
  end
  if not data.raw.technology[techname] then
    sctm.debug("attempting to update nonexistent technology " .. techname)
  end
  return removed
end

local function removeknownpacks(effectstable, packtable, techname)
  local ts = table_size(effectstable)
  local removed = false
  for _j = ts, 1, -1 do
    local effect = effectstable[_j]
    if effect and effect.type == "unlock-recipe" then
      local name = effect.recipe
      local removedone = false
      for _p, pack in pairs(packtable) do
        if (pack.partial and name.find(pack.name, 1, true) ~= nil) or (not pack.partial and name == pack.name) then
          sctm.debug("Moved science pack '" .. name .. "', unlocked by '" .. techname .. "' to research tree.")
          table.remove(effectstable, _j)
          removedone = true
        end
      end
      if not removedone and name:find("science-pack", 1, true) ~= nil and name:find("alien", 1, true) == nil then
        sctm.log("Found unknown science pack '" .. name .. "', unlocked by '" .. techname .. "'")
      end
      removed = removed or removedone
    end
  end
  return removed
end

function sctm.tech_remove_known_packs(techname, packlist)
  local removed = false
  if data.raw.technology[techname] then
    local tech = data.raw.technology[techname]
    if tech.effects and table_size(tech.effects) then
      removed = removeknownpacks(tech.effects, packlist, techname)
    end
  end
  if not data.raw.technology[techname] then
    sctm.debug("attempting to update nonexistent technology" .. techname)
  end
  return removed
end

function sctm.tech_replace(oldtechname, newtechname)
  local replaced = false
  if data.raw.technology[oldtechname] and data.raw.technology[newtechname] then
    local oldtech = data.raw.technology[oldtechname]
    local newtech = data.raw.technology[newtechname]

    if oldtech.effects then
      for _, eff in pairs(oldtech.effects) do
        if not sctm.find_in_table(newtech.effects, eff) then
          local effectsize = table_size(newtech.effects)
          newtech.effects[effectsize + 1] = eff
        end
      end
    end
    newtech.name = oldtech.name
    data.raw.technology[newtechname] = nil
    data.raw.technology[oldtechname] = newtech
    replaced = true
  end
  return replaced
end

function sctm.tech_disable(techname)
  local disabled = false
  if data.raw.technology[techname] then
    local removed
    for _i, tech in pairs(data.raw.technology) do
      removed = sctm.tech_dependency_remove(_i, techname)
      if removed then
        sctm.debug("removed " .. techname .. " dependency from " .. _i)
      end
    end
    data.raw.technology[techname].enabled = false
    disabled = true
  end
  if not data.raw.technology[techname] then
    sctm.debug("attempting to update nonexistent technology " .. techname)
  end
  return disabled
end

-- recipe functions
local function removeingredient(ingredientstable, ingredientname)
  local removed = false
  for _i, ingredient in pairs(ingredientstable) do
    if ingredient and (ingredient[1] == ingredientname or (ingredient.name and ingredient.name == ingredientname)) then
      table.remove(ingredientstable, _i)
      removed = true
      break
    end
  end
  return removed
end

function sctm.recipe_ingredient_remove(recipename, ingredientname)
  local removed = false
  if data.raw.recipe[recipename] then
    local recipe = data.raw.recipe[recipename]
    if recipe.ingredients then
      removed = removeingredient(recipe.ingredients, ingredientname)
    end
  end
  if not data.raw.recipe[recipename] then
    sctm.debug("attempting to update nonexistent recipe " .. recipename)
  end
  return removed
end

local function addingredient(ingredientstable, newingredient)
  local added = false
  for _i, ingredient in pairs(ingredientstable) do
    if ingredient and ingredient[1] == newingredient.name then
      ingredientstable[_i] = newingredient
      added = true
      break
    elseif ingredient and ingredient.name and ingredient.name == newingredient.name then
      ingredient.amount = newingredient.amount
      added = true
      break
    end
  end
  if not added then
    local ingredientsize = table_size(ingredientstable)
    ingredientstable[ingredientsize + 1] = newingredient
    added = true
  end
  return added
end

function sctm.recipe_ingredient_add(recipename, ingredient)
  local added = false
  sctm.debug(recipename .. " insert " .. ingredient.name)
  if data.raw.recipe[recipename] and (data.raw.item[ingredient.name] or data.raw.fluid[ingredient.name]) then
    local recipe = data.raw.recipe[recipename]
    if not recipe.ingredients then
      recipe.ingredients = {}
    end
    added = addingredient(recipe.ingredients, ingredient)
  end
  if not data.raw.recipe[recipename] then
    sctm.debug("attempting to update nonexistent recipe " .. recipename)
  end
  if not data.raw.item[ingredient.name] and not data.raw.fluid[ingredient.name] then
    sctm.debug("attempting to insert nonexistent ingredient " .. ingredient.name)
  end
  return added
end

local function replaceingredient(ingredientstable, oldingredient, newingredient)
  local added = false
  for _i, ingredient in pairs(ingredientstable) do
    if ingredient.name == oldingredient then
      if newingredient.amount == 0 then
        newingredient.amount = ingredient.amount
      end
      ingredientstable[_i] = newingredient
      added = true
      break
    end
  end
  return added
end

function sctm.recipe_ingredient_replace(recipename, oldingredient, newingredient)
  local replaced = false
  local new = newingredient
  if not newingredient.name then
    new = {}
    new.name = newingredient
    new.type = data.raw.fluid[newingredient] and "fluid" or "item"
    new.amount = 0
  end
  if data.raw.recipe[recipename] and (data.raw.item[new.name] or data.raw.fluid[new.name]) then
    local recipe = data.raw.recipe[recipename]
    if recipe.ingredients then
      replaced = replaceingredient(recipe.ingredients, oldingredient, new)
    end
  end
  if not data.raw.recipe[recipename] then
    sctm.debug("attempting to update nonexistent recipe " .. recipename)
  end
  if not data.raw.item[new.name] and not data.raw.fluid[new.name] then
    sctm.debug("attempting to insert nonexistent ingredient " .. new.name)
  end
  return replaced
end

local function replaceresult(resultstable, oldresult, newresult)
  local added = false
  for _i, result in pairs(resultstable) do
    if result.name == oldresult then
      if newresult.amount == 0 then
        newresult.amount = result.amount
      end
      resultstable[_i] = newresult
      added = true
      break
    end
  end
  return added
end

function sctm.recipe_result_replace(recipename, oldresult, newresult)
  local replaced = false
  local new = newresult
  if not new.name then
    new = {}
    new.name = newresult
    new.type = data.raw.fluid[new.name] and "fluid" or "item"
    new.amount = 0
  end
  if data.raw.recipe[recipename] and (data.raw.item[new.name] or data.raw.fluid[new.name]) then
    local recipe = data.raw.recipe[recipename]
    if recipe.results then
      replaced = replaceresult(recipe.results, oldresult, new)
    end
  end
  if not data.raw.recipe[recipename] then
    sctm.debug("attempting to update nonexistent recipe " .. recipename)
  end
  if not data.raw.item[new.name] and not data.raw.fluid[new.name] then
    sctm.debug("attempting to insert nonexistent result " .. new.name)
  end
  return replaced
end

function sctm.find_in_table(table, what)
  for _, value in pairs(table) do
    if _ == what or value == what or (value.name and value.name == what) then
      return true
    end
  end
  return false
end

function sctm.hide_recipe(recipe_name)
  r = data.raw.recipe[recipe_name]
  if r then
    r.hidden = true
  end
end

function sctm.add_recipe_category(recipe_name, category_name)
  if type(recipe_name) == "string" and type(category_name) == "string" then
    local recipe = data.raw.recipe[recipe_name]
    local category = data.raw["recipe-category"][category_name]
    if recipe and category then
      recipe.categories = recipe.categories or { "crafting" }
      if not sctm.find_in_table(recipe.categories, category_name) then
        table.insert(recipe.categories, category_name)
      end
    end
  else
    log(debug.traceback())
  end
end

function sctm.patch_recycling_recipes(updated_recipes)
  if mods["recycler"] then
    local recycling = require("__recycler__/recycling")
    for _, recipe_name in pairs(updated_recipes) do
      local recipe = data.raw.recipe[recipe_name]
      if recipe then
        sctm.tech_unlock_remove("recycling", recipe_name.."-recycling")
        recycling.generate_recycling_recipe(recipe)
      end
    end
  end
end
