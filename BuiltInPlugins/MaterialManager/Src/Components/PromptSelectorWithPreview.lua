--[[
	Generic component for "user selects something that can be previewed".
	Implement PromptSelection and RenderPreview to define how the user selects an item, and how this component should
	display that item.

	Props
		SelectionName: string
			Text to display below the preview
		HasSelection: bool
			Whether something is currently selected
		PreviewTitle: string
			Title to use on the expanded preview window

		RenderPreview: void -> Roact element
			Function to render a preview of the current item
		PromptSelection: void -> void
			Callback to prompt the user to select an item (e.g. with StudioService:PromptImportFile())
		UrlSelection: string -> void
			Callback to select already uploaded item (by URL)
		ClearSelection: void -> void
			Callback to clear the current selection
		SearchUrl: string
			AssetId that is inserted by user
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local FrameworkTypes = require(Plugin.Packages._Index.DeveloperFramework.DeveloperFramework.Types)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer

local Dash = Framework.Dash

local UI = Framework.UI
local Container = UI.Container
local Pane = UI.Pane
local IconButton = UI.IconButton
local TextInput2 = UI.TextInput2

local TextLabel = UI.Decoration.TextLabel

local StudioUI = Framework.StudioUI
local Dialog = StudioUI.Dialog

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local FFlagDevFrameworkIconButtonBorderColor = game:GetFastFlag("DevFrameworkIconButtonBorderColor")

type Array<T> = { [number]: T }

type _ExternalProps = {
	SelectionName: string?,
	PreviewTitle: string?,
	HasSelection: boolean,
	RenderPreview: () -> FrameworkTypes.RoactElement,
	PromptSelection: () -> (),
	UrlSelection: (string) -> (),
	BorderColorUrlBool: boolean,
	BorderColorFileBool: boolean,
	SearchUrl: string?,
	ClearSelection: () -> (),
	OnFocusLost: () -> (),
}

type _InternalProps = {
	OnClose: () -> (),
	Metadata: Array<string>,
	Icon: string,
}

type Props = _ExternalProps & _InternalProps

type _Props = Props & {
	Stylizer: any,
	Localization: any,
}

type _Style = {
	ExpandIcon: string,
	ClearIcon: string,
	ImportIcon: string,

	PreviewBackgroundColor: Color3,
	PreviewBorderColor: Color3,

	ButtonColor: Color3,
	ButtonHeight: number,
	IconImportPaddingLeft: number,
	IconImportPaddingRight: number,

	ImportIconColor: Color3,
	ImportImageBackground: Color3,
	ButtonIconColor: Color3,
	ButtonIconHoveredColor: Color3,
	BorderColorError: Color3,

	ToolbarTransparency: number,
	ToolbarBackgroundColor: Color3,
	ToolbarButtonBackgroundColor: Color3,
	ToolbarHeight: number,

	ColumnWidth: number,
	PreviewSize: number,

	PaddingVertical: number,
	PaddingHorizontal: number,
	TextHeight: number,
	
	ExpandedPreviewDefaultSize: Vector2,
	ExpandedPreviewMinSize: Vector2,
	ExpandedPreviewPadding: UDim,
}

-- Button used in the toolbar shown on hover in PromptSelectorWithPreview
local PreviewToolbarButton = Roact.PureComponent:extend("PreviewToolbarButton")

function PreviewToolbarButton:init()
	self.state = {
		isHovered = false,
	}

	self.onHovered = function()
		self:setState({
			isHovered = true,
		})
	end

	self.onHoverEnded = function()
		self:setState({
			isHovered = false,
		})
	end
end

function PreviewToolbarButton:render()
	local props: _Props = self.props
	local state = self.state
	local style: _Style = props.Stylizer.PromptSelectorWithPreview
	local toolbaButtonSize = style.ToolbarHeight - 4
	local toolbarIconSize = toolbaButtonSize - 10

	local newProps = Dash.join(props, {
		Size = UDim2.new(1, 0, 1, 0),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,
		ZIndex = 4,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		[Roact.Event.MouseEnter] = self.onHovered,
		[Roact.Event.MouseLeave] = self.onHoverEnded,

		Image = "",
		Icon = Dash.None,
		Stylizer = Dash.None,
	})

	return Roact.createElement("ImageButton", newProps, {
		Background = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, toolbaButtonSize, 0, toolbaButtonSize),
			BackgroundTransparency = state.isHovered and 0 or 1,
			BorderSizePixel = 1,
			BackgroundColor3 = style.ToolbarButtonBackgroundColor,
		}, {
			Icon = Roact.createElement("ImageLabel", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0, toolbarIconSize, 0, toolbarIconSize),
				ZIndex = 5,
				BackgroundTransparency = 1,
				BorderSizePixel = 1,
				Image = props.Icon,
				ImageColor3 = state.isHovered
					and style.ButtonIconHoveredColor
					or style.ButtonIconColor,
			}),
		}),
	})
end


PreviewToolbarButton = withContext({
	Stylizer = Stylizer,
})(PreviewToolbarButton)



local PreviewDialog = Roact.PureComponent:extend("PreviewDialog")

function PreviewDialog:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.PromptSelectorWithPreview

	local previewTitle = props.PreviewTitle or ""

	local previewRenderResult
	if props.RenderPreview then
		previewRenderResult = props.RenderPreview()
	end

	local metadata = props.Metadata or {}

	local padding = 4
	local imageInset = #metadata > 0 and (padding * 2 + style.TextHeight) or 0

	local layoutOrderIterator = LayoutOrderIterator.new()

	local contents = {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, padding),
		}),

		PreviewContentContainer = Roact.createElement("Frame", {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 1, -imageInset),
			BackgroundColor3 = style.PreviewBackgroundColor,
			BorderColor3 = style.PreviewBorderColor,
		}, {
			PreviewContent = previewRenderResult,
		}),

		-- Double the padding between the preview and filename
		EmptyRow = Roact.createElement(Container, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 0, 0),
		}),
	}

	for index, text in ipairs(metadata) do
		contents["Metadata_" .. tostring(index)] = Roact.createElement(TextLabel, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 0, style.TextHeight),
			Text = text,
			TextSize = style.TextHeight,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
	end

	return Roact.createElement(Dialog, {
		Title = previewTitle,
		Size = style.ExpandedPreviewDefaultSize,
		MinSize = style.ExpandedPreviewMinSize,
		Resizable = true,
		Enabled = true,
		Modal = true,
		OnClose = props.OnClose,
	}, {
		Background = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = style.PreviewBackgroundColor,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingTop = style.ExpandedPreviewPadding,
				PaddingBottom = style.ExpandedPreviewPadding,
				PaddingLeft = style.ExpandedPreviewPadding,
				PaddingRight = style.ExpandedPreviewPadding,
			}),

			Container = Roact.createElement(Container, {}, contents),
		}),
	})
end


PreviewDialog = withContext({
	Stylizer = Stylizer,
})(PreviewDialog)



local PromptSelectorWithPreview = Roact.PureComponent:extend(script.Name)

function PromptSelectorWithPreview:init()
	self.state = {
		promptSelectionHovered = false,
		showingExpandedPreview = false,
	}

	self.onPromptSelectionHover = function()
		self:setState({
			promptSelectionHovered = true,
		})
	end

	self.onPromptSelectionHoverEnd = function()
		self:setState({
			promptSelectionHovered = false,
		})
	end

	self.openExpandedPreview = function()
		self:setState({
			showingExpandedPreview = true,
		})
	end

	self.closeExpandedPreview = function()
		self:setState({
			showingExpandedPreview = false,
		})
	end
end

function PromptSelectorWithPreview:render()
	local props: _Props = self.props
	local localization = props.Localization
	local state = self.state
	local style: _Style = props.Stylizer.PromptSelectorWithPreview
	local layoutOrderIterator = LayoutOrderIterator.new()

	local selectionName = props.SelectionName or ""
	local previewTitle = props.PreviewTitle or ""

	local columnWidth = style.ColumnWidth
	local previewSize = style.PreviewSize
	local importWidth = columnWidth - previewSize - style.PaddingHorizontal
	local height = previewSize
	local buttonHeight = style.ButtonHeight

	local hasSelection = props.HasSelection
	local promptSelectionHovered = state.promptSelectionHovered
	local showingExpandedPreview = state.showingExpandedPreview

	local previewRenderResult
	if hasSelection and props.RenderPreview then
		previewRenderResult = props.RenderPreview()
	end

	local shouldShowToolbar = (hasSelection and promptSelectionHovered) and true or false

	local metadata
	if showingExpandedPreview then
		metadata = {selectionName}
	end

	local content = {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, style.PaddingVertical),
		}),

		TwoColumn = Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Horizontal,
				Size = UDim2.new(1, 0, 0, height),
				Spacing = style.PaddingHorizontal,
			}, {
			PreviewColumn = Roact.createElement(Pane, {
				LayoutOrder = 1,
				Size = UDim2.new(0, previewSize, 1, 0),
			}, {
				PreviewImage = Roact.createElement("ImageLabel", {
					ZIndex = 1,
					Size = UDim2.new(0, previewSize, 0, previewSize),
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					Image = "",
					BorderSizePixel = 1,
					BorderColor3 = style.PreviewBorderColor,
					BackgroundColor3 = style.ImportImageBackground,
					[Roact.Event.MouseEnter] = self.onPromptSelectionHover,
					[Roact.Event.MouseLeave] = self.onPromptSelectionHoverEnd,
				}, {
					PreviewNoImageSign = not hasSelection and Roact.createElement("Frame", {
						ZIndex = 2,
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
					}, {
						NoImageText = Roact.createElement(TextLabel, {
							Size = UDim2.new(1, 0, 1, 0),
							TextXAlignment = Enum.TextXAlignment.Center,
							TextSize = style.TextHeight,
							Text = localization:getText("CreateDialog", "NoImageSelected"),
							TextWrapped = true,
							TextColor = style.ButtonIconColor,
						}),
					}),

					PreviewContentContainer = hasSelection and Roact.createElement("Frame", {
						ZIndex = 2,
						Size = UDim2.new(1, 0, 1, 0),
					}, {
						PreviewContent = previewRenderResult,
					}),

					Toolbar = Roact.createElement("Frame", {
						ZIndex = 3,
						AnchorPoint = Vector2.new(0, 1),
						Position = UDim2.new(0, 0, 1, 0),
						Size = UDim2.new(1, 0, 0, style.ToolbarHeight),
						Visible = shouldShowToolbar,
						BackgroundTransparency = style.ToolbarTransparency,
						BorderSizePixel = 0,
						BackgroundColor3 = style.ToolbarBackgroundColor,
					}, {
						ExpandPreview = Roact.createElement(PreviewToolbarButton, {
							Icon = style.ExpandIcon,
							[Roact.Event.Activated] = self.openExpandedPreview,
						}),

						ClearButton = Roact.createElement(PreviewToolbarButton, {
							AnchorPoint = Vector2.new(1, 0),
							Position = UDim2.new(1, 0, 0, 0),
							Icon = style.ClearIcon,
							[Roact.Event.Activated] = props.ClearSelection,
						}),
					}),
				}),

				ExpandedPreview = showingExpandedPreview and Roact.createElement(PreviewDialog, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					PreviewTitle = previewTitle,
					RenderPreview = props.RenderPreview,
					Metadata = metadata,
					OnClose = self.closeExpandedPreview,
				}),
			}),

			ImportColumn = Roact.createElement(Pane, {
				Size = UDim2.new(0, importWidth, 1, 0),
				Style = "RoundBox",
				Spacing = 10,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = 2,
			}, {
				UrlImport = Roact.createElement(TextInput2, {
					PlaceholderText = localization:getText("CreateDialog", "InsertAssetURL"),
					Text = props.SearchUrl,
					OnTextChanged = props.UrlSelection,
					Size = UDim2.new(0, importWidth, 0, buttonHeight),
					OnFocusLost = props.OnFocusLost,
					BorderColor = if props.BorderColorUrlBool then style.BorderColorError else nil,
				}),

				IconImport = if FFlagDevFrameworkIconButtonBorderColor then Roact.createElement(IconButton, {
					Size = UDim2.new(0, importWidth, 0, buttonHeight),
					Text = localization:getText("CreateDialog", "Import"),
					TextXAlignment = Enum.TextXAlignment.Left,
					LeftIcon = style.ImportIcon,
					IconColor = style.ImportIconColor,
					BackgroundColor = style.ButtonColor,
					OnClick = props.PromptSelection,
					BorderColor = if props.BorderColorFileBool then style.BorderColorError else nil,
					Padding = {
						Left = style.IconImportPaddingLeft,
						Right = style.IconImportPaddingRight,
					},
				}) else Roact.createElement(IconButton, {
					Size = UDim2.new(0, importWidth, 0, buttonHeight),
					Text = localization:getText("CreateDialog", "Import"),
					TextXAlignment = Enum.TextXAlignment.Left,
					LeftIcon = style.ImportIcon,
					IconColor = style.ImportIconColor,
					BackgroundColor = style.ButtonColor,
					OnClick = props.PromptSelection,
					Padding = {
						Left = style.IconImportPaddingLeft,
						Right = style.IconImportPaddingRight,
					},
				}),
			}),
		}),
	}

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, columnWidth, 0, height + style.PaddingVertical),
	}, content)
end


PromptSelectorWithPreview = withContext({
	Stylizer = Stylizer,
	Localization = Localization,
})(PromptSelectorWithPreview)

return PromptSelectorWithPreview
