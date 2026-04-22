require("configs.costs.rawmodels")

if not sct_cost then
  sct_cost = {}
end
if not sct_cost.normal then
  sct_cost.normal = {}
end
if not sct_cost.normal.costs then
  sct_cost.normal.costs = {}
end

-- =================================================================================================================================================================== --
-- Cost Adjustments for the various tiers of research.
-- =================================================================================================================================================================== --
-- SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, militaryMult, productionMult, hightechMult)
sct_cost.normal.costs.tier1 = SCT_newTier(0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Half the cost
sct_cost.normal.costs.tier2 = SCT_newTier(1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 2x overall more expensive
sct_cost.normal.costs.military = SCT_newTier(1.0, 4.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 4x overall more expensive
sct_cost.normal.costs.production = SCT_newTier(1.0, 4.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 4x overall more expensive
sct_cost.normal.costs.tier3 = SCT_newTier(1.0, 6.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 6x overall more expensive
sct_cost.normal.costs.hightech = SCT_newTier(1.0, 8.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 8x overall more expensive
sct_cost.normal.costs.formula = SCT_formulaMod(1.0, "(", ")") -- No change
