-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Styling.createStyleRule
local var2 = require(var0.Src.Resources.StyleTips)
local var384 = var2.filterHeaderHeight
local var4 = var384 - 4
var384 = var1
local var387 = {}
var387.Size = UDim2.new(1, 0, 1, 0)
var387.BackgroundColor3 = "$BackgroundPaper"
local var398 = {}
var398.Size = UDim2.new(1, 0, 1, 0)
local var408 = {}
var408.PaddingTop = UDim.new(0, 4)
var408.PaddingBottom = UDim.new(0, 4)
var408.PaddingLeft = UDim.new(0, 4)
var408.PaddingRight = UDim.new(0, 4)
local var425 = var1("::UIPadding", var408)
local var428 = {}
var428.Size = UDim2.new(1, 0, 0, var2.filterHeaderHeight)
local var442 = {}
var442.CornerRadius = UDim.new(0, var2.bubbleCornerRadius)
local var447 = var1("::UICorner", var442)
local var450 = {}
var450.Color = "$Divider"
var450.Thickness = 1
local var453 = var1("::UIStroke", var450)
local var456 = {}
var456.BackgroundColor3 = "$BackgroundPaper"
var456.TextColor3 = "$TextPrimary"
var456.TextSize = var2.headerFontSize
local var463 = {}
var463.CornerRadius = UDim.new(0, var2.bubbleCornerRadius)
local var468 = var1("::UICorner", var463)
local var471 = {}
local var472 = "$ActionHover"
var471.BackgroundColor3 = var472
local var473 = var1(":hover", var471)
local var13 = var1("> #ToggleFilterMenuButton", var456, {})
local var477 = {}
var472 = var4
var477.Size = UDim2.new(0, var4, 0, var472)
var477.Position = UDim2.new(1, var4, 0, 0)
local var492 = {}
var492.Size = UDim2.new(0, 16, 0, 16)
var492.AnchorPoint = Vector2.new(0.5, 0.5)
var492.Position = UDim2.new(0.5, 0, 0.5, 0)
var492.Image = "$toggleicon"
var492.BackgroundTransparency = 1
local var14 = var1("> #FilterMenuToggleIcon", var492)
local var15 = var1("> #FilterMenuToggleIconContainer", var477, {})
local var513 = var1(">> #Header", {}, {})
local var514 = var1("> #HeaderContainer", var428, {})
local var517 = {}
var517.Size = UDim2.new(1, 0, 1, var2.filterHeaderHeight)
local var525 = var1("> #ActivityHistoryBubbleListContainer", var517)
local var17 = var1("> #EventList", var398, {})
local var529 = {}
var529.Size = UDim2.new(1, 0, 1, 0)
local var18 = var1("> #FilterMenu", var529)
local var539 = {}
var539.Size = UDim2.new(1, 0, 0, 0)
var539.BackgroundColor3 = "$ForegroundMain"
local var550 = {}
var550.Size = UDim2.new(1, 0, 1, 0)
var550.TextColor3 = "$TextPrimary"
var550.TextXAlignment = Enum.TextXAlignment.Center
var550.TextYAlignment = Enum.TextYAlignment.Center
var550.BackgroundTransparency = 1
local var19 = var1(">> .Component-TextLabel", var550)
local var564 = {}
var564.CornerRadius = UDim.new(0, 20)
local var20 = var1("::UICorner", var564)
local var21 = var1("> #Footer", var539, {})
return var384(".Component-ActivityHistoryMain", var387, {})
