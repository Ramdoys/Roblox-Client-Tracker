-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
local var1 = {}
var1.__index = var1
function var1.new(arg1)
   local var0 = {}
   var0.settingName = arg1
   return setmetatable(var0, var1)
end

function var1.getSetting(arg1, arg2, arg3)
   return arg2:GetSetting(tostring(arg3) ... arg1.settingName)
end

function var1.getBooleanSetting(arg1, arg2, arg3)
   if arg1:getSetting(arg2, arg3) then
      return true
   end
   return false
end

function var1.setSetting(arg1, arg2, arg3, arg4)
   local var35 = tostring(arg3)
   var35 = arg4
   arg2:SetSetting(var35 ... arg1.settingName, var35)
end

var0.InitiallyEnabled = var1.new("_initially_enabled")
var0.CorrespondingR15Experience = var1.new("_r6_original_experience")
var0.IsR15ConvertedExperience = var1.new("_r15_converted_experience")
return var0
