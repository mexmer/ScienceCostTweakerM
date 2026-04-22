require("configs.costs.rawmodels")

if not sct_cost then
  sct_cost = {}
end
if not sct_cost.extended then
  sct_cost.extended = {}
end
if not sct_cost.extended.costs then
  sct_cost.extended.costs = {}
end

-- =================================================================================================================================================================== --
-- Cost Adjustments for the various tiers of research.
-- =================================================================================================================================================================== --
-- SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, darkblueMult, goldMult, alienMult)
sct_cost.extended.costs.tier1 = SCT_newTier(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- No change
sct_cost.extended.costs.tier2 = SCT_newTier(1.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0) -- 4x overall more expensive
sct_cost.extended.costs.tier3 = SCT_newTier(1.0, 3.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0) -- 6x overall more expensive
sct_cost.extended.costs.military = SCT_newTier(1.0, 5.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0) -- 10x overall more expensive
sct_cost.extended.costs.production = SCT_newTier(1.0, 5.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0) -- 10x overall more expensive
sct_cost.extended.costs.hightech = SCT_newTier(1.0, 10.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0) -- 20x overall more expensive
sct_cost.extended.costs.formula = SCT_formulaMod(1.0, "25*(", ")") -- 25x overall more expensive
