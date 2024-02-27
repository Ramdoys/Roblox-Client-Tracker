PROTO_0:
  GETIMPORT R2 K1 [settings]
  CALL R2 0 1
  GETTABLEKS R1 R2 K2 ["Studio"]
  GETTABLEKS R0 R1 K3 ["Theme"]
  RETURN R0 1

PROTO_1:
  GETIMPORT R3 K3 [Enum.StudioStyleGuideColor.MainBackground]
  NAMECALL R1 R0 K4 ["GetColor"]
  CALL R1 2 1
  GETTABLEKS R6 R1 K6 ["r"]
  GETTABLEKS R7 R1 K7 ["g"]
  ADD R5 R6 R7
  GETTABLEKS R6 R1 K8 ["b"]
  ADD R4 R5 R6
  DIVK R3 R4 K5 [3]
  LOADK R4 K9 [0.5]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  DUPTABLE R1 K4 [{"getTheme", "isDarkerTheme", "themeChanged"}]
  DUPCLOSURE R2 K5 [PROTO_0]
  SETTABLEKS R2 R1 K1 ["getTheme"]
  DUPCLOSURE R2 K6 [PROTO_1]
  SETTABLEKS R2 R1 K2 ["isDarkerTheme"]
  GETIMPORT R4 K8 [settings]
  CALL R4 0 1
  GETTABLEKS R3 R4 K9 ["Studio"]
  GETTABLEKS R2 R3 K10 ["ThemeChanged"]
  SETTABLEKS R2 R1 K3 ["themeChanged"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R2 K1 [settings]
  CALL R2 0 1
  GETTABLEKS R1 R2 K2 ["Studio"]
  GETTABLEKS R0 R1 K3 ["Theme"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  DUPTABLE R1 K3 [{"getTheme", "themeChanged"}]
  DUPCLOSURE R2 K4 [PROTO_3]
  SETTABLEKS R2 R1 K1 ["getTheme"]
  GETIMPORT R4 K6 [settings]
  CALL R4 0 1
  GETTABLEKS R3 R4 K7 ["Studio"]
  GETTABLEKS R2 R3 K8 ["ThemeChanged"]
  SETTABLEKS R2 R1 K2 ["themeChanged"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["StudioLocaleId"]
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["GetTranslator"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["GetTranslator"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETUPVAL R2 0
  CALL R2 0 1
  NOT R1 R2
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["createLocalization is marked for removal and cannot be used"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["LocalizationSource"]
  GETTABLEKS R0 R1 K4 ["SourceStrings"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["LocalizationSource"]
  GETTABLEKS R1 R2 K5 ["LocalizedStrings"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["shouldUseTestCustomLocale"]
  CALL R2 0 1
  JUMPIFNOT R2 [+13]
  GETIMPORT R2 K8 [print]
  LOADK R3 K9 ["Toolbox using test custom locale"]
  CALL R2 1 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["createTestCustomLocaleLocalization"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K11 ["getOrCreateTestCustomLocale"]
  CALL R3 0 -1
  CALL R2 -1 -1
  RETURN R2 -1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K12 ["shouldUseTestRealLocale"]
  CALL R2 0 1
  JUMPIFNOT R2 [+14]
  GETIMPORT R2 K8 [print]
  LOADK R3 K13 ["Toolbox using test real locale"]
  CALL R2 1 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K14 ["createTestRealLocaleLocalization"]
  MOVE R3 R1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K15 ["getOrCreateTestRealLocale"]
  CALL R4 0 -1
  CALL R2 -1 -1
  RETURN R2 -1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K16 ["new"]
  DUPTABLE R3 K21 [{"getLocaleId", "getTranslator", "getFallbackTranslator", "localeIdChanged"}]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K17 ["getLocaleId"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K18 ["getTranslator"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K19 ["getFallbackTranslator"]
  GETUPVAL R4 4
  LOADK R6 K22 ["StudioLocaleId"]
  NAMECALL R4 R4 K23 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K20 ["localeIdChanged"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R3 0
  JUMPIFEQ R3 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_10:
  GETUPVAL R0 0
  LOADK R2 K0 ["Toolbox"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  MOVE R1 R0
  JUMPIFNOT R1 [+4]
  LOADK R3 K2 ["tabRefresh"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K3 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+29]
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U1
  GETUPVAL R1 1
  LOADK R3 K0 ["Toolbox"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  MOVE R2 R1
  JUMPIFNOT R2 [+4]
  LOADK R4 K2 ["tabRefresh"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  NAMECALL R3 R2 K3 ["Fire"]
  CALL R3 1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["unmount"]
  GETUPVAL R2 0
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 0
  GETUPVAL R1 3
  LOADN R3 0
  NAMECALL R1 R1 K5 ["AnimationIdSelected"]
  CALL R1 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R6 0
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  NEWTABLE R6 0 0
  NEWTABLE R7 0 0
  NEWTABLE R8 0 0
  GETUPVAL R10 1
  CALL R10 0 1
  JUMPIFNOT R10 [+3]
  NEWTABLE R9 0 0
  JUMP [+1]
  LOADNIL R9
  NEWTABLE R10 0 0
  LOADB R11 0
  NEWTABLE R12 0 0
  LOADN R13 0
  GETUPVAL R14 2
  JUMPIFNOT R14 [+69]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R6 R14 K2 ["allowedAssetTypesForRelease"]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R7 R14 K3 ["allowedAssetTypesForUpload"]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R8 R14 K4 ["allowedAssetTypesForFree"]
  GETUPVAL R14 1
  CALL R14 0 1
  JUMPIFNOT R14 [+9]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R9 R14 K5 ["allowedBundleTypeSettings"]
  JUMP [+1]
  LOADNIL R9
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K6 ["packages"]
  GETTABLEKS R10 R14 K7 ["permissionsTable"]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K8 ["itemTags"]
  GETTABLEKS R11 R14 K9 ["isItemTagsFeatureEnabled"]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K8 ["itemTags"]
  GETTABLEKS R12 R14 K10 ["enabledAssetTypesForItemTags"]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K8 ["itemTags"]
  GETTABLEKS R13 R14 K11 ["maximumItemTagsPerItem"]
  LOADNIL R14
  GETUPVAL R16 2
  NAMECALL R16 R16 K0 ["getState"]
  CALL R16 1 1
  JUMPIFNOT R16 [+16]
  GETUPVAL R17 2
  NAMECALL R17 R17 K0 ["getState"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K12 ["assets"]
  JUMPIFNOT R16 [+9]
  GETUPVAL R17 2
  NAMECALL R17 R17 K0 ["getState"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K12 ["assets"]
  GETTABLEKS R15 R16 K13 ["idToAssetMap"]
  JUMP [+1]
  LOADNIL R15
  JUMPIFNOT R15 [+15]
  GETUPVAL R16 3
  MOVE R17 R15
  NEWCLOSURE R18 P0
  CAPTURE VAL R0
  CALL R16 2 1
  JUMPIFNOT R16 [+8]
  GETTABLEKS R17 R16 K14 ["Asset"]
  JUMPIFNOT R17 [+5]
  GETTABLEKS R17 R16 K14 ["Asset"]
  GETTABLEKS R14 R17 K15 ["AssetMediaIds"]
  JUMP [+1]
  LOADNIL R14
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K16 ["getFlowStartScreen"]
  MOVE R17 R1
  GETUPVAL R19 1
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  MOVE R18 R6
  JUMP [+1]
  LOADNIL R18
  CALL R16 2 1
  GETUPVAL R17 5
  NAMECALL R17 R17 K17 ["getDefualtTab"]
  CALL R17 1 1
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K18 ["FLOW_TYPE"]
  GETTABLEKS R18 R19 K19 ["DOWNLOAD_FLOW"]
  JUMPIFNOTEQ R1 R18 [+6]
  GETUPVAL R18 5
  NAMECALL R18 R18 K20 ["getOverrideTab"]
  CALL R18 1 1
  MOVE R17 R18
  NEWTABLE R18 0 1
  GETUPVAL R19 7
  DUPTABLE R20 K22 [{"StudioAssetService"}]
  GETUPVAL R21 8
  SETTABLEKS R21 R20 K21 ["StudioAssetService"]
  CALL R19 1 -1
  SETLIST R18 R19 -1 [1]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K23 ["Store"]
  GETTABLEKS R19 R20 K24 ["new"]
  GETUPVAL R20 10
  DUPTABLE R21 K38 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "isItemTagsFeatureEnabled", "enabledAssetTypesForItemTags", "maximumItemTagsPerItem", "rollingAssetPermissionRequests", "assetTypeEnum", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "hasSubsequent"}]
  SETTABLEKS R0 R21 K25 ["assetId"]
  SETTABLEKS R14 R21 K26 ["assetMediaIds"]
  SETTABLEKS R1 R21 K27 ["screenFlowType"]
  SETTABLEKS R16 R21 K28 ["currentScreen"]
  SETTABLEKS R2 R21 K29 ["instances"]
  GETUPVAL R23 11
  JUMPIF R23 [+4]
  GETUPVAL R23 12
  JUMPIF R23 [+2]
  GETUPVAL R23 13
  JUMPIFNOT R23 [+2]
  MOVE R22 R4
  JUMPIF R22 [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K30 ["sourceInstances"]
  SETTABLEKS R6 R21 K2 ["allowedAssetTypesForRelease"]
  SETTABLEKS R7 R21 K3 ["allowedAssetTypesForUpload"]
  SETTABLEKS R8 R21 K4 ["allowedAssetTypesForFree"]
  GETUPVAL R23 1
  CALL R23 0 1
  JUMPIFNOT R23 [+2]
  MOVE R22 R9
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K5 ["allowedBundleTypeSettings"]
  SETTABLEKS R11 R21 K9 ["isItemTagsFeatureEnabled"]
  SETTABLEKS R12 R21 K10 ["enabledAssetTypesForItemTags"]
  SETTABLEKS R13 R21 K11 ["maximumItemTagsPerItem"]
  GETUPVAL R23 14
  CALL R23 0 1
  JUMPIFNOT R23 [+10]
  DUPTABLE R22 K41 [{"inProgress", "queued"}]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K39 ["inProgress"]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K40 ["queued"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K31 ["rollingAssetPermissionRequests"]
  SETTABLEKS R3 R21 K32 ["assetTypeEnum"]
  SETTABLEKS R17 R21 K33 ["currentTab"]
  SETTABLEKS R10 R21 K34 ["packagePermissions"]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K35 ["overrideCursor"]
  GETUPVAL R23 15
  CALL R23 0 1
  JUMPIFNOT R23 [+2]
  LOADB R22 0
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K36 ["deleteLocal"]
  SETTABLEKS R5 R21 K37 ["hasSubsequent"]
  MOVE R22 R18
  CALL R19 3 1
  GETUPVAL R20 16
  CALL R20 0 1
  GETUPVAL R22 17
  GETTABLEKS R21 R22 K24 ["new"]
  CALL R21 0 1
  GETUPVAL R23 18
  CALL R23 0 1
  JUMPIFNOT R23 [+2]
  LOADNIL R22
  JUMP [+2]
  GETUPVAL R22 19
  CALL R22 0 1
  NEWCLOSURE R23 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE UPVAL U22
  GETUPVAL R25 13
  JUMPIFNOT R25 [+5]
  GETUPVAL R25 23
  GETTABLEKS R24 R25 K24 ["new"]
  CALL R24 0 1
  JUMP [+1]
  LOADNIL R24
  GETUPVAL R26 21
  GETTABLEKS R25 R26 K42 ["createElement"]
  GETUPVAL R26 24
  DUPTABLE R27 K49 [{"assetId", "assetTypeEnum", "plugin", "store", "theme", "networkInterface", "localization", "onAssetConfigDestroy"}]
  SETTABLEKS R0 R27 K25 ["assetId"]
  SETTABLEKS R3 R27 K32 ["assetTypeEnum"]
  GETUPVAL R28 25
  SETTABLEKS R28 R27 K43 ["plugin"]
  SETTABLEKS R19 R27 K44 ["store"]
  SETTABLEKS R20 R27 K45 ["theme"]
  SETTABLEKS R21 R27 K46 ["networkInterface"]
  GETUPVAL R29 18
  CALL R29 0 1
  JUMPIFNOT R29 [+2]
  LOADNIL R28
  JUMP [+1]
  MOVE R28 R22
  SETTABLEKS R28 R27 K47 ["localization"]
  SETTABLEKS R23 R27 K48 ["onAssetConfigDestroy"]
  CALL R25 2 1
  GETUPVAL R27 21
  GETTABLEKS R26 R27 K42 ["createElement"]
  GETUPVAL R27 26
  DUPTABLE R28 K52 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
  GETUPVAL R30 13
  JUMPIFNOT R30 [+2]
  MOVE R29 R24
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K50 ["ixp"]
  GETUPVAL R29 27
  SETTABLEKS R29 R28 K47 ["localization"]
  GETUPVAL R29 25
  SETTABLEKS R29 R28 K43 ["plugin"]
  SETTABLEKS R20 R28 K45 ["theme"]
  SETTABLEKS R19 R28 K44 ["store"]
  GETIMPORT R29 K53 [settings]
  SETTABLEKS R29 R28 K51 ["settings"]
  NEWTABLE R29 0 1
  MOVE R30 R25
  SETLIST R29 R30 1 [1]
  CALL R26 3 1
  GETUPVAL R28 21
  GETTABLEKS R27 R28 K54 ["mount"]
  MOVE R28 R26
  CALL R27 1 1
  SETUPVAL R27 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 0
  CALL R0 1 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 2
  NAMECALL R0 R0 K1 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R4 4
  CALL R0 4 0
  RETURN R0 0

PROTO_15:
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  GETUPVAL R5 1
  JUMPIFNOT R5 [+13]
  GETUPVAL R5 2
  GETUPVAL R7 3
  GETUPVAL R8 4
  CALL R7 1 -1
  NAMECALL R5 R5 K0 ["dispatch"]
  CALL R5 -1 1
  MOVE R7 R4
  MOVE R8 R4
  NAMECALL R5 R5 K1 ["andThen"]
  CALL R5 3 0
  RETURN R0 0
  GETUPVAL R5 2
  GETUPVAL R7 5
  GETUPVAL R8 4
  CALL R7 1 -1
  NAMECALL R5 R5 K0 ["dispatch"]
  CALL R5 -1 1
  MOVE R7 R4
  MOVE R8 R4
  NAMECALL R5 R5 K1 ["andThen"]
  CALL R5 3 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getClonedInstances"]
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R3 3
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 1 0
  GETUPVAL R1 4
  JUMPIFEQKNIL R1 [+36]
  GETUPVAL R1 5
  LOADNIL R2
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K3 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K4 ["UPLOAD_FLOW"]
  MOVE R4 R0
  GETUPVAL R7 4
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K6 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K7 ["EnumItem"] [+3]
  GETUPVAL R5 4
  JUMP [+14]
  GETUPVAL R7 4
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K6 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K8 ["string"] [+7]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K9 ["UGCBundleTypes"]
  GETUPVAL R7 4
  GETTABLE R5 R6 R7
  JUMP [+1]
  LOADNIL R5
  GETUPVAL R6 1
  GETUPVAL R7 3
  CALL R1 6 0
  RETURN R0 0
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K10 [1] [+21]
  GETTABLEN R1 R0 1
  LOADK R3 K11 ["AnimationClip"]
  NAMECALL R1 R1 K12 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+14]
  GETUPVAL R1 5
  LOADNIL R2
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K3 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K4 ["UPLOAD_FLOW"]
  MOVE R4 R0
  GETIMPORT R5 K16 [Enum.AssetType.Animation]
  LOADNIL R6
  GETUPVAL R7 3
  CALL R1 6 0
  RETURN R0 0
  GETUPVAL R1 5
  LOADNIL R2
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K3 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K4 ["UPLOAD_FLOW"]
  MOVE R4 R0
  LOADNIL R5
  GETUPVAL R6 1
  GETUPVAL R7 3
  CALL R1 6 0
  RETURN R0 0

PROTO_17:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  GETUPVAL R4 4
  JUMPIFNOT R4 [+13]
  GETUPVAL R4 5
  GETUPVAL R6 6
  GETUPVAL R7 7
  CALL R6 1 -1
  NAMECALL R4 R4 K0 ["dispatch"]
  CALL R4 -1 1
  MOVE R6 R3
  MOVE R7 R3
  NAMECALL R4 R4 K1 ["andThen"]
  CALL R4 3 0
  RETURN R0 0
  GETUPVAL R4 5
  GETUPVAL R6 8
  GETUPVAL R7 7
  CALL R6 1 -1
  NAMECALL R4 R4 K0 ["dispatch"]
  CALL R4 -1 1
  MOVE R6 R3
  MOVE R7 R3
  NAMECALL R4 R4 K1 ["andThen"]
  CALL R4 3 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getClonedInstances"]
  GETUPVAL R1 1
  CALL R0 1 1
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K1 [1] [+19]
  GETTABLEN R1 R0 1
  LOADK R3 K2 ["AnimationClip"]
  NAMECALL R1 R1 K3 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 2
  LOADNIL R2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K5 ["UPLOAD_FLOW"]
  MOVE R4 R0
  GETIMPORT R5 K9 [Enum.AssetType.Animation]
  CALL R1 4 0
  RETURN R0 0
  GETUPVAL R1 2
  LOADNIL R2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K5 ["UPLOAD_FLOW"]
  MOVE R4 R0
  LOADNIL R5
  GETUPVAL R6 1
  CALL R1 5 0
  RETURN R0 0

PROTO_19:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  GETUPVAL R2 3
  JUMPIFNOT R2 [+13]
  GETUPVAL R2 4
  GETUPVAL R4 5
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R2 4
  GETUPVAL R4 7
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  LOADNIL R2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K1 ["DOWNLOAD_FLOW"]
  LOADNIL R4
  GETIMPORT R5 K5 [Enum.AssetType.Animation]
  CALL R1 4 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  MOVE R3 R1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["FLOW_TYPE"]
  GETTABLEKS R4 R5 K1 ["EDIT_FLOW"]
  LOADNIL R5
  GETIMPORT R6 K5 [Enum.AssetType.Model]
  CALL R2 4 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R0 0
  LOADNIL R1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["FLOW_TYPE"]
  GETTABLEKS R2 R3 K1 ["UPLOAD_FLOW"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["getClonedInstances"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETIMPORT R4 K6 [Enum.AssetType.Plugin]
  CALL R0 4 0
  RETURN R0 0

PROTO_23:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  GETUPVAL R2 3
  JUMPIFNOT R2 [+13]
  GETUPVAL R2 4
  GETUPVAL R4 5
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R2 4
  GETUPVAL R4 7
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K1 ["assetType"]
  GETIMPORT R3 K5 [Enum.AssetType.Image]
  JUMPIFNOTEQ R2 R3 [+14]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K6 ["id"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["FLOW_TYPE"]
  GETTABLEKS R4 R5 K8 ["EDIT_FLOW"]
  LOADNIL R5
  GETIMPORT R6 K5 [Enum.AssetType.Image]
  CALL R2 4 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K6 ["id"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["FLOW_TYPE"]
  GETTABLEKS R4 R5 K8 ["EDIT_FLOW"]
  LOADNIL R5
  GETIMPORT R6 K10 [Enum.AssetType.MeshPart]
  CALL R2 4 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Store"]
  GETTABLEKS R0 R1 K1 ["new"]
  GETUPVAL R1 2
  LOADNIL R2
  NEWTABLE R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["thunkMiddleware"]
  SETLIST R3 R4 1 [1]
  CALL R0 3 1
  SETUPVAL R0 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["new"]
  CALL R0 0 1
  GETUPVAL R1 4
  CALL R1 0 1
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 6
  CALL R2 1 1
  GETUPVAL R3 7
  CALL R3 0 1
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K1 ["new"]
  CALL R4 0 1
  GETUPVAL R6 9
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+2]
  GETUPVAL R5 10
  CALL R5 0 1
  GETUPVAL R7 11
  GETTABLEKS R6 R7 K3 ["BACKGROUNDS"]
  GETUPVAL R8 12
  GETTABLEKS R7 R8 K4 ["SUGGESTIONS"]
  LOADNIL R8
  LOADNIL R9
  GETUPVAL R10 13
  JUMPIFNOT R10 [+7]
  GETUPVAL R11 14
  GETTABLEKS R10 R11 K5 ["forPlugin"]
  LOADK R11 K6 ["Toolbox"]
  GETUPVAL R12 6
  CALL R10 2 1
  MOVE R9 R10
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE UPVAL U15
  CAPTURE REF R9
  GETUPVAL R11 16
  GETUPVAL R13 0
  NAMECALL R11 R11 K7 ["setup"]
  CALL R11 2 0
  GETUPVAL R12 15
  GETTABLEKS R11 R12 K8 ["createElement"]
  GETUPVAL R12 17
  DUPTABLE R13 K20 [{"plugin", "store", "settings", "theme", "networkInterface", "localization", "pluginLoaderContext", "backgrounds", "suggestions", "onPluginWillDestroy", "tryOpenAssetConfig"}]
  GETUPVAL R14 6
  SETTABLEKS R14 R13 K9 ["plugin"]
  GETUPVAL R14 0
  SETTABLEKS R14 R13 K10 ["store"]
  SETTABLEKS R2 R13 K11 ["settings"]
  SETTABLEKS R3 R13 K12 ["theme"]
  SETTABLEKS R4 R13 K13 ["networkInterface"]
  GETUPVAL R15 9
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADNIL R14
  JUMP [+1]
  MOVE R14 R5
  SETTABLEKS R14 R13 K14 ["localization"]
  GETUPVAL R14 18
  SETTABLEKS R14 R13 K15 ["pluginLoaderContext"]
  SETTABLEKS R6 R13 K16 ["backgrounds"]
  SETTABLEKS R7 R13 K17 ["suggestions"]
  SETTABLEKS R10 R13 K18 ["onPluginWillDestroy"]
  NEWCLOSURE R14 P1
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U0
  CAPTURE UPVAL U21
  CAPTURE VAL R4
  CAPTURE UPVAL U22
  SETTABLEKS R14 R13 K19 ["tryOpenAssetConfig"]
  CALL R11 2 1
  GETUPVAL R13 23
  GETTABLEKS R12 R13 K1 ["new"]
  CALL R12 0 1
  LOADNIL R13
  GETUPVAL R15 15
  GETTABLEKS R14 R15 K8 ["createElement"]
  GETUPVAL R15 24
  DUPTABLE R16 K24 [{"localization", "plugin", "theme", "store", "settings", "assetAnalytics", "analytics", "ixp"}]
  GETUPVAL R17 25
  SETTABLEKS R17 R16 K14 ["localization"]
  GETUPVAL R17 6
  SETTABLEKS R17 R16 K9 ["plugin"]
  SETTABLEKS R3 R16 K12 ["theme"]
  GETUPVAL R17 0
  SETTABLEKS R17 R16 K10 ["store"]
  SETTABLEKS R2 R16 K11 ["settings"]
  SETTABLEKS R0 R16 K21 ["assetAnalytics"]
  SETTABLEKS R1 R16 K22 ["analytics"]
  SETTABLEKS R12 R16 K23 ["ixp"]
  NEWTABLE R17 0 1
  MOVE R18 R11
  SETLIST R17 R18 1 [1]
  CALL R14 3 1
  MOVE R13 R14
  GETUPVAL R15 15
  GETTABLEKS R14 R15 K25 ["mount"]
  MOVE R15 R13
  CALL R14 1 1
  MOVE R8 R14
  JUMPIFNOT R9 [+6]
  LOADK R16 K26 ["Roact tree"]
  MOVE R17 R8
  GETUPVAL R18 15
  NAMECALL R14 R9 K27 ["addRoactTree"]
  CALL R14 4 0
  GETUPVAL R14 26
  JUMPIF R14 [+2]
  GETUPVAL R14 27
  JUMPIFNOT R14 [+19]
  GETUPVAL R16 18
  GETTABLEKS R15 R16 K29 ["signals"]
  GETTABLEKS R14 R15 K28 ["StudioAssetService.OnSaveToRoblox"]
  NEWCLOSURE R16 P2
  CAPTURE UPVAL U28
  CAPTURE UPVAL U29
  CAPTURE UPVAL U19
  CAPTURE UPVAL U30
  CAPTURE UPVAL U20
  CAPTURE UPVAL U0
  CAPTURE UPVAL U21
  CAPTURE VAL R4
  CAPTURE UPVAL U22
  NAMECALL R14 R14 K30 ["Connect"]
  CALL R14 2 0
  JUMP [+17]
  GETUPVAL R16 18
  GETTABLEKS R15 R16 K29 ["signals"]
  GETTABLEKS R14 R15 K31 ["StudioService.OnSaveToRoblox"]
  NEWCLOSURE R16 P3
  CAPTURE UPVAL U28
  CAPTURE UPVAL U19
  CAPTURE UPVAL U30
  CAPTURE UPVAL U20
  CAPTURE UPVAL U0
  CAPTURE UPVAL U21
  CAPTURE VAL R4
  CAPTURE UPVAL U22
  NAMECALL R14 R14 K30 ["Connect"]
  CALL R14 2 0
  GETUPVAL R16 18
  GETTABLEKS R15 R16 K29 ["signals"]
  GETTABLEKS R14 R15 K32 ["StudioService.OnImportFromRoblox"]
  NEWCLOSURE R16 P4
  CAPTURE UPVAL U19
  CAPTURE UPVAL U30
  NAMECALL R14 R14 K30 ["Connect"]
  CALL R14 2 0
  GETUPVAL R16 18
  GETTABLEKS R15 R16 K29 ["signals"]
  GETTABLEKS R14 R15 K33 ["StudioService.OnOpenManagePackagePlugin"]
  NEWCLOSURE R16 P5
  CAPTURE UPVAL U19
  CAPTURE UPVAL U30
  NAMECALL R14 R14 K30 ["Connect"]
  CALL R14 2 0
  GETUPVAL R16 18
  GETTABLEKS R15 R16 K29 ["signals"]
  GETTABLEKS R14 R15 K34 ["StudioService.OnPublishAsPlugin"]
  NEWCLOSURE R16 P6
  CAPTURE UPVAL U19
  CAPTURE UPVAL U30
  CAPTURE UPVAL U28
  CAPTURE UPVAL U20
  CAPTURE UPVAL U0
  CAPTURE UPVAL U21
  CAPTURE VAL R4
  CAPTURE UPVAL U22
  NAMECALL R14 R14 K30 ["Connect"]
  CALL R14 2 0
  GETUPVAL R16 18
  GETTABLEKS R15 R16 K29 ["signals"]
  GETTABLEKS R14 R15 K35 ["MemStorageService.OpenAssetConfiguration"]
  NEWCLOSURE R16 P7
  CAPTURE UPVAL U31
  CAPTURE UPVAL U19
  CAPTURE UPVAL U30
  NAMECALL R14 R14 K30 ["Connect"]
  CALL R14 2 0
  GETUPVAL R15 32
  GETTABLEKS R14 R15 K36 ["registerLocalization"]
  GETUPVAL R15 25
  CALL R14 1 0
  GETUPVAL R15 32
  GETTABLEKS R14 R15 K37 ["registerProcessDragHandler"]
  GETUPVAL R15 6
  CALL R14 1 0
  CLOSEUPVALS R8
  RETURN R0 0

PROTO_26:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R4 R2 K3 ["Core"]
  GETTABLEKS R3 R4 K4 ["Util"]
  GETIMPORT R4 K6 [game]
  LOADK R6 K7 ["DebugToolboxEnableRoactChecks"]
  NAMECALL R4 R4 K8 ["GetFastFlag"]
  CALL R4 2 1
  GETIMPORT R5 K6 [game]
  LOADK R7 K9 ["DebugToolboxGetRolesRequest"]
  NAMECALL R5 R5 K8 ["GetFastFlag"]
  CALL R5 2 1
  GETIMPORT R6 K6 [game]
  LOADK R8 K10 ["UnifyModelPackagePublish3"]
  NAMECALL R6 R6 K8 ["GetFastFlag"]
  CALL R6 2 1
  GETIMPORT R7 K6 [game]
  LOADK R9 K11 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
  NAMECALL R7 R7 K8 ["GetFastFlag"]
  CALL R7 2 1
  GETIMPORT R8 K6 [game]
  LOADK R10 K12 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
  NAMECALL R8 R8 K8 ["GetFastFlag"]
  CALL R8 2 1
  GETIMPORT R9 K6 [game]
  LOADK R11 K13 ["ShowSaveToRobloxOnStudioAssetService"]
  NAMECALL R9 R9 K8 ["GetFastFlag"]
  CALL R9 2 1
  GETIMPORT R10 K15 [require]
  GETTABLEKS R14 R2 K3 ["Core"]
  GETTABLEKS R13 R14 K4 ["Util"]
  GETTABLEKS R12 R13 K16 ["SharedFlags"]
  GETTABLEKS R11 R12 K17 ["getFFlagEnableUGCBodyUploadFlow"]
  CALL R10 1 1
  GETIMPORT R11 K15 [require]
  GETTABLEKS R15 R2 K3 ["Core"]
  GETTABLEKS R14 R15 K4 ["Util"]
  GETTABLEKS R13 R14 K16 ["SharedFlags"]
  GETTABLEKS R12 R13 K18 ["getFFlagToolboxDeleteOnPublishAnimation"]
  CALL R11 1 1
  GETIMPORT R12 K15 [require]
  GETTABLEKS R13 R3 K19 ["isCli"]
  CALL R12 1 1
  MOVE R13 R12
  CALL R13 0 1
  JUMPIFNOT R13 [+1]
  RETURN R0 0
  GETIMPORT R13 K15 [require]
  GETTABLEKS R17 R2 K3 ["Core"]
  GETTABLEKS R16 R17 K4 ["Util"]
  GETTABLEKS R15 R16 K16 ["SharedFlags"]
  GETTABLEKS R14 R15 K20 ["getFFlagToolboxFinallyRemoveLegacyContext"]
  CALL R13 1 1
  GETIMPORT R14 K6 [game]
  LOADK R16 K21 ["StudioService"]
  NAMECALL R14 R14 K22 ["GetService"]
  CALL R14 2 1
  NAMECALL R15 R14 K23 ["HasInternalPermission"]
  CALL R15 1 1
  GETTABLEKS R16 R2 K24 ["Packages"]
  GETIMPORT R17 K15 [require]
  GETTABLEKS R18 R16 K25 ["Roact"]
  CALL R17 1 1
  GETIMPORT R18 K15 [require]
  GETTABLEKS R19 R16 K26 ["Framework"]
  CALL R18 1 1
  GETIMPORT R19 K15 [require]
  GETTABLEKS R21 R16 K27 ["Dev"]
  GETTABLEKS R20 R21 K28 ["DeveloperTools"]
  CALL R19 1 1
  JUMPIFNOT R4 [+13]
  GETTABLEKS R20 R17 K29 ["setGlobalConfig"]
  DUPTABLE R21 K33 [{"elementTracing", "propValidation", "typeChecks"}]
  LOADB R22 1
  SETTABLEKS R22 R21 K30 ["elementTracing"]
  LOADB R22 1
  SETTABLEKS R22 R21 K31 ["propValidation"]
  LOADB R22 1
  SETTABLEKS R22 R21 K32 ["typeChecks"]
  CALL R20 1 0
  GETIMPORT R20 K15 [require]
  GETTABLEKS R21 R16 K34 ["Rodux"]
  CALL R20 1 1
  GETIMPORT R21 K15 [require]
  GETTABLEKS R22 R3 K35 ["InsertAsset"]
  CALL R21 1 1
  GETIMPORT R22 K15 [require]
  GETTABLEKS R24 R3 K36 ["Analytics"]
  GETTABLEKS R23 R24 K37 ["AssetAnalyticsContextItem"]
  CALL R22 1 1
  GETIMPORT R23 K15 [require]
  GETTABLEKS R24 R3 K38 ["DebugFlags"]
  CALL R23 1 1
  GETIMPORT R24 K15 [require]
  GETTABLEKS R25 R3 K39 ["Settings"]
  CALL R24 1 1
  GETIMPORT R25 K15 [require]
  GETTABLEKS R26 R3 K40 ["ToolboxTheme"]
  CALL R25 1 1
  GETIMPORT R26 K15 [require]
  GETTABLEKS R27 R3 K41 ["Localization"]
  CALL R26 1 1
  GETIMPORT R27 K15 [require]
  GETTABLEKS R28 R3 K42 ["AssetConfigTheme"]
  CALL R27 1 1
  GETIMPORT R28 K15 [require]
  GETTABLEKS R29 R3 K43 ["AssetConfigConstants"]
  CALL R28 1 1
  GETIMPORT R29 K15 [require]
  GETTABLEKS R30 R3 K44 ["AssetConfigUtil"]
  CALL R29 1 1
  GETIMPORT R30 K15 [require]
  GETTABLEKS R32 R3 K36 ["Analytics"]
  GETTABLEKS R31 R32 K45 ["makeToolboxAnalyticsContext"]
  CALL R30 1 1
  GETIMPORT R31 K15 [require]
  GETTABLEKS R34 R2 K3 ["Core"]
  GETTABLEKS R33 R34 K46 ["ContextServices"]
  GETTABLEKS R32 R33 K47 ["IXPContext"]
  CALL R31 1 1
  GETTABLEKS R32 R23 K48 ["shouldDebugWarnings"]
  CALL R32 0 1
  JUMPIFNOT R32 [+13]
  GETIMPORT R34 K15 [require]
  GETTABLEKS R35 R16 K26 ["Framework"]
  CALL R34 1 1
  GETTABLEKS R33 R34 K4 ["Util"]
  GETTABLEKS R32 R33 K49 ["Promise"]
  GETIMPORT R33 K51 [warn]
  SETTABLEKS R33 R32 K52 ["onUnhandledRejection"]
  GETIMPORT R32 K15 [require]
  GETTABLEKS R35 R2 K3 ["Core"]
  GETTABLEKS R34 R35 K53 ["Types"]
  GETTABLEKS R33 R34 K54 ["Background"]
  CALL R32 1 1
  GETIMPORT R33 K15 [require]
  GETTABLEKS R36 R2 K3 ["Core"]
  GETTABLEKS R35 R36 K53 ["Types"]
  GETTABLEKS R34 R35 K55 ["Suggestion"]
  CALL R33 1 1
  GETIMPORT R34 K15 [require]
  GETTABLEKS R37 R2 K3 ["Core"]
  GETTABLEKS R36 R37 K53 ["Types"]
  GETTABLEKS R35 R36 K56 ["ConfigTypes"]
  CALL R34 1 1
  GETIMPORT R35 K15 [require]
  GETTABLEKS R38 R2 K3 ["Core"]
  GETTABLEKS R37 R38 K57 ["Components"]
  GETTABLEKS R36 R37 K58 ["ToolboxPlugin"]
  CALL R35 1 1
  GETIMPORT R37 K15 [require]
  GETTABLEKS R40 R2 K3 ["Core"]
  GETTABLEKS R39 R40 K4 ["Util"]
  GETTABLEKS R38 R39 K59 ["ToolboxUtilities"]
  CALL R37 1 1
  GETTABLEKS R36 R37 K60 ["getToolboxEnabled"]
  GETIMPORT R37 K15 [require]
  GETTABLEKS R40 R2 K3 ["Core"]
  GETTABLEKS R39 R40 K4 ["Util"]
  GETTABLEKS R38 R39 K61 ["ToolboxCommunication"]
  CALL R37 1 1
  GETIMPORT R38 K15 [require]
  GETTABLEKS R41 R2 K3 ["Core"]
  GETTABLEKS R40 R41 K62 ["Reducers"]
  GETTABLEKS R39 R40 K63 ["ToolboxReducer"]
  CALL R38 1 1
  GETIMPORT R39 K15 [require]
  GETTABLEKS R42 R2 K3 ["Core"]
  GETTABLEKS R41 R42 K62 ["Reducers"]
  GETTABLEKS R40 R41 K64 ["AssetConfigReducer"]
  CALL R39 1 1
  GETIMPORT R40 K15 [require]
  GETTABLEKS R43 R2 K3 ["Core"]
  GETTABLEKS R42 R43 K65 ["Networking"]
  GETTABLEKS R41 R42 K66 ["NetworkInterface"]
  CALL R40 1 1
  GETIMPORT R41 K15 [require]
  GETTABLEKS R45 R2 K3 ["Core"]
  GETTABLEKS R44 R45 K57 ["Components"]
  GETTABLEKS R43 R44 K67 ["AssetConfiguration"]
  GETTABLEKS R42 R43 K68 ["AssetConfigWrapper"]
  CALL R41 1 1
  GETIMPORT R42 K15 [require]
  GETTABLEKS R45 R2 K3 ["Core"]
  GETTABLEKS R44 R45 K57 ["Components"]
  GETTABLEKS R43 R44 K69 ["ToolboxServiceWrapper"]
  CALL R42 1 1
  GETIMPORT R43 K15 [require]
  GETTABLEKS R47 R2 K3 ["Core"]
  GETTABLEKS R46 R47 K65 ["Networking"]
  GETTABLEKS R45 R46 K70 ["Requests"]
  GETTABLEKS R44 R45 K71 ["GetRolesRequest"]
  CALL R43 1 1
  GETIMPORT R44 K15 [require]
  GETTABLEKS R48 R2 K3 ["Core"]
  GETTABLEKS R47 R48 K65 ["Networking"]
  GETTABLEKS R46 R47 K70 ["Requests"]
  GETTABLEKS R45 R46 K72 ["GetRolesDebugRequest"]
  CALL R44 1 1
  GETIMPORT R45 K15 [require]
  GETTABLEKS R48 R2 K3 ["Core"]
  GETTABLEKS R47 R48 K73 ["Flags"]
  GETTABLEKS R46 R47 K74 ["getFFlagToolboxRollingAssetPermissionRequests"]
  CALL R45 1 1
  GETTABLEKS R46 R18 K46 ["ContextServices"]
  GETTABLEKS R48 R18 K4 ["Util"]
  GETTABLEKS R47 R48 K75 ["ThunkWithArgsMiddleware"]
  GETIMPORT R48 K15 [require]
  GETTABLEKS R49 R16 K76 ["Dash"]
  CALL R48 1 1
  GETTABLEKS R49 R48 K77 ["find"]
  GETTABLEKS R51 R2 K78 ["LocalizationSource"]
  GETTABLEKS R50 R51 K79 ["SourceStrings"]
  GETTABLEKS R52 R2 K78 ["LocalizationSource"]
  GETTABLEKS R51 R52 K80 ["LocalizedStrings"]
  GETIMPORT R52 K6 [game]
  LOADK R54 K81 ["HttpService"]
  NAMECALL R52 R52 K22 ["GetService"]
  CALL R52 2 1
  GETIMPORT R53 K6 [game]
  LOADK R55 K82 ["RobloxPluginGuiService"]
  NAMECALL R53 R53 K22 ["GetService"]
  CALL R53 2 1
  GETIMPORT R54 K6 [game]
  LOADK R56 K83 ["StudioAssetService"]
  NAMECALL R54 R54 K22 ["GetService"]
  CALL R54 2 1
  MOVE R55 R36
  CALL R55 0 1
  JUMPIF R55 [+1]
  RETURN R0 0
  GETTABLEKS R56 R46 K41 ["Localization"]
  GETTABLEKS R55 R56 K84 ["new"]
  DUPTABLE R56 K89 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
  SETTABLEKS R50 R56 K85 ["stringResourceTable"]
  SETTABLEKS R51 R56 K86 ["translationResourceTable"]
  LOADK R57 K90 ["Toolbox"]
  SETTABLEKS R57 R56 K87 ["pluginName"]
  NEWTABLE R57 1 0
  GETTABLEKS R59 R18 K91 ["Resources"]
  GETTABLEKS R58 R59 K92 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R59 K93 [{"stringResourceTable", "translationResourceTable"}]
  GETTABLEKS R61 R18 K91 ["Resources"]
  GETTABLEKS R60 R61 K79 ["SourceStrings"]
  SETTABLEKS R60 R59 K85 ["stringResourceTable"]
  GETTABLEKS R61 R18 K91 ["Resources"]
  GETTABLEKS R60 R61 K80 ["LocalizedStrings"]
  SETTABLEKS R60 R59 K86 ["translationResourceTable"]
  SETTABLE R59 R57 R58
  SETTABLEKS R57 R56 K88 ["libraries"]
  CALL R55 1 1
  NEWCLOSURE R56 P0
  CAPTURE VAL R25
  NEWCLOSURE R57 P1
  CAPTURE VAL R27
  NEWCLOSURE R58 P2
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R23
  CAPTURE VAL R26
  CAPTURE VAL R14
  LOADNIL R59
  LOADNIL R60
  NEWCLOSURE R61 P3
  CAPTURE REF R60
  CAPTURE VAL R10
  CAPTURE REF R59
  CAPTURE VAL R49
  CAPTURE VAL R29
  CAPTURE VAL R34
  CAPTURE VAL R28
  CAPTURE VAL R47
  CAPTURE VAL R54
  CAPTURE VAL R20
  CAPTURE VAL R39
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R45
  CAPTURE VAL R11
  CAPTURE VAL R57
  CAPTURE VAL R40
  CAPTURE VAL R13
  CAPTURE VAL R58
  CAPTURE VAL R53
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R31
  CAPTURE VAL R41
  CAPTURE VAL R0
  CAPTURE VAL R42
  CAPTURE VAL R55
  NEWCLOSURE R62 P4
  CAPTURE REF R59
  CAPTURE VAL R20
  CAPTURE VAL R38
  CAPTURE VAL R22
  CAPTURE VAL R30
  CAPTURE VAL R24
  CAPTURE VAL R0
  CAPTURE VAL R56
  CAPTURE VAL R40
  CAPTURE VAL R13
  CAPTURE VAL R58
  CAPTURE VAL R32
  CAPTURE VAL R33
  CAPTURE VAL R15
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R37
  CAPTURE VAL R35
  CAPTURE VAL R1
  CAPTURE VAL R61
  CAPTURE VAL R5
  CAPTURE VAL R44
  CAPTURE VAL R43
  CAPTURE VAL R31
  CAPTURE VAL R42
  CAPTURE VAL R55
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R29
  CAPTURE VAL R10
  CAPTURE VAL R28
  CAPTURE VAL R52
  CAPTURE VAL R21
  MOVE R63 R62
  CALL R63 0 0
  CLOSEUPVALS R59
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_26]
  RETURN R0 1
