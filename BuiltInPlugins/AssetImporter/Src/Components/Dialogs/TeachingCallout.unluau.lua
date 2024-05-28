-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = var1.PureComponent:extend("TeachingCallout")
function var2.init(arg1)
   arg1.targetRef = var1.createRef()
end

function var2.didMount(arg1)
   arg1._isMounted = true
   spawn(function(arg1)
      arg1.targetRef = var1.createRef()
   end)
end

function var2.willUnmount(arg1)
   arg1._isMounted = false
   if arg1._attachedDefinitionId then
      arg1.props.CalloutController:detachCalloutsByDefinitionId(arg1._attachedDefinitionId)
   end
end

local function fun10(arg1)
   local var0 = arg1.props.Offset or Vector2.new(0, 0)
   local var300 = {}
   var300.BackgroundTransparency = 1
   var300.Position = UDim2.new(0, var0.X, 0, var0.Y)
   var300.Size = UDim2.new(1, 0, 1, 0)
   var1.Ref = arg1.targetRef
   return var1.createElement("Frame", var300)
end

function var2.render(arg1)
   local var0 = arg1.props.Offset or Vector2.new(0, 0)
   local var300 = {}
   var300.BackgroundTransparency = 1
   var300.Position = UDim2.new(0, var0.X, 0, var0.Y)
   var300.Size = UDim2.new(1, 0, 1, 0)
   var1.Ref = arg1.targetRef
   return var1.createElement("Frame", var300)
end

fun10 = require(var0.Packages.Framework).ContextServices.withContext
local var318 = {}
var318.CalloutController = require(var0.Src.Controllers.CalloutController)
var2 = fun10(var318)(var2)
return var2
