PROTO_0:
  GETIMPORT R0 K2 [table.clone]
  GETUPVAL R1 0
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"managedGroups"}]
  GETTABLEKS R5 R1 K0 ["managedGroups"]
  SETTABLEKS R5 R4 K0 ["managedGroups"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"showError"}]
  GETTABLEKS R5 R1 K0 ["showError"]
  SETTABLEKS R5 R4 K0 ["showError"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"showParsingWidget"}]
  GETTABLEKS R5 R1 K0 ["showParsingWidget"]
  SETTABLEKS R5 R4 K0 ["showParsingWidget"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"showPreview"}]
  GETTABLEKS R5 R1 K0 ["showPreview"]
  SETTABLEKS R5 R4 K0 ["showPreview"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"showProgress"}]
  GETTABLEKS R5 R1 K0 ["showProgress"]
  SETTABLEKS R5 R4 K0 ["showProgress"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"showUploadWidget"}]
  GETTABLEKS R5 R1 K0 ["showUploadWidget"]
  SETTABLEKS R5 R4 K0 ["showUploadWidget"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"showQueue"}]
  GETTABLEKS R5 R1 K0 ["showQueue"]
  SETTABLEKS R5 R4 K0 ["showQueue"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"showWarning"}]
  GETTABLEKS R5 R1 K0 ["showWarning"]
  SETTABLEKS R5 R4 K0 ["showWarning"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"uploading"}]
  GETTABLEKS R5 R1 K0 ["uploading"]
  SETTABLEKS R5 R4 K0 ["uploading"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"uploadWidgetItem"}]
  GETTABLEKS R5 R1 K0 ["uploadWidgetItem"]
  SETTABLEKS R5 R4 K0 ["uploadWidgetItem"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["join"]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Actions"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["ResetQueue"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K13 ["SetManagedGroups"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K14 ["SetShowError"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R4 K15 ["SetShowParsingWidget"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R4 K16 ["SetShowPreview"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R4 K17 ["SetShowProgress"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R4 K18 ["SetShowQueue"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R4 K19 ["SetShowUploadWidget"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R4 K20 ["SetShowWarning"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R4 K21 ["SetUploading"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R4 K22 ["SetUploadWidgetItem"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K10 ["Src"]
  GETTABLEKS R18 R19 K23 ["DataTypes"]
  GETTABLEKS R17 R18 K24 ["QueuedSession"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K10 ["Src"]
  GETTABLEKS R19 R20 K25 ["Flags"]
  GETTABLEKS R18 R19 K26 ["getFFlagAssetImportEnableImportQueueModal"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K10 ["Src"]
  GETTABLEKS R20 R21 K25 ["Flags"]
  GETTABLEKS R19 R20 K27 ["getFFlagAssetImportParseDialog"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K10 ["Src"]
  GETTABLEKS R21 R22 K25 ["Flags"]
  GETTABLEKS R20 R21 K28 ["getFFlagImportQueueFixGroupFetch"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R0 K10 ["Src"]
  GETTABLEKS R21 R22 K29 ["Types"]
  CALL R20 1 1
  DUPTABLE R21 K39 [{"managedGroups", "showError", "showParsingWidget", "showPreview", "showProgress", "showQueue", "showUploadWidget", "uploading", "uploadWidgetItem"}]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K30 ["managedGroups"]
  LOADB R22 0
  SETTABLEKS R22 R21 K31 ["showError"]
  LOADB R22 0
  SETTABLEKS R22 R21 K32 ["showParsingWidget"]
  LOADB R22 0
  SETTABLEKS R22 R21 K33 ["showPreview"]
  LOADB R22 0
  SETTABLEKS R22 R21 K34 ["showProgress"]
  LOADB R22 0
  SETTABLEKS R22 R21 K35 ["showQueue"]
  LOADB R22 0
  SETTABLEKS R22 R21 K36 ["showUploadWidget"]
  LOADB R22 0
  SETTABLEKS R22 R21 K37 ["uploading"]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K38 ["uploadWidgetItem"]
  GETTABLEKS R22 R1 K40 ["createReducer"]
  MOVE R23 R21
  NEWTABLE R24 16 0
  GETTABLEKS R25 R5 K41 ["name"]
  DUPCLOSURE R26 K42 [PROTO_0]
  CAPTURE VAL R21
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R6 K41 ["name"]
  MOVE R27 R19
  CALL R27 0 1
  JUMPIFNOT R27 [+3]
  DUPCLOSURE R26 K43 [PROTO_1]
  CAPTURE VAL R3
  JUMP [+1]
  LOADNIL R26
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R7 K41 ["name"]
  DUPCLOSURE R26 K44 [PROTO_2]
  CAPTURE VAL R3
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R8 K41 ["name"]
  MOVE R27 R18
  CALL R27 0 1
  JUMPIFNOT R27 [+3]
  DUPCLOSURE R26 K45 [PROTO_3]
  CAPTURE VAL R3
  JUMP [+1]
  LOADNIL R26
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R9 K41 ["name"]
  DUPCLOSURE R26 K46 [PROTO_4]
  CAPTURE VAL R3
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R10 K41 ["name"]
  DUPCLOSURE R26 K47 [PROTO_5]
  CAPTURE VAL R3
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R12 K41 ["name"]
  DUPCLOSURE R26 K48 [PROTO_6]
  CAPTURE VAL R3
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R11 K41 ["name"]
  MOVE R27 R17
  CALL R27 0 1
  JUMPIFNOT R27 [+3]
  DUPCLOSURE R26 K49 [PROTO_7]
  CAPTURE VAL R3
  JUMP [+1]
  LOADNIL R26
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R13 K41 ["name"]
  DUPCLOSURE R26 K50 [PROTO_8]
  CAPTURE VAL R3
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R14 K41 ["name"]
  DUPCLOSURE R26 K51 [PROTO_9]
  CAPTURE VAL R3
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R15 K41 ["name"]
  DUPCLOSURE R26 K52 [PROTO_10]
  CAPTURE VAL R3
  SETTABLE R26 R24 R25
  CALL R22 2 -1
  RETURN R22 -1
