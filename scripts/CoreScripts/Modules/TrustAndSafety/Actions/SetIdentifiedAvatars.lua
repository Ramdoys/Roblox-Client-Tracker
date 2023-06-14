local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(identifiedAvatars)
	return {
		identifiedAvatars = identifiedAvatars
	}
end)
