--[[
	Displays panels associated with The Replace tool
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SetSourceMaterial = require(Actions.SetSourceMaterial)
local SetTargetMaterial = require(Actions.SetTargetMaterial)
local SetReplaceMode = require(Actions.SetReplaceMode)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangePivot = require(Actions.ChangePivot)
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetSnapToGrid = require(Actions.SetSnapToGrid)

local ToolParts = script.Parent.ToolParts
local ButtonGroup = require(ToolParts.ButtonGroup)
local Panel = require(ToolParts.Panel)
local MapSettingsWithPreview = require(ToolParts.MapSettingsWithPreview)
local MaterialSelector = require(ToolParts.MaterialSelector)
local ProgressFrame = require(script.Parent.Parent.ProgressFrame)

local BaseBrush = require(Plugin.Src.Components.Tools.BaseBrush)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ReplaceMode = TerrainEnums.ReplaceMode

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)

local CoreGui = game:GetService("CoreGui")

local REDUCER_KEY = "ReplaceTool"

local Replace = Roact.PureComponent:extend(script.Name)

function Replace:init()
	self.pluginActivationController = TerrainInterface.getPluginActivationController(self)
	self.replace = TerrainInterface.getReplace(self)

	self.state = {
		isReplacing = self.replace:isReplacing(),
		progress = self.replace:getProgress(),
	}

	assert(self.pluginActivationController, "Replace requires a PluginActivationController from context")
	assert(self.replace, "Replace requires Replace function from context")

	self.tryGenerateReplace = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)
		self.replace:replaceMaterial(position, size, self.props.Source, self.props.Target)
	end

	self.onBoxModeClicked = function()
		self.props.dispatchSetReplaceMode(ReplaceMode.Box)
	end

	self.onBrushModeClicked = function()
		self.props.dispatchSetReplaceMode(ReplaceMode.Brush)
	end

	self.cancel = function()
		self.replace:cancel()
	end
end

function Replace:didMount()
	self.onProgressChanged = self.replace:subscribeToProgressChange(function(progress)
		self:setState({
			progress = progress
		})
	end)

	self.onStateChanged = self.replace:subscribeToStateChange(function(state)
		self:setState({
			isReplacing = state
		})
	end)
end

function Replace:willUnmount()
	if self.onProgressChanged then
		self.onProgressChanged:Disconnect()
		self.onProgressChanged = nil
	end

	if self.onStateChanged then
		self.onStateChanged:Disconnect()
		self.onStateChanged = nil
	end
end

function Replace:render()
	local position = self.props.Position
	local size = self.props.Size
	local progress = self.state.progress

	local baseSize = self.props.baseSize
	local baseSizeHeightLocked = self.props.baseSizeHeightLocked
	local brushShape = self.props.brushShape
	local height = self.props.height
	local ignoreWater = self.props.ignoreWater
	local pivot = self.props.pivot
	local planeLock = self.props.planeLock
	local snapToGrid = self.props.snapToGrid
	local strength = self.props.strength
	local source = self.props.Source
	local target = self.props.Target

	return withLocalization(function(localization)
		-- same as if the replace is currently active
		local isReplacing = self.state.isReplacing

		return Roact.createFragment({
			ModeButtons = Roact.createElement(ButtonGroup, {
				LayoutOrder = 1,
				Buttons = {
					{
						Key = "Brush",
						Name = localization:getText("ReplaceMode", "Brush"),
						Active = not isReplacing,
						OnClicked = self.onBrushModeClicked,
					},
					{
						Key = "Box",
						Name = localization:getText("ReplaceMode", "Box"),
						Active = not isReplacing,
						OnClicked = self.onBoxModeClicked,
					},
				}
			}),

			Brush = self.props.Mode == ReplaceMode.Brush and Roact.createElement(BaseBrush, {
				LayoutOrder = 2,

				toolName = self.props.toolName,

				baseSize = baseSize,
				baseSizeHeightLocked = baseSizeHeightLocked,
				brushShape = brushShape,
				height = height,
				ignoreWater = ignoreWater,
				pivot = pivot,
				planeLock = planeLock,
				snapToGrid = snapToGrid,
				strength = strength,
				source = source,
				target = target,

				dispatchChangeBaseSize = self.props.dispatchChangeBaseSize,
				dispatchSetBaseSizeHeightLocked = self.props.dispatchSetBaseSizeHeightLocked,
				dispatchChooseBrushShape = self.props.dispatchChooseBrushShape,
				dispatchChangeHeight = self.props.dispatchChangeHeight,
				dispatchSetIgnoreWater = self.props.dispatchSetIgnoreWater,
				dispatchChangePivot = self.props.dispatchChangePivot,
				dispatchSetSnapToGrid = self.props.dispatchSetSnapToGrid,
			}),

			MapSettingsWithPreview = self.props.Mode == ReplaceMode.Box and Roact.createElement(MapSettingsWithPreview, {
				LayoutOrder = 3,

				toolName = self.props.toolName,

				Position = position,
				Size = size,

				OnPositionChanged = self.props.dispatchChangePosition,
				OnSizeChanged = self.props.dispatchChangeSize,
			}),

			MaterialPanel = Roact.createElement(Panel, {
				Title = localization:getText("Replace", "ReplaceMaterial"),
				LayoutOrder = 4,
			}, {
				SourceMaterialSelector = Roact.createElement(MaterialSelector, {
					LayoutOrder = 1,

					AllowAir = true,
					Label = localization:getText("Replace", "SourceMaterial"),
					material = self.props.Source,
					setMaterial = self.props.dispatchSetSourceMaterial,
				}),
				TargetMaterialSelector = Roact.createElement(MaterialSelector, {
					LayoutOrder = 2,

					AllowAir = true,
					Label = localization:getText("Replace", "TargetMaterial"),
					material = self.props.Target,
					setMaterial = self.props.dispatchSetTargetMaterial,
				})
			}),

			ReplaceButtons = self.props.Mode == ReplaceMode.Box and Roact.createElement(ButtonGroup, {
				LayoutOrder = 5,
				Buttons = {
					{
						Key = "Replace",
						Name = localization:getText("Replace", "Replace"),
						Active = not isReplacing,
						OnClicked = self.tryGenerateReplace
					},
				}
			}),

			ProgressBar = isReplacing and Roact.createElement(Roact.Portal, {
				target = CoreGui,
			}, {
				ReplaceProgressScreenGui = Roact.createElement("ScreenGui", {}, {
					Roact.createElement(ProgressFrame, {
						AnchorPoint = Vector2.new(0.5, 0),
						Position = UDim2.new(0.5, 0, 0, 0),
						Progress = progress,
						OnCancelButtonClicked = self.cancel,
					})
				})
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Replace,

		Position = state[REDUCER_KEY].position,
		Size = state[REDUCER_KEY].size,
		Source = state[REDUCER_KEY].SourceMaterial,
		Target = state[REDUCER_KEY].TargetMaterial,
		Mode = state[REDUCER_KEY].ReplaceMode,
		baseSize = state[REDUCER_KEY].baseSize,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		height = state[REDUCER_KEY].height,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
		pivot = state[REDUCER_KEY].pivot,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToReplace = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangePosition = function (position)
			dispatchToReplace(ChangePosition(position))
		end,
		dispatchChangeSize = function(size)
			dispatchToReplace(ChangeSize(size))
		end,
		dispatchSetSourceMaterial = function(SourceMaterial)
			dispatchToReplace(SetSourceMaterial(SourceMaterial))
		end,
		dispatchSetTargetMaterial = function(TargetMaterial)
			dispatchToReplace(SetTargetMaterial(TargetMaterial))
		end,
		dispatchSetReplaceMode = function(ReplaceMode)
			dispatchToReplace(SetReplaceMode(ReplaceMode))
		end,
		dispatchChangeBaseSize = function (size)
			dispatchToReplace(ChangeBaseSize(size))
		end,
		dispatchSetBaseSizeHeightLocked = function (locked)
			dispatchToReplace(SetBaseSizeHeightLocked(locked))
		end,
		dispatchChooseBrushShape = function (shape)
			dispatchToReplace(ChooseBrushShape(shape))
		end,
		dispatchChangeHeight = function (height)
			dispatchToReplace(ChangeHeight(height))
		end,
		dispatchSetIgnoreWater = function (ignoreWater)
			dispatchToReplace(SetIgnoreWater(ignoreWater))
		end,
		dispatchChangePivot = function (pivot)
			dispatchToReplace(ChangePivot(pivot))
		end,
		dispatchSetSnapToGrid = function (snapToGrid)
			dispatchToReplace(SetSnapToGrid(snapToGrid))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Replace)
