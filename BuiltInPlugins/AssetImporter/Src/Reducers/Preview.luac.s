PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"activeQueueItem"}]
  GETTABLEKS R5 R1 K0 ["activeQueueItem"]
  SETTABLEKS R5 R4 K0 ["activeQueueItem"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"assetImportSession"}]
  GETTABLEKS R5 R1 K0 ["assetImportSession"]
  SETTABLEKS R5 R4 K0 ["assetImportSession"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"importTree", "importDataExpansion"}]
  GETTABLEKS R5 R1 K0 ["importTree"]
  SETTABLEKS R5 R4 K0 ["importTree"]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K1 ["importDataExpansion"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K0 ["importTree"]
  LOADB R9 1
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["importDataExpansion"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"filename"}]
  GETTABLEKS R5 R1 K0 ["filename"]
  SETTABLEKS R5 R4 K0 ["filename"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"hasInvalidPackageId"}]
  GETTABLEKS R5 R1 K0 ["hasInvalidPackageId"]
  SETTABLEKS R5 R4 K0 ["hasInvalidPackageId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"previewInstance"}]
  GETTABLEKS R5 R1 K0 ["previewInstance"]
  SETTABLEKS R5 R4 K0 ["previewInstance"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"managedGroups"}]
  GETTABLEKS R5 R1 K0 ["managedGroups"]
  SETTABLEKS R5 R4 K0 ["managedGroups"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"selectedImportItem"}]
  GETTABLEKS R5 R1 K0 ["selectedImportItem"]
  SETTABLEKS R5 R4 K0 ["selectedImportItem"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R1 K2 ["checked"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  LOADK R9 K3 ["BaseImportData"]
  NAMECALL R7 R5 K4 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+6]
  JUMPIFNOTEQKB R6 FALSE [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R5 K5 ["ShouldImport"]
  FORGLOOP R2 2 [-12]
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K7 [{"importDataChecked"}]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K6 ["importDataChecked"]
  GETTABLEKS R7 R1 K2 ["checked"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["importDataChecked"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"importDataCheckedCount"}]
  GETTABLEKS R5 R1 K2 ["count"]
  SETTABLEKS R5 R4 K0 ["importDataCheckedCount"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"importDataExpansion"}]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K0 ["importDataExpansion"]
  GETTABLEKS R7 R1 K2 ["expansion"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["importDataExpansion"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"errorNodeChecked"}]
  GETTABLEKS R5 R1 K2 ["isErrorChecked"]
  SETTABLEKS R5 R4 K0 ["errorNodeChecked"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"settingsChanged"}]
  GETTABLEKS R5 R1 K0 ["settingsChanged"]
  SETTABLEKS R5 R4 K0 ["settingsChanged"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_13:
  GETIMPORT R0 K2 [table.clone]
  GETUPVAL R1 0
  CALL R0 1 -1
  RETURN R0 -1

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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K12 ["DataTypes"]
  GETTABLEKS R6 R7 K13 ["QueuedSession"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K14 ["Actions"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K15 ["ResetState"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K16 ["SetActiveQueueItem"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R6 K17 ["SetAssetImportSession"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R6 K18 ["SetCheckedCount"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R6 K19 ["SetErrorNodeChecked"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R6 K20 ["SetFilename"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R6 K21 ["SetHasInvalidPackageId"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R6 K22 ["SetImportTree"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R6 K23 ["SetManagedGroups"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R6 K24 ["SetPreviewInstance"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R6 K25 ["SetSelectedImportItem"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R6 K26 ["SetSettingsChanged"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R6 K27 ["SetTreeChecked"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R6 K28 ["SetTreeExpansion"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K10 ["Src"]
  GETTABLEKS R23 R24 K29 ["Flags"]
  GETTABLEKS R22 R23 K30 ["getFFlagAssetImportUploadWidgetCleanup"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K10 ["Src"]
  GETTABLEKS R24 R25 K29 ["Flags"]
  GETTABLEKS R23 R24 K31 ["getFFlagImportQueueFixGroupFetch"]
  CALL R22 1 1
  DUPTABLE R23 K45 [{"activeQueueItem", "assetImportSession", "errorNodeChecked", "filename", "hasInvalidPackageId", "importDataChecked", "importDataCheckedCount", "importDataExpansion", "importTree", "managedGroups", "previewInstance", "selectedImportItem", "settingsChanged"}]
  GETTABLEKS R24 R5 K46 ["new"]
  CALL R24 0 1
  SETTABLEKS R24 R23 K32 ["activeQueueItem"]
  LOADNIL R24
  SETTABLEKS R24 R23 K33 ["assetImportSession"]
  LOADB R24 0
  SETTABLEKS R24 R23 K34 ["errorNodeChecked"]
  LOADK R24 K47 [""]
  SETTABLEKS R24 R23 K35 ["filename"]
  LOADB R24 0
  SETTABLEKS R24 R23 K36 ["hasInvalidPackageId"]
  NEWTABLE R24 0 0
  SETTABLEKS R24 R23 K37 ["importDataChecked"]
  LOADN R24 255
  SETTABLEKS R24 R23 K38 ["importDataCheckedCount"]
  NEWTABLE R24 0 0
  SETTABLEKS R24 R23 K39 ["importDataExpansion"]
  LOADNIL R24
  SETTABLEKS R24 R23 K40 ["importTree"]
  NEWTABLE R24 0 0
  SETTABLEKS R24 R23 K41 ["managedGroups"]
  LOADNIL R24
  SETTABLEKS R24 R23 K42 ["previewInstance"]
  LOADNIL R24
  SETTABLEKS R24 R23 K43 ["selectedImportItem"]
  MOVE R25 R21
  CALL R25 0 1
  JUMPIF R25 [+2]
  LOADB R24 0
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K44 ["settingsChanged"]
  GETTABLEKS R24 R1 K48 ["createReducer"]
  MOVE R25 R23
  NEWTABLE R26 16 0
  GETTABLEKS R27 R8 K49 ["name"]
  DUPCLOSURE R28 K50 [PROTO_0]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R9 K49 ["name"]
  DUPCLOSURE R28 K51 [PROTO_1]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R14 K49 ["name"]
  DUPCLOSURE R28 K52 [PROTO_2]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R12 K49 ["name"]
  DUPCLOSURE R28 K53 [PROTO_3]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R13 K49 ["name"]
  DUPCLOSURE R28 K54 [PROTO_4]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R16 K49 ["name"]
  DUPCLOSURE R28 K55 [PROTO_5]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R15 K49 ["name"]
  MOVE R29 R22
  CALL R29 0 1
  JUMPIF R29 [+3]
  DUPCLOSURE R28 K56 [PROTO_6]
  CAPTURE VAL R3
  JUMP [+1]
  LOADNIL R28
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R17 K49 ["name"]
  DUPCLOSURE R28 K57 [PROTO_7]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R19 K49 ["name"]
  DUPCLOSURE R28 K58 [PROTO_8]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R10 K49 ["name"]
  DUPCLOSURE R28 K59 [PROTO_9]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R20 K49 ["name"]
  DUPCLOSURE R28 K60 [PROTO_10]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R11 K49 ["name"]
  DUPCLOSURE R28 K61 [PROTO_11]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R18 K49 ["name"]
  DUPCLOSURE R28 K62 [PROTO_12]
  CAPTURE VAL R3
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R7 K49 ["name"]
  DUPCLOSURE R28 K63 [PROTO_13]
  CAPTURE VAL R23
  SETTABLE R28 R26 R27
  CALL R24 2 -1
  RETURN R24 -1
