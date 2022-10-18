--[[
	An implementation of StyledDialog that adds UILibrary Buttons to the bottom.
	To use the component, the consumer supplies an array of buttons, optionally
	defining a Style for each button if it should display differently and a list
	of entries to display along with a header text.

	Props:
		string Title = The title text to display.
		string Header = The header text to display at the top of this Dialog.
		list Entries = The entries to display in this Dialog.
		array Buttons = An array of items used to render the buttons for this dialog.
		{
			{Key = "Cancel", Text = "SomeLocalizedTextForCancel"},
			{Key = "Save", Text = "SomeLocalizedTextForSave", Style = "Primary"},
		}
		bool Wrapped = Controls whether bullet text is wrapped or not
		enum Truncate = Controls whether text is truncated or not

		function OnButtonClicked(key) = A callback for when the user clicked
			a button in the dialog. Accepts the Key of the button that was clicked.
		function OnClose = A callback for when the user closed the dialog by
			clicking the X in the corner of the window.
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local BulletList = UI.BulletList
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local StyledDialog = UI.StyledDialog

local ListDialog = Roact.PureComponent:extend("ListDialog")

function ListDialog:render()
	local props = self.props
	local theme = props.Stylizer

	local title = props.Title
	local header = props.Header
	local entries = props.Entries
	local buttons = props.Buttons
	local onButtonClicked = props.OnButtonClicked
	local onClose = props.OnClose

	local layoutIndex = LayoutOrderIterator.new()

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 45),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 10),
			PaddingLeft = UDim.new(0, 30),
			PaddingRight = UDim.new(0, 30),
		}),

		Header = Roact.createElement("TextLabel", {
			LayoutOrder = layoutIndex:getNextOrder(),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Text = header,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
			Font = theme.listDialog.font,
			TextSize = 22,
			TextColor3 = theme.listDialog.textColor,
		}),
	}
	children.List = Roact.createElement(BulletList, {
		Items = entries,
		LayoutOrder = layoutIndex:getNextOrder(),
		TextTruncate = Enum.TextTruncate.AtEnd,
	})

	return Roact.createElement(StyledDialog, {
		Title = title,
		Modal = true,
		Buttons = buttons,
		MinContentSize = Vector2.new(450, 220),
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
		Style = "LargeCenterButtons",
		OnButtonPressed = onButtonClicked,
		OnClose = onClose,
	}, children)
end

ListDialog = withContext({
	Stylizer = ContextServices.Stylizer,
})(ListDialog)

return ListDialog
