local SplitTileRoot = script.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local React = require(Packages.React)
local t = require(Packages.t)
local useStyle = require(Core.Style.useStyle)

local Fonts = require(UIBlox.App.Style.Fonts)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)
local setDefault = require(UIBlox.Utility.setDefault)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local TEXT_LINE_COUNT = 2
local TITLE_PADDING = 8

export type OuterPadding = number | StyleTypes.PaddingItem

export type Props = {
	-- Number of pixels to pad panel edges from all directions which could align with UIPadding
	outerPadding: OuterPadding?,
	-- The total height of the panel. Width will span its parent
	panelHeight: UDim,
	-- The height of the panel's footer. Width will span its parent
	footerHeight: UDim,
	-- The title for the panel's content
	contentTitle: string?,
	-- Footer to be shown below the panel's title
	contentFooter: table?,
	-- The number of text lines in the panel's title
	textLineCount: number?,
	-- Whether or not the panel includes side padding
	hasSidePadding: boolean?,
	-- The spacing between title and footer
	titlePadding: number?,
	-- The Font type of the title
	titleFont: Fonts.Font?,
}

local function TileContentPanel(props: Props)
	local contentTitle = props.contentTitle
	local contentFooter = props.contentFooter
	local titleTextLineCount = setDefault(props.textLineCount, TEXT_LINE_COUNT)
	local hasSidePadding = setDefault(props.hasSidePadding, true)
	local paddingLeft, paddingRight, paddingTop, paddingBottom
	if props.outerPadding == nil or type(props.outerPadding) == "number" then
		local outerPadding = setDefault(props.outerPadding, TITLE_PADDING)
		paddingLeft = outerPadding
		paddingRight = outerPadding
		paddingTop = outerPadding
		paddingBottom = outerPadding
	else
		paddingLeft = setDefault(props.outerPadding.Left, TITLE_PADDING)
		paddingRight = setDefault(props.outerPadding.Right, TITLE_PADDING)
		paddingTop = setDefault(props.outerPadding.Top, TITLE_PADDING)
		paddingBottom = setDefault(props.outerPadding.Bottom, TITLE_PADDING)
	end
	local titlePadding = setDefault(props.titlePadding, TITLE_PADDING)
	local panelHeight = props.panelHeight
	local footerHeight = props.footerHeight

	local stylePalette = useStyle()
	local font = stylePalette.Font
	local titleFont = setDefault(props.titleFont, font.Header2)
	local theme = stylePalette.Theme

	local maxTextHeight = font.BaseSize * titleFont.RelativeSize * titleTextLineCount

	local titleColorStyle = if UIBloxConfig.useNewThemeColorPalettes then theme.TextDefault else theme.TextEmphasis

	return React.createElement("Frame", {
		Size = UDim2.new(UDim.new(1, 0), panelHeight),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, titlePadding),
		}),
		Padding = React.createElement("UIPadding", {
			PaddingLeft = if hasSidePadding then UDim.new(0, paddingLeft) else nil,
			PaddingRight = if hasSidePadding then UDim.new(0, paddingRight) else nil,
			PaddingTop = UDim.new(0, paddingTop),
			PaddingBottom = UDim.new(0, paddingBottom),
		}),
		TitleText = if titleTextLineCount > 0
				and contentTitle
				and string.len(contentTitle) > 0
			then React.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Text = contentTitle,
				Font = titleFont.Font,
				TextSize = font.BaseSize * titleFont.RelativeSize,
				TextTransparency = titleColorStyle.Transparency,
				TextColor3 = titleColorStyle.Color,
				TextWrapped = true,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				LayoutOrder = 1,
			}, {
				UISizeConstraint = React.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(math.huge, maxTextHeight),
				}),
			})
			else nil,
		ContentFooter = if contentFooter
			then React.createElement("Frame", {
				Size = UDim2.new(UDim.new(1, 0), footerHeight),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, {
				contentFooter,
			})
			else nil,
	})
end

return TileContentPanel
