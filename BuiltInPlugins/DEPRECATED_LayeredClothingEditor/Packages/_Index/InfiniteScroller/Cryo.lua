--[[
    Package link auto-generated by manage_libraries and Rotriever
]]
local FFlagLayeredClothingEditorDeduplicatePackages = game:GetFastFlag("LayeredClothingEditorDeduplicatePackages")
if FFlagLayeredClothingEditorDeduplicatePackages then
    local PackageIndex = script.Parent.Parent.Parent._Index
    return require(PackageIndex["roblox_cryo"]["cryo"])
else
    local PackageIndex = script.Parent.Parent.Parent._IndexOld
    return require(PackageIndex["roblox_cryo"]["cryo"])
end

