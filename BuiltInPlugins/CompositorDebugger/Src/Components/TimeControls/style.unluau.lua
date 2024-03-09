-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework).Style.StyleKey
local var2 = {}
var2.BackgroundColor = var1.SubBackground2
local var17 = {}
var17.ButtonSize = UDim2.fromOffset(24, 24)
var17.Play = "rbxasset://textures/CompositorDebugger/play.png"
var17.Pause = "rbxasset://textures/CompositorDebugger/pause.png"
var17.Color = var1.MainText
var2.PlayPauseButton = var17
local var25 = {}
var25.Color = var1.MainTextDisabled
local var27 = {}
var27.TextAlignment = Enum.TextXAlignment.Left
var27.Width = 2
var27.Height = 1
var25.LBorder = var27
local var31 = {}
var31.TextAlignment = Enum.TextXAlignment.Right
var31.Width = 2
var31.Height = 1
var25.RBorder = var31
local var35 = {}
var35.TextAlignment = Enum.TextXAlignment.Left
var35.Width = 1
var35.Height = 0.75
var25.Major = var35
local var39 = {}
var39.Width = 1
var39.Height = 0.5
var25.Medium = var39
local var42 = {}
var42.Width = 1
var42.Height = 0.25
var25.Minor = var42
var2.Tick = var25
var2.Intervals = require(var0.Src.Util.Constants).TIMECONTROLS_INVERVALS
local var46 = {}
var46.Color = var1.DialogMainButton
var46.HeadSize = 5
var2.Scrubber = var46
local var11 = {}
var11.Color = var1.DialogMainButton
var11.Height = 2
var2.BufferBar = var11
return var2
