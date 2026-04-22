-- Make the science packs use the new intermediate products
-- ===================================================================

-- Science Pack 1
-- ===================================================================
data:extend({
  {
    type = "recipe",
    name = "sct-automation-science-pack",
    subgroup = "sct-sciencepack-1",
    order = "d[t1]-a[automation-science-pack]",
    enabled = false,
    always_show_made_in = true,
    allow_productivity = true,
    ingredients = {
      { type = "item", name = "sct-t1-ironcore", amount = 1 },
      { type = "item", name = "sct-t1-magnet-coils", amount = 2 },
    },
    results = {
      { type = "item", amount = 1, name = "automation-science-pack" },
    },
    energy_required = 5,
  },
})
-- Science Pack 2
-- ===================================================================
data:extend({
  {
    type = "recipe",
    name = "sct-logistic-science-pack",
    subgroup = "sct-sciencepack-2",
    order = "e[t2]-a[logistic-science-pack]",
    enabled = false,
    always_show_made_in = true,
    allow_productivity = true,
    ingredients = {
      { type = "item", name = "sct-t2-instruments", amount = 1 },
      { type = "item", name = "sct-t2-reaction-nodes", amount = 1 },
    },
    results = {
      { type = "item", amount = 1, name = "logistic-science-pack" },
    },
    energy_required = 6,
  },
})
-- Science Pack 3
-- ===================================================================
--[[
  Vanilla:
    Cost: 24x iron-plate + 9.5x copper-plate + 2x plastic-bar + 1x engine-unit
    Time: 28.2
    Complexity: Adv Cir (2+3 step, 3 ing) + Ass Mac 1 (2+2 step, 3 ing) + Engine (2+2 step, 3 ing, nohand)
    
  Science Cost Tweaker:
    Cost: 20x Iron, 17x Copper, 1x Steel, 6x Eletronic Circuits, 1x Adv Circuit, 10x Heavy Oil, 10x Light Oil, 15x Water
      => 28x Iron, 31x Copper, 1x Steel, 2x Plastic, 10x Heavy Oil, 10x Light Oil, 15x Water
    Refunds: 20x Copper
    
  Note: Circuit = 1x Iron + 1.5x Copper
  Note: Adv Circuit = 2x Iron + 5x Copper + 2x Plastic
  Note: Engine = 1x Steel, 4x Iron
]]
--
data:extend({
  {
    type = "recipe",
    name = "sct-chemical-science-pack",
    subgroup = "sct-sciencepack-3",
    order = "f[t3]-a[chemical-science-pack]",
    enabled = false,
    always_show_made_in = true,
    allow_productivity = true,
    ingredients = {
      { type = "item", name = "sct-t3-femto-lasers", amount = 1 },
      { type = "item", name = "sct-t3-atomic-sensors", amount = 1 },
    },
    results = {
      { type = "item", amount = 1, name = "chemical-science-pack" },
    },
    energy_required = 10,
  },
})
-- Military Science Pack
-- ===================================================================
--[[
  Vanilla:
    Cost: 24.5x iron-plate + 7.5x copper-plate + 1x Steel + 5x coal
    Time: 35
    Complexity: Grenade (1 step, 2 ing) + Turret (2 step, 3 ing) + Piercing ammo (2 step, 3 ing)

  Science Cost Tweaker:
    Cost: 35x Iron, 22x Copper, 1x Steel, 5x Coal, 4x Circuit
      => 39x Iron, 28x Copper, 1x Steel, 5x Coal
    Refunds: 14x Iron, 20x Copper = 14x Mixed + 3x Copper
    
]]
--
data:extend({
  {
    type = "recipe",
    name = "sct-military-science-pack",
    enabled = false,
    always_show_made_in = true,
    allow_productivity = true,
    ingredients = {
      { type = "item", name = "sct-mil-circuit3", amount = 1 },
      { type = "item", name = "sct-mil-plating", amount = 1 },
      { type = "item", name = "explosives", amount = 1 },
    },
    results = {
      { type = "item", amount = 2, name = "military-science-pack" },
    },
    energy_required = 10,
    subgroup = "sct-sciencepack-mil",
    order = "g[mil]-a[military-science-pack]",
  },
})
-- Production Science Pack
-- ===================================================================
--[[
  Vanilla:
    Cost: 10x Brick + 45x iron-plate + 32.5x copper-plate + 15x Steel + 10x Plastic + 1x Electric Engine
    Time: 92.7
    Complexity: Pumpjack (2 step, 4 ing) + Elec Furnace (2+3 step, 3 ing) + Elec Eng (2+2 step, liquid, nohand)
    
  Science Cost Tweaker:
    Cost: 17x IronGear, 16x CopperCable, 15x Steel, 20x Stone, 2x Plastic, 4x Adv Circuit, 2x Circuit, 6x Redwire, 20x Petroleum, 120x Water, 1x Electric Engine
      => 50x Iron, 43x Copper, 15x Steel, 20x Stone, 10x Plastic, 20x Petroleum, 120x Water, 1x Electric Engine
    Refunds: 5x Iron, 11x Copper = 5x Mixed + 3x Copper
    
]]
--
data:extend({
  {
    type = "recipe",
    name = "sct-production-science-pack",
    enabled = false,
    always_show_made_in = true,
    allow_productivity = true,
    ingredients = {
      { type = "item", name = "sct-prod-bioprocessor", amount = 1 },
      { type = "item", name = "sct-prod-overclocker", amount = 1 },
    },
    results = {
      { type = "item", amount = 2, name = "production-science-pack" },
    },
    energy_required = 14,
    subgroup = "sct-sciencepack-prod",
    order = "h[prod]-a[production-science-pack]",
  },
})
-- High Tech Science Pack
-- ===================================================================
--[[
  Vanilla:
    Cost: 1x Battery, 3x Processing Unit, 15x Iron, 47.5x Copper, 10x Plastic
    Time: 
    Complexity: 

  Science Cost Tweaker:
    Cost: 90x Iron, 65x Copper, 1x Battery, 3x Processing Unit, 10x Plastic
      => 
    Refunds: 15x Iron, 17x Copper = 15x Mixed + 1x Copper
    
]]
--
data:extend({
  {
    type = "recipe",
    name = "sct-utility-science-pack",
    always_show_made_in = true,
    allow_productivity = true,
    enabled = false,
    ingredients = {
      { type = "item", name = "sct-htech-capbank", amount = 1 },
      { type = "item", name = "sct-htech-injector", amount = 1 },
      { type = "item", name = "sct-htech-random", amount = 1 },
    },
    results = {
      { type = "item", amount = 2, name = "utility-science-pack" },
    },
    energy_required = 14,
    subgroup = "sct-sciencepack-hightech",
    order = "i[ht]-a[ht-science-pack]",
  },
})
