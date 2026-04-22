if mods["aai-industry"] then
  sctm.tech_unlock_add("sct-lab-t1", "lab")

  if data.raw.lab["burner-lab"] then
    sctm.lab_input_add("burner-lab", "sct-science-pack-0")
  end

  if data.raw.technology["electric-lab"] then
    sctm.tech_disable("electric-lab")
  end
end
