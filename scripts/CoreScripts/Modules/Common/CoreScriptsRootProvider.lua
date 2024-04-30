--!strict
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local FFlagSwitchCSRootProviderTranslationsPackage = game:DefineFastFlag("SwitchCSRootProviderTranslationsPackage", false)

local Localization
if FFlagSwitchCSRootProviderTranslationsPackage then
	Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
else
	Localization = require(CorePackages.Workspace.Packages.RobloxAppLocales).Localization
end
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local Cryo = require(CorePackages.Packages.Cryo)
local React = require(CorePackages.Packages.React)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local CursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceRegistry = FocusNavigationUtils.FocusNavigableSurfaceRegistry
local FocusNavigationRegistryProvider = FocusNavigableSurfaceRegistry.Provider
local DeviceTypeEnum = RobloxAppEnums.DeviceType
local GamepadDisconnectTokenMapper = require(CorePackages.Workspace.Packages.InputUi).Gamepad.GamepadDisconnectTokenMapper

local focusNavigationService =
	ReactFocusNavigation.FocusNavigationService.new(ReactFocusNavigation.EngineInterface.CoreGui)

type DeviceType = RobloxAppEnums.DeviceType

export type StyleOverride = {
	themeName: string?,
	fontName: string?,
	deviceType: DeviceType?,
}

export type Props = {
	styleOverride: StyleOverride?,
	children: React.ReactNode,
}

local defaultStyle = {
	themeName = "dark",
	fontName = "gotham",
	deviceType = DeviceTypeEnum.Desktop,
}

local function CoreScriptsRootProvider(props: Props)
	local style = Cryo.Dictionary.join(defaultStyle, props.styleOverride or {})

	return React.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(function(state)
			return state
		end, {}, {}),
	}, {
		AppStyleProvider = React.createElement(UIBlox.App.Style.AppStyleProvider, {
			style = style,
		}, {
			DesignTokenProvider = React.createElement(DesignTokenProvider, {
				tokenMappers = {
					GamepadDisconnect = GamepadDisconnectTokenMapper,
				},
			}, {
				CursorProvider = React.createElement(CursorProvider, {}, {
					LocalizationProvider = React.createElement(LocalizationProvider, {
						localization = Localization.new(LocalizationService.RobloxLocaleId),
					}, {
						FocusNavigationProvider = React.createElement(
							ReactFocusNavigation.FocusNavigationContext.Provider,
							{
								value = focusNavigationService,
							},
							{
								FocusNavigationRegistryProvider = React.createElement(
									FocusNavigationRegistryProvider,
									nil,
									props.children
								),
							}
						),
					}),
				}),
			}),
		}),
	})
end

return CoreScriptsRootProvider
