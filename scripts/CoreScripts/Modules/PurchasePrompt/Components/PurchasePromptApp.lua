local Root = script.Parent.Parent

local CoreGui = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local Rodux = PurchasePromptDeps.Rodux
local RoactRodux = PurchasePromptDeps.RoactRodux
local UIBlox = PurchasePromptDeps.UIBlox
local StyleProvider = UIBlox.Style.Provider
local IAPExperience = require(CorePackages.Workspace.Packages.IAPExperience)
local LocaleProvider = IAPExperience.Locale.LocaleProvider
local ToastLite = require(CorePackages.Workspace.Packages.ToastLite)
local Toast = ToastLite.Components.Toast

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Reducer = require(Root.Reducers.Reducer)
local ABTest = require(Root.Services.ABTest)
local Network = require(Root.Services.Network)
local Analytics = require(Root.Services.Analytics)
local PlatformInterface = require(Root.Services.PlatformInterface)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Thunk = require(Root.Thunk)

local EventConnections = require(script.Parent.Connection.EventConnections)
local LayoutValuesProvider = require(script.Parent.Connection.LayoutValuesProvider)
local provideRobloxLocale = require(script.Parent.Connection.provideRobloxLocale)
local PurchasePromptPolicy = require(Root.Components.Connection.PurchasePromptPolicy)

local ProductPurchaseContainer = require(script.Parent.ProductPurchase.ProductPurchaseContainer)
local RobuxUpsellContainer = require(script.Parent.RobuxUpsell.RobuxUpsellContainer)
local PremiumUpsellContainer = require(script.Parent.PremiumUpsell.PremiumUpsellContainer)
local SubscriptionPurchaseContainer = require(script.Parent.SubscriptionPurchase.SubscriptionPurchaseContainer)

local GetFFlagEnableToastLiteRender = require(Root.Flags.GetFFlagEnableToastLiteRender)
local renderWithCoreScriptsStyleProvider =
	require(script.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)

local PurchasePromptApp = Roact.Component:extend("PurchasePromptApp")

function PurchasePromptApp:init()
	local externalSettings = ExternalSettings.new()

	self.state = {
		isTenFootInterface = externalSettings.isTenFootInterface(),
	}
end

function PurchasePromptApp:renderWithStyle(children)
	return renderWithCoreScriptsStyleProvider(children)
end

function PurchasePromptApp:render()
	return provideRobloxLocale(function()
		return Roact.createElement(RoactRodux.StoreProvider, {
			store = self.props.store,
		}, {
			StyleProvider = self:renderWithStyle({
				LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
					isTenFootInterface = self.state.isTenFootInterface,
				}, {
					PolicyProvider = Roact.createElement(PurchasePromptPolicy.Provider, {
						policy = { PurchasePromptPolicy.Mapper },
					}, {
						PurchasePrompt = Roact.createElement("ScreenGui", {
							AutoLocalize = false,
							IgnoreGuiInset = true,
						}, {
							LocaleProvider = Roact.createElement(LocaleProvider, {
								locale = LocalizationService.RobloxLocaleId,
							}, {
								ProductPurchaseContainer = Roact.createElement(ProductPurchaseContainer),
								RobuxUpsellContainer = Roact.createElement(RobuxUpsellContainer),
								PremiumUpsellContainer = Roact.createElement(PremiumUpsellContainer),
								SubscriptionPurchaseContainer = Roact.createElement(SubscriptionPurchaseContainer),
							}),
							EventConnections = Roact.createElement(EventConnections),
							Toast = if GetFFlagEnableToastLiteRender() then Roact.createElement(Toast) else nil,
						}),
					}),
				}),
			}),
		})
	end)
end

return PurchasePromptApp
