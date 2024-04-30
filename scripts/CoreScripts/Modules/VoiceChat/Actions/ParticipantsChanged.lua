local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(participants: {[number]: string})
	return {
		newParticipants = participants,
	}
end)
