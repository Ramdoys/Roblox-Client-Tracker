local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)

local Actions = Plugin.Core.Actions
local NetworkError = require(Actions.NetworkError)
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local UploadResult = require(Actions.UploadResult)

local TrySaveSalesAndThumbnailRequest = require(Plugin.Core.Networking.Requests.TrySaveSalesAndThumbnailRequest)

local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")

-- patchInfo is a table contains the following:
--networkInterface
--assetId
--name
--description
--genres
--commentOn
--copyOn
--locale
--localName
--localDescription
--saleStatus
--price
--iconFile
return function(patchInfo)
	return function(store)
		store:dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.UPLOADING_ASSET))

		local function onPatchSuccess(result)
			if FFlagEnablePurchasePluginFromLua2 then
				patchInfo.assetType = store:getState().assetTypeEnum.Name
				store:dispatch(TrySaveSalesAndThumbnailRequest(patchInfo))
			else
				store:dispatch(UploadResult(true))
			end
		end

		local function onPatchFail(result)
			if DebugFlags.shouldDebugWarnings() then
				warn("Got false response from PostInsertAsset")
			end

			store:dispatch(NetworkError(result))
			store:dispatch(UploadResult(false))
		end

		return patchInfo.networkInterface:patchAsset(
			patchInfo.assetId,
			patchInfo.name,
			patchInfo.description,
			patchInfo.genres,
			patchInfo.commentOn,
			patchInfo.copyOn,
			patchInfo.locale,
			patchInfo.localName,
			patchInfo.localDescription
			):andThen(
				onPatchSuccess, onPatchFail
			)
	end
end
