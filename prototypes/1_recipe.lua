local sctlab = data.raw.recipe["sct-lab-t1"]
data.raw.recipe["sct-lab-t1"] = nil
sctlab.name = "lab"
data.raw.recipe["lab"] = sctlab

local sciencepack1 = data.raw.recipe["sct-automation-science-pack"]
data.raw.recipe["sct-automation-science-pack"] = nil
sciencepack1.name = "automation-science-pack"
data.raw.recipe["automation-science-pack"] = sciencepack1

local sciencepack2 = data.raw.recipe["sct-logistic-science-pack"]
data.raw.recipe["sct-logistic-science-pack"] = nil
sciencepack2.name = "logistic-science-pack"
data.raw.recipe["logistic-science-pack"] = sciencepack2

local sciencepack3 = data.raw.recipe["sct-chemical-science-pack"]
data.raw.recipe["sct-chemical-science-pack"] = nil
sciencepack3.name = "chemical-science-pack"
data.raw.recipe["chemical-science-pack"] = sciencepack3

local sciencepackm = data.raw.recipe["sct-military-science-pack"]
data.raw.recipe["sct-military-science-pack"] = nil
sciencepackm.name = "military-science-pack"
data.raw.recipe["military-science-pack"] = sciencepackm

local sciencepackp = data.raw.recipe["sct-production-science-pack"]
data.raw.recipe["sct-production-science-pack"] = nil
sciencepackp.name = "production-science-pack"
data.raw.recipe["production-science-pack"] = sciencepackp

local sciencepackh = data.raw.recipe["sct-utility-science-pack"]
data.raw.recipe["sct-utility-science-pack"] = nil
sciencepackh.name = "utility-science-pack"
data.raw.recipe["utility-science-pack"] = sciencepackh
