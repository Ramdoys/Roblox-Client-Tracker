local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(title, bodyText, callerId, calleeId)
	return {
		title = title,
		bodyText = bodyText,
		callerId = callerId or 0,
		calleeId = calleeId or 0,
	}
end)
