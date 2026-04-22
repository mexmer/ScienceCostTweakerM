require("science_angels")

if mods["angelssmelting"] and not mods["bobplates"] then
  angelsmods.trigger.ores["gold"] = true
  angelsmods.trigger.ores["lead"] = true
  angelsmods.trigger.ores["platinum"] = true
  angelsmods.trigger.ores["tin"] = true

  angelsmods.trigger.smelting_products["aluminium"].plate = true
  angelsmods.trigger.smelting_products["cobalt"].plate = true
  angelsmods.trigger.smelting_products["glass"].plate = true
  angelsmods.trigger.smelting_products["gold"].plate = true
  angelsmods.trigger.smelting_products["gold"].wire = true
  angelsmods.trigger.smelting_products["lead"].plate = true
  angelsmods.trigger.smelting_products["platinum"].plate = true
  angelsmods.trigger.smelting_products["platinum"].wire = true
  angelsmods.trigger.smelting_products["silver"].plate = true
  angelsmods.trigger.smelting_products["silver"].wire = true
  angelsmods.trigger.smelting_products["tin"].plate = true
  angelsmods.trigger.smelting_products["tin"].wire = true
  angelsmods.trigger.smelting_products["titanium"].plate = true
end

if mods["angelsbioprocessing"] then
  sctm.lab_input_add("sct-lab-t2", "sct-bio-science-pack")
  sctm.lab_input_add("sct-lab-t3", "sct-bio-science-pack")
  sctm.lab_input_add("sct-lab-t4", "sct-bio-science-pack")

  angelsmods.trigger.paper = true
  angelsmods.trigger.water_red_waste = true
  angelsmods.trigger.early_chemical_furnace = true
end
