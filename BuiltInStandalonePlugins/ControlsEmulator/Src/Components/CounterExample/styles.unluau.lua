-- Generated with Unluau (https://github.com/valencefun/unluau)
local var280 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling
local var1 = var280.createStyleRule
var280 = var1
local var283 = {}
var283.BackgroundColor3 = "$BackgroundPaper"
var283.BorderSizePixel = 0
local var289 = {}
var289.CornerRadius = UDim.new(0, 10)
local var3 = var1("::UICorner", var289)
local var297 = {}
var297.BackgroundColor3 = "$BackgroundHover"
local var5 = var1(":hover", var297)
local var302 = {}
var302.TextSize = 24
var302.Font = Enum.Font.Gotham
var302.TextColor3 = "$TextPrimary"
var302.Size = UDim2.new(1, 0, 0, 50)
var302.BackgroundTransparency = 1
var302.TextXAlignment = Enum.TextXAlignment.Center
var302.TextYAlignment = Enum.TextYAlignment.Center
local var6 = var1("> TextLabel", var302)
local var318 = {}
var318.TextSize = 50
var318.Font = Enum.Font.Gotham
var318.TextColor3 = "$TextPrimary"
var318.Size = UDim2.new(1, 0, 0, 100)
var318.BackgroundTransparency = 1
var318.TextXAlignment = Enum.TextXAlignment.Center
var318.TextYAlignment = Enum.TextYAlignment.Center
local var7 = var1("> TextButton", var318)
return var280(".Component-BasicExample", var283, {})
