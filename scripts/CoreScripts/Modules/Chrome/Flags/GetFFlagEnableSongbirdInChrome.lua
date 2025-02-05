local Chrome = script:FindFirstAncestor("Chrome")

local IsExperienceMenuABTestEnabled = require(Chrome.Parent.IsExperienceMenuABTestEnabled)
local ExperienceMenuABTestManager = require(Chrome.Parent.ExperienceMenuABTestManager)

game:DefineFastFlag("EnableSongbirdInChrome2", false)

return function()
	if IsExperienceMenuABTestEnabled() and ExperienceMenuABTestManager.default:shouldShowSongbirdUnibar() then
		return true
	end

	return game:GetFastFlag("EnableSongbirdInChrome2")
end
