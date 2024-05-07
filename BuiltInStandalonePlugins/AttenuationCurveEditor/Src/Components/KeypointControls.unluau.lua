-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AttenuationCurveEditor")
local var1 = require(var0.Packages.React)
local var2 = var1.useCallback
local var3 = var1.useContext
local var4 = require(var0.Packages.Dash).join
local var5 = require(var0.Packages.Framework)
local var6 = var5.ContextServices
local var7 = var5.UI.IconButton
local var8 = var5.UI.Pane
local var9 = require(var0.Src.Types)
local var10 = require(var0.Src.Components.LabelCell)
local var11 = {}
var11.Type = "Number"
var11.Min = 0
local var12 = {}
var12.Type = "Number"
var12.Min = 0
var12.Max = 1
return function(arg1)
   local var0 = var3(var6.Context.Consumer)[var6.Localization.Key]
   local var53 = arg1.Keypoint
   local var54 = arg1.OnEdit
   local var2 = var2(function(arg1)
   end, {})
   if arg1.Keypoint then
      local var0 = arg1.Keypoint.X
      local var1 = arg1.Keypoint.Y
   end
   local var66 = {}
   var66.LayoutOrder = 2
   var66.Size = UDim2.fromScale(1, 0)
   var1.Tag = "X-Center X-Middle X-RowM X-Fit"
   local var75 = {}
   local var79 = {}
   var79.LayoutOrder = 1
   var1.Tag = "X-Left X-Pad X-RowM X-Fit"
   local var84 = {}
   local var88 = {}
   var88.LayoutOrder = 1
   var88.Text = var0:getText("Label", "Distance")
   local var94 = var11
   var88.Schema = var94
   var88.Value = nil
   var94 = var2
   var88.OnChanged = var94("X")
   var84.X = var1.createElement(var10, var88)
   local var101 = {}
   var101.LayoutOrder = 2
   var101.Text = var0:getText("Label", "Volume")
   local var107 = var12
   var101.Schema = var107
   var101.Value = nil
   var107 = var2
   var101.OnChanged = var107("Y")
   var84.Y = var1.createElement(var10, var101)
   var75.SequenceButtonsContainer = var1.createElement(var8, var79, var84)
   local var115 = {}
   var115.LayoutOrder = 3
   var1.Tag = "X-Right X-Pad X-RowM X-Fit"
   local var120 = {}
   local var124 = {}
   var124.LayoutOrder = 1
   var124.Text = var0:getText("Control", "Delete")
   var124.OnClick = arg1.OnDelete
   var120.Delete = var1.createElement(var7, var124)
   local var135 = {}
   var135.LayoutOrder = 2
   var135.Text = var0:getText("Control", "Reset")
   var135.OnClick = arg1.OnReset
   var120.Cancel = var1.createElement(var7, var135)
   local var146 = {}
   var146.LayoutOrder = 3
   var146.Text = var0:getText("Control", "Save")
   var146.OnClick = arg1.OnSave
   var120.Save = var1.createElement(var7, var146)
   var75.CommitButtonsContainer = var1.createElement(var8, var115, var120)
   return var1.createElement(var8, var66, var75)
end
