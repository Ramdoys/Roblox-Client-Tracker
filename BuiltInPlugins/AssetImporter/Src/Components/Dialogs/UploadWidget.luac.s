PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K1 ["SetShowUploadWidget"]
  LOADB R2 0
  CALL R1 1 0
  JUMP [+4]
  GETTABLEKS R1 R0 K2 ["SetShowProgress"]
  LOADB R2 0
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["FileController"]
  NAMECALL R1 R1 K4 ["DEPRECATED_cleanupPreview"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K1 ["UploadWidgetItem"]
  GETTABLEKS R1 R2 K2 ["uploadResults"]
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["state"]
  GETTABLEKS R1 R2 K2 ["uploadResults"]
  LOADNIL R2
  JUMPIFNOT R1 [+23]
  GETTABLEKS R3 R1 K4 ["Succeeded"]
  JUMPIFNOT R3 [+20]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+10]
  GETTABLEKS R5 R0 K1 ["UploadWidgetItem"]
  GETTABLEKS R4 R5 K5 ["session"]
  NAMECALL R4 R4 K6 ["GetImportTree"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K7 ["Id"]
  JUMP [+4]
  GETTABLEKS R4 R0 K8 ["RootImportData"]
  GETTABLEKS R3 R4 K7 ["Id"]
  GETTABLEKS R4 R1 K9 ["AssetIds"]
  GETTABLE R2 R4 R3
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K1 ["UploadWidgetItem"]
  GETTABLEKS R1 R2 K2 ["uploadResults"]
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["state"]
  GETTABLEKS R1 R2 K2 ["uploadResults"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K4 ["Succeeded"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R1 K5 ["Instance"]
  NEWTABLE R3 0 0
  LOADK R6 K6 ["MeshPart"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+8]
  GETTABLEKS R6 R2 K8 ["MeshId"]
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K11 [table.insert]
  CALL R4 2 0
  NAMECALL R4 R2 K12 ["GetDescendants"]
  CALL R4 1 3
  FORGPREP R4
  LOADK R11 K6 ["MeshPart"]
  NAMECALL R9 R8 K7 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+8]
  GETTABLEKS R11 R8 K8 ["MeshId"]
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K11 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-14]
  LOADK R5 K13 ["["]
  GETIMPORT R8 K15 [table.concat]
  MOVE R9 R3
  LOADK R10 K16 [", "]
  CALL R8 2 1
  MOVE R6 R8
  LOADK R7 K17 ["]"]
  CONCAT R4 R5 R7
  GETUPVAL R5 2
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R8 R4
  GETIMPORT R7 K19 [tostring]
  CALL R7 1 1
  NAMECALL R5 R5 K20 ["CopyToClipboard"]
  CALL R5 2 0
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K1 ["FileController"]
  GETTABLEKS R3 R0 K2 ["UploadWidgetItem"]
  NAMECALL R1 R1 K3 ["requestPreview"]
  CALL R1 2 0
  RETURN R0 0
  GETTABLEKS R1 R0 K4 ["ShowImportPreview"]
  GETTABLEKS R2 R0 K5 ["AssetImportSession"]
  DUPCLOSURE R3 K6 [PROTO_3]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  JUMPIFNOTEQKS R0 K0 ["Close"] [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onClose"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K2 ["CopyMeshID"] [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["copyMeshIds"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K4 ["Retry"] [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onClose"]
  CALL R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["returnToPreview"]
  CALL R1 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"uploadResults"}]
  SETTABLEKS R0 R3 K0 ["uploadResults"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["SetUploading"]
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R1 K1 ["ShowUploadWidget"]
  JUMP [+2]
  GETTABLEKS R2 R1 K2 ["ShowProgress"]
  JUMPIFNOT R2 [+100]
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIF R3 [+15]
  GETTABLEKS R3 R1 K3 ["Uploading"]
  JUMPIFNOT R3 [+12]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 4
  DUPTABLE R5 K6 [{"OnImportCompleted"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["onImportCompleted"]
  SETTABLEKS R6 R5 K5 ["OnImportCompleted"]
  CALL R3 2 -1
  RETURN R3 -1
  JUMPIFNOT R0 [+38]
  GETTABLEKS R3 R0 K8 ["Succeeded"]
  JUMPIFNOT R3 [+35]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETTABLEKS R4 R1 K9 ["UploadWidgetItem"]
  GETTABLEKS R3 R4 K10 ["session"]
  NAMECALL R3 R3 K11 ["GetImportTree"]
  CALL R3 1 1
  JUMP [+2]
  GETTABLEKS R3 R1 K12 ["RootImportData"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 5
  DUPTABLE R6 K15 [{"AddedToInventory", "AssetId"}]
  GETTABLEKS R7 R3 K16 ["AddModelToInventory"]
  SETTABLEKS R7 R6 K13 ["AddedToInventory"]
  GETUPVAL R8 6
  CALL R8 0 1
  JUMPIFNOT R8 [+5]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K17 ["getRootAssetId"]
  CALL R7 0 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K14 ["AssetId"]
  CALL R4 2 -1
  RETURN R4 -1
  JUMPIFNOT R0 [+42]
  GETTABLEKS R3 R0 K8 ["Succeeded"]
  JUMPIFEQKNIL R3 [+39]
  GETTABLEKS R3 R0 K8 ["Succeeded"]
  JUMPIF R3 [+35]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETTABLEKS R4 R1 K9 ["UploadWidgetItem"]
  GETTABLEKS R3 R4 K10 ["session"]
  NAMECALL R3 R3 K11 ["GetImportTree"]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 7
  DUPTABLE R6 K21 [{"LayoutOrder", "ErrorMap", "ExistingPackageId"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K18 ["LayoutOrder"]
  GETTABLEKS R7 R0 K22 ["ErrorMessages"]
  SETTABLEKS R7 R6 K19 ["ErrorMap"]
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R3 K20 ["ExistingPackageId"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K20 ["ExistingPackageId"]
  CALL R4 2 -1
  RETURN R4 -1
  LOADNIL R3
  RETURN R3 1

PROTO_8:
  DUPTABLE R1 K3 [{"uploadResults", "progressValue", "errorMap"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["uploadResults"]
  LOADN R2 0
  SETTABLEKS R2 R1 K1 ["progressValue"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["errorMap"]
  SETTABLEKS R1 R0 K4 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K5 ["onClose"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K6 ["getRootAssetId"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K7 ["copyMeshIds"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K8 ["returnToPreview"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["onButtonPressed"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onImportCompleted"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  SETTABLEKS R1 R0 K11 ["getWidgetContent"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Stylizer"]
  GETTABLEKS R5 R4 K4 ["UploadWidget"]
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R1 K5 ["UploadWidgetItem"]
  GETTABLEKS R6 R7 K6 ["uploadResults"]
  JUMP [+2]
  GETTABLEKS R6 R2 K6 ["uploadResults"]
  DUPTABLE R7 K10 [{"Key", "Text", "Style"}]
  LOADK R8 K11 ["Close"]
  SETTABLEKS R8 R7 K7 ["Key"]
  LOADK R10 K12 ["Plugin"]
  LOADK R11 K11 ["Close"]
  NAMECALL R8 R3 K13 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K8 ["Text"]
  LOADK R8 K14 ["RoundPrimary"]
  SETTABLEKS R8 R7 K9 ["Style"]
  DUPTABLE R8 K16 [{"Key", "Text", "Style", "Tooltip"}]
  LOADK R9 K17 ["CopyMeshID"]
  SETTABLEKS R9 R8 K7 ["Key"]
  LOADK R11 K18 ["Upload"]
  LOADK R12 K19 ["CopyMeshId"]
  NAMECALL R9 R3 K13 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K8 ["Text"]
  LOADK R9 K17 ["CopyMeshID"]
  SETTABLEKS R9 R8 K9 ["Style"]
  LOADK R11 K18 ["Upload"]
  LOADK R12 K20 ["CopyMeshIdTooltip"]
  NAMECALL R9 R3 K13 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Tooltip"]
  DUPTABLE R9 K21 [{"Key", "Text"}]
  LOADK R10 K22 ["Retry"]
  SETTABLEKS R10 R9 K7 ["Key"]
  LOADK R12 K18 ["Upload"]
  LOADK R13 K22 ["Retry"]
  NAMECALL R10 R3 K13 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K8 ["Text"]
  NEWTABLE R10 0 0
  GETUPVAL R11 1
  CALL R11 0 1
  JUMPIFNOT R11 [+34]
  GETTABLEKS R11 R1 K23 ["Uploading"]
  JUMPIFNOT R11 [+3]
  NEWTABLE R10 0 0
  JUMP [+53]
  JUMPIFNOT R6 [+11]
  GETTABLEKS R11 R6 K24 ["Succeeded"]
  JUMPIFNOT R11 [+8]
  NEWTABLE R11 0 2
  MOVE R12 R8
  MOVE R13 R7
  SETLIST R11 R12 2 [1]
  MOVE R10 R11
  JUMP [+41]
  JUMPIFNOT R6 [+40]
  GETTABLEKS R11 R6 K24 ["Succeeded"]
  JUMPIFEQKNIL R11 [+37]
  GETTABLEKS R11 R6 K24 ["Succeeded"]
  JUMPIF R11 [+33]
  NEWTABLE R11 0 2
  MOVE R12 R9
  MOVE R13 R7
  SETLIST R11 R12 2 [1]
  MOVE R10 R11
  JUMP [+25]
  GETUPVAL R11 2
  CALL R11 0 1
  JUMPIF R11 [+6]
  GETTABLEKS R11 R1 K23 ["Uploading"]
  JUMPIFNOT R11 [+3]
  NEWTABLE R10 0 0
  JUMP [+16]
  NEWTABLE R11 0 1
  DUPTABLE R12 K21 [{"Key", "Text"}]
  LOADK R13 K11 ["Close"]
  SETTABLEKS R13 R12 K7 ["Key"]
  LOADK R15 K12 ["Plugin"]
  LOADK R16 K11 ["Close"]
  NAMECALL R13 R3 K13 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K8 ["Text"]
  SETLIST R11 R12 1 [1]
  MOVE R10 R11
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K25 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K35 [{"Enabled", "MinContentSize", "Modal", "Resizable", "Title", "Buttons", "ButtonHorizontalAlignment", "OnClose", "OnButtonPressed", "Style"}]
  GETUPVAL R15 0
  CALL R15 0 1
  JUMPIFNOT R15 [+3]
  GETTABLEKS R14 R1 K36 ["ShowUploadWidget"]
  JUMP [+2]
  GETTABLEKS R14 R1 K37 ["ShowProgress"]
  SETTABLEKS R14 R13 K26 ["Enabled"]
  GETIMPORT R14 K40 [Vector2.new]
  GETTABLEKS R15 R5 K41 ["Width"]
  GETTABLEKS R16 R5 K42 ["Height"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K27 ["MinContentSize"]
  GETUPVAL R15 1
  CALL R15 0 1
  JUMPIFNOT R15 [+4]
  GETUPVAL R15 5
  CALL R15 0 1
  NOT R14 R15
  JUMP [+1]
  LOADB R14 0
  SETTABLEKS R14 R13 K28 ["Modal"]
  LOADB R14 1
  SETTABLEKS R14 R13 K29 ["Resizable"]
  GETTABLEKS R14 R1 K30 ["Title"]
  SETTABLEKS R14 R13 K30 ["Title"]
  SETTABLEKS R10 R13 K31 ["Buttons"]
  GETUPVAL R15 1
  CALL R15 0 1
  JUMPIFNOT R15 [+3]
  GETIMPORT R14 K46 [Enum.HorizontalAlignment.Right]
  JUMP [+2]
  GETIMPORT R14 K48 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K32 ["ButtonHorizontalAlignment"]
  GETTABLEKS R14 R0 K49 ["onClose"]
  SETTABLEKS R14 R13 K33 ["OnClose"]
  GETTABLEKS R14 R0 K50 ["onButtonPressed"]
  SETTABLEKS R14 R13 K34 ["OnButtonPressed"]
  GETUPVAL R15 1
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADK R14 K51 ["ImportDialog"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K9 ["Style"]
  DUPTABLE R14 K55 [{"Layout", "ContentInfo", "Separator"}]
  GETUPVAL R16 1
  CALL R16 0 1
  JUMPIFNOT R16 [+11]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K25 ["createElement"]
  LOADK R16 K56 ["UIListLayout"]
  DUPTABLE R17 K58 [{"FillDirection"}]
  GETIMPORT R18 K60 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K57 ["FillDirection"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K52 ["Layout"]
  GETTABLEKS R15 R0 K61 ["getWidgetContent"]
  MOVE R16 R6
  CALL R15 1 1
  SETTABLEKS R15 R14 K53 ["ContentInfo"]
  GETUPVAL R16 1
  CALL R16 0 1
  JUMPIFNOT R16 [+17]
  GETTABLEKS R16 R1 K23 ["Uploading"]
  JUMPIF R16 [+14]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K25 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K64 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R18 K65 [Enum.DominantAxis.Width]
  SETTABLEKS R18 R17 K62 ["DominantAxis"]
  LOADN R18 2
  SETTABLEKS R18 R17 K63 ["LayoutOrder"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K54 ["Separator"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R1 K4 [{"SetShowProgress", "SetUploading", "SetShowUploadWidget", "ShowImportPreview"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+4]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["SetShowProgress"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K1 ["SetUploading"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["SetShowUploadWidget"]
  GETUPVAL R3 4
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["ShowImportPreview"]
  RETURN R1 1

PROTO_15:
  DUPTABLE R1 K6 [{"ShowUploadWidget", "UploadWidgetItem", "Uploading", "RootImportData", "ShowProgress", "AssetImportSession"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K7 ["Dialogs"]
  GETTABLEKS R2 R3 K8 ["showUploadWidget"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["ShowUploadWidget"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K7 ["Dialogs"]
  GETTABLEKS R2 R3 K9 ["uploadWidgetItem"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["UploadWidgetItem"]
  GETTABLEKS R3 R0 K7 ["Dialogs"]
  GETTABLEKS R2 R3 K10 ["uploading"]
  SETTABLEKS R2 R1 K2 ["Uploading"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+5]
  GETTABLEKS R3 R0 K11 ["Preview"]
  GETTABLEKS R2 R3 K12 ["importTree"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["RootImportData"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+5]
  GETTABLEKS R3 R0 K7 ["Dialogs"]
  GETTABLEKS R2 R3 K13 ["showProgress"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["ShowProgress"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIF R3 [+5]
  GETTABLEKS R3 R0 K11 ["Preview"]
  GETTABLEKS R2 R3 K14 ["assetImportSession"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K5 ["AssetImportSession"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["StudioService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["ContextServices"]
  GETTABLEKS R6 R5 K15 ["withContext"]
  GETTABLEKS R7 R5 K16 ["Localization"]
  GETTABLEKS R9 R4 K17 ["Style"]
  GETTABLEKS R8 R9 K18 ["Stylizer"]
  GETTABLEKS R9 R4 K19 ["UI"]
  GETTABLEKS R10 R9 K20 ["Separator"]
  GETTABLEKS R11 R9 K21 ["StyledDialog"]
  GETTABLEKS R15 R0 K22 ["Src"]
  GETTABLEKS R14 R15 K23 ["Components"]
  GETTABLEKS R13 R14 K24 ["Dialogs"]
  GETTABLEKS R12 R13 K25 ["UploadWidgets"]
  GETIMPORT R13 K9 [require]
  GETTABLEKS R14 R12 K26 ["SuccessWidget"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R15 R12 K27 ["FailureWidget"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R16 R12 K28 ["ProgressWidget"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R19 R0 K22 ["Src"]
  GETTABLEKS R18 R19 K29 ["Controllers"]
  GETTABLEKS R17 R18 K30 ["FileController"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R20 R0 K22 ["Src"]
  GETTABLEKS R19 R20 K31 ["Actions"]
  GETTABLEKS R18 R19 K32 ["SetShowProgress"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R0 K22 ["Src"]
  GETTABLEKS R20 R21 K31 ["Actions"]
  GETTABLEKS R19 R20 K33 ["SetShowUploadWidget"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R22 R0 K22 ["Src"]
  GETTABLEKS R21 R22 K31 ["Actions"]
  GETTABLEKS R20 R21 K34 ["SetUploading"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R23 R0 K22 ["Src"]
  GETTABLEKS R22 R23 K35 ["Thunks"]
  GETTABLEKS R21 R22 K36 ["ShowImportPreview"]
  CALL R20 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R24 R0 K22 ["Src"]
  GETTABLEKS R23 R24 K37 ["Flags"]
  GETTABLEKS R22 R23 K38 ["getFFlagAssetImportRefactorUploadWidgets"]
  CALL R21 1 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R25 R0 K22 ["Src"]
  GETTABLEKS R24 R25 K37 ["Flags"]
  GETTABLEKS R23 R24 K39 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R26 R0 K22 ["Src"]
  GETTABLEKS R25 R26 K37 ["Flags"]
  GETTABLEKS R24 R25 K40 ["getFFlagAssetImportDialogButtonsAndStyling"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETTABLEKS R27 R0 K22 ["Src"]
  GETTABLEKS R26 R27 K37 ["Flags"]
  GETTABLEKS R25 R26 K41 ["getFFlagAssetImportUseQueueItem"]
  CALL R24 1 1
  GETIMPORT R25 K9 [require]
  GETTABLEKS R28 R0 K22 ["Src"]
  GETTABLEKS R27 R28 K37 ["Flags"]
  GETTABLEKS R26 R27 K42 ["getFFlagDebugAssetImportPlugin"]
  CALL R25 1 1
  GETTABLEKS R26 R2 K43 ["PureComponent"]
  LOADK R28 K44 ["UploadWidget"]
  NAMECALL R26 R26 K45 ["extend"]
  CALL R26 2 1
  DUPCLOSURE R27 K46 [PROTO_8]
  CAPTURE VAL R21
  CAPTURE VAL R1
  CAPTURE VAL R24
  CAPTURE VAL R22
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R23
  CAPTURE VAL R14
  SETTABLEKS R27 R26 K47 ["init"]
  DUPCLOSURE R27 K48 [PROTO_9]
  CAPTURE VAL R21
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R25
  CAPTURE VAL R10
  SETTABLEKS R27 R26 K49 ["render"]
  MOVE R27 R6
  DUPTABLE R28 K50 [{"Localization", "Stylizer", "FileController"}]
  SETTABLEKS R7 R28 K16 ["Localization"]
  SETTABLEKS R8 R28 K18 ["Stylizer"]
  SETTABLEKS R16 R28 K30 ["FileController"]
  CALL R27 1 1
  MOVE R28 R26
  CALL R27 1 1
  MOVE R26 R27
  DUPCLOSURE R27 K51 [PROTO_14]
  CAPTURE VAL R21
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R23
  CAPTURE VAL R20
  DUPCLOSURE R28 K52 [PROTO_15]
  CAPTURE VAL R21
  CAPTURE VAL R24
  GETTABLEKS R29 R3 K53 ["connect"]
  MOVE R30 R28
  MOVE R31 R27
  CALL R29 2 1
  MOVE R30 R26
  CALL R29 1 -1
  RETURN R29 -1
