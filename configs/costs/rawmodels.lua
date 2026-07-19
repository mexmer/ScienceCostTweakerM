-- =================================================================================================================================================================== --
-- Models used for defining research cost multipliers.
-- =================================================================================================================================================================== --

-- Research using Science packs (including Bobingabout's Mods science packs)
function SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, militaryMult, productionMult, hightechMult)
  local costAdjuster = {
    time = timeMult, -- How much the time of the research is multiplied by
    stepCount = stepCountMult, -- How much the count (number of research steps) of the research is multiplied by
    -- How much the number of science packs per research-step of the research is multiplied by
    cost = {},
  }

  costAdjuster.cost["automation-science-pack"] = redMult -- Multiplier to Red Science Packs
  costAdjuster.cost["logistic-science-pack"] = greenMult -- Multiplier to Green Science Packs
  costAdjuster.cost["chemical-science-pack"] = blueMult -- Multiplier to Blue Science Packs
  costAdjuster.cost["military-science-pack"] = militaryMult -- Multiplier to Military Science Packs
  costAdjuster.cost["production-science-pack"] = productionMult -- Multiplier to Production Science Packs
  costAdjuster.cost["utility-science-pack"] = hightechMult -- Multiplier to High Tech Science Packs

  return costAdjuster
end

-- Research using Science packs (including Bobingabout's Mods science packs)
function SCT_formulaMod(timeMult, prefix, postfix)
  local costAdjuster = {
    time = timeMult, -- How much the time of the research is multiplied by
    prefix = prefix, -- String to stick in front of the formula
    postfix = postfix, -- String to stick behind the formula
  }

  return costAdjuster
end
