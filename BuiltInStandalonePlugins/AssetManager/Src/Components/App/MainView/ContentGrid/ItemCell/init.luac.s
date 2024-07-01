PROTO_0:
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

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["AssetId"]
  GETUPVAL R2 2
  GETUPVAL R3 3
  NAMECALL R3 R3 K1 ["getPlugin"]
  CALL R3 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 -1
  CALL R1 -1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["use"]
  CALL R4 0 1
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K1 ["use"]
  CALL R5 0 1
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K1 ["use"]
  CALL R6 0 1
  GETTABLEKS R7 R0 K2 ["Cell"]
  GETUPVAL R8 7
  MOVE R9 R5
  CALL R8 1 1
  GETUPVAL R9 8
  MOVE R10 R5
  CALL R9 1 1
  LOADK R10 K3 [""]
  GETTABLEKS R12 R7 K4 ["AssetId"]
  GETTABLE R11 R8 R12
  JUMPIFNOT R11 [+1]
  LOADK R10 K5 ["SelectedCell"]
  GETUPVAL R12 9
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 10
  NEWTABLE R13 8 0
  GETTABLEKS R14 R0 K7 ["Key"]
  SETTABLEKS R14 R13 K8 ["LayoutOrder"]
  GETTABLEKS R14 R0 K9 ["Size"]
  SETTABLEKS R14 R13 K9 ["Size"]
  GETTABLEKS R14 R0 K10 ["Position"]
  SETTABLEKS R14 R13 K10 ["Position"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K11 ["OnClick"]
  NEWCLOSURE R14 P1
  CAPTURE UPVAL U11
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R14 R13 K12 ["OnRightClick"]
  GETUPVAL R15 9
  GETTABLEKS R14 R15 K13 ["Tag"]
  LOADK R15 K14 ["ItemCell X-Top X-Center X-ColumnS"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K17 [{"ThumbnailContainer", "TagContainer"}]
  GETUPVAL R16 9
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 10
  NEWTABLE R17 1 0
  GETUPVAL R19 9
  GETTABLEKS R18 R19 K13 ["Tag"]
  LOADK R20 K18 ["ThumbnailContainer Secondary X-Corner X-Pad X-Center X-Middle %*"]
  MOVE R22 R10
  NAMECALL R20 R20 K19 ["format"]
  CALL R20 2 1
  MOVE R19 R20
  SETTABLE R19 R17 R18
  DUPTABLE R18 K21 [{"Thumbnail"}]
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 12
  DUPTABLE R21 K23 [{"LayoutOrder", "Image"}]
  NAMECALL R22 R2 K24 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K8 ["LayoutOrder"]
  MOVE R24 R7
  NAMECALL R22 R6 K25 ["getThumbnailForItem"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K22 ["Image"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K20 ["Thumbnail"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K15 ["ThumbnailContainer"]
  GETUPVAL R16 9
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 10
  NEWTABLE R17 2 0
  NAMECALL R18 R2 K24 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K8 ["LayoutOrder"]
  GETUPVAL R19 9
  GETTABLEKS R18 R19 K13 ["Tag"]
  LOADK R19 K26 ["TagContainer X-Column X-PadS X-Left X-Middle"]
  SETTABLE R19 R17 R18
  DUPTABLE R18 K29 [{"NameTag", "TypeTag"}]
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 13
  DUPTABLE R21 K33 [{"AutomaticSize", "LayoutOrder", "Text", "TextTruncate"}]
  GETIMPORT R22 K36 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K30 ["AutomaticSize"]
  NAMECALL R22 R2 K24 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K8 ["LayoutOrder"]
  GETTABLEKS R23 R0 K2 ["Cell"]
  GETTABLEKS R22 R23 K37 ["DisplayName"]
  SETTABLEKS R22 R21 K31 ["Text"]
  GETIMPORT R22 K39 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R22 R21 K32 ["TextTruncate"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["NameTag"]
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 13
  NEWTABLE R21 8 0
  GETIMPORT R22 K36 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K30 ["AutomaticSize"]
  NAMECALL R22 R2 K24 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K8 ["LayoutOrder"]
  LOADK R24 K40 ["AssetType"]
  GETTABLEKS R25 R7 K40 ["AssetType"]
  NAMECALL R22 R3 K41 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K31 ["Text"]
  GETIMPORT R22 K39 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R22 R21 K32 ["TextTruncate"]
  GETUPVAL R23 9
  GETTABLEKS R22 R23 K13 ["Tag"]
  LOADK R23 K42 ["Body"]
  SETTABLE R23 R21 R22
  CALL R19 2 1
  SETTABLEKS R19 R18 K28 ["TypeTag"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K16 ["TagContainer"]
  CALL R11 3 -1
  RETURN R11 -1

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
  GETTABLEKS R6 R5 K12 ["Image"]
  GETTABLEKS R7 R5 K13 ["Pane"]
  GETTABLEKS R8 R5 K14 ["TextLabel"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Controllers"]
  GETTABLEKS R10 R11 K17 ["ItemsController"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Controllers"]
  GETTABLEKS R11 R12 K18 ["PluginController"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K19 ["Networking"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K15 ["Src"]
  GETTABLEKS R14 R15 K20 ["Hooks"]
  GETTABLEKS R13 R14 K21 ["useItems"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K20 ["Hooks"]
  GETTABLEKS R14 R15 K22 ["useItemSelection"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K23 ["useState"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K15 ["Src"]
  GETTABLEKS R17 R18 K24 ["Util"]
  GETTABLEKS R16 R17 K25 ["renderContextMenu"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R0 K15 ["Src"]
  GETTABLEKS R17 R18 K26 ["Types"]
  CALL R16 1 1
  GETTABLEKS R18 R2 K24 ["Util"]
  GETTABLEKS R17 R18 K27 ["DoubleClickDetector"]
  GETTABLEKS R19 R2 K24 ["Util"]
  GETTABLEKS R18 R19 K28 ["LayoutOrderIterator"]
  DUPCLOSURE R19 K29 [PROTO_2]
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R8
  RETURN R19 1
