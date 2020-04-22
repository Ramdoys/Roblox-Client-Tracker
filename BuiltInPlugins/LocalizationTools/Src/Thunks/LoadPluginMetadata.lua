--[[
	Get and store plugin metadata
]]

local Plugin = script.Parent.Parent.Parent
local Http = require(Plugin.Packages.Framework.Http)

local LoadAllLocales = require(Plugin.Src.Actions.LoadAllLocales)
local LoadManageTranslationPermission = require(Plugin.Src.Actions.LoadManageTranslationPermission)
local SetCloudTableId = require(Plugin.Src.Actions.SetCloudTableId)

local ACCEPTED_ROLES = {
	owner = true,
	translator = true,
}

local function getAllLanguageCodes(api, localization)
	return function(store)
		local request = api.Locale.V1.locales()
		local responseTable = request:makeRequest():await()
		if responseTable and responseTable.responseCode == Http.StatusCodes.OK then
			local allLanguageCodes = {}
			for _, localeInfo in ipairs(responseTable.responseBody.data) do
				allLanguageCodes[localeInfo.locale.language.languageCode] = true
			end
			store:dispatch(LoadAllLocales(allLanguageCodes))
		else
			warn(localization:getText("PluginMetadata", "GetAllLocalesFailed"))
			return
		end
	end
end

local function getManageTranslationPermission(api, localization)
	return function(store)
		local request = api.TranslationRoles.V1.GameLocalizationRoles.Games.CurrentUser.roles(game.GameId)
		local responseTable = request:makeRequest():await()
		if responseTable and responseTable.responseCode == Http.StatusCodes.OK then
			for _, role in ipairs(responseTable.responseBody.data) do
				if ACCEPTED_ROLES[role] then
					store:dispatch(LoadManageTranslationPermission(true))
					return
				end
			end
		else
			warn(localization:getText("PluginMetadata", "GetPermissionFailedMessage"))
		end
		store:dispatch(LoadManageTranslationPermission(false))
	end
end

local function getOrCreateCloudTable(api, localization)
	return function(store)
		local request = api.GameInternationalization.V1.AutoLocalization.games(game.GameId)
		local responseTable = request:makeRequest():await()
		if responseTable and responseTable.responseCode == Http.StatusCodes.OK then
			store:dispatch(SetCloudTableId(responseTable.responseBody.autoLocalizationTableId))
		else
			warn(localization:getText("PluginMetadata", "GetOrCreateCloudTableFailedMessage"))
		end
	end
end

local function onGameIdChanged(api, localization)
	return function(store)
		if game.GameId == 0 then
			store:dispatch(LoadManageTranslationPermission(false))
			store:dispatch(SetCloudTableId(""))
		else
			store:dispatch(
				getManageTranslationPermission(api, localization))
			store:dispatch(
				getOrCreateCloudTable(api, localization))
		end
	end
end

local function getAll(api, localization)
	return function(store)
		store:dispatch(getAllLanguageCodes(api, localization))
		if game.GameId ~= 0 then
			store:dispatch(
				getManageTranslationPermission(api, localization))
			store:dispatch(
				getOrCreateCloudTable(api, localization))
		end
	end
end

return {
	GetAll = getAll,
	OnGameIdChanged = onGameIdChanged,
}