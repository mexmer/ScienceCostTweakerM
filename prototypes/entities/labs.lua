local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({

  -- New Science Labs, from Tier 2 to Tier 4. (Vanilla lab becomes Tier 1)
  -- ===================================================================
  -- == Tier 2 ==
  {
    type = "item",
    name = "sct-lab-t2",
    icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/sct-lab-t2/icon-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/2.png",
      },
    },
    subgroup = "sct-labs",
    order = "a[labs]-b[sct-lab-t2]",
    place_result = "sct-lab-t2",
    stack_size = 10,
  },
  {
    type = "lab",
    name = "sct-lab-t2",
    icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/sct-lab-t2/icon-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/2.png",
      },
    },
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "sct-lab-t2" },
    fast_replaceable_group = "lab",
    max_health = 200,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    damaged_trigger_effect = hit_effects.entity(),
    light = { intensity = 0.75, size = 8 },
    on_animation = {
      filename = "__ScienceCostTweakerM__/graphics/sct-lab-t2/entity.png",
      width = 113,
      height = 91,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = { 0.2, 0.15 },
    },
    off_animation = {
      filename = "__ScienceCostTweakerM__/graphics/sct-lab-t2/entity.png",
      width = 113,
      height = 91,
      frame_count = 1,
      shift = { 0.2, 0.15 },
    },
    working_sound = {
      sound = {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7,
        modifiers = { volume_multiplier("main-menu", 2.2), volume_multiplier("tips-and-tricks", 0.8) },
        audible_distance_modifier = 0.7,
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    impact_category = "glass",
    open_sound = sounds.lab_open,
    close_sound = sounds.lab_close,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "150kW",
    researching_speed = 1,
    inputs = {
      "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
    },
    module_slots = 0,
    icons_positioning = {
      { inventory_index = defines.inventory.lab_modules, shift = { 0, 0.9 } },
      {
        inventory_index = defines.inventory.lab_input,
        shift = { 0, 0 },
        max_icons_per_row = 4,
        separation_multiplier = 1 / 1.1,
      },
    },
    water_reflection = {
      pictures = {
        filename = "__base__/graphics/entity/lab/lab-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
    circuit_wire_max_distance = lab_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["lab"],
    default_technology_level_signal = { type = "virtual", name = "signal-L" },
    next_upgrade = "sct-lab-t3",
  },
  -- == Tier 3 ==
  {
    type = "item",
    name = "sct-lab-t3",
    icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/sct-lab-t3/icon-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/3.png",
      },
    },
    subgroup = "sct-labs",
    order = "a[labs]-c[sct-lab-t3]",
    place_result = "sct-lab-t3",
    stack_size = 10,
  },
  {
    type = "lab",
    name = "sct-lab-t3",
    icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/sct-lab-t3/icon-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/3.png",
      },
    },
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "sct-lab-t3" },
    fast_replaceable_group = "lab",
    max_health = 250,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    damaged_trigger_effect = hit_effects.entity(),
    light = { intensity = 0.75, size = 8 },
    on_animation = {
      filename = "__ScienceCostTweakerM__/graphics/sct-lab-t3/entity.png",
      width = 113,
      height = 91,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = { 0.2, 0.15 },
    },
    off_animation = {
      filename = "__ScienceCostTweakerM__/graphics/sct-lab-t3/entity.png",
      width = 113,
      height = 91,
      frame_count = 1,
      shift = { 0.2, 0.15 },
    },
    working_sound = {
      sound = {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7,
        modifiers = { volume_multiplier("main-menu", 2.2), volume_multiplier("tips-and-tricks", 0.8) },
        audible_distance_modifier = 0.7,
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    impact_category = "glass",
    open_sound = sounds.lab_open,
    close_sound = sounds.lab_close,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "500kW",
    researching_speed = 1,
    inputs = {
      "automation-science-pack",
      "logistic-science-pack",
      "chemical-science-pack",
      "military-science-pack",
      "production-science-pack",
    },
    module_slots = 0,
    icons_positioning = {
      { inventory_index = defines.inventory.lab_modules, shift = { 0, 0.9 } },
      {
        inventory_index = defines.inventory.lab_input,
        shift = { 0, 0 },
        max_icons_per_row = 4,
        separation_multiplier = 1 / 1.1,
      },
    },
    water_reflection = {
      pictures = {
        filename = "__base__/graphics/entity/lab/lab-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
    circuit_wire_max_distance = lab_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["lab"],
    default_technology_level_signal = { type = "virtual", name = "signal-L" },
    next_upgrade = "sct-lab-t4",
  },

  -- == Tier 4 ==
  {
    type = "item",
    name = "sct-lab-t4",
    icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/sct-lab-t4/icon-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/4.png",
      },
    },
    subgroup = "sct-labs",
    order = "a[labs]-d[sct-lab-t4]",
    place_result = "sct-lab-t4",
    stack_size = 10,
  },
  {
    type = "lab",
    name = "sct-lab-t4",
    icons = {
      {
        icon_size = 64,
        icon = "__ScienceCostTweakerM__/graphics/sct-lab-t4/icon-64.png",
      },
      {
        icon_size = 32,
        icon = "__ScienceCostTweakerM__/graphics/overlays/4.png",
      },
    },
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "sct-lab-t4" },
    fast_replaceable_group = "lab",
    max_health = 300,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    damaged_trigger_effect = hit_effects.entity(),
    light = { intensity = 0.75, size = 8 },
    on_animation = {
      filename = "__ScienceCostTweakerM__/graphics/sct-lab-t4/entity.png",
      width = 113,
      height = 91,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = { 0.2, 0.15 },
    },
    off_animation = {
      filename = "__ScienceCostTweakerM__/graphics/sct-lab-t4/entity.png",
      width = 113,
      height = 91,
      frame_count = 1,
      shift = { 0.2, 0.15 },
    },
    working_sound = {
      sound = {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7,
        modifiers = { volume_multiplier("main-menu", 2.2), volume_multiplier("tips-and-tricks", 0.8) },
        audible_distance_modifier = 0.7,
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    impact_category = "glass",
    open_sound = sounds.lab_open,
    close_sound = sounds.lab_close,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "2MW",
    researching_speed = 1,
    inputs = {
      "automation-science-pack",
      "logistic-science-pack",
      "chemical-science-pack",
      "military-science-pack",
      "production-science-pack",
      "utility-science-pack",
      "space-science-pack",
    },
    module_slots = 0,
    icons_positioning = {
      { inventory_index = defines.inventory.lab_modules, shift = { 0, 0.9 } },
      {
        inventory_index = defines.inventory.lab_input,
        shift = { 0, 0 },
        max_icons_per_row = 4,
        separation_multiplier = 1 / 1.1,
      },
    },
    water_reflection = {
      pictures = {
        filename = "__base__/graphics/entity/lab/lab-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
    circuit_wire_max_distance = lab_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["lab"],
    default_technology_level_signal = { type = "virtual", name = "signal-L" },
  },
})

-- Rework vanilla science lab into a Tier 1 science lab.
data.raw.item["lab"].subgroup = "sct-labs"
data.raw.item["lab"].order = "a[labs]-a[lab]"
data.raw.item["lab"].icons = {
  {
    icon_size = 64,
    icon = "__ScienceCostTweakerM__/graphics/sct-lab-t1/icon-64.png",
  },
  {
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/overlays/1.png",
  },
}
data.raw.item["lab"].icon = nil

data.raw.lab["lab"].icons = {
  {
    icon_size = 64,
    icon = "__ScienceCostTweakerM__/graphics/sct-lab-t1/icon-64.png",
  },
  {
    icon_size = 32,
    icon = "__ScienceCostTweakerM__/graphics/overlays/1.png",
  },
}
data.raw.lab["lab"].icon = nil
data.raw.lab["lab"].collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } }
data.raw.lab["lab"].selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } }
data.raw.lab["lab"].on_animation = {
  filename = "__ScienceCostTweakerM__/graphics/sct-lab-t1/entity.png",
  width = 113,
  height = 91,
  frame_count = 33,
  line_length = 11,
  animation_speed = 1 / 3,
  shift = { 0.2, 0.15 },
}
data.raw.lab["lab"].off_animation = {
  filename = "__ScienceCostTweakerM__/graphics/sct-lab-t1/entity.png",
  width = 113,
  height = 91,
  frame_count = 1,
  shift = { 0.2, 0.15 },
}
data.raw.lab["lab"].energy_usage = "60kW"
data.raw.lab["lab"].inputs = {
  "automation-science-pack",
}
data.raw.lab["lab"].module_slots = 0
data.raw.lab["lab"].fast_replaceable_group = "lab"
data.raw.lab["lab"].next_upgrade = "sct-lab-t2"

if settings.startup["sct-lab-modules"].value == "tier3" then
  data.raw.lab["sct-lab-t3"].module_slots = 1
  data.raw.lab["sct-lab-t4"].module_slots = 2
elseif settings.startup["sct-lab-modules"].value == "tier4" then
  data.raw.lab["sct-lab-t4"].module_slots = 2
end

if DiscoScience then
  DiscoScience.prepareLab(data.raw["lab"]["lab"])
  DiscoScience.prepareLab(data.raw["lab"]["sct-lab-t2"])
  DiscoScience.prepareLab(data.raw["lab"]["sct-lab-t3"])
  DiscoScience.prepareLab(data.raw["lab"]["sct-lab-t4"])
end
