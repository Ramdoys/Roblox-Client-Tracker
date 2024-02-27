local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local TeleportService = game:GetService("TeleportService")

local GamesMultigetPlaceDetails =
	require(CorePackages.Workspace.Packages.GameDetailRodux).GamesByPlaceId.GamesMultigetPlaceDetails

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagRemoveAppTempCommonTemp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagRemoveAppTempCommonTemp
local httpRequest: any = if GetFFlagRemoveAppTempCommonTemp()
	then require(RobloxGui.Modules.Common.httpRequest)
	else require(CorePackages.AppTempCommon.Temp.httpRequest)

local httpImpl = httpRequest(HttpRbxApiService :: any)

return function()
	if game.PlaceId ~= 0 then
		GamesMultigetPlaceDetails(httpImpl :: any, game.PlaceId):andThen(function(response)
			local rootPlaceId = response.responseBody[1].universeRootPlaceId
			TeleportService:Teleport(rootPlaceId)
		end, function() end)
	end
end
