PROTO_0:
  GETTABLE R3 R0 R1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["AssetInfoField"]
  GETTABLEKS R4 R5 K1 ["Creator"]
  JUMPIFNOTEQ R1 R4 [+11]
  GETTABLEKS R5 R3 K2 ["Name"]
  JUMPIFEQKS R5 K3 [""] [+4]
  GETTABLEKS R4 R3 K2 ["Name"]
  RETURN R4 1
  GETTABLEKS R4 R3 K4 ["Id"]
  RETURN R4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["AssetInfoField"]
  GETTABLEKS R4 R5 K5 ["Modified"]
  JUMPIFEQ R1 R4 [+8]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["AssetInfoField"]
  GETTABLEKS R4 R5 K6 ["Created"]
  JUMPIFNOTEQ R1 R4 [+7]
  LOADK R6 K7 ["lll"]
  LOADK R7 K8 ["en-us"]
  NAMECALL R4 R3 K9 ["FormatLocalTime"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["AssetInfoField"]
  GETTABLEKS R4 R5 K10 ["AssetType"]
  JUMPIFNOTEQ R1 R4 [+7]
  LOADK R6 K10 ["AssetType"]
  MOVE R7 R3
  NAMECALL R4 R2 K11 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K13 [tostring]
  CALL R4 1 1
  RETURN R4 1

PROTO_1:
  NEWTABLE R3 0 0
  GETUPVAL R4 0
  MOVE R5 R1
  CALL R4 1 2
  MOVE R6 R4
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R11 1
  MOVE R12 R0
  MOVE R13 R10
  MOVE R14 R2
  CALL R11 3 1
  GETTABLE R13 R5 R9
  GETTABLEKS R12 R13 K0 ["Offset"]
  GETUPVAL R15 2
  MOVE R16 R11
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["X"]
  GETUPVAL R17 3
  LOADK R19 K3 ["CellContentPadding"]
  NAMECALL R17 R17 K4 ["GetAttribute"]
  CALL R17 2 1
  MULK R16 R17 K2 [2]
  SUB R15 R12 R16
  JUMPIFLT R15 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMPIFNOT R13 [+9]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K7 [{"Text"}]
  SETTABLEKS R11 R16 K6 ["Text"]
  CALL R14 2 1
  JUMP [+1]
  LOADNIL R14
  JUMPIFNOTEQKN R9 K8 [1] [+104]
  GETUPVAL R17 3
  LOADK R19 K9 ["ThumbnailSize"]
  NAMECALL R17 R17 K4 ["GetAttribute"]
  CALL R17 2 1
  SUB R16 R12 R17
  GETUPVAL R17 3
  LOADK R19 K3 ["CellContentPadding"]
  NAMECALL R17 R17 K4 ["GetAttribute"]
  CALL R17 2 1
  SUB R15 R16 R17
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K5 ["createElement"]
  GETUPVAL R17 6
  NEWTABLE R18 4 0
  SETTABLEKS R9 R18 K10 ["LayoutOrder"]
  GETIMPORT R19 K13 [UDim2.new]
  LOADN R20 0
  MOVE R21 R12
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K14 ["Size"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K15 ["Tag"]
  LOADK R20 K16 ["ThumbnailPadding X-Row X-Left X-Middle"]
  SETTABLE R20 R18 R19
  DUPTABLE R19 K19 [{"ThumbnailContainer", "AssetName"}]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K5 ["createElement"]
  GETUPVAL R21 6
  NEWTABLE R22 2 0
  LOADN R23 1
  SETTABLEKS R23 R22 K10 ["LayoutOrder"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K15 ["Tag"]
  LOADK R24 K20 ["ThumbnailContainer Secondary X-Corner X-Center X-Middle X-PadS"]
  SETTABLE R24 R22 R23
  DUPTABLE R23 K22 [{"Thumbnail"}]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K5 ["createElement"]
  GETUPVAL R25 7
  DUPTABLE R26 K24 [{"AssetId"}]
  GETTABLEKS R27 R0 K23 ["AssetId"]
  SETTABLEKS R27 R26 K23 ["AssetId"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K21 ["Thumbnail"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K17 ["ThumbnailContainer"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K5 ["createElement"]
  GETUPVAL R21 8
  NEWTABLE R22 8 0
  LOADN R23 2
  SETTABLEKS R23 R22 K10 ["LayoutOrder"]
  SETTABLEKS R11 R22 K6 ["Text"]
  GETIMPORT R23 K28 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R23 R22 K26 ["TextTruncate"]
  GETIMPORT R23 K13 [UDim2.new]
  LOADN R24 0
  MOVE R25 R15
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K14 ["Size"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K15 ["Tag"]
  LOADK R24 K29 ["Left X-FitY"]
  SETTABLE R24 R22 R23
  DUPTABLE R23 K31 [{"Tooltip"}]
  SETTABLEKS R14 R23 K30 ["Tooltip"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K18 ["AssetName"]
  CALL R16 3 1
  SETTABLE R16 R3 R9
  JUMP [+33]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 8
  NEWTABLE R17 8 0
  SETTABLEKS R9 R17 K10 ["LayoutOrder"]
  SETTABLEKS R11 R17 K6 ["Text"]
  GETIMPORT R18 K28 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R18 R17 K26 ["TextTruncate"]
  GETIMPORT R18 K13 [UDim2.new]
  LOADN R19 0
  MOVE R20 R12
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K14 ["Size"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K15 ["Tag"]
  LOADK R19 K32 ["Left"]
  SETTABLE R19 R17 R18
  DUPTABLE R18 K31 [{"Tooltip"}]
  SETTABLEKS R14 R18 K30 ["Tooltip"]
  CALL R15 3 1
  SETTABLE R15 R3 R9
  FORGLOOP R6 2 [-174]
  RETURN R3 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AssetId"]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["Key"]
  GETUPVAL R5 4
  NAMECALL R5 R5 K2 ["isDoubleClick"]
  CALL R5 1 -1
  NAMECALL R0 R0 K3 ["handleClick"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AssetId"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Key"]
  GETUPVAL R4 3
  NAMECALL R0 R0 K2 ["handleRightClick"]
  CALL R0 4 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 -1
  CALL R1 -1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["use"]
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETTABLEKS R4 R0 K2 ["AssetInfo"]
  GETUPVAL R5 4
  MOVE R6 R3
  CALL R5 1 1
  GETUPVAL R6 5
  MOVE R7 R3
  CALL R6 1 1
  GETTABLEKS R9 R0 K4 ["Key"]
  MODK R8 R9 K3 [2]
  JUMPIFNOTEQKN R8 K5 [0] [+3]
  LOADK R7 K6 ["ContrastRow"]
  JUMP [+1]
  LOADK R7 K7 [""]
  GETTABLEKS R9 R4 K8 ["AssetId"]
  GETTABLE R8 R5 R9
  JUMPIFNOT R8 [+1]
  LOADK R7 K9 ["SelectedRow"]
  GETUPVAL R8 6
  MOVE R9 R4
  MOVE R10 R3
  MOVE R11 R2
  CALL R8 3 1
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 8
  NEWTABLE R11 8 0
  GETTABLEKS R12 R0 K4 ["Key"]
  SETTABLEKS R12 R11 K11 ["LayoutOrder"]
  GETTABLEKS R12 R0 K12 ["Position"]
  SETTABLEKS R12 R11 K12 ["Position"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K13 ["OnClick"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R12 R11 K14 ["OnRightClick"]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K15 ["Tag"]
  LOADK R14 K16 ["ItemRow X-FitX X-Row X-Left X-Middle %*"]
  MOVE R16 R7
  NAMECALL R14 R14 K17 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLE R13 R11 R12
  NEWTABLE R12 0 1
  MOVE R13 R8
  SETLIST R12 R13 1 [1]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R5 R2 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["TextLabel"]
  GETTABLEKS R8 R5 K14 ["Tooltip"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Components"]
  GETTABLEKS R11 R12 K17 ["Shared"]
  GETTABLEKS R10 R11 K18 ["AssetThumbnail"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K19 ["Controllers"]
  GETTABLEKS R11 R12 K20 ["ItemsController"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K21 ["Hooks"]
  GETTABLEKS R12 R13 K22 ["useColumns"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K15 ["Src"]
  GETTABLEKS R14 R15 K21 ["Hooks"]
  GETTABLEKS R13 R14 K23 ["useItems"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K21 ["Hooks"]
  GETTABLEKS R14 R15 K24 ["useItemSelection"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K25 ["useState"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R0 K15 ["Src"]
  GETTABLEKS R16 R17 K26 ["Types"]
  CALL R15 1 1
  GETTABLEKS R17 R2 K27 ["Util"]
  GETTABLEKS R16 R17 K28 ["DoubleClickDetector"]
  GETTABLEKS R18 R2 K27 ["Util"]
  GETTABLEKS R17 R18 K29 ["GetTextSize"]
  GETIMPORT R18 K5 [require]
  GETIMPORT R20 K1 [script]
  GETTABLEKS R19 R20 K30 ["styles"]
  CALL R18 1 1
  DUPCLOSURE R19 K31 [PROTO_0]
  CAPTURE VAL R15
  DUPCLOSURE R20 K32 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R7
  DUPCLOSURE R21 K33 [PROTO_4]
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R20
  CAPTURE VAL R1
  CAPTURE VAL R6
  RETURN R21 1
