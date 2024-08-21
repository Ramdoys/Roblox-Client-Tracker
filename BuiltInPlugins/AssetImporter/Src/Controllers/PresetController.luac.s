PROTO_0:
  DUPTABLE R5 K8 [{"lastImportName", "studioDefaultName", "defaultName", "_assetImportServiceWrapper", "_plugin", "_store", "_localization", "_mock"}]
  LOADK R8 K9 ["Templates"]
  LOADK R9 K10 ["LastImported"]
  NAMECALL R6 R2 K11 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K0 ["lastImportName"]
  LOADK R8 K9 ["Templates"]
  LOADK R9 K12 ["StudioDefault"]
  NAMECALL R6 R2 K11 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K1 ["studioDefaultName"]
  LOADK R6 K13 [""]
  SETTABLEKS R6 R5 K2 ["defaultName"]
  GETGLOBAL R6 K14 ["wrapAssetImportService"]
  MOVE R7 R3
  CALL R6 1 1
  SETTABLEKS R6 R5 K3 ["_assetImportServiceWrapper"]
  SETTABLEKS R0 R5 K4 ["_plugin"]
  SETTABLEKS R1 R5 K5 ["_store"]
  SETTABLEKS R2 R5 K6 ["_localization"]
  SETTABLEKS R3 R5 K7 ["_mock"]
  GETUPVAL R6 0
  FASTCALL2 SETMETATABLE R5 R6 [+3]
  GETIMPORT R4 K16 [setmetatable]
  CALL R4 2 1
  JUMPIF R3 [+14]
  GETTABLEKS R6 R4 K4 ["_plugin"]
  LOADK R8 K17 ["AssetImporter_DefaultPreset"]
  NAMECALL R6 R6 K18 ["GetSetting"]
  CALL R6 2 1
  JUMPIFNOT R6 [+7]
  GETTABLEKS R5 R4 K4 ["_plugin"]
  LOADK R7 K17 ["AssetImporter_DefaultPreset"]
  NAMECALL R5 R5 K18 ["GetSetting"]
  CALL R5 2 1
  JUMP [+2]
  GETTABLEKS R5 R4 K1 ["studioDefaultName"]
  SETTABLEKS R5 R4 K2 ["defaultName"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  NEWTABLE R3 0 0
  SETTABLE R3 R2 R1
  LOADB R2 1
  RETURN R2 1

PROTO_4:
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLE R3 R2 R1
  RETURN R0 0

PROTO_5:
  NEWTABLE R0 0 0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_6:
  JUMPIFNOT R0 [+26]
  NEWTABLE R1 0 0
  DUPTABLE R2 K5 [{"GetPreset", "GetAllPresets", "SavePreset", "RemovePreset", "_clearPresets"}]
  NEWCLOSURE R3 P0
  CAPTURE REF R1
  SETTABLEKS R3 R2 K0 ["GetPreset"]
  NEWCLOSURE R3 P1
  CAPTURE REF R1
  SETTABLEKS R3 R2 K1 ["GetAllPresets"]
  NEWCLOSURE R3 P2
  CAPTURE REF R1
  SETTABLEKS R3 R2 K2 ["SavePreset"]
  NEWCLOSURE R3 P3
  CAPTURE REF R1
  SETTABLEKS R3 R2 K3 ["RemovePreset"]
  NEWCLOSURE R3 P4
  CAPTURE REF R1
  SETTABLEKS R3 R2 K4 ["_clearPresets"]
  CLOSEUPVALS R1
  RETURN R2 1
  CLOSEUPVALS R1
  GETIMPORT R1 K7 [game]
  LOADK R3 K8 ["AssetImportService"]
  NAMECALL R1 R1 K9 ["GetService"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_7:
  RETURN R2 1

PROTO_8:
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K1 [{"getText"}]
  DUPCLOSURE R2 K2 [PROTO_7]
  SETTABLEKS R2 R1 K0 ["getText"]
  DUPTABLE R2 K4 [{"SetSetting"}]
  DUPCLOSURE R3 K5 [PROTO_8]
  SETTABLEKS R3 R2 K3 ["SetSetting"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["new"]
  MOVE R4 R2
  MOVE R5 R0
  MOVE R6 R1
  LOADB R7 1
  CALL R3 4 -1
  RETURN R3 -1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["mock"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K1 ["_assetImportServiceWrapper"]
  NAMECALL R1 R1 K2 ["_clearPresets"]
  CALL R1 1 0
  LOADK R1 K3 [""]
  SETTABLEKS R1 R0 K4 ["defaultName"]
  RETURN R0 0

PROTO_11:
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["Material"]
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LOADNIL R7
  SETTABLEKS R7 R6 K1 ["ImportName"]
  LOADNIL R7
  SETTABLEKS R7 R6 K2 ["ShouldImport"]
  FORGLOOP R2 2 [-7]
  RETURN R0 0

PROTO_12:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["isStudioDefault"]
  CALL R2 2 1
  JUMPIF R2 [+5]
  MOVE R4 R1
  NAMECALL R2 R0 K1 ["isLastImport"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETTABLEKS R4 R0 K2 ["_store"]
  NAMECALL R4 R4 K3 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K4 ["Preview"]
  GETTABLEKS R2 R3 K5 ["assetImportSession"]
  GETTABLEKS R5 R0 K2 ["_store"]
  NAMECALL R5 R5 K3 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K4 ["Preview"]
  GETTABLEKS R3 R4 K6 ["selectedImportItem"]
  MOVE R6 R3
  NAMECALL R4 R2 K7 ["CreatePresetFromData"]
  CALL R4 2 1
  MOVE R7 R4
  NAMECALL R5 R0 K8 ["_filter"]
  CALL R5 2 0
  GETTABLEKS R5 R0 K9 ["_assetImportServiceWrapper"]
  MOVE R7 R1
  NAMECALL R5 R5 K10 ["GetPreset"]
  CALL R5 2 1
  GETUPVAL R6 0
  MOVE R7 R5
  MOVE R8 R4
  CALL R6 2 1
  GETTABLEKS R7 R0 K2 ["_store"]
  GETUPVAL R9 1
  LOADB R10 0
  CALL R9 1 -1
  NAMECALL R7 R7 K11 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+35]
  GETTABLEKS R9 R0 K2 ["_store"]
  NAMECALL R9 R9 K3 ["getState"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K4 ["Preview"]
  GETTABLEKS R7 R8 K12 ["activeQueueItem"]
  JUMPIFNOT R7 [+33]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K13 ["update"]
  MOVE R9 R7
  DUPTABLE R10 K15 [{"currentPreset"}]
  SETTABLEKS R1 R10 K14 ["currentPreset"]
  CALL R8 2 1
  GETTABLEKS R9 R0 K2 ["_store"]
  GETUPVAL R11 4
  MOVE R12 R8
  CALL R11 1 -1
  NAMECALL R9 R9 K11 ["dispatch"]
  CALL R9 -1 0
  GETTABLEKS R9 R0 K2 ["_store"]
  GETUPVAL R11 5
  MOVE R12 R8
  CALL R11 1 -1
  NAMECALL R9 R9 K11 ["dispatch"]
  CALL R9 -1 0
  JUMP [+8]
  GETTABLEKS R7 R0 K2 ["_store"]
  GETUPVAL R9 6
  MOVE R10 R1
  CALL R9 1 -1
  NAMECALL R7 R7 K11 ["dispatch"]
  CALL R7 -1 0
  GETTABLEKS R7 R0 K9 ["_assetImportServiceWrapper"]
  MOVE R9 R1
  MOVE R10 R6
  NAMECALL R7 R7 K16 ["SavePreset"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_13:
  GETTABLEKS R4 R0 K0 ["_store"]
  NAMECALL R4 R4 K1 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["Preview"]
  GETTABLEKS R2 R3 K3 ["assetImportSession"]
  MOVE R5 R1
  NAMECALL R3 R2 K4 ["CreatePresetFromData"]
  CALL R3 2 1
  MOVE R6 R3
  NAMECALL R4 R0 K5 ["_filter"]
  CALL R4 2 0
  GETTABLEKS R4 R0 K6 ["_assetImportServiceWrapper"]
  LOADK R6 K7 ["Last Imported"]
  MOVE R7 R3
  NAMECALL R4 R4 K8 ["SavePreset"]
  CALL R4 3 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R3 R0 K0 ["_store"]
  NAMECALL R3 R3 K1 ["getState"]
  CALL R3 1 1
  NEWTABLE R4 0 0
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+34]
  GETTABLEKS R6 R3 K2 ["Sessions"]
  GETTABLEKS R5 R6 K3 ["sessionQueue"]
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R10 K4 ["currentPreset"]
  JUMPIFNOTEQ R11 R2 [+11]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["update"]
  MOVE R12 R10
  DUPTABLE R13 K6 [{"currentPreset"}]
  SETTABLEKS R1 R13 K4 ["currentPreset"]
  CALL R11 2 1
  SETTABLE R11 R4 R9
  JUMP [+1]
  SETTABLE R10 R4 R9
  FORGLOOP R6 2 [-16]
  GETTABLEKS R6 R0 K0 ["_store"]
  GETUPVAL R8 2
  MOVE R9 R4
  CALL R8 1 -1
  NAMECALL R6 R6 K7 ["dispatch"]
  CALL R6 -1 0
  JUMP [+15]
  GETTABLEKS R6 R3 K8 ["Preview"]
  GETTABLEKS R5 R6 K9 ["activeQueueItem"]
  GETTABLEKS R6 R5 K10 ["filepath"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["update"]
  MOVE R8 R5
  DUPTABLE R9 K6 [{"currentPreset"}]
  SETTABLEKS R1 R9 K4 ["currentPreset"]
  CALL R7 2 1
  SETTABLE R7 R4 R6
  GETTABLEKS R6 R3 K11 ["Dialogs"]
  GETTABLEKS R5 R6 K12 ["showPreview"]
  JUMPIFNOT R5 [+14]
  GETTABLEKS R6 R3 K8 ["Preview"]
  GETTABLEKS R5 R6 K9 ["activeQueueItem"]
  GETTABLEKS R6 R0 K0 ["_store"]
  GETUPVAL R8 3
  GETTABLEKS R10 R5 K10 ["filepath"]
  GETTABLE R9 R4 R10
  CALL R8 1 -1
  NAMECALL R6 R6 K7 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R3 R0 K0 ["_assetImportServiceWrapper"]
  MOVE R6 R2
  NAMECALL R4 R3 K1 ["GetPreset"]
  CALL R4 2 1
  MOVE R7 R2
  NAMECALL R5 R3 K2 ["RemovePreset"]
  CALL R5 2 0
  MOVE R7 R1
  MOVE R8 R4
  NAMECALL R5 R3 K3 ["SavePreset"]
  CALL R5 3 0
  GETTABLEKS R5 R0 K4 ["defaultName"]
  JUMPIFNOTEQ R5 R2 [+10]
  GETTABLEKS R5 R0 K5 ["_plugin"]
  LOADK R7 K6 ["AssetImporter_DefaultPreset"]
  MOVE R8 R1
  NAMECALL R5 R5 K7 ["SetSetting"]
  CALL R5 3 0
  SETTABLEKS R1 R0 K4 ["defaultName"]
  MOVE R7 R1
  MOVE R8 R2
  NAMECALL R5 R0 K8 ["_updateQueueItems"]
  CALL R5 3 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R4 R0 K0 ["_store"]
  NAMECALL R4 R4 K1 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["Preview"]
  GETTABLEKS R2 R3 K3 ["currentPreset"]
  GETTABLEKS R3 R0 K4 ["_assetImportServiceWrapper"]
  MOVE R6 R2
  NAMECALL R4 R3 K5 ["GetPreset"]
  CALL R4 2 1
  MOVE R7 R2
  NAMECALL R5 R3 K6 ["RemovePreset"]
  CALL R5 2 0
  MOVE R7 R1
  MOVE R8 R4
  NAMECALL R5 R3 K7 ["SavePreset"]
  CALL R5 3 0
  GETTABLEKS R5 R0 K8 ["defaultName"]
  JUMPIFNOTEQ R5 R2 [+10]
  GETTABLEKS R5 R0 K9 ["_plugin"]
  LOADK R7 K10 ["AssetImporter_DefaultPreset"]
  MOVE R8 R1
  NAMECALL R5 R5 K11 ["SetSetting"]
  CALL R5 3 0
  SETTABLEKS R1 R0 K8 ["defaultName"]
  GETTABLEKS R5 R0 K0 ["_store"]
  GETUPVAL R7 0
  MOVE R8 R1
  CALL R7 1 -1
  NAMECALL R5 R5 K12 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R2 R0 K0 ["_assetImportServiceWrapper"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["RemovePreset"]
  CALL R2 2 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+15]
  GETTABLEKS R2 R0 K2 ["defaultName"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETTABLEKS R2 R0 K3 ["studioDefaultName"]
  SETTABLEKS R2 R0 K2 ["defaultName"]
  GETTABLEKS R4 R0 K2 ["defaultName"]
  MOVE R5 R1
  NAMECALL R2 R0 K4 ["_updateQueueItems"]
  CALL R2 3 0
  JUMP [+9]
  GETTABLEKS R2 R0 K5 ["_store"]
  GETUPVAL R4 1
  GETTABLEKS R5 R0 K3 ["studioDefaultName"]
  CALL R4 1 -1
  NAMECALL R2 R2 K6 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K5 ["_store"]
  GETUPVAL R4 2
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K6 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R2 R0 K0 ["_plugin"]
  LOADK R4 K1 ["AssetImporter_DefaultPreset"]
  MOVE R5 R1
  NAMECALL R2 R2 K2 ["SetSetting"]
  CALL R2 3 0
  SETTABLEKS R1 R0 K3 ["defaultName"]
  RETURN R0 0

PROTO_19:
  LOADB R1 0
  GETTABLEKS R2 R0 K0 ["defaultName"]
  JUMPIFEQKS R2 K1 [""] [+9]
  GETTABLEKS R2 R0 K0 ["defaultName"]
  GETTABLEKS R3 R0 K2 ["studioDefaultName"]
  JUMPIFNOTEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_20:
  GETTABLEKS R4 R0 K0 ["_store"]
  NAMECALL R4 R4 K1 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["Sessions"]
  GETTABLEKS R2 R3 K3 ["sessionQueue"]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R10 R1
  MOVE R11 R7
  NAMECALL R8 R0 K4 ["resolvePreset"]
  CALL R8 3 0
  FORGLOOP R3 2 [-6]
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+11]
  GETTABLEKS R4 R0 K0 ["_store"]
  NAMECALL R4 R4 K1 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["Dialogs"]
  GETTABLEKS R2 R3 K3 ["showPreview"]
  JUMPIF R2 [+1]
  RETURN R0 0
  NAMECALL R2 R1 K4 ["CreatePresetFromData"]
  CALL R2 1 1
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADNIL R8
  SETTABLEKS R8 R7 K5 ["ImportName"]
  FORGLOOP R3 2 [-4]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+24]
  GETTABLEKS R5 R0 K0 ["_store"]
  NAMECALL R5 R5 K1 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K6 ["Preview"]
  GETTABLEKS R3 R4 K7 ["activeQueueItem"]
  GETTABLEKS R4 R3 K8 ["session"]
  MOVE R6 R2
  NAMECALL R4 R4 K9 ["ApplyPreset"]
  CALL R4 2 0
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 2
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R4 K10 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0
  GETTABLEKS R5 R0 K0 ["_store"]
  NAMECALL R5 R5 K1 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K6 ["Preview"]
  GETTABLEKS R3 R4 K11 ["assetImportSession"]
  MOVE R6 R2
  NAMECALL R4 R3 K9 ["ApplyPreset"]
  CALL R4 2 0
  RETURN R0 0

PROTO_22:
  GETTABLEKS R3 R0 K0 ["defaultName"]
  JUMPIFEQ R3 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_23:
  LOADB R2 1
  GETTABLEKS R3 R0 K0 ["lastImportName"]
  JUMPIFEQ R3 R1 [+5]
  JUMPIFEQKS R1 K1 ["Last Imported"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_24:
  LOADB R2 1
  GETTABLEKS R3 R0 K0 ["studioDefaultName"]
  JUMPIFEQ R3 R1 [+5]
  JUMPIFEQKS R1 K1 ["Studio Default"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_25:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["update"]
  MOVE R4 R2
  DUPTABLE R5 K2 [{"currentPreset"}]
  SETTABLEKS R1 R5 K1 ["currentPreset"]
  CALL R3 2 1
  GETTABLEKS R4 R2 K3 ["session"]
  JUMPIFNOT R4 [+105]
  NAMECALL R5 R4 K4 ["GetImportTree"]
  CALL R5 1 1
  JUMPIFNOT R5 [+101]
  NAMECALL R5 R4 K5 ["Reset"]
  CALL R5 1 0
  MOVE R8 R1
  NAMECALL R6 R0 K6 ["isLastImport"]
  CALL R6 2 1
  JUMPIFNOT R6 [+8]
  GETTABLEKS R5 R0 K7 ["_assetImportServiceWrapper"]
  GETTABLEKS R7 R0 K8 ["lastImportName"]
  NAMECALL R5 R5 K9 ["GetPreset"]
  CALL R5 2 1
  JUMP [+6]
  GETTABLEKS R5 R0 K7 ["_assetImportServiceWrapper"]
  MOVE R7 R1
  NAMECALL R5 R5 K9 ["GetPreset"]
  CALL R5 2 1
  MOVE R8 R5
  NAMECALL R6 R4 K10 ["ApplyPreset"]
  CALL R6 2 0
  GETTABLEKS R8 R0 K11 ["_store"]
  NAMECALL R8 R8 K12 ["getState"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K13 ["Dialogs"]
  GETTABLEKS R6 R7 K14 ["showPreview"]
  JUMPIFNOT R6 [+65]
  NEWTABLE R6 0 0
  GETTABLEKS R9 R0 K11 ["_store"]
  NAMECALL R9 R9 K12 ["getState"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K15 ["Preview"]
  GETTABLEKS R7 R8 K16 ["importDataChecked"]
  MOVE R8 R7
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R11 K17 ["ShouldImport"]
  SETTABLE R13 R6 R11
  FORGLOOP R8 2 [-4]
  GETTABLEKS R8 R0 K11 ["_store"]
  GETUPVAL R10 1
  MOVE R11 R6
  CALL R10 1 -1
  NAMECALL R8 R8 K18 ["dispatch"]
  CALL R8 -1 0
  GETTABLEKS R10 R0 K11 ["_store"]
  NAMECALL R10 R10 K12 ["getState"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K15 ["Preview"]
  GETTABLEKS R8 R9 K19 ["selectedImportItem"]
  JUMPIFNOT R8 [+11]
  NAMECALL R9 R8 K20 ["GetPreview"]
  CALL R9 1 1
  GETTABLEKS R10 R0 K11 ["_store"]
  GETUPVAL R12 2
  MOVE R13 R9
  CALL R12 1 -1
  NAMECALL R10 R10 K18 ["dispatch"]
  CALL R10 -1 0
  GETTABLEKS R9 R0 K11 ["_store"]
  GETUPVAL R11 3
  LOADB R12 0
  CALL R11 1 -1
  NAMECALL R9 R9 K18 ["dispatch"]
  CALL R9 -1 0
  GETTABLEKS R9 R0 K11 ["_store"]
  GETUPVAL R11 4
  MOVE R12 R3
  CALL R11 1 -1
  NAMECALL R9 R9 K18 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R5 5
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETTABLEKS R5 R0 K11 ["_store"]
  GETUPVAL R7 6
  MOVE R8 R3
  CALL R7 1 -1
  NAMECALL R5 R5 K18 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["Do not call this function with FFlagAssetImportUseQueueItem=true"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R4 R0 K3 ["_store"]
  NAMECALL R4 R4 K4 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K5 ["Preview"]
  GETTABLEKS R2 R3 K6 ["assetImportSession"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  NAMECALL R3 R2 K7 ["GetImportTree"]
  CALL R3 1 1
  JUMPIF R3 [+1]
  RETURN R0 0
  FASTCALL2K ASSERT R2 K8 [+5]
  MOVE R4 R2
  LOADK R5 K8 ["Session does not exist!"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  NAMECALL R3 R2 K9 ["Reset"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K3 ["_store"]
  GETUPVAL R5 2
  MOVE R6 R1
  CALL R5 1 -1
  NAMECALL R3 R3 K10 ["dispatch"]
  CALL R3 -1 0
  LOADNIL R3
  MOVE R6 R1
  NAMECALL R4 R0 K11 ["isLastImport"]
  CALL R4 2 1
  JUMPIFNOT R4 [+9]
  GETTABLEKS R4 R0 K12 ["_assetImportServiceWrapper"]
  GETTABLEKS R6 R0 K13 ["lastImportName"]
  NAMECALL R4 R4 K14 ["GetPreset"]
  CALL R4 2 1
  MOVE R3 R4
  JUMP [+7]
  GETTABLEKS R4 R0 K12 ["_assetImportServiceWrapper"]
  MOVE R6 R1
  NAMECALL R4 R4 K14 ["GetPreset"]
  CALL R4 2 1
  MOVE R3 R4
  MOVE R6 R3
  NAMECALL R4 R2 K15 ["ApplyPreset"]
  CALL R4 2 0
  NEWTABLE R4 0 0
  GETTABLEKS R7 R0 K3 ["_store"]
  NAMECALL R7 R7 K4 ["getState"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K5 ["Preview"]
  GETTABLEKS R5 R6 K16 ["importDataChecked"]
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R9 K17 ["ShouldImport"]
  SETTABLE R11 R4 R9
  FORGLOOP R6 2 [-4]
  GETTABLEKS R6 R0 K3 ["_store"]
  GETUPVAL R8 3
  MOVE R9 R4
  CALL R8 1 -1
  NAMECALL R6 R6 K10 ["dispatch"]
  CALL R6 -1 0
  GETTABLEKS R8 R0 K3 ["_store"]
  NAMECALL R8 R8 K4 ["getState"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K5 ["Preview"]
  GETTABLEKS R6 R7 K18 ["selectedImportItem"]
  JUMPIFNOT R6 [+11]
  NAMECALL R7 R6 K19 ["GetPreview"]
  CALL R7 1 1
  GETTABLEKS R8 R0 K3 ["_store"]
  GETUPVAL R10 4
  MOVE R11 R7
  CALL R10 1 -1
  NAMECALL R8 R8 K10 ["dispatch"]
  CALL R8 -1 0
  GETTABLEKS R7 R0 K3 ["_store"]
  GETUPVAL R9 5
  LOADB R10 0
  CALL R9 1 -1
  NAMECALL R7 R7 K10 ["dispatch"]
  CALL R7 -1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R2 0
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_28:
  GETUPVAL R2 0
  NAMECALL R3 R0 K0 ["getAllPresets"]
  CALL R3 1 -1
  CALL R2 -1 1
  GETTABLEKS R5 R0 K1 ["_store"]
  NAMECALL R5 R5 K2 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K3 ["Preview"]
  GETTABLEKS R3 R4 K4 ["settingsChanged"]
  GETUPVAL R4 1
  MOVE R5 R2
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CALL R4 2 1
  JUMPIFNOT R4 [+5]
  JUMPIFNOT R3 [+4]
  MOVE R6 R1
  LOADK R7 K5 ["*"]
  CONCAT R5 R6 R7
  SETTABLE R5 R2 R4
  RETURN R2 1

PROTO_29:
  GETTABLEKS R1 R0 K0 ["_assetImportServiceWrapper"]
  NAMECALL R1 R1 K1 ["GetAllPresets"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K2 ["Last Imported"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R1 K2 ["Last Imported"]
  LOADNIL R3
  SETTABLEKS R3 R1 K2 ["Last Imported"]
  GETTABLEKS R3 R0 K3 ["lastImportName"]
  SETTABLE R2 R1 R3
  GETTABLEKS R2 R0 K4 ["studioDefaultName"]
  NEWTABLE R3 0 0
  SETTABLE R3 R1 R2
  RETURN R1 1

PROTO_30:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+96]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+52]
  GETTABLEKS R4 R0 K0 ["_store"]
  NAMECALL R4 R4 K1 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["Sessions"]
  GETTABLEKS R2 R3 K3 ["sessionQueue"]
  GETIMPORT R3 K6 [table.clone]
  MOVE R4 R2
  CALL R3 1 1
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["update"]
  GETTABLE R10 R2 R8
  DUPTABLE R11 K9 [{"currentPreset"}]
  GETTABLEKS R12 R0 K10 ["defaultName"]
  SETTABLEKS R12 R11 K8 ["currentPreset"]
  CALL R9 2 1
  NAMECALL R10 R0 K11 ["hasCustomDefault"]
  CALL R10 1 1
  JUMPIFNOT R10 [+9]
  GETTABLEKS R10 R9 K12 ["validSession"]
  JUMPIFNOT R10 [+6]
  GETTABLEKS R12 R0 K10 ["defaultName"]
  MOVE R13 R9
  NAMECALL R10 R0 K13 ["resolvePreset"]
  CALL R10 3 0
  SETTABLE R9 R3 R8
  FORGLOOP R4 2 [-25]
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 3
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R4 K14 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0
  GETTABLEKS R4 R0 K0 ["_store"]
  NAMECALL R4 R4 K1 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K15 ["Preview"]
  GETTABLEKS R2 R3 K16 ["activeQueueItem"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K7 ["update"]
  MOVE R4 R2
  DUPTABLE R5 K9 [{"currentPreset"}]
  GETTABLEKS R6 R0 K10 ["defaultName"]
  SETTABLEKS R6 R5 K8 ["currentPreset"]
  CALL R3 2 1
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 4
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R4 K14 ["dispatch"]
  CALL R4 -1 0
  NAMECALL R4 R0 K11 ["hasCustomDefault"]
  CALL R4 1 1
  JUMPIFNOT R4 [+52]
  GETTABLEKS R4 R2 K12 ["validSession"]
  JUMPIFNOT R4 [+49]
  GETTABLEKS R6 R0 K10 ["defaultName"]
  MOVE R7 R2
  NAMECALL R4 R0 K13 ["resolvePreset"]
  CALL R4 3 0
  RETURN R0 0
  NAMECALL R2 R0 K17 ["getNameList"]
  CALL R2 1 1
  LOADNIL R3
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R0 K10 ["defaultName"]
  JUMPIFNOTEQ R8 R9 [+3]
  MOVE R3 R7
  JUMP [+2]
  FORGLOOP R4 2 [-7]
  JUMPIFNOT R3 [+15]
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 5
  GETTABLEKS R7 R0 K10 ["defaultName"]
  CALL R6 1 -1
  NAMECALL R4 R4 K14 ["dispatch"]
  CALL R4 -1 0
  GETTABLEKS R6 R0 K10 ["defaultName"]
  NAMECALL R4 R0 K18 ["DEPRECATED_resolvePreset"]
  CALL R4 2 0
  RETURN R0 0
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 5
  GETTABLEKS R7 R0 K19 ["studioDefaultName"]
  CALL R6 1 -1
  NAMECALL R4 R4 K14 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0
  RETURN R0 0

PROTO_31:
  NAMECALL R1 R0 K0 ["getAllPresets"]
  CALL R1 1 1
  GETTABLEKS R4 R0 K1 ["lastImportName"]
  GETTABLE R3 R1 R4
  JUMPIFNOT R3 [+2]
  LOADN R2 1
  JUMP [+1]
  LOADN R2 0
  GETUPVAL R5 0
  CALL R5 0 1
  GETUPVAL R7 1
  MOVE R8 R1
  CALL R7 1 1
  LENGTH R6 R7
  SUB R4 R5 R6
  ADD R3 R4 R2
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["Flags"]
  GETTABLEKS R4 R5 K11 ["getFFlagAssetImporterPackageMigration"]
  CALL R3 1 1
  MOVE R5 R3
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Dash"]
  CALL R4 1 1
  JUMP [+2]
  GETTABLEKS R4 R2 K12 ["Dash"]
  GETTABLEKS R6 R2 K13 ["ContextServices"]
  GETTABLEKS R5 R6 K14 ["ContextItem"]
  GETTABLEKS R6 R4 K15 ["join"]
  GETTABLEKS R7 R4 K16 ["keys"]
  GETTABLEKS R8 R4 K17 ["findIndex"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K18 ["Actions"]
  GETTABLEKS R10 R11 K19 ["SetActiveQueueItem"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K18 ["Actions"]
  GETTABLEKS R11 R12 K20 ["SetCurrentPreset"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K18 ["Actions"]
  GETTABLEKS R12 R13 K21 ["SetSettingsChanged"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K6 ["Src"]
  GETTABLEKS R14 R15 K18 ["Actions"]
  GETTABLEKS R13 R14 K22 ["SetSessionQueue"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K6 ["Src"]
  GETTABLEKS R15 R16 K23 ["Thunks"]
  GETTABLEKS R14 R15 K24 ["UpdateSessionInfo"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K23 ["Thunks"]
  GETTABLEKS R15 R16 K25 ["UpdateChecked"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K6 ["Src"]
  GETTABLEKS R17 R18 K23 ["Thunks"]
  GETTABLEKS R16 R17 K26 ["UpdatePreviewInstance"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K6 ["Src"]
  GETTABLEKS R18 R19 K27 ["DataTypes"]
  GETTABLEKS R17 R18 K28 ["QueuedSession"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K10 ["Flags"]
  GETTABLEKS R18 R19 K29 ["getFIntAssetImportMaxPresetCount"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K6 ["Src"]
  GETTABLEKS R20 R21 K10 ["Flags"]
  GETTABLEKS R19 R20 K30 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K10 ["Flags"]
  GETTABLEKS R20 R21 K31 ["getFFlagAssetImportUseQueueItem"]
  CALL R19 1 1
  LOADK R22 K32 ["PresetController"]
  NAMECALL R20 R5 K33 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K34 [PROTO_0]
  CAPTURE VAL R20
  SETTABLEKS R21 R20 K35 ["new"]
  DUPCLOSURE R21 K36 [PROTO_6]
  SETGLOBAL R21 K37 ["wrapAssetImportService"]
  DUPCLOSURE R21 K38 [PROTO_9]
  CAPTURE VAL R20
  SETTABLEKS R21 R20 K39 ["mock"]
  DUPCLOSURE R21 K40 [PROTO_10]
  SETTABLEKS R21 R20 K41 ["destroy"]
  DUPCLOSURE R21 K42 [PROTO_11]
  SETTABLEKS R21 R20 K43 ["_filter"]
  DUPCLOSURE R21 K44 [PROTO_12]
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R19
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R21 R20 K45 ["save"]
  DUPCLOSURE R21 K46 [PROTO_13]
  SETTABLEKS R21 R20 K47 ["createPresetFromLastImport"]
  DUPCLOSURE R21 K48 [PROTO_14]
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R21 R20 K49 ["_updateQueueItems"]
  DUPCLOSURE R21 K50 [PROTO_15]
  SETTABLEKS R21 R20 K51 ["rename"]
  DUPCLOSURE R21 K52 [PROTO_16]
  CAPTURE VAL R10
  SETTABLEKS R21 R20 K53 ["DEPRECATED_rename"]
  DUPCLOSURE R21 K54 [PROTO_17]
  CAPTURE VAL R19
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R21 R20 K55 ["delete"]
  DUPCLOSURE R21 K56 [PROTO_18]
  SETTABLEKS R21 R20 K57 ["setDefault"]
  DUPCLOSURE R21 K58 [PROTO_19]
  SETTABLEKS R21 R20 K59 ["hasCustomDefault"]
  DUPCLOSURE R21 K60 [PROTO_20]
  SETTABLEKS R21 R20 K61 ["applyPresetToAllSessions"]
  DUPCLOSURE R21 K62 [PROTO_21]
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R13
  SETTABLEKS R21 R20 K63 ["applyImportDataToSession"]
  DUPCLOSURE R21 K64 [PROTO_22]
  SETTABLEKS R21 R20 K65 ["isDefault"]
  DUPCLOSURE R21 K66 [PROTO_23]
  SETTABLEKS R21 R20 K67 ["isLastImport"]
  DUPCLOSURE R21 K68 [PROTO_24]
  SETTABLEKS R21 R20 K69 ["isStudioDefault"]
  DUPCLOSURE R21 K70 [PROTO_25]
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R13
  SETTABLEKS R21 R20 K71 ["resolvePreset"]
  DUPCLOSURE R21 K72 [PROTO_26]
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R11
  SETTABLEKS R21 R20 K73 ["DEPRECATED_resolvePreset"]
  DUPCLOSURE R21 K74 [PROTO_28]
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R21 R20 K75 ["getNameList"]
  DUPCLOSURE R21 K76 [PROTO_29]
  SETTABLEKS R21 R20 K77 ["getAllPresets"]
  DUPCLOSURE R21 K78 [PROTO_30]
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R21 R20 K79 ["initializePresets"]
  DUPCLOSURE R21 K80 [PROTO_31]
  CAPTURE VAL R17
  CAPTURE VAL R7
  SETTABLEKS R21 R20 K81 ["getNumPresetsRemaining"]
  RETURN R20 1
