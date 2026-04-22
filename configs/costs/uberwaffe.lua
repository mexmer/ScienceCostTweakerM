require("configs.costs.rawmodels")

if not sct_cost then
  sct_cost = {}
end
if not sct_cost.uberwaffe then
  sct_cost.uberwaffe = {}
end
if not sct_cost.uberwaffe.costs then
  sct_cost.uberwaffe.costs = {}
end

-- =================================================================================================================================================================== --
-- Cost Adjustments for the various tiers of research.
-- =================================================================================================================================================================== --
-- SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, militaryMult, productionMult, hightechMult)
sct_cost.uberwaffe.costs.tier1 = SCT_newTier(0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- x0.5
sct_cost.uberwaffe.costs.tier2 = SCT_newTier(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- No change
sct_cost.uberwaffe.costs.tier3 = SCT_newTier(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- No change
sct_cost.uberwaffe.costs.military = SCT_newTier(1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 2x overall more expensive
sct_cost.uberwaffe.costs.production = SCT_newTier(1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 2x overall more expensive
sct_cost.uberwaffe.costs.hightech = SCT_newTier(1.0, 5.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 5x overall more expensive
sct_cost.uberwaffe.costs.formula = SCT_formulaMod(1.0, "", "") -- No change
