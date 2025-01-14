PROTO_0:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["Please call FileController.overrideShowImportPrompt to provide testing function"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["TODO: Implement FileController.showReplaceImportPrompt for mock"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["showImportPrompt"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["promptRequested"]
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K1 [require]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["ShowImportPrompt"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["_store"]
  MOVE R4 R1
  MOVE R5 R0
  CALL R4 1 -1
  NAMECALL R2 R2 K4 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R2 K1 [require]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["ShowReplaceImportPrompt"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["_store"]
  MOVE R5 R2
  MOVE R6 R0
  MOVE R7 R1
  CALL R5 2 -1
  NAMECALL R3 R3 K4 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R3 K4 [{"_store", "_presetController", "_mock", "promptRequested"}]
  SETTABLEKS R0 R3 K0 ["_store"]
  SETTABLEKS R1 R3 K1 ["_presetController"]
  SETTABLEKS R2 R3 K2 ["_mock"]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["promptRequested"]
  JUMPIFNOT R2 [+15]
  DUPCLOSURE R4 K5 [PROTO_0]
  SETTABLEKS R4 R3 K6 ["showImportPrompt"]
  DUPCLOSURE R4 K7 [PROTO_1]
  SETTABLEKS R4 R3 K8 ["showReplaceImportPrompt"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K9 ["overrideShowImportPrompt"]
  NEWCLOSURE R4 P3
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K10 ["setPromptRequested"]
  JUMP [+10]
  NEWCLOSURE R4 P4
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K6 ["showImportPrompt"]
  NEWCLOSURE R4 P5
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K8 ["showReplaceImportPrompt"]
  GETUPVAL R6 1
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K12 [setmetatable]
  CALL R4 2 1
  RETURN R4 1

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  MOVE R3 R0
  MOVE R4 R1
  LOADB R5 1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["_store"]
  NAMECALL R3 R3 K1 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K2 ["Preview"]
  GETTABLEKS R1 R2 K3 ["assetImportSession"]
  JUMPIFNOT R1 [+4]
  MOVE R4 R1
  NAMECALL R2 R0 K4 ["DEPRECATED_onSessionCanceled"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K0 ["_store"]
  GETUPVAL R4 0
  CALL R4 0 -1
  NAMECALL R2 R2 K5 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K0 ["Cancel"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K1 ["_store"]
  GETUPVAL R4 0
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K1 ["_store"]
  GETUPVAL R4 1
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_10:
  NAMECALL R1 R0 K0 ["DEPRECATED_cleanupPreview"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_store"]
  NAMECALL R1 R1 K1 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["Dialogs"]
  GETTABLEKS R2 R3 K3 ["uploading"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  JUMPIFNOT R2 [+5]
  GETIMPORT R3 K5 [warn]
  LOADK R4 K6 ["The importer is currently uploading. To close, please press the `X` button on the plugin."]
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R4 R1 K2 ["Dialogs"]
  GETTABLEKS R3 R4 K7 ["showPreview"]
  JUMPIF R3 [+7]
  GETTABLEKS R4 R1 K2 ["Dialogs"]
  GETTABLEKS R3 R4 K8 ["showError"]
  JUMPIF R3 [+2]
  GETTABLEKS R3 R0 K9 ["promptRequested"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  MOVE R4 R3
  JUMPIF R4 [+4]
  GETTABLEKS R5 R1 K2 ["Dialogs"]
  GETTABLEKS R4 R5 K10 ["showQueue"]
  MOVE R3 R4
  JUMP [+7]
  MOVE R4 R3
  JUMPIF R4 [+4]
  GETTABLEKS R5 R1 K2 ["Dialogs"]
  GETTABLEKS R4 R5 K11 ["showProgress"]
  MOVE R3 R4
  JUMPIF R3 [+48]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIF R4 [+20]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 2
  CALL R6 0 -1
  NAMECALL R4 R4 K12 ["dispatch"]
  CALL R4 -1 0
  JUMP [+9]
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 3
  NEWTABLE R7 0 0
  CALL R6 1 -1
  NAMECALL R4 R4 K12 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 4
  LOADB R7 1
  CALL R6 1 -1
  NAMECALL R4 R4 K12 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 5
  CALL R4 0 1
  JUMPIF R4 [+7]
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 6
  CALL R6 0 -1
  NAMECALL R4 R4 K12 ["dispatch"]
  CALL R4 -1 0
  NAMECALL R4 R0 K13 ["requestFilePicker"]
  CALL R4 1 0
  RETURN R0 0
  GETTABLEKS R4 R0 K9 ["promptRequested"]
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 7
  LOADB R7 0
  CALL R6 1 -1
  NAMECALL R4 R4 K12 ["dispatch"]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 8
  LOADB R7 0
  CALL R6 1 -1
  NAMECALL R4 R4 K12 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETTABLEKS R4 R0 K0 ["_store"]
  GETUPVAL R6 4
  LOADB R7 0
  CALL R6 1 -1
  NAMECALL R4 R4 K12 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["_onFilePicked"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["promptRequested"]
  RETURN R0 0

PROTO_13:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["promptRequested"]
  GETTABLEKS R1 R0 K1 ["showImportPrompt"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K0 [0] [+2]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["_presetController"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["initializePresets"]
  CALL R2 2 0
  GETTABLEKS R4 R0 K3 ["_store"]
  NAMECALL R4 R4 K4 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K5 ["Sessions"]
  GETTABLEKS R2 R3 K6 ["sessionQueue"]
  GETIMPORT R3 K8 [next]
  MOVE R4 R2
  CALL R3 1 2
  LOADB R5 0
  JUMPIFEQKNIL R4 [+10]
  GETIMPORT R6 K8 [next]
  MOVE R7 R2
  MOVE R8 R3
  CALL R6 2 1
  JUMPIFEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  LOADB R6 0
  JUMPIFEQKNIL R4 [+3]
  GETTABLEKS R6 R4 K9 ["validSession"]
  JUMPIFNOT R5 [+5]
  JUMPIFNOT R6 [+4]
  MOVE R9 R4
  NAMECALL R7 R0 K10 ["requestPreview"]
  CALL R7 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["_onFileSwapped"]
  CALL R2 3 0
  GETUPVAL R2 0
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["promptRequested"]
  RETURN R0 0

PROTO_16:
  LOADB R2 1
  SETTABLEKS R2 R0 K0 ["promptRequested"]
  GETTABLEKS R2 R0 K1 ["showReplaceImportPrompt"]
  MOVE R3 R1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CALL R2 2 0
  RETURN R0 0

PROTO_17:
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R5 R0 K0 ["_store"]
  NAMECALL R5 R5 K1 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K2 ["Sessions"]
  GETTABLEKS R3 R4 K3 ["sessionQueue"]
  GETTABLE R4 R3 R1
  GETTABLEKS R7 R0 K0 ["_store"]
  NAMECALL R7 R7 K1 ["getState"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K4 ["Dialogs"]
  GETTABLEKS R5 R6 K5 ["showPreview"]
  JUMPIFNOT R5 [+8]
  GETTABLEKS R5 R0 K0 ["_store"]
  GETUPVAL R7 0
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R5 K6 ["dispatch"]
  CALL R5 -1 0
  GETTABLEKS R6 R2 K7 ["currentPreset"]
  JUMPIFEQKS R6 K8 [""] [+4]
  GETTABLEKS R5 R2 K7 ["currentPreset"]
  JUMP [+4]
  GETTABLEKS R6 R0 K9 ["_presetController"]
  GETTABLEKS R5 R6 K10 ["defaultName"]
  GETTABLEKS R6 R4 K7 ["currentPreset"]
  JUMPIFEQ R5 R6 [+8]
  GETTABLEKS R6 R0 K9 ["_presetController"]
  MOVE R8 R5
  MOVE R9 R4
  NAMECALL R6 R6 K11 ["resolvePreset"]
  CALL R6 3 0
  RETURN R0 0

PROTO_18:
  RETURN R0 0

PROTO_19:
  GETTABLEKS R2 R0 K0 ["_store"]
  GETUPVAL R4 0
  MOVE R5 R1
  DUPCLOSURE R6 K1 [PROTO_18]
  CALL R4 2 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_20:
  JUMPIF R1 [+17]
  GETTABLEKS R2 R0 K0 ["_store"]
  GETUPVAL R4 0
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K1 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K0 ["_store"]
  GETUPVAL R4 1
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K1 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETTABLEKS R4 R0 K0 ["_store"]
  NAMECALL R4 R4 K2 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["Dialogs"]
  GETTABLEKS R2 R3 K4 ["uploading"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K5 ["_presetController"]
  NAMECALL R4 R1 K6 ["GetImportTree"]
  CALL R4 1 -1
  NAMECALL R2 R2 K7 ["createPresetFromLastImport"]
  CALL R2 -1 0
  NAMECALL R2 R1 K8 ["Upload"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K0 ["_store"]
  GETUPVAL R4 0
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K1 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K0 ["_store"]
  GETUPVAL R4 2
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K1 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K0 ["_store"]
  GETUPVAL R4 3
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K1 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R1 R0 K0 ["_store"]
  GETUPVAL R3 0
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  NAMECALL R1 R0 K2 ["DEPRECATED_cleanupPreview"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R3 R2 K9 ["ContextItem"]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Actions"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["ResetState"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K13 ["SetShowError"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K14 ["SetShowPreview"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R4 K15 ["SetShowProgress"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R4 K16 ["SetShowQueue"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R4 K17 ["SetUploading"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R4 K18 ["DEPRECATED_SetSessionQueue"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R4 K19 ["ClearQueue"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K20 ["DataTypes"]
  GETTABLEKS R14 R15 K21 ["QueuedSession"]
  CALL R13 1 1
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K22 ["Thunks"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R14 K23 ["ShowImportPreview"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R14 K24 ["LoadManagedGroups"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K10 ["Src"]
  GETTABLEKS R19 R20 K25 ["Flags"]
  GETTABLEKS R18 R19 K26 ["getFFlagImportQueueFixFileMiscount"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K10 ["Src"]
  GETTABLEKS R20 R21 K25 ["Flags"]
  GETTABLEKS R19 R20 K27 ["getFFlagAssetImportEnableImportQueueModal"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K10 ["Src"]
  GETTABLEKS R21 R22 K25 ["Flags"]
  GETTABLEKS R20 R21 K28 ["getFFlagImportQueueFixGroupFetch"]
  CALL R19 1 1
  LOADK R22 K29 ["FileController"]
  NAMECALL R20 R3 K30 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K31 [PROTO_6]
  CAPTURE VAL R14
  CAPTURE VAL R20
  SETTABLEKS R21 R20 K32 ["new"]
  DUPCLOSURE R21 K33 [PROTO_7]
  CAPTURE VAL R20
  SETTABLEKS R21 R20 K34 ["mock"]
  DUPCLOSURE R21 K35 [PROTO_8]
  CAPTURE VAL R5
  SETTABLEKS R21 R20 K36 ["DEPRECATED_cleanupPreview"]
  DUPCLOSURE R21 K37 [PROTO_9]
  CAPTURE VAL R7
  CAPTURE VAL R10
  SETTABLEKS R21 R20 K38 ["DEPRECATED_onSessionCanceled"]
  DUPCLOSURE R21 K39 [PROTO_10]
  SETTABLEKS R21 R20 K40 ["destroy"]
  DUPCLOSURE R21 K41 [PROTO_11]
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R19
  CAPTURE VAL R16
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R21 R20 K42 ["onPluginButtonClicked"]
  DUPCLOSURE R21 K43 [PROTO_13]
  SETTABLEKS R21 R20 K44 ["requestFilePicker"]
  DUPCLOSURE R21 K45 [PROTO_14]
  SETTABLEKS R21 R20 K46 ["_onFilePicked"]
  DUPCLOSURE R21 K47 [PROTO_16]
  SETTABLEKS R21 R20 K48 ["requestFileSwap"]
  DUPCLOSURE R21 K49 [PROTO_17]
  CAPTURE VAL R15
  SETTABLEKS R21 R20 K50 ["_onFileSwapped"]
  DUPCLOSURE R21 K51 [PROTO_19]
  CAPTURE VAL R15
  SETTABLEKS R21 R20 K52 ["requestPreview"]
  DUPCLOSURE R21 K53 [PROTO_20]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R8
  SETTABLEKS R21 R20 K54 ["DEPRECATED_onImport"]
  DUPCLOSURE R21 K55 [PROTO_21]
  CAPTURE VAL R10
  SETTABLEKS R21 R20 K56 ["DEPRECATED_onImportCompleted"]
  RETURN R20 1
