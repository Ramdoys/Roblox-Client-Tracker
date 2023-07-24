local Validator = script.Parent
local Style = Validator.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)

local Settings = t.strictInterface({
	PreferredTransparency = t.optional(t.number),
	ReducedMotion = t.optional(t.boolean),
})

return Settings
