-- Generated with Unluau (https://github.com/valencefun/unluau)
local var9 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var9.createStyleRule
var9 = var1
local var12 = {}
var12.Size = UDim2.new(1, 0, 1, 0)
var12.BackgroundColor3 = "$BackgroundPaper"
var12.BorderSizePixel = 0
local var24 = {}
var24.Size = UDim2.new(1, 65532, 1, 65498)
var24.Position = UDim2.new(0, 0, 0, 38)
var24.CanvasSize = UDim2.new(1, 65532, 1, 65498)
var24.AutomaticCanvasSize = Enum.AutomaticSize.Y
var24.BackgroundTransparency = 1
var24.BorderSizePixel = 0
var24.ScrollBarThickness = 6
var24.ScrollBarImageColor3 = "$NotificationScrollBarColor"
var24.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
var24.ScrollingDirection = Enum.ScrollingDirection.Y
local var53 = {}
var53.FillDirection = Enum.FillDirection.Vertical
var53.HorizontalAlignment = Enum.HorizontalAlignment.Left
var53.SortOrder = Enum.SortOrder.LayoutOrder
var53.VerticalAlignment = Enum.VerticalAlignment.Top
var53.Padding = UDim.new(0, 4)
local var62 = var1("::UIListLayout", var53)
local var2 = var1(">> .Component-NotificationTrayScrollingFrame", var24, {})
local var66 = {}
var66.Size = UDim2.new(1, 0, 0, 0)
var66.AutomaticSize = Enum.AutomaticSize.Y
var66.BackgroundTransparency = 1
local var78 = {}
var78.PaddingTop = UDim.new(0, 12)
var78.PaddingBottom = UDim.new(0, 12)
local var3 = var1("::UIPadding", var78)
local var4 = var1(">> .Component-NotificationTrayLoading", var66, {})
return var9(".Component-NotificationTray", var12, {})
