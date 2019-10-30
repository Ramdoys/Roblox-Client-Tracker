local Plugin = script.Parent.Parent.Parent
local ContextServices = require(Plugin.Libs.Framework.ContextServices)
local Theme = ContextServices.Theme
local Util = require(Plugin.Libs.Framework.Util)
local StyleValue = Util.StyleValue

local UILibrary = require(Plugin.Libs.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local function createValues(theme)
	-- TODO: Replace with actual getColor from the DevFramework
	-- when the Palette becomes available
	local themeName = theme.Name
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local ToggleOn = StyleValue.new("ToggleOn", {
		Light = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
		Dark = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png",
	})

	local ToggleOff = StyleValue.new("ToggleOff", {
		Light = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
		Dark = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png",
	})

	local toggle = {
		On = ToggleOn:get(themeName),
		Off = ToggleOff:get(themeName),
	}

	return {
		Plugin = {
			Toggle = toggle,
			BackgroundColor = theme:GetColor(c.MainBackground),
			BorderColor = theme:GetColor(c.Border),
			TextColor = theme:GetColor(c.MainText),
			ErrorColor = theme:GetColor(c.ErrorText),
			LinkColor = theme:GetColor(c.LinkText),
			Green = Color3.fromRGB(64, 166, 81),
			White = Color3.fromRGB(255, 255, 255),
			DisabledColor = theme:GetColor(c.MainText, m.Disabled),
		},
	}
end

local function getUILibraryTheme()
	local theme = settings().Studio.Theme
	local themeName = theme.Name

	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local UILibraryPalette = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, c, m)

	local BaseColor = StyleValue.new("BaseColor", {
		Light = Color3.fromRGB(184, 184, 184),
		Dark = Color3.fromRGB(56, 56, 56),
	})

	local EndColor = StyleValue.new("EndColor", {
		Light = Color3.fromRGB(0, 162, 255),
		Dark = Color3.fromRGB(11, 90, 175),
	})

	local UILibraryOverrides = {
		loadingIndicator = {
			baseColor = BaseColor:get(themeName),
			endColor = EndColor:get(themeName),
		},
		button = {
			Primary = {
				backgroundColor = theme:GetColor(c.DialogMainButton),
	
				hovered = {
					backgroundColor = theme:GetColor(c.DialogMainButton, m.Hover),
				},
			}
		},
	}

	return createTheme(UILibraryPalette, UILibraryOverrides)
end

local function makeTheme()
	local theme = Theme.new(createValues)
	function theme:getUILibraryTheme()
		return getUILibraryTheme()
	end

	return theme
end

return makeTheme
