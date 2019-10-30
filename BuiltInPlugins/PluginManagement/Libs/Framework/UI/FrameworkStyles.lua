--[[
	Provides a base implementation of style tables for the Framework
	that are completely empty and only used so that the Framework
	can run for testing.

	StudioFrameworkStyles extends this style table to implement
	default values for Studio plugins.
]]

local function newDefaults()
	return {
		Default = {},
	}
end

local FrameworkStyles = {}
function FrameworkStyles.new()
	return {}
end

return FrameworkStyles
