local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)
local Assets = require(InGameMenu.Resources.Assets)

local ThemedTextLabel = require(script.Parent.ThemedTextLabel)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local FocusHandler = require(script.Parent.Connection.FocusHandler)

local MODAL_CONFIRM_ACTION = "InGameMenuModalConfirm"
local MODAL_CANCEL_ACTION = "InGameMenuModalCancel"
local BUTTONS_SELECTION_PARENT = "InGameMenuModalButtonsSelectionParent"

local ConfirmationDialog = Roact.PureComponent:extend("ConfirmationDialog")

ConfirmationDialog.validateProps = t.strictInterface({
	bodyText = t.string,
	cancelText = t.string,
	confirmText = t.string,
	titleText = t.string,

	bindReturnToConfirm = t.boolean,

	onCancel = t.callback,
	onConfirm = t.callback,
	onOverlyActivated = t.optional(t.callback),

	blurBackground = t.boolean,
	visible = t.boolean,
	inputType = t.optional(t.string),
	frameWidth = t.number,
	framePadding = t.number,
	illustrationIconHeight = t.optional(t.number),
	illustrationIconWidth = t.optional(t.number),
	illustrationFrameHeight = t.optional(t.number),
	showIllustration = t.boolean,
})

ConfirmationDialog.defaultProps = {
	bodyText = "This is some body text. It will wrap when needed.",
	cancelText = "Cancel",
	confirmText = "Confirm",
	titleText = "Dialog Title",
	blurBackground = false,
	showIllustration = false,
	frameWidth = 335,
	framePadding = 20,
	onOverlyActivated = nil,
}

function ConfirmationDialog:init()
	self.state = {
		isRooted = false
	}

	self.onAncestryChanged = function(instance)
		if instance:IsDescendantOf(game) then
			self:setState({
				isRooted = true
			})
		end
	end
	self.confirmButtonRef = Roact.createRef()
	self.buttonContainerRef = Roact.createRef()
end

function ConfirmationDialog:render()
	local props = self.props

	return withStyle(function(style)
		local bodyFont = style.Font.Body.Font
		local bodyFontSize = style.Font.Body.RelativeSize * style.Font.BaseSize
		local bodyText = props.bodyText
		local textHeight = TextService:GetTextSize(
			bodyText,
			bodyFontSize,
			bodyFont,
			-- 335 (width) - 20px padding on left and right
			Vector2.new(props.frameWidth - props.framePadding - props.framePadding, math.huge)
		).Y

		-- 20px padding top, 20px padding bottom
		-- Minimum height of two lines of text.
		-- TODO: Line height!
		local bodyTextHeight = math.max(textHeight, bodyFontSize * 2)
		local bodyTextContainerHeight = 20 + bodyTextHeight + 20
		local dialogMainFrameHeight = 48 + 1 + bodyTextContainerHeight + 36 + 20

		if props.showIllustration then
			-- 25px padding bottom of Text, IllustrationFrame Height is 128
			bodyTextContainerHeight = bodyTextHeight + 25
			dialogMainFrameHeight = 48 + 1 + bodyTextContainerHeight + 36 + 20 + props.illustrationFrameHeight
		end

		return Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			InGameMenuConfirmationDialog = Roact.createElement("ScreenGui", {
				DisplayOrder = Constants.DisplayOrder.ConfirmationDialog,
				IgnoreGuiInset = true,
				OnTopOfCoreBlur = props.blurBackground,
				Enabled = props.visible,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			}, {
				Overlay = Roact.createElement("TextButton", {
					AutoButtonColor = false,
					BackgroundColor3 = style.Theme.Overlay.Color,
					BackgroundTransparency = style.Theme.Overlay.Transparency,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					Text = "",
					[Roact.Event.Activated] = props.onOverlyActivated,
				}),
				DialogMainFrame = Roact.createElement(ImageSetLabel, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = Assets.Images.RoundedRect.Image,
					ImageColor3 = style.Theme.BackgroundUIDefault.Color,
					ImageTransparency = style.Theme.BackgroundUIDefault.Transparency,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					ScaleType = Assets.Images.RoundedRect.ScaleType,
					-- button container (36px), bottom padding (20px)
					-- height: title bar (48px), divider (1px), body text height,
					Size = UDim2.new(0, props.frameWidth, 0, dialogMainFrameHeight),
					SliceCenter = Assets.Images.RoundedRect.SliceCenter,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingBottom = UDim.new(0, props.framePadding),
						PaddingLeft = UDim.new(0, props.framePadding),
						PaddingRight = UDim.new(0, props.framePadding),
					}),
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					Title = Roact.createElement(ThemedTextLabel, {
						fontKey = "Header1",
						themeKey = "TextEmphasis",

						LayoutOrder = 1,
						Size = UDim2.new(1, 0, 0, 48),
						Text = props.titleText,
					}),
					Divider = Roact.createElement("Frame", {
						BackgroundColor3 = style.Theme.Divider.Color,
						BackgroundTransparency = style.Theme.Divider.Transparency,
						BorderSizePixel = 0,
						LayoutOrder = 3,
						Size = props.showIllustration and UDim2.new(1, 0, 0, 1) or UDim2.new(0.8, 0, 0, 1),
					}),
					Illustration = props.showIllustration and Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 4,
						Size = UDim2.new(1, 0, 0, props.illustrationFrameHeight),
					}, {
						Image = Roact.createElement(ImageSetLabel, {
							BackgroundTransparency = 1,
							Image = Assets.Images.SuccessXLarge,
							Size = UDim2.new(0, props.illustrationIconWidth, 0, props.illustrationIconHeight),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							AnchorPoint = Vector2.new(0.5, 0.5),
						})
					}) or nil,
					BodyTextContainer = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 5,
						Size = UDim2.new(1, 0, 0, bodyTextContainerHeight),
					}, {
						BodyText = Roact.createElement(ThemedTextLabel, {
							Size = props.showIllustration and UDim2.new(1, 0, 0, bodyTextHeight) or UDim2.new(1, 0, 1, 0),
							Text = props.bodyText,
							TextWrapped = true,
						})
					}),
					ButtonContainer = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 6,
						Size = UDim2.new(1, 0, 0, 36),
						[Roact.Ref] = self.buttonContainerRef,
						[Roact.Event.AncestryChanged] = self.onAncestryChanged,
					}, {
						Layout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							Padding = UDim.new(0, 10),
							SortOrder = Enum.SortOrder.LayoutOrder,
							VerticalAlignment = Enum.VerticalAlignment.Center,
						}),
						CancelButton = Roact.createElement(UIBlox.App.Button.SecondaryButton, {
							layoutOrder = 1,
							size = UDim2.new(0.5, -5, 1, 0),
							text = props.cancelText,
							onActivated = props.onCancel,
						}),
						ConfirmButton = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
							layoutOrder = 2,
							size = UDim2.new(0.5, -5, 1, 0),
							text = props.confirmText,
							onActivated = props.onConfirm,
							[Roact.Ref] = self.confirmButtonRef,
						}),
					}),
				}),
			}),
			FocusHandler = Roact.createElement(FocusHandler, {
				isFocused = self.state.isRooted
					and self.props.visible
					and self.props.inputType == Constants.InputType.Gamepad,
				didFocus = function()
					GuiService:RemoveSelectionGroup(BUTTONS_SELECTION_PARENT)
					GuiService:AddSelectionParent(BUTTONS_SELECTION_PARENT, self.buttonContainerRef:getValue())

					GuiService.SelectedCoreObject = self.confirmButtonRef:getValue()
				end,
			})
		})
	end)
end

function ConfirmationDialog:updateBlur()
	local shouldBlur = self.props.blurBackground and self.props.visible
	RunService:SetRobloxGuiFocused(shouldBlur)
end

-- TODO: consider if we want to have a button selection model like the old menu rather than enter always confirming
function ConfirmationDialog:bindActions()
	local function confirmFunc(actionName, inputState, input)
		if inputState == Enum.UserInputState.Begin then
			self.props.onConfirm()
		end
	end

	if self.props.bindReturnToConfirm then
		ContextActionService:BindCoreAction(
			MODAL_CONFIRM_ACTION, confirmFunc, false, Enum.KeyCode.Return)
	end

	local function cancelFunc(actionName, inputState, input)
		if inputState == Enum.UserInputState.Begin then
			self.props.onCancel()
		end
	end

	ContextActionService:BindCoreAction(
		MODAL_CANCEL_ACTION, cancelFunc, false, Enum.KeyCode.Escape)
end

function ConfirmationDialog:unbindActions()
	ContextActionService:UnbindCoreAction(MODAL_CONFIRM_ACTION)
	ContextActionService:UnbindCoreAction(MODAL_CANCEL_ACTION)
end

function ConfirmationDialog:didMount()
	self:updateBlur()

	if self.props.visible then
		self:bindActions()
	end
end

function ConfirmationDialog:didUpdate()
	self:updateBlur()

	if self.props.visible then
		self:bindActions()
	else
		self:unbindActions()
	end
end

function ConfirmationDialog:willUnmount()
	if self.props.blurBackground then
		RunService:SetRobloxGuiFocused(false)
	end
	self:unbindActions()
end

return ConfirmationDialog
