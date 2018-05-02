data:extend({
	-- Setup the recipe for smelting the junk byproducts back into useful stuff.
	-- ===================================================================

	{
		type = "recipe",
		name = "sct-waste-processing-mixed",
		energy_required = 0.5,
		enabled = false,
		category = "crafting-with-fluid",
		ingredients = {{"sct-waste-ironcopper", 2}},
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-ironcopper.png",
		icon_size = 32,
		subgroup = "sct-byproducts",
		order = "c[bp]-b[mixedewaste]",
		results =
		{
			{
				name = "iron-ore",
				amount = 1
			},
			{
				name = "copper-ore",
				amount = 1
			}
		},
		allow_decomposition = false,
		hidden_from_flow_stats = true,
	},

	{
		type = "recipe",
		name = "sct-waste-processing-copper",
		energy_required = 0.5,
		enabled = false,
		category = "crafting-with-fluid",
		ingredients = {{"sct-waste-copperonly", 2}},
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-copperonly.png",
		icon_size = 32,
		subgroup = "sct-byproducts",
		order = "c[bp]-a[copperwaste]",
		results =
		{
			{
				name = "copper-ore",
				amount = 2
			}
		},
		allow_decomposition = false,
		hidden_from_flow_stats = true,
	},


	-- Recipes for new science packs intermediary products.
	-- ===================================================================

	-- Tier 1 Intermediary products.
	-- =============================
	-- Vanilla Tier 1 Science Pack:
	-- 5.5x time, 2x Iron plate, 1x Copper plate
	-- <- 1x Iron gear (2x Iron plate) + 1x Copper plate
	--
	-- New cost: 8.72x time, 2x Iron plate, 1x Copper plate
	{
		type = "recipe",
		name = "sct-t1-ironcore",
		subgroup = "sct-sciencepack-1",
		order = "d[t1]-b[ironcore]",
		enabled = "true",
		energy_required = 1.25,
		ingredients =
		{
			{"iron-plate", 2},
		},
		results = 
		{
			{type="item", name="sct-t1-ironcore", amount=1},
		},
	},

	{
		type = "recipe",
		name = "sct-t1-magnet-coils",
		subgroup = "sct-sciencepack-1",
		order = "d[t1]-c[magnetcoils]",
		enabled = "true",
		energy_required = 5,
		ingredients =
		{
			{"copper-plate", 4},
		},
		results = 
		{
			{type="item", name="sct-t1-magnet-coils", amount=8},
		},
	},
	
	-- Tier 2 Intermediary products.
	-- =============================
	-- Vanilla Tier 2 Science Pack:
	-- 8.8x time, 5.5x Iron plate, 1.5x Copper plate
	-- <- 1x Transport Belt (0.5x Iron gear + 0.5x Iron plate) + 1x Inserter (1x Electronic circuit + 1x Iron gear + 1x Iron plate)
	-- <- 1.5x Gear + 2.5x Iron plate + 3x Copper cable (1.5x copper plate)
	-- <- 5.5x Iron plate + 1.5x Copper plate
	--
	-- New cost: 8.7x time, 8x Iron plate, 2x Copper plate
	{
		type = "recipe",
		name = "sct-t2-instruments",
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-b[instruments]",
		enabled = "true",
		energy_required = 1.5,
		ingredients =
		{
			{"sct-t2-microcircuits", 10},
			{"iron-plate", 2},
		},
		results = 
		{
			{type="item", name="sct-t2-instruments", amount=1},
		},
	},

	{
		type = "recipe",
		name = "sct-t2-microcircuits",
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-c[microcircuits]",
		enabled = "true",
		energy_required = 1.5,
		ingredients =
		{
			{"copper-plate", 1},
			{"sct-t2-micro-wafer", 1},
		},
		results = 
		{
			{type="item", name="sct-t2-microcircuits", amount=10},
		},
	},

	{
		type = "recipe",
		name = "sct-t2-micro-wafer",
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-d[micro-wafer]",
		enabled = "true",
		energy_required = 3,
		ingredients =
		{
			{"iron-plate", 2},
			{"sct-t2-wafer-stamp", 4}
		},
		results = 
		{
			{type="item", name="sct-t2-micro-wafer", amount=2},
		},
	},

	{
		type = "recipe",
		name = "sct-t2-wafer-stamp",
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-e[wafer-stamp]",
		enabled = "true",
		energy_required = 3,
		ingredients =
		{
			{"iron-plate", 4},
		},
		results = 
		{
			{type="item", name="sct-t2-wafer-stamp", amount=4},
		},
	},
	
	{
		type = "recipe",
		name = "sct-t2-reaction-nodes",
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-f[reaction-nodes]",
		enabled = "true",
		energy_required = 1.5,
		ingredients =
		{
			{"sct-t1-magnet-coils", 2},
			{"iron-plate", 1},
		},
		results = 
		{
			{type="item", name="sct-t2-reaction-nodes", amount=1},
		},
	},

	-- Tier 3 Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-t3-femto-lasers",
		category = "crafting-with-fluid",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/femto-lasers.png",
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-b[femtolasers]",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="sct-t3-laser-emitter", amount=1},
			{type="item", name="sct-t3-laser-foci", amount=1},
			{type="item", name="sct-t3-flash-fuel", amount=1},
			{type="fluid", name="water", amount=10}
		},
		results = 
		{
			{type="item", name="sct-t3-femto-lasers", amount=1},
		},
	},

	{
		type = "recipe",
		name = "sct-t3-flash-fuel",
		category = "chemistry",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/flash-fuel.png",
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-c[flashfuel]",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="fluid", name="heavy-oil", amount=10},
			{type="fluid", name="light-oil", amount=10},
			{type="item", name="steel-plate", amount=1}
		},
		results = 
		{
			{type="item", name="sct-t3-flash-fuel", amount=1},
		},
		always_show_made_in = true,
	},

	{
		type = "recipe",
		name = "sct-t3-laser-foci",
		category = "crafting",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/laser-foci.png",
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-d[laserfoci]",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="copper-plate", amount=4},
			{type="item", name="iron-plate", amount=6}
		},
		results = 
		{
			{type="item", name="sct-t3-laser-foci", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		},
	},

	{
		type = "recipe",
		name = "sct-t3-laser-emitter",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/laser-emitter.png",
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-e[laseremitter]",
		category = "crafting",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="electronic-circuit", amount=6},
			{type="item", name="copper-plate", amount=2},
			{type="item", name="iron-plate", amount=2}
		},
		results = 
		{
			{type="item", name="sct-t3-laser-emitter", amount=1},
			{type="item", name="sct-waste-copperonly", amount=2}
		},
	},

	{
		type = "recipe",
		name = "sct-t3-atomic-sensors",
		category = "crafting-with-fluid",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/atomic-sensors.png",
		order = "f[t3]-f[atomicsensors]",
		subgroup = "sct-sciencepack-3",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="advanced-circuit", amount=1},
			{type="item", name="iron-plate", amount=12},
			{type="item", name="sct-t1-magnet-coils", amount=22},
			{type="fluid", name="water", amount=5}
		},
		results = 
		{
			{type="item", name="sct-t3-atomic-sensors", amount=1},
			{type="item", name="sct-waste-copperonly", amount=7}
		},
	},
	
	-- Military Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-mil-plating",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-plating.png",
		category = "advanced-crafting",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-b[plating]",
		enabled = "false",
		energy_required = 10,
		ingredients =
		{
			{type="item", name="steel-plate", amount=1},
			{type="item", name="iron-plate", amount=6},
			{type="item", name="sct-mil-subplating", amount=7},
			{type="item", name="copper-plate", amount=2}
		},
		results = 
		{
			{type="item", name="sct-mil-plating", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=1}
		},
	},

	{
		type = "recipe",
		name = "sct-mil-subplating",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-subplating.png",
		category = "crafting",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-c[subplating]",
		enabled = "false",
		energy_required = 0.5,
		ingredients =
		{
			{type="item", name="iron-plate", amount=3},
			{type="item", name="copper-plate", amount=1}
		},
		results = 
		{
			{type="item", name="sct-mil-subplating", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=1}
		},
	},

	{
		type = "recipe",
		name = "sct-mil-circuit3",
		category = "advanced-crafting",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_3.png",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-d[circuit3]",
		enabled = "false",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="sct-mil-circuit2", amount=1},
			{type="item", name="electronic-circuit", amount=4},
			{type="item", name="iron-plate", amount=6},
			{type="item", name="copper-plate", amount=6}
		},
		results = 
		{
			{type="item", name="sct-mil-circuit3", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=7},
			{type="item", name="sct-waste-copperonly", amount=2}
		},
	},
	
	{
		type = "recipe",
		name = "sct-mil-circuit2",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_2.png",
		category = "crafting",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-e[circuit2]",
		enabled = "false",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="sct-mil-circuit1", amount=1},
			{type="item", name="copper-plate", amount=5}
		},
		results = 
		{
			{type="item", name="sct-mil-circuit2", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=5},
			{type="item", name="sct-waste-copperonly", amount=1}
		},
	},
	
	{
		type = "recipe",
		name = "sct-mil-circuit1",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_1.png",
		category = "crafting",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-f[circuit1]",
		enabled = "false",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="iron-plate", amount=2},
			{type="item", name="copper-plate", amount=2},
			{type="item", name="coal", amount=5}
		},
		results = 
		{
			{type="item", name="sct-mil-circuit1", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=1}
		},
	},

	-- Production Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-prod-bioprocessor",
		category = "advanced-crafting",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/bioprocessor.png",
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-b[bioprocessor]",
		enabled = "false",
		energy_required = 30,
		ingredients =
		{
			{type="item", name="sct-prod-baked-biopaste", amount=1},
			{type="item", name="red-wire", amount=6},
			{type="item", name="advanced-circuit", amount=4}
		},
		results = 
		{
			{type="item", name="sct-prod-bioprocessor", amount=1},
		},
	},

	{
		type = "recipe",
		name = "sct-prod-baked-biopaste",
		category = "smelting",
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-c[biopaste]",
		energy_required = 3,
		enabled = "false",
		ingredients = {{"sct-prod-biosilicate", 1}},
		result = "sct-prod-baked-biopaste",
		always_show_made_in = true,
	},
	
	{
		type = "recipe",
		name = "sct-prod-biosilicate",
		category = "chemistry",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-prod-biosilicate.png",
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-d[biosillicate]",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="stone", amount=20},
			{type="item", name="steel-plate", amount=6},
			{type="item", name="plastic-bar", amount=2},
			{type="item", name="electronic-circuit", amount=2},
			{type="fluid", name="petroleum-gas", amount=20}
		},
		results = 
		{
			{type="item", name="sct-prod-biosilicate", amount=1},
		},
		always_show_made_in = true,
	},

	{
		type = "recipe",
		name = "sct-prod-overclocker",
		category = "crafting-with-fluid",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/overclocker.png",
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-e[overclocker]",
		enabled = "false",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="iron-gear-wheel", amount=17},
			{type="item", name="copper-cable", amount=16},
			{type="item", name="steel-plate", amount=9},
			{type="item", name="electric-engine-unit", amount=1},
			{type="fluid", name="water", amount=120}
		},
		results = 
		{
			{type="item", name="sct-prod-overclocker", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=5},
			{type="item", name="sct-waste-copperonly", amount=3}
		},
	},
	
	-- High-Tech Intermediary products.
	-- =============================
	
	{
		type = "recipe",
		name = "sct-htech-capbank",
		category = "crafting-with-fluid",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-capbank.png",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-b[capbank]",
		enabled = "false",
		energy_required = 4,
		ingredients =
		{
			{type="item", name="battery", amount=1},
			{type="item", name="iron-plate", amount=10},
			{type="item", name="copper-cable", amount=15}
		},
		results = 
		{
			{type="item", name="sct-htech-capbank", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=5}
		},
	},
	
	{
		type = "recipe",
		name = "sct-htech-injector",
		category = "crafting-with-fluid",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-injector.png",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-c[injector]",
		enabled = "false",
		energy_required = 3.5,
		ingredients =
		{
			{type="item", name="processing-unit", amount=3},
			{type="item", name="plastic-bar", amount=10},
			{type="item", name="iron-plate", amount=15},
			{type="item", name="copper-cable", amount=30}
		},
		results = 
		{
			{type="item", name="sct-htech-injector", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=10}
		},
	},
	
	{
		type = "recipe",
		name = "sct-htech-random",
		category = "advanced-crafting",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-random.png",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-d[random]",
		enabled = "false",
		energy_required = 7,
		ingredients =
		{
			{type="item", name="sct-htech-thermalstore-heated", amount=1},
			{type="item", name="iron-gear-wheel", amount=5}
		},
		results = 
		{
			{type="item", name="sct-htech-random", amount=1}
		},
	},

	{
		type = "recipe",
		name = "sct-htech-thermalstore-heated",
		category = "smelting",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-e[thermalstore-heated]",
		energy_required = 22,
		enabled = "false",
		ingredients = {{"sct-htech-thermalstore", 1}},
		result = "sct-htech-thermalstore-heated",
		always_show_made_in = true,
	},
	
	{
		type = "recipe",
		name = "sct-htech-thermalstore",
		category = "advanced-crafting",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-thermalstore.png",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-f[thermalstore]",
		enabled = "false",
		energy_required = 3.5,
		ingredients =
		{
			{type="item", name="copper-plate", amount=40}
		},
		results = 
		{
			{type="item", name="sct-htech-thermalstore", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		},
	},		
})