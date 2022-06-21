local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Button = UI.Button
local Image = UI.Decoration.Image
local Pane = UI.Pane
local TruncatedTextLabel = UI.TruncatedTextLabel

local Actions = Plugin.Src.Actions
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)
local SetMaterial = require(Actions.SetMaterial)
local SetBaseMaterial = require(Actions.SetBaseMaterial)
local SetFromVariantInstance = require(Actions.SetFromVariantInstance)
local SetMode = require(Actions.SetMode)

local getFullMaterialType = require(Plugin.Src.Resources.Constants.getFullMaterialType)
local getMaterialName = require(Plugin.Src.Resources.Constants.getMaterialName)
local getSupportedMaterials = require(Plugin.Src.Resources.Constants.getSupportedMaterials)
local MaterialController = require(Plugin.Src.Util.MaterialController)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)
local getFFlagMaterialManagerUIUXFixes = require(Flags.getFFlagMaterialManagerUIUXFixes)

local supportedMaterials = getSupportedMaterials()

local FIntInfluxReportMaterialManagerHundrethPercent2 = game:GetFastInt("InfluxReportMaterialManagerHundrethPercent2")

export type Props = {
	LayoutOrder: number?,
	MaterialMock: _Types.Material?,
	OpenPrompt: (type: _Types.MaterialPromptType) -> (),
}

type _Props = Props & { 
	Analytics: any,
	dispatchClearMaterialVariant: () -> (),
	dispatchSetMaterial: (material: _Types.Material) -> (),
	dispatchSetBaseMaterial: (baseMaterial: Enum.Material) -> (),
	dispatchSetFromVariantInstance: (materialVariant: MaterialVariant) -> (),
	dispatchSetMode: (mode: string) -> (),
	Localization: any,
	Material: _Types.Material?,
	MaterialController: any,
	Stylizer: any,
}

type _Style = {
	ButtonPosition: UDim2,
	ButtonSize: UDim2,
	ButtonStyle: string,
	Close: _Types.Image,
	CreateVariant: _Types.Image,
	Delete: _Types.Image,
	DropdownSize: UDim2,
	Edit: _Types.Image,
	HeaderBackground: Color3,
	HeaderFont: Enum.Font,
	HeaderSize: UDim2,
	ImagePosition: UDim2,
	ImageSize: UDim2,
	NameLabelSizeBuiltIn: UDim2,
	NameLabelSizeVariant: UDim2,
	NoTexture: string,
	LabelRowSize: UDim2,
	OverrideSize: UDim2,
	Padding: number,
	SectionHeaderTextSize: number,
	TextureLabelSize: UDim2,
	TextureRowSize: UDim2,
	TextureSize: UDim2,
	TitleTextSize: number,
}

local changeHistoryService = game:GetService("ChangeHistoryService")

local MaterialInformation = Roact.PureComponent:extend("MaterialInformation")

function MaterialInformation:init()
	self.edit = function()
		local props: _Props = self.props
		local material: _Types.Material? = props.Material

		if material and  material.MaterialVariant then
			props.dispatchSetFromVariantInstance(material.MaterialVariant)
			props.dispatchSetMode("Edit")
			props.OpenPrompt("Edit")
		end
	end

	self.delete = function()
		local props: _Props = self.props
		local material: _Types.Material? = props.Material

		if material and material.MaterialVariant then
			changeHistoryService:SetWaypoint("Delete MaterialVariant")
			material.MaterialVariant.Parent = nil
			if FIntInfluxReportMaterialManagerHundrethPercent2 > 0 then
				props.Analytics:report("deleteMaterialVariant")
			end
		end
	end

	self.createVariant = function()
		local props: _Props = self.props
		local material: _Types.Material? = props.Material

		if getFFlagMaterialManagerGlassNeonForceField() then
			if getFFlagMaterialManagerUIUXFixes() then
				if material and not material.MaterialVariant then
					props.dispatchClearMaterialVariant()
					props.dispatchSetBaseMaterial(material.Material)
					props.dispatchSetMode("Create")
					props.OpenPrompt("Create")
				end
			else
				if material and material.MaterialVariant then
					props.dispatchClearMaterialVariant()
					props.dispatchSetBaseMaterial(material.Material)
					props.dispatchSetMode("Create")
					props.OpenPrompt("Create")
				end
			end
		else
			if material and material.MaterialVariant then
				props.dispatchClearMaterialVariant()
				props.dispatchSetBaseMaterial(material.MaterialVariant.BaseMaterial)
				props.dispatchSetMode("Create")
				props.OpenPrompt("Create")
			end
		end
	end
end

function MaterialInformation:willUnmount()
	if self.materialChangedConnection then
		self.materialChangedConnection:Disconnect()
		self.materialChangedConnection = nil
	end
end

function MaterialInformation:didMount()
	local props: _Props = self.props
	local materialController = props.MaterialController
	local dispatchSetMaterial = props.dispatchSetMaterial

	self.materialChangedConnection = materialController:getMaterialChangedSignal():Connect(function(materialVariant: MaterialVariant)
		if self.props.Material and materialVariant == self.props.Material.MaterialVariant then
			dispatchSetMaterial(materialController:getMaterial(materialVariant))
		end
	end)
end

function MaterialInformation:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local material = props.Material

	if not material then
		return Roact.createElement(Pane)
	end

	-- Remove with FFlagMaterialManagerGlassNeonForceField
	local isBuiltin, name
	if getFFlagMaterialManagerGlassNeonForceField() then
		isBuiltin = not material.MaterialVariant
		name = if isBuiltin then localization:getText("Materials", getMaterialName(material.Material)) else material.MaterialVariant.Name
	else
		isBuiltin = material.IsBuiltin
		name = if isBuiltin then localization:getText("Materials", getMaterialName(material.MaterialVariant.BaseMaterial)) else material.MaterialVariant.Name
	end

	local fullMaterialType = getFullMaterialType(material, localization)

	local path = material.MaterialPath
	local localizedPathParts = {}

	for index, subPath in ipairs(path) do
		localizedPathParts[index] = localization:getText("Categories", subPath)
	end

	local pathString = table.concat(localizedPathParts, " > ")

	local nameLabelSize
	if getFFlagMaterialManagerGlassNeonForceField() then
		local numButtons = 0
		if material.MaterialVariant then
			numButtons = 2
		elseif not material.MaterialVariant and supportedMaterials[material.Material] then
			numButtons = 1
		end

		nameLabelSize = UDim2.new(1, -(numButtons * style.ButtonSize.X.Offset), 1, 0)
	else
		nameLabelSize = if material.IsBuiltin then style.NameLabelSizeBuiltIn else style.NameLabelSizeVariant
	end 

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Padding = 10,
	}, {
		Title = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 1,
			Size = style.LabelRowSize,
		}, {
			Name = Roact.createElement(TruncatedTextLabel, {
				LayoutOrder = 1,
				Font = style.HeaderFont,
				Size = nameLabelSize,
				Text = name,
				TextSize = style.TitleTextSize,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			CreateVariant = if isBuiltin and (not getFFlagMaterialManagerGlassNeonForceField() or supportedMaterials[material.Material]) then
				Roact.createElement(Button, {
					LayoutOrder = 2,
					OnClick = self.createVariant,
					Size = style.ButtonSize,
					Style = style.ButtonStyle,
				}, {
					Image = Roact.createElement(Image, {
						Style = style.CreateVariant,
						Size = style.ImageSize,
						Position = style.ImagePosition,
					})
				}) else nil,
			Edit = if not isBuiltin then
				Roact.createElement(Button, {
					LayoutOrder = 2,
					OnClick = self.edit,
					Size = style.ButtonSize,
					Style = style.ButtonStyle,
				}, {
					Image = Roact.createElement(Image, {
						Style = style.Edit,
						Size = style.ImageSize,
						Position = style.ImagePosition,
					})
				}) else nil,
			Delete = if not isBuiltin then
				Roact.createElement(Button, {
					LayoutOrder = 3,
					OnClick = self.delete,
					Size = style.ButtonSize,
					Style = style.ButtonStyle,
				}, {
					Image = Roact.createElement(Image, {
						Style = style.Delete,
						Size = style.ImageSize,
						Position = style.ImagePosition,
					})
				}) else nil,
		}),
		MaterialType = Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = 2,
			Size = style.LabelRowSize,
			Text = fullMaterialType,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Category = Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = 3,
			Size = style.LabelRowSize,
			Text = pathString,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

MaterialInformation = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialInformation)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = props.MaterialMock or state.MaterialBrowserReducer.Material,
		}
	end,
	function(dispatch)
		return {
			dispatchClearMaterialVariant = function()
				dispatch(ClearMaterialVariant())
			end,
			dispatchSetMaterial = function(material: _Types.Material)
				dispatch(SetMaterial(material))
			end,
			dispatchSetFromVariantInstance = function(materialVariant: MaterialVariant)
				dispatch(SetFromVariantInstance(materialVariant))
			end,
			dispatchSetBaseMaterial = function(baseMaterial: Enum.Material)
				dispatch(SetBaseMaterial(baseMaterial))
			end,
			dispatchSetMode = function(mode: string)
				dispatch(SetMode(mode))
			end,
		}
	end
)(MaterialInformation)
