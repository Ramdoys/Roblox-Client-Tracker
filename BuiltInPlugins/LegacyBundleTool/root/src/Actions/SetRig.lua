local root = script:FindFirstAncestor("root")

local Action = require(root.lib.DeveloperFramework.Util.Action)

return Action(script.Name, function(rig)
	return {
		rig = rig,
	}
end)
