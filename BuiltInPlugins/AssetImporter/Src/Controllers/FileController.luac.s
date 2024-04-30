PROTO_0:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["Please call FileController.overrideShowImportPrompt to provide testing function"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["showImportPrompt"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["promptRequested"]
  RETURN R0 0

PROTO_3:
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

PROTO_4:
  DUPTABLE R3 K4 [{"_store", "_presetController", "_mock", "promptRequested"}]
  SETTABLEKS R0 R3 K0 ["_store"]
  SETTABLEKS R1 R3 K1 ["_presetController"]
  SETTABLEKS R2 R3 K2 ["_mock"]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["promptRequested"]
  JUMPIFNOT R2 [+12]
  DUPCLOSURE R4 K5 [PROTO_0]
  SETTABLEKS R4 R3 K6 ["showImportPrompt"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K7 ["overrideShowImportPrompt"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K8 ["setPromptRequested"]
  JUMP [+5]
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K6 ["showImportPrompt"]
  GETUPVAL R6 1
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K10 [setmetatable]
  CALL R4 2 1
  RETURN R4 1

PROTO_5:
  PREPVARARGS 0
  RETURN R0 0

PROTO_6:
  PREPVARARGS 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K2 [{"initializePresets", "createPresetFromLastImport"}]
  DUPCLOSURE R2 K3 [PROTO_5]
  SETTABLEKS R2 R1 K0 ["initializePresets"]
  DUPCLOSURE R2 K4 [PROTO_6]
  SETTABLEKS R2 R1 K1 ["createPresetFromLastImport"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["new"]
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
  NAMECALL R2 R0 K4 ["onSessionCanceled"]
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
  NAMECALL R1 R0 K0 ["cleanupPreview"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_store"]
  NAMECALL R1 R1 K1 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["Dialogs"]
  GETTABLEKS R2 R3 K3 ["showPreview"]
  JUMPIF R2 [+12]
  GETTABLEKS R3 R1 K2 ["Dialogs"]
  GETTABLEKS R2 R3 K4 ["showError"]
  JUMPIF R2 [+7]
  GETTABLEKS R3 R1 K2 ["Dialogs"]
  GETTABLEKS R2 R3 K5 ["showProgress"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R0 K6 ["promptRequested"]
  JUMPIF R2 [+4]
  NAMECALL R3 R0 K7 ["requestFilePicker"]
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R3 R0 K6 ["promptRequested"]
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K0 ["_store"]
  GETUPVAL R5 0
  LOADB R6 0
  CALL R5 1 -1
  NAMECALL R3 R3 K8 ["dispatch"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K0 ["_store"]
  GETUPVAL R5 1
  LOADB R6 0
  CALL R5 1 -1
  NAMECALL R3 R3 K8 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["promptRequested"]
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  GETUPVAL R2 0
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["promptRequested"]
  JUMPIF R1 [+26]
  JUMPIFNOT R0 [+16]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["_presetController"]
  NAMECALL R2 R2 K4 ["initializePresets"]
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["_store"]
  GETUPVAL R4 1
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K6 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["_store"]
  GETUPVAL R4 2
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K6 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_13:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["promptRequested"]
  GETTABLEKS R1 R0 K1 ["showImportPrompt"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
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

PROTO_15:
  GETTABLEKS R1 R0 K0 ["_store"]
  GETUPVAL R3 0
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  NAMECALL R1 R0 K2 ["cleanupPreview"]
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
  GETTABLEKS R10 R4 K16 ["SetUploading"]
  CALL R9 1 1
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K17 ["Thunks"]
  LOADK R13 K18 ["FileController"]
  NAMECALL R11 R3 K19 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K20 [PROTO_4]
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R12 R11 K21 ["new"]
  DUPCLOSURE R12 K22 [PROTO_7]
  CAPTURE VAL R11
  SETTABLEKS R12 R11 K23 ["mock"]
  DUPCLOSURE R12 K24 [PROTO_8]
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K25 ["cleanupPreview"]
  DUPCLOSURE R12 K26 [PROTO_9]
  CAPTURE VAL R7
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K27 ["onSessionCanceled"]
  DUPCLOSURE R12 K28 [PROTO_10]
  SETTABLEKS R12 R11 K29 ["destroy"]
  DUPCLOSURE R12 K30 [PROTO_11]
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R12 R11 K31 ["onPluginButtonClicked"]
  DUPCLOSURE R12 K32 [PROTO_13]
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R12 R11 K33 ["requestFilePicker"]
  DUPCLOSURE R12 K34 [PROTO_14]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K35 ["onImport"]
  DUPCLOSURE R12 K36 [PROTO_15]
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K37 ["onImportCompleted"]
  RETURN R11 1
