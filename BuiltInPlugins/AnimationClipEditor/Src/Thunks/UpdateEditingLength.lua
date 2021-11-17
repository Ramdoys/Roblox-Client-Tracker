--[[
	Updates the maximum length of the timeline when fully
	zoomed out in the editor.
]]

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local SetScrollZoom = require(Plugin.Src.Actions.SetScrollZoom)
local SetEditingLength = require(Plugin.Src.Actions.SetEditingLength)

return function(length)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not (animationData and animationData.Metadata) then
			return
		end

		local endTick = animationData.Metadata.EndTick
		length = math.max(length, endTick, Constants.TICK_FREQUENCY)
		store:dispatch(SetEditingLength(length))
		store:dispatch(SetScrollZoom(0, 0))
	end
end