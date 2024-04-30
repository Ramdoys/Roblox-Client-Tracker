PROTO_0:
  DUPTABLE R1 K1 [{"progressValue"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["progressValue"]
  SETTABLEKS R1 R0 K2 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["progressValue"]
  JUMPIFNOTLT R1 R0 [+8]
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"progressValue"}]
  SETTABLEKS R0 R3 K1 ["progressValue"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["Succeeded"]
  JUMPIFNOT R1 [+28]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["InsertModelInWorkspace"]
  MOVE R2 R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["RootImportData"]
  CALL R1 2 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+13]
  GETUPVAL R1 2
  MOVE R2 R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["RootImportData"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K4 ["AssetImportSession"]
  CALL R1 3 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K5 ["OnImportCompleted"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["_updateImportProgress"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K1 ["_updateImportComplete"]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R2 R3 K3 ["AssetImportSession"]
  GETTABLEKS R1 R2 K4 ["UploadProgress"]
  GETTABLEKS R3 R0 K0 ["_updateImportProgress"]
  NAMECALL R1 R1 K5 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["_updateImportProgressConnection"]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R2 R3 K3 ["AssetImportSession"]
  GETTABLEKS R1 R2 K7 ["UploadComplete"]
  GETTABLEKS R3 R0 K1 ["_updateImportComplete"]
  NAMECALL R1 R1 K5 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K8 ["_updateImportCompleteConnection"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_updateImportProgressConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_updateImportCompleteConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  LOADK R6 K3 ["Upload"]
  LOADK R7 K4 ["Uploading"]
  NAMECALL R4 R3 K5 ["getText"]
  CALL R4 3 1
  GETTABLEKS R5 R1 K6 ["Stylizer"]
  GETTABLEKS R6 R5 K7 ["UploadWidget"]
  GETUPVAL R7 0
  GETTABLEKS R8 R1 K8 ["Filename"]
  CALL R7 1 1
  GETTABLEKS R9 R2 K10 ["progressValue"]
  ORK R8 R9 K9 [0]
  MULK R11 R8 K11 [100]
  FASTCALL1 MATH_FLOOR R11 [+2]
  GETIMPORT R10 K14 [math.floor]
  CALL R10 1 1
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K16 [tostring]
  CALL R9 1 1
  LOADK R11 K17 ["%* %* %*%%"]
  MOVE R13 R4
  MOVE R14 R7
  MOVE R15 R9
  NAMECALL R11 R11 K18 ["format"]
  CALL R11 4 1
  MOVE R10 R11
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K19 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K24 [{"LayoutOrder", "Layout", "VerticalAlignment", "Padding"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K20 ["LayoutOrder"]
  GETIMPORT R14 K28 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K21 ["Layout"]
  GETIMPORT R14 K30 [Enum.VerticalAlignment.Top]
  SETTABLEKS R14 R13 K22 ["VerticalAlignment"]
  GETTABLEKS R14 R6 K31 ["TopPadding"]
  SETTABLEKS R14 R13 K23 ["Padding"]
  DUPTABLE R14 K34 [{"LoadingText", "LoadingBarContainer"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K19 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K40 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextTruncate"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K20 ["LayoutOrder"]
  GETIMPORT R18 K43 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 30
  CALL R18 4 1
  SETTABLEKS R18 R17 K35 ["Size"]
  SETTABLEKS R10 R17 K36 ["Text"]
  GETTABLEKS R18 R6 K44 ["SubtextSize"]
  SETTABLEKS R18 R17 K37 ["TextSize"]
  GETTABLEKS R18 R6 K45 ["TextAlignment"]
  SETTABLEKS R18 R17 K38 ["TextXAlignment"]
  GETIMPORT R18 K47 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R18 R17 K39 ["TextTruncate"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K32 ["LoadingText"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K19 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K48 [{"LayoutOrder", "Size"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K20 ["LayoutOrder"]
  GETIMPORT R18 K43 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  GETTABLEKS R22 R6 K49 ["LoadingBarHeight"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K35 ["Size"]
  DUPTABLE R18 K51 [{"LoadingBar"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K19 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K55 [{"AnchorPoint", "Position", "Size", "Progress"}]
  GETIMPORT R22 K57 [Vector2.new]
  LOADK R23 K58 [0.5]
  LOADK R24 K58 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K52 ["AnchorPoint"]
  GETIMPORT R22 K43 [UDim2.new]
  LOADK R23 K58 [0.5]
  LOADN R24 0
  LOADK R25 K58 [0.5]
  LOADN R26 10
  CALL R22 4 1
  SETTABLEKS R22 R21 K53 ["Position"]
  GETTABLEKS R22 R6 K59 ["LoadingBarContainerSize"]
  SETTABLEKS R22 R21 K35 ["Size"]
  SETTABLEKS R8 R21 K54 ["Progress"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K50 ["LoadingBar"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K33 ["LoadingBarContainer"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_6:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"InsertModelInWorkspace"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["InsertModelInWorkspace"]
  RETURN R1 1

PROTO_8:
  DUPTABLE R1 K3 [{"AssetImportSession", "Filename", "RootImportData"}]
  GETTABLEKS R3 R0 K4 ["Preview"]
  GETTABLEKS R2 R3 K5 ["assetImportSession"]
  SETTABLEKS R2 R1 K0 ["AssetImportSession"]
  GETTABLEKS R3 R0 K4 ["Preview"]
  GETTABLEKS R2 R3 K6 ["filename"]
  SETTABLEKS R2 R1 K1 ["Filename"]
  GETTABLEKS R3 R0 K4 ["Preview"]
  GETTABLEKS R2 R3 K7 ["importTree"]
  SETTABLEKS R2 R1 K2 ["RootImportData"]
  RETURN R1 1

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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Localization"]
  GETTABLEKS R8 R1 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["Stylizer"]
  GETTABLEKS R8 R1 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["Pane"]
  GETTABLEKS R10 R8 K17 ["TextLabel"]
  GETTABLEKS R11 R8 K18 ["Container"]
  GETTABLEKS R12 R8 K19 ["LoadingBar"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K21 ["Utility"]
  GETTABLEKS R14 R15 K22 ["trimFilename"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K20 ["Src"]
  GETTABLEKS R16 R17 K21 ["Utility"]
  GETTABLEKS R15 R16 K23 ["openInAvatarPreviewer"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K20 ["Src"]
  GETTABLEKS R17 R18 K24 ["Thunks"]
  GETTABLEKS R16 R17 K25 ["InsertModelInWorkspace"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K20 ["Src"]
  GETTABLEKS R18 R19 K26 ["Flags"]
  GETTABLEKS R17 R18 K27 ["getFFlagImporterOpensAvatarPreviewerBetaCheck"]
  CALL R16 1 1
  GETTABLEKS R17 R2 K28 ["PureComponent"]
  LOADK R19 K29 ["UploadStatus"]
  NAMECALL R17 R17 K30 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K31 [PROTO_0]
  SETTABLEKS R18 R17 K32 ["init"]
  DUPCLOSURE R18 K33 [PROTO_3]
  CAPTURE VAL R16
  CAPTURE VAL R14
  SETTABLEKS R18 R17 K34 ["didMount"]
  DUPCLOSURE R18 K35 [PROTO_4]
  SETTABLEKS R18 R17 K36 ["willUnmount"]
  DUPCLOSURE R18 K37 [PROTO_5]
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R18 R17 K38 ["render"]
  MOVE R18 R5
  DUPTABLE R19 K39 [{"Localization", "Stylizer"}]
  SETTABLEKS R6 R19 K12 ["Localization"]
  SETTABLEKS R7 R19 K14 ["Stylizer"]
  CALL R18 1 1
  MOVE R19 R17
  CALL R18 1 1
  MOVE R17 R18
  DUPCLOSURE R18 K40 [PROTO_7]
  CAPTURE VAL R15
  DUPCLOSURE R19 K41 [PROTO_8]
  GETTABLEKS R20 R3 K42 ["connect"]
  MOVE R21 R19
  MOVE R22 R18
  CALL R20 2 1
  MOVE R21 R17
  CALL R20 1 -1
  RETURN R20 -1
