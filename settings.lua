data:extend({
  {
    type = "string-setting",
    name = "sct-difficulty-cost",
    order = "sct-a[difficulty]",
    setting_type = "startup",
    default_value = "noadjustment",
    allowed_values = { "lolwhat", "noadjustment", "uberwaffe", "normal", "extended" },
  },

  {
    type = "string-setting",
    name = "sct-lab-modules",
    order = "sct-f[modules]",
    setting_type = "startup",
    default_value = "none",
    allowed_values = { "none", "tier3", "tier4" },
  },
})
