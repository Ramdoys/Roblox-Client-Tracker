local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local SetIsPlaying = require(Plugin.Src.Actions.SetIsPlaying)
local SetPlaybackStartInfo = require(Plugin.Src.Actions.SetPlaybackStartInfo)
local Constants = require(Plugin.Src.Util.Constants)

local RunService = game:GetService("RunService")
local Playback = Roact.PureComponent:extend("Playback")

function Playback:didMount()
	self.StartTime = nil
	self.Stepped = RunService.Heartbeat:Connect(function()
		local props = self.props
		local playhead = props.Playhead
		local playbackSpeed = props.PlaybackSpeed
		local playbackStartInfo = props.PlaybackStartInfo

		if props.IsPlaying and props.AnimationData ~= nil then
			local metadata = props.AnimationData.Metadata
			if metadata.EndTick > 0 then
				local now = tick()
				local endTick = metadata.EndTick
				if not playbackStartInfo.startTime then
					local startPlayhead = playhead
					if startPlayhead >= math.floor(endTick) then
						startPlayhead = 0
					end
					playbackStartInfo = {
						startTime = now,
						startPlayhead = startPlayhead,
					}
					props.SetPlaybackStartInfo(playbackStartInfo)
				end

				local elapsed = (now - playbackStartInfo.startTime) * playbackSpeed
				local newTick = playbackStartInfo.startPlayhead + elapsed * Constants.TICK_FREQUENCY

				if metadata.Looping then
					newTick = newTick % endTick
				else
					newTick = math.clamp(newTick, 0, endTick)
					if newTick == endTick then
						props.SetIsPlaying(false)
					end
				end
				props.StepAnimation(newTick)
			else
				props.SetIsPlaying(false)
			end
		else
			props.SetPlaybackStartInfo({})
		end
	end)
end

function Playback:render()
	return nil
end

function Playback:willUnmount()
	if self.Stepped then
		self.Stepped:Disconnect()
	end
end

local function mapStateToProps(state, props)
	return {
		AnimationData = state.AnimationData,
		IsPlaying = state.Status.IsPlaying,
		Playhead = state.Status.Playhead,
		PlaybackSpeed = state.Status.PlaybackSpeed,
		PlaybackStartInfo = state.Status.PlaybackStartInfo,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		StepAnimation = function(tick)
			dispatch(StepAnimation(tick))
		end,

		SetIsPlaying = function(isPlaying)
			dispatch(SetIsPlaying(isPlaying))
		end,

		SetPlaybackStartInfo = function(playbackStartInfo)
			dispatch(SetPlaybackStartInfo(playbackStartInfo))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Playback)