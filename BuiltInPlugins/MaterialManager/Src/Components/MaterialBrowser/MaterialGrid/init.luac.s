PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"MaterialItem", "LayoutOrder"}]
  SETTABLEKS R1 R4 K1 ["MaterialItem"]
  SETTABLEKS R0 R4 K2 ["LayoutOrder"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["dispatchSetMenuHover"]
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["dispatchSetMenuHover"]
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K1 ["renderItem"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onMouseEnter"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onMouseLeave"]
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["MaterialGrid"]
  GETTABLEKS R3 R1 K3 ["LayoutOrder"]
  GETTABLEKS R4 R1 K4 ["MaterialTileSize"]
  GETTABLEKS R5 R1 K5 ["Size"]
  GETTABLEKS R6 R1 K6 ["ViewType"]
  GETTABLEKS R7 R1 K7 ["OnShowButtonClicked"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K10 [{"BackgroundColor", "LayoutOrder", "Size"}]
  GETTABLEKS R11 R2 K9 ["BackgroundColor"]
  SETTABLEKS R11 R10 K9 ["BackgroundColor"]
  SETTABLEKS R3 R10 K3 ["LayoutOrder"]
  SETTABLEKS R5 R10 K5 ["Size"]
  DUPTABLE R11 K13 [{"Grid", "SidebarButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K23 [{"AbsoluteMax", "CellPadding", "CellSize", "BufferedRows", "Items", "Loading", "Padding", "RenderItem", "Size", "ZIndex"}]
  GETTABLEKS R16 R1 K24 ["MaterialList"]
  LENGTH R15 R16
  SETTABLEKS R15 R14 K14 ["AbsoluteMax"]
  JUMPIFNOTEQKS R6 K11 ["Grid"] [+9]
  GETIMPORT R15 K27 [UDim2.fromOffset]
  GETTABLEKS R16 R2 K28 ["GridPadding"]
  GETTABLEKS R17 R2 K28 ["GridPadding"]
  CALL R15 2 1
  JUMP [+7]
  GETIMPORT R15 K27 [UDim2.fromOffset]
  GETTABLEKS R16 R2 K29 ["ListPadding"]
  GETTABLEKS R17 R2 K29 ["ListPadding"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K15 ["CellPadding"]
  JUMPIFNOTEQKS R6 K11 ["Grid"] [+7]
  GETIMPORT R15 K27 [UDim2.fromOffset]
  MOVE R16 R4
  MOVE R17 R4
  CALL R15 2 1
  JUMP [+8]
  GETIMPORT R15 K31 [UDim2.new]
  LOADN R16 1
  LOADN R17 236
  LOADN R18 0
  GETTABLEKS R19 R2 K32 ["ListHeight"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K16 ["CellSize"]
  LOADN R15 2
  SETTABLEKS R15 R14 K17 ["BufferedRows"]
  GETTABLEKS R15 R1 K24 ["MaterialList"]
  SETTABLEKS R15 R14 K18 ["Items"]
  LOADB R15 0
  SETTABLEKS R15 R14 K19 ["Loading"]
  GETTABLEKS R15 R2 K20 ["Padding"]
  SETTABLEKS R15 R14 K20 ["Padding"]
  GETTABLEKS R15 R0 K33 ["renderItem"]
  SETTABLEKS R15 R14 K21 ["RenderItem"]
  GETIMPORT R15 K35 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K5 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K22 ["ZIndex"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K11 ["Grid"]
  GETTABLEKS R13 R1 K36 ["SideBarVisible"]
  JUMPIF R13 [+51]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K44 [{"Size", "LeftIcon", "IconColor", "OnClick", "OnMouseEnter", "OnMouseLeave", "AnchorPoint", "Position", "ZIndex"}]
  GETTABLEKS R15 R2 K45 ["IconSize"]
  SETTABLEKS R15 R14 K5 ["Size"]
  GETTABLEKS R15 R2 K46 ["ChevronRight"]
  SETTABLEKS R15 R14 K37 ["LeftIcon"]
  GETTABLEKS R15 R2 K38 ["IconColor"]
  SETTABLEKS R15 R14 K38 ["IconColor"]
  MOVE R15 R7
  JUMPIF R15 [+1]
  DUPCLOSURE R15 K47 [PROTO_4]
  SETTABLEKS R15 R14 K39 ["OnClick"]
  GETTABLEKS R15 R0 K48 ["onMouseEnter"]
  SETTABLEKS R15 R14 K40 ["OnMouseEnter"]
  GETTABLEKS R15 R0 K49 ["onMouseLeave"]
  SETTABLEKS R15 R14 K41 ["OnMouseLeave"]
  GETIMPORT R15 K51 [Vector2.new]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["AnchorPoint"]
  GETIMPORT R15 K31 [UDim2.new]
  LOADN R16 0
  LOADN R17 5
  LOADN R18 1
  LOADN R19 251
  CALL R15 4 1
  SETTABLEKS R15 R14 K43 ["Position"]
  LOADN R15 2
  SETTABLEKS R15 R14 K22 ["ZIndex"]
  CALL R12 2 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K12 ["SidebarButton"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_6:
  DUPTABLE R2 K3 [{"MaterialList", "MaterialTileSize", "ViewType"}]
  GETTABLEKS R4 R0 K4 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K0 ["MaterialList"]
  SETTABLEKS R3 R2 K0 ["MaterialList"]
  GETTABLEKS R4 R0 K4 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K1 ["MaterialTileSize"]
  SETTABLEKS R3 R2 K1 ["MaterialTileSize"]
  GETTABLEKS R4 R0 K4 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K2 ["ViewType"]
  SETTABLEKS R3 R2 K2 ["ViewType"]
  RETURN R2 1

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K1 [{"dispatchSetMenuHover"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchSetMenuHover"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R7 R5 K13 ["Analytics"]
  GETTABLEKS R8 R5 K14 ["Localization"]
  GETTABLEKS R10 R4 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["Stylizer"]
  GETTABLEKS R10 R4 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["Pane"]
  GETTABLEKS R12 R10 K19 ["InfiniteScrollingGrid"]
  GETTABLEKS R13 R10 K20 ["IconButton"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K5 ["Src"]
  GETTABLEKS R16 R17 K21 ["Actions"]
  GETTABLEKS R15 R16 K22 ["SetMenuHover"]
  CALL R14 1 1
  GETTABLEKS R16 R0 K5 ["Src"]
  GETTABLEKS R15 R16 K23 ["Components"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R15 K24 ["MaterialBrowser"]
  GETTABLEKS R18 R19 K25 ["MaterialGrid"]
  GETTABLEKS R17 R18 K26 ["MaterialItem"]
  CALL R16 1 1
  GETTABLEKS R17 R2 K27 ["PureComponent"]
  LOADK R19 K25 ["MaterialGrid"]
  NAMECALL R17 R17 K28 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K29 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R16
  SETTABLEKS R18 R17 K30 ["init"]
  DUPCLOSURE R18 K31 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  SETTABLEKS R18 R17 K32 ["render"]
  MOVE R18 R6
  DUPTABLE R19 K33 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R7 R19 K13 ["Analytics"]
  SETTABLEKS R8 R19 K14 ["Localization"]
  SETTABLEKS R9 R19 K16 ["Stylizer"]
  CALL R18 1 1
  MOVE R19 R17
  CALL R18 1 1
  MOVE R17 R18
  GETTABLEKS R18 R3 K34 ["connect"]
  DUPCLOSURE R19 K35 [PROTO_6]
  DUPCLOSURE R20 K36 [PROTO_8]
  CAPTURE VAL R14
  CALL R18 2 1
  MOVE R19 R17
  CALL R18 1 -1
  RETURN R18 -1
