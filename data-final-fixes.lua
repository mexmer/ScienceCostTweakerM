require("config")
-- Cost updates
require("configs.costs.lolwhat")
require("configs.costs.uberwaffe")
require("configs.costs.normal")
require("configs.costs.extended")
-- Recipe fixes
require("prototypes.2_recipe")
-- tweaks for other mods
require("tweaks.aai.2_final")
require("tweaks.angelsmods.2_final")
require("tweaks.bobsmods.2_final")
require("tweaks.omnimatter.2_final")

-- Technology map fix
require("prototypes.2_technology")

if settings.startup["sct-difficulty-cost"].value ~= "noadjustment" then
  -- Select the cost file depending on which one is requested.
  local sciencecosttweaker = sct_cost[settings.startup["sct-difficulty-cost"].value]

  -- Iterate through all research, and update the costs as configured.
  for _, tech in pairs(data.raw.technology) do
    if tech.unit then
      -- First, determine the tier of the research, by looking at what types of science packs is used in its research cost.

      local tier = 1
      local multiplier = sciencecosttweaker.costs.tier1
      local ingredients = tech.unit.ingredients
      for _, pack in pairs(ingredients) do
        local packname = pack[1]
        if tier < 2 and packname == "logistic-science-pack" then
          tier = 2
          multiplier = sciencecosttweaker.costs.tier2
        end
        if tier < 3 and packname == "military-science-pack" then
          tier = 3
          multiplier = sciencecosttweaker.costs.military
        end
        if tier < 4 and packname == "production-science-pack" then
          tier = 4
          multiplier = sciencecosttweaker.costs.production
        end
        if tier < 5 and packname == "chemical-science-pack" then
          tier = 5
          multiplier = sciencecosttweaker.costs.tier3
        end
        if tier < 6 and packname == "utility-science-pack" then
          tier = 6
          multiplier = sciencecosttweaker.costs.hightech
        end
        if tech.unit.count_formula ~= nil then
          tier = 999999
          multiplier = sciencecosttweaker.costs.formula
        end
      end

      -- If a multiplier is defined for this tier, then apply it.
      if multiplier ~= nil then
        local unitCopy = table.deepcopy(tech.unit)

        unitCopy.time = math.max(unitCopy.time * multiplier.time, 1)

        -- Now, since infinite research follows a slightly different layout, we have to account for that here.
        -- Only adjust the count if it has a count field
        if unitCopy.count ~= nil then
          -- Now adjust by the modifiers for this tier
          unitCopy.count = math.max(math.floor(unitCopy.count * multiplier.stepCount), 1)

          for _, pack in pairs(unitCopy.ingredients) do
            -- For each type of science pack, multiply its count per research step by the given multiplier
            local packname = pack[1]
            local ingredientCostCount = pack[2]
            if multiplier.cost[packname] then
              local mult = 1

              mult = multiplier.cost[packname]
              ingredientCostCount = math.floor(ingredientCostCount * mult)
              ingredientCostCount = math.max(ingredientCostCount, 1)

              pack[2] = ingredientCostCount
              --sctm.log(tech.name .. " multiplier applied " .. " (mult: " .. mult .. ", pack: " .. packname)
            end
          end
        end

        -- If the tech uses a count formulae instead, then adjust the formula by wrapping it in our added strings
        if unitCopy.count_formula ~= nil then
          unitCopy.count_formula = multiplier.prefix .. unitCopy.count_formula .. multiplier.postfix
        end

        tech.unit = unitCopy
      end
    end
  end
end
