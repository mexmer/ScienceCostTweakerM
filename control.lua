script.on_configuration_changed(function()
  if remote.interfaces["DiscoScience"] and remote.interfaces["DiscoScience"]["setLabScale"] then
    remote.call("DiscoScience", "setLabScale", "sct-lab-t2", 1)
    remote.call("DiscoScience", "setLabScale", "sct-lab-t3", 1)
    remote.call("DiscoScience", "setLabScale", "sct-lab-t4", 1)
  end
  if remote.interfaces["DiscoScience"] and remote.interfaces["DiscoScience"]["setIngredientColor"] then
    remote.call("DiscoScience", "setIngredientColor", "automation-science-pack", { r = 1.0, g = 0.1, b = 0.1 })
    remote.call("DiscoScience", "setIngredientColor", "logistic-science-pack", { r = 0.1, g = 1.0, b = 0.1 })
    remote.call("DiscoScience", "setIngredientColor", "chemical-science-pack", { r = 0.1, g = 1.0, b = 1.0 })
    remote.call("DiscoScience", "setIngredientColor", "military-science-pack", { r = 1.0, g = 0.6, b = 1.0 })
    remote.call("DiscoScience", "setIngredientColor", "production-science-pack", { r = 1.0, g = 0.1, b = 1.0 })
    remote.call("DiscoScience", "setIngredientColor", "utility-science-pack", { r = 1.0, g = 1.0, b = 0.1 })
    remote.call("DiscoScience", "setIngredientColor", "space-science-pack", { r = 1.0, g = 1.0, b = 1.0 })
  end
end)
