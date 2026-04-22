sctm.tech_dependency_add("rocket-silo", "electric-engine")

--vanilla
sctm.tech_replace("automation-science-pack", "sct-automation-science-pack")
sctm.tech_replace("logistic-science-pack", "sct-logistic-science-pack")
sctm.tech_replace("chemical-science-pack", "sct-chemical-science-pack")
sctm.tech_replace("military-science-pack", "sct-military-science-pack")
sctm.tech_replace("production-science-pack", "sct-production-science-pack")
sctm.tech_replace("utility-science-pack", "sct-utility-science-pack")
sctm.tech_replace("space-science-pack", "sct-space-science-pack")
--bob mods
sctm.tech_replace("bob-advanced-logistic-science-pack", "sct-advanced-logistic-science-pack")

-- remove known science pack unlocks from other technologies
local knownpackmatchlist = {
  { partial = false, name = "automation-science-pack" },
  { partial = false, name = "logistic-science-pack" },
  { partial = false, name = "chemical-science-pack" },
  { partial = false, name = "production-science-pack" },
  { partial = false, name = "military-science-pack" },
  { partial = false, name = "utility-science-pack" },
  { partial = false, name = "space-science-pack" },
  { partial = false, name = "bob-advanced-logistic-science-pack" }, -- bobs
  { partial = false, name = "bob-science-pack-gold" }, -- bobs
  { partial = false, name = "bob-alien-science-pack" }, -- bobs
  --{ partial = true, name = "bob-alien-science-pack-" },	-- bobs - leaving them under alien research
  { partial = false, name = "sct-bio-science-pack" }, -- angels
  --{ partial = false, name = "omni-pack" }, -- omnimatter - leaving under omnipack-technology
  --{ partial = false, name = "science-pack-t0" }, -- aai - should not have unlock at all
}

for tech_name, _tech in pairs(data.raw.technology) do
  --  if (not name == tech_name and (tech_name:len() < 13 or tech_name:find("sct-research", 1, true) == nil)) then
  if not name == tech_name and not name == ("sct-" .. tech_name) then
    sctm.tech_remove_known_packs(tech_name, knownpackmatchlist)
  end
end
