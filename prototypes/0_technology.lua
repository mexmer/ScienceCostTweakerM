require("technologies.sciencepacks")
require("technologies.labs")

sctm.tech_dependency_add("logistics-3", "logistics-2")

sctm.tech_unlock_remove("electronics", "lab")
sctm.tech_unlock_remove("circuit-network", "iron-stick")
sctm.tech_unlock_remove("concrete", "iron-stick")
sctm.tech_unlock_remove("electric-energy-distribution-1", "iron-stick")
sctm.tech_unlock_remove("railway", "iron-stick")
