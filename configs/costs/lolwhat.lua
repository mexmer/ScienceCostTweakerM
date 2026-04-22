require("configs.costs.rawmodels")

if not sct_cost then
  sct_cost = {}
end
if not sct_cost.lolwhat then
  sct_cost.lolwhat = {}
end
if not sct_cost.lolwhat.costs then
  sct_cost.lolwhat.costs = {}
end

-- =================================================================================================================================================================== --
-- Cost Adjustments for the various tiers of research.
-- =================================================================================================================================================================== --
-- SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, militaryMult, productionMult, hightechMult)
sct_cost.lolwhat.costs.tier1 = SCT_newTier(0.01, 0.01, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Hundred times cheaper
sct_cost.lolwhat.costs.tier2 = SCT_newTier(0.01, 0.01, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Hundred times cheaper
sct_cost.lolwhat.costs.tier3 = SCT_newTier(0.01, 0.01, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Hundred times cheaper
sct_cost.lolwhat.costs.military = SCT_newTier(0.01, 0.01, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Hundred times cheaper
sct_cost.lolwhat.costs.production = SCT_newTier(0.01, 0.01, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Hundred times cheaper
sct_cost.lolwhat.costs.hightech = SCT_newTier(0.01, 0.01, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Hundred times cheaper
sct_cost.lolwhat.costs.formula = SCT_formulaMod(0.01, "(", ")*0.01") -- Hundred times cheaper
