local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local Cryo = require(CorePackages.Packages.Cryo)
local InspectAndBuyFolder = script.Parent.Parent
local SetFavoriteBundle = require(InspectAndBuyFolder.Actions.SetFavoriteBundle)

return Rodux.createReducer({}, {
	[SetFavoriteBundle.name] = function(state, action)
		local id = action.id
		local isFavorite = action.isFavorite
		return Cryo.Dictionary.join(state, { [id] = isFavorite })
	end,
})
