local StarterGui = game:GetService("StarterGui")
local RunService = game:GetService("RunService")

local InGameMenu = script.Parent.Parent

local SetRespawnBehavior = require(InGameMenu.Actions.SetRespawnBehavior)

local function registerSetCores(store)
	if RunService:IsClient() and not RunService:IsServer() then
		--Registering these during unit testing causes errors.
		StarterGui:RegisterSetCore("ResetButtonCallback", function(respawnBehavior)
			local respawnEnabled, customCallback = true, nil

			if typeof(respawnBehavior) == "boolean" then
				respawnEnabled, customCallback = respawnBehavior, nil
			elseif typeof(respawnBehavior) == "Instance" and respawnBehavior:IsA("BindableEvent") then
				respawnEnabled, customCallback = true, respawnBehavior
			else
				error("ResetButtonCallback must be set to a BindableEvent or a boolean", 0)
			end

			store:dispatch(SetRespawnBehavior(respawnEnabled, customCallback))
		end)
	end
end

return registerSetCores