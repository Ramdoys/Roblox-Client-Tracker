-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Util.Constants)
local var2 = require(var0.Src.Types)
local var3 = require(var0.Src.Hooks.useAttribute)
local var4 = require(var0.Src.Flags.getFFlagAvatarPreviewerAutoSetup)
local var5 = require(var0.Src.Flags.getFFlagAvatarPreviewerAutoSetupDisablePublish)
return function(arg1)
   assert(var4(), "FFlagAvatarPreviewerAutoSetup is not enabled")
   assert(var5(), "FFlagAvatarPreviewerAutoDisablePublish is not enabled")
   return var3(arg1, var1.ATTRIBUTE_CREATED_BY_AUTO_SETUP)
end
