PROTO_0:
  GETTABLEKS R2 R0 K0 ["ImportTree"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K0 ["ImportTree"]
  GETTABLEKS R1 R2 K1 ["ImportName"]
  JUMP [+1]
  LOADNIL R1
  GETTABLEKS R3 R0 K2 ["HasInvalidPackageId"]
  NOT R2 R3
  JUMPIFNOT R2 [+12]
  LOADB R2 0
  GETTABLEKS R3 R0 K3 ["ImportDataCheckedCount"]
  JUMPIFEQKN R3 K4 [0] [+8]
  GETTABLEKS R3 R0 K5 ["ErrorNodeChecked"]
  NOT R2 R3
  JUMPIFNOT R2 [+3]
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["ClosePreview"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["SessionQueue"]
  GETTABLEKS R3 R0 K2 ["Filename"]
  GETTABLE R1 R2 R3
  GETTABLEKS R2 R0 K3 ["ClosePreview"]
  CALL R2 0 0
  GETTABLEKS R2 R0 K4 ["QueueController"]
  MOVE R4 R1
  NAMECALL R2 R2 K5 ["uploadItem"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOTEQKS R0 K0 ["Close"] [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onClose"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K2 ["Import"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["onImport"]
  CALL R1 0 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"assetName"}]
  LOADK R2 K2 [""]
  SETTABLEKS R2 R1 K0 ["assetName"]
  SETTABLEKS R1 R0 K3 ["state"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_importNameChangedConnection"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onClose"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onImport"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onButtonPressed"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R5 R1 K2 ["ImportTree"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R1 K2 ["ImportTree"]
  GETTABLEKS R4 R5 K3 ["ImportName"]
  JUMP [+1]
  LOADNIL R4
  GETTABLEKS R5 R1 K4 ["HasInvalidPackageId"]
  NOT R3 R5
  JUMPIFNOT R3 [+13]
  LOADB R3 0
  GETTABLEKS R5 R1 K5 ["ImportDataCheckedCount"]
  JUMPIFEQKN R5 K6 [0] [+9]
  GETTABLEKS R5 R1 K7 ["ErrorNodeChecked"]
  NOT R3 R5
  JUMPIFNOT R3 [+4]
  GETUPVAL R5 0
  MOVE R6 R4
  CALL R5 1 1
  MOVE R3 R5
  NEWTABLE R4 0 2
  DUPTABLE R5 K10 [{"Key", "Text"}]
  LOADK R6 K11 ["Close"]
  SETTABLEKS R6 R5 K8 ["Key"]
  LOADK R8 K12 ["Plugin"]
  LOADK R9 K11 ["Close"]
  NAMECALL R6 R2 K13 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K9 ["Text"]
  DUPTABLE R6 K16 [{"Key", "Text", "Style", "StyleModifier"}]
  LOADK R7 K17 ["Import"]
  SETTABLEKS R7 R6 K8 ["Key"]
  LOADK R9 K12 ["Plugin"]
  LOADK R10 K17 ["Import"]
  NAMECALL R7 R2 K13 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K9 ["Text"]
  LOADK R7 K18 ["RoundPrimary"]
  SETTABLEKS R7 R6 K14 ["Style"]
  JUMPIF R3 [+4]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K19 ["Disabled"]
  JUMPIF R7 [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K15 ["StyleModifier"]
  SETLIST R4 R5 2 [1]
  GETTABLEKS R5 R0 K20 ["onClose"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K21 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K30 [{"Enabled", "MinContentSize", "Modal", "Resizable", "Title", "Buttons", "OnClose", "OnButtonPressed", "Style"}]
  GETTABLEKS R9 R1 K31 ["ShowPreview"]
  SETTABLEKS R9 R8 K22 ["Enabled"]
  GETIMPORT R9 K34 [Vector2.new]
  LOADN R10 32
  LOADN R11 138
  CALL R9 2 1
  SETTABLEKS R9 R8 K23 ["MinContentSize"]
  GETUPVAL R10 4
  CALL R10 0 1
  NOT R9 R10
  SETTABLEKS R9 R8 K24 ["Modal"]
  LOADB R9 1
  SETTABLEKS R9 R8 K25 ["Resizable"]
  GETTABLEKS R9 R1 K26 ["Title"]
  SETTABLEKS R9 R8 K26 ["Title"]
  SETTABLEKS R4 R8 K27 ["Buttons"]
  SETTABLEKS R5 R8 K28 ["OnClose"]
  GETTABLEKS R9 R0 K35 ["onButtonPressed"]
  SETTABLEKS R9 R8 K29 ["OnButtonPressed"]
  LOADK R9 K36 ["FullBleed"]
  SETTABLEKS R9 R8 K14 ["Style"]
  DUPTABLE R9 K40 [{"Layout", "AssetImporterUI", "Separator"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K21 ["createElement"]
  LOADK R11 K41 ["UIListLayout"]
  DUPTABLE R12 K43 [{"FillDirection"}]
  GETIMPORT R13 K46 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K42 ["FillDirection"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K37 ["Layout"]
  GETTABLEKS R11 R1 K31 ["ShowPreview"]
  JUMPIFNOT R11 [+10]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K21 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K48 [{"LayoutOrder"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K47 ["LayoutOrder"]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K38 ["AssetImporterUI"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K21 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K50 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R13 K52 [Enum.DominantAxis.Width]
  SETTABLEKS R13 R12 K49 ["DominantAxis"]
  LOADN R13 2
  SETTABLEKS R13 R12 K47 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K39 ["Separator"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_6:
  NAMECALL R1 R0 K0 ["_connect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  JUMPIFNOTEQKS R0 K0 ["ImportName"] [+11]
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"assetName"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["ImportName"]
  SETTABLEKS R4 R3 K1 ["assetName"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["ImportTree"]
  JUMPIFEQKNIL R1 [+11]
  GETTABLEKS R2 R1 K2 ["Changed"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["_importNameChangedConnection"]
  RETURN R0 0

PROTO_9:
  NAMECALL R1 R0 K0 ["_disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_importNameChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_importNameChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_importNameChangedConnection"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R3 R1 K0 ["ImportTree"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K0 ["ImportTree"]
  JUMPIFEQ R3 R4 [+7]
  NAMECALL R3 R0 K2 ["_disconnect"]
  CALL R3 1 0
  NAMECALL R3 R0 K3 ["_connect"]
  CALL R3 1 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R2 K1 [{"assetName"}]
  GETTABLEKS R4 R0 K2 ["ImportTree"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K2 ["ImportTree"]
  GETTABLEKS R3 R4 K3 ["ImportName"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["assetName"]
  RETURN R2 1

PROTO_13:
  DUPTABLE R1 K8 [{"ImportTree", "AssetImportSession", "ImportDataCheckedCount", "ErrorNodeChecked", "HasInvalidPackageId", "ShowPreview", "SessionQueue", "Filename"}]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K10 ["importTree"]
  SETTABLEKS R2 R1 K0 ["ImportTree"]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K11 ["assetImportSession"]
  SETTABLEKS R2 R1 K1 ["AssetImportSession"]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K12 ["importDataCheckedCount"]
  SETTABLEKS R2 R1 K2 ["ImportDataCheckedCount"]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K13 ["errorNodeChecked"]
  SETTABLEKS R2 R1 K3 ["ErrorNodeChecked"]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K14 ["hasInvalidPackageId"]
  SETTABLEKS R2 R1 K4 ["HasInvalidPackageId"]
  GETTABLEKS R3 R0 K15 ["Dialogs"]
  GETTABLEKS R2 R3 K16 ["showPreview"]
  SETTABLEKS R2 R1 K5 ["ShowPreview"]
  GETTABLEKS R3 R0 K17 ["Sessions"]
  GETTABLEKS R2 R3 K18 ["sessionQueue"]
  SETTABLEKS R2 R1 K6 ["SessionQueue"]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K19 ["filename"]
  SETTABLEKS R2 R1 K7 ["Filename"]
  RETURN R1 1

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K1 [{"ClosePreview"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ClosePreview"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["RoactCompat"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Localization"]
  GETTABLEKS R8 R3 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["Stylizer"]
  GETTABLEKS R8 R3 K15 ["Util"]
  GETTABLEKS R9 R8 K16 ["StyleModifier"]
  GETTABLEKS R10 R3 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["Separator"]
  GETTABLEKS R12 R10 K19 ["StyledDialog"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K21 ["Components"]
  GETTABLEKS R14 R15 K22 ["AssetImporterUI"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K20 ["Src"]
  GETTABLEKS R16 R17 K23 ["Controllers"]
  GETTABLEKS R15 R16 K24 ["FileController"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K20 ["Src"]
  GETTABLEKS R17 R18 K23 ["Controllers"]
  GETTABLEKS R16 R17 K25 ["QueueController"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K20 ["Src"]
  GETTABLEKS R18 R19 K26 ["Thunks"]
  GETTABLEKS R17 R18 K27 ["ClosePreview"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K20 ["Src"]
  GETTABLEKS R19 R20 K28 ["Utility"]
  GETTABLEKS R18 R19 K29 ["isAssetNameValid"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K20 ["Src"]
  GETTABLEKS R20 R21 K30 ["Flags"]
  GETTABLEKS R19 R20 K31 ["getFFlagDebugAssetImportPlugin"]
  CALL R18 1 1
  GETTABLEKS R19 R1 K32 ["PureComponent"]
  LOADK R21 K33 ["MeshImportDialog"]
  NAMECALL R19 R19 K34 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K35 [PROTO_0]
  CAPTURE VAL R17
  DUPCLOSURE R21 K36 [PROTO_4]
  SETTABLEKS R21 R19 K37 ["init"]
  DUPCLOSURE R21 K38 [PROTO_5]
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLEKS R21 R19 K39 ["render"]
  DUPCLOSURE R21 K40 [PROTO_6]
  SETTABLEKS R21 R19 K41 ["didMount"]
  DUPCLOSURE R21 K42 [PROTO_8]
  SETTABLEKS R21 R19 K43 ["_connect"]
  DUPCLOSURE R21 K44 [PROTO_9]
  SETTABLEKS R21 R19 K45 ["willUnmount"]
  DUPCLOSURE R21 K46 [PROTO_10]
  SETTABLEKS R21 R19 K47 ["_disconnect"]
  DUPCLOSURE R21 K48 [PROTO_11]
  SETTABLEKS R21 R19 K49 ["didUpdate"]
  DUPCLOSURE R21 K50 [PROTO_12]
  SETTABLEKS R21 R19 K51 ["getDerivedStateFromProps"]
  MOVE R21 R5
  DUPTABLE R22 K52 [{"FileController", "QueueController", "Localization", "Stylizer"}]
  SETTABLEKS R14 R22 K24 ["FileController"]
  SETTABLEKS R15 R22 K25 ["QueueController"]
  SETTABLEKS R6 R22 K12 ["Localization"]
  SETTABLEKS R7 R22 K14 ["Stylizer"]
  CALL R21 1 1
  MOVE R22 R19
  CALL R21 1 1
  MOVE R19 R21
  DUPCLOSURE R21 K53 [PROTO_13]
  DUPCLOSURE R22 K54 [PROTO_15]
  CAPTURE VAL R16
  GETTABLEKS R23 R2 K55 ["connect"]
  MOVE R24 R21
  MOVE R25 R22
  CALL R23 2 1
  MOVE R24 R19
  CALL R23 1 -1
  RETURN R23 -1
