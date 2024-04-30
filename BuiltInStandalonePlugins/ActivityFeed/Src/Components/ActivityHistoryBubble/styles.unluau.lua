-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Resources.StyleTips)
local var2 = require(var0.Packages.Framework).Styling.createStyleRule
local var3 = var1.bubbleTopHeight
local var4 = var1.bubblePaddingHalf
local var23 = {}
var23.Size = UDim2.new(1, 0, 0, var1.bubbleHeight)
var23.BackgroundColor3 = "$ForegroundMain"
local var34 = {}
var34.CornerRadius = UDim.new(0, var1.bubbleCornerRadius)
local var6 = var2("::UICorner", var34)
local var42 = {}
var42.Color = "$Divider"
var42.Thickness = 1
local var8 = var2("::UIStroke", var42)
local var48 = {}
var48.PaddingTop = UDim.new(0, var4)
var48.PaddingBottom = UDim.new(0, var4)
var48.PaddingLeft = UDim.new(0, var4)
var48.PaddingRight = UDim.new(0, var4)
local var10 = var2("::UIPadding", var48)
local var68 = {}
var68.BackgroundColor3 = "$ForegroundContrast"
local var12 = var2(":hover", var68)
local var73 = {}
var73.TextColor3 = "$TextPrimary"
var73.BackgroundTransparency = 1
local var14 = var2(">> TextLabel", var73)
local var79 = {}
var79.Size = UDim2.new(0, 16, 1, 0)
local var89 = {}
var89.Position = UDim2.new(0, 0, 0, 20)
var89.Size = UDim2.new(0, 16, 0, 16)
local var102 = var2("> #Icon", var89)
local var109 = {}
var109.CornerRadius = UDim.new(0, 8)
local var114 = var2("::UICorner", var109)
local var115 = var2("> .RoundIcon", {}, {})
local var122 = {}
var122.CornerRadius = UDim.new(0, 5)
local var127 = var2("::UICorner", var122)
local var128 = var2("> .SquareIcon", {}, {})
local var18 = var2("> #Left", var79, {})
local var132 = {}
var132.Size = UDim2.new(1, 65520, 1, 0)
local var142 = {}
var142.PaddingLeft = UDim.new(0, 8)
local var147 = var2("::UIPadding", var142)
local var150 = {}
var150.TextXAlignment = Enum.TextXAlignment.Left
var150.TextYAlignment = Enum.TextYAlignment.Center
local var153 = var2(">> TextLabel", var150)
local var156 = {}
var156.Size = UDim2.new(1, 0, 0, var3)
local var166 = {}
var166.Size = UDim2.new(0, var3, 0, var3)
local var176 = {}
var176.BorderSizePixel = 0
var176.Image = "$threedotsicon"
var176.BackgroundTransparency = 1
var176.ScaleType = Enum.ScaleType.Fit
local var181 = var2("> ImageButton", var176)
local var182 = var2("> #DotDotDot", var166, {})
local var185 = {}
var185.Size = UDim2.new(1, var3, 1, 0)
var185.TextSize = var1.detailFontSize
local var193 = "$TextSecondary"
var185.TextColor3 = var193
local var194 = var2("> #Date", var185)
local var195 = var2("> #Top", var156, {})
local var198 = {}
var193 = var1.bubbleMiddleHeight
var198.Size = UDim2.new(1, 0, 0, var193)
local var207 = {}
var207.PaddingRight = UDim.new(0, 8)
var207.PaddingBottom = UDim.new(0, 8)
local var216 = var2("::UIPadding", var207)
local var219 = {}
var219.TextColor3 = "$TextPrimary"
var219.TextSize = var1.normalFontSize
var219.TextXAlignment = Enum.TextXAlignment.Left
local var223 = Enum.TextYAlignment.Top
var219.TextYAlignment = var223
local var224 = var2(">> TextLabel", var219)
local var29 = var2("> #Middle", var198, {})
local var228 = {}
var223 = var1.bubbleBottomHeight
var228.Size = UDim2.new(1, 0, 0, var223)
local var237 = {}
var237.PaddingRight = UDim.new(0, 4)
local var31 = var2("::UIPadding", var237)
local var245 = {}
var245.Size = UDim2.new(0, 16, 0, 16)
local var255 = {}
var255.CornerRadius = UDim.new(0, 8)
local var260 = var2("::UICorner", var255)
local var32 = var2("> #Icon", var245, {})
local var264 = {}
var264.Size = UDim2.new(1, 65520, 1, 0)
var264.TextSize = var1.detailFontSize
var264.TextColor3 = "$TextSecondary"
var264.TextXAlignment = Enum.TextXAlignment.Left
var264.TextYAlignment = Enum.TextYAlignment.Center
var264.BackgroundTransparency = 1
local var279 = {}
var279.TextColor3 = "$TextPrimary"
local var33 = var2(":hover", var279)
local var34 = var2("> #TargetName", var264, {})
local var35 = var2("> #Bottom", var228, {})
local var36 = var2("> #Right", var132, {})
local var287 = {}
var287.CornerRadius = UDim.new(0, 8)
local var37 = var2(".TargetIcon ::UICorner", var287)
return var2(".Component-ActivityHistoryBubble", var23, {})
