--[[
    Package link auto-generated by manage_libraries and Rotriever
]]
local FFlagPluginManagementDeduplicatePackages = game:GetFastFlag("PluginManagementDeduplicatePackages")
if FFlagPluginManagementDeduplicatePackages then
    local PackageIndex = script.Parent.Parent.Parent._Index
    local Package = require(PackageIndex["RoactRodux"]["RoactRodux"])
    return Package
else
    local PackageIndex = script.Parent.Parent.Parent._Old
    return require(PackageIndex["roblox_roact-rodux"]["roact-rodux"])
end

