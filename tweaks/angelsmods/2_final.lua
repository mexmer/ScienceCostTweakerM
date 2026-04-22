-- remove angels bio token from lab
if mods["angelsbioprocessing"] then
  if data.raw.tool["angels-token-bio"] or data.raw.recipe["angels-token-bio"] then
    for _i, lab in pairs(data.raw["lab"]) do
      sctm.lab_input_remove(_i, "angels-token-bio")
    end
    if data.raw.tool["angels-token-bio"] then
      data.raw.tool["angels-token-bio"].order = "d_a[bio]-e[token-bio]"
      data.raw.tool["angels-token-bio"].subgroup = "sct-bio-science-pack"
    end
    if data.raw.recipe["angels-token-bio"] then
      data.raw.recipe["angels-token-bio"].order = "d_a[bio]-e[token-bio]"
      data.raw.recipe["angels-token-bio"].subgroup = "sct-bio-science-pack"
    end
    -- replace token-bio with bio science pack
    for i, tech in pairs(data.raw.technology) do
      sctm.tech_pack_replace(tech.name, "angels-token-bio", "sct-bio-science-pack")
    end
  end
end
