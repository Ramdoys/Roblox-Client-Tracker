PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOTEQ R0 R2 [+5]
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOTEQ R0 R2 [+7]
  GETUPVAL R2 3
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["CopyToClipboard"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K2 [error]
  LOADK R3 K3 ["Invalid Key"]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["row"]
  GETTABLEN R2 R3 1
  FASTCALL1 TONUMBER R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K2 [tonumber]
  CALL R3 1 1
  JUMPIF R3 [+18]
  LOADNIL R3
  GETIMPORT R4 K4 [pairs]
  MOVE R5 R1
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R9 R8 K5 ["Key"]
  GETUPVAL R10 0
  CALL R10 0 1
  JUMPIFNOTEQ R9 R10 [+3]
  MOVE R3 R7
  JUMP [+2]
  FORGLOOP R4 2 [-9]
  LOADNIL R4
  SETTABLE R4 R1 R3
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["ProductList"]
  GETTABLEKS R5 R1 K4 ["ShowTable"]
  GETTABLEKS R6 R1 K5 ["CreateNewDevProduct"]
  GETTABLEKS R7 R1 K6 ["OnEditDevProductClicked"]
  GETTABLEKS R8 R1 K7 ["OnLoadMoreDevProducts"]
  GETTABLEKS R9 R1 K8 ["LayoutOrder"]
  LOADK R12 K9 ["General"]
  LOADK R13 K10 ["ButtonCreate"]
  NAMECALL R10 R3 K11 ["getText"]
  CALL R10 3 1
  GETUPVAL R11 0
  MOVE R12 R10
  GETTABLEKS R15 R2 K12 ["fontStyle"]
  GETTABLEKS R14 R15 K13 ["Normal"]
  GETTABLEKS R13 R14 K14 ["TextSize"]
  GETTABLEKS R16 R2 K12 ["fontStyle"]
  GETTABLEKS R15 R16 K13 ["Normal"]
  GETTABLEKS R14 R15 K15 ["Font"]
  CALL R11 3 1
  NEWTABLE R12 0 3
  LOADK R15 K16 ["Monetization"]
  LOADK R16 K17 ["ProductID"]
  NAMECALL R13 R3 K11 ["getText"]
  CALL R13 3 1
  LOADK R16 K16 ["Monetization"]
  LOADK R17 K18 ["ProductName"]
  NAMECALL R14 R3 K11 ["getText"]
  CALL R14 3 1
  LOADK R17 K16 ["Monetization"]
  LOADK R18 K19 ["PriceTitle"]
  NAMECALL R15 R3 K11 ["getText"]
  CALL R15 3 -1
  SETLIST R12 R13 -1 [1]
  NEWCLOSURE R13 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NEWTABLE R14 0 2
  DUPTABLE R15 K22 [{"Key", "Text"}]
  GETUPVAL R16 1
  CALL R16 0 1
  SETTABLEKS R16 R15 K20 ["Key"]
  LOADK R18 K9 ["General"]
  LOADK R19 K23 ["ButtonEdit"]
  NAMECALL R16 R3 K11 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K21 ["Text"]
  DUPTABLE R16 K22 [{"Key", "Text"}]
  GETUPVAL R17 2
  CALL R17 0 1
  SETTABLEKS R17 R16 K20 ["Key"]
  LOADK R19 K9 ["General"]
  LOADK R20 K24 ["CopyIDToClipboard"]
  NAMECALL R17 R3 K11 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K21 ["Text"]
  SETLIST R14 R15 2 [1]
  DUPTABLE R15 K27 [{"DevProductsTitle", "DeveloperProductTable"}]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K28 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K30 [{"LayoutOrder", "Title"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K8 ["LayoutOrder"]
  LOADK R21 K16 ["Monetization"]
  LOADK R22 K31 ["DevProducts"]
  NAMECALL R19 R3 K11 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K29 ["Title"]
  DUPTABLE R19 K35 [{"Padding", "Layout", "CreateButton"}]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K28 ["createElement"]
  LOADK R21 K36 ["UIPadding"]
  DUPTABLE R22 K38 [{"PaddingRight"}]
  GETIMPORT R23 K41 [UDim.new]
  LOADN R24 0
  GETTABLEKS R26 R2 K42 ["devProducts"]
  GETTABLEKS R25 R26 K43 ["titlePadding"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K37 ["PaddingRight"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K32 ["Padding"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K28 ["createElement"]
  LOADK R21 K44 ["UIListLayout"]
  DUPTABLE R22 K47 [{"HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R23 K50 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R23 R22 K45 ["HorizontalAlignment"]
  GETIMPORT R23 K52 [Enum.VerticalAlignment.Center]
  SETTABLEKS R23 R22 K46 ["VerticalAlignment"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K33 ["Layout"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K28 ["createElement"]
  GETUPVAL R21 6
  DUPTABLE R22 K56 [{"Style", "Text", "Size", "LayoutOrder", "OnClick"}]
  LOADK R23 K57 ["GameSettingsPrimaryButton"]
  SETTABLEKS R23 R22 K53 ["Style"]
  SETTABLEKS R10 R22 K21 ["Text"]
  GETIMPORT R23 K59 [UDim2.new]
  LOADN R24 0
  GETTABLEKS R26 R11 K60 ["X"]
  GETTABLEKS R28 R2 K61 ["createButton"]
  GETTABLEKS R27 R28 K62 ["PaddingX"]
  ADD R25 R26 R27
  LOADN R26 0
  GETTABLEKS R28 R11 K63 ["Y"]
  GETTABLEKS R30 R2 K61 ["createButton"]
  GETTABLEKS R29 R30 K64 ["PaddingY"]
  ADD R27 R28 R29
  CALL R23 4 1
  SETTABLEKS R23 R22 K54 ["Size"]
  LOADN R23 2
  SETTABLEKS R23 R22 K8 ["LayoutOrder"]
  NEWCLOSURE R23 P1
  CAPTURE VAL R6
  SETTABLEKS R23 R22 K55 ["OnClick"]
  NEWTABLE R23 0 1
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K28 ["createElement"]
  GETUPVAL R25 7
  DUPTABLE R26 K66 [{"Cursor"}]
  LOADK R27 K67 ["PointingHand"]
  SETTABLEKS R27 R26 K65 ["Cursor"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  SETTABLEKS R20 R19 K34 ["CreateButton"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K25 ["DevProductsTitle"]
  MOVE R16 R5
  JUMPIFNOT R16 [+24]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K28 ["createElement"]
  GETUPVAL R17 8
  DUPTABLE R18 K74 [{"Headers", "Data", "MenuItems", "MenuItemsFilterFunc", "OnItemClicked", "LayoutOrder", "NextPageFunc"}]
  SETTABLEKS R12 R18 K68 ["Headers"]
  SETTABLEKS R4 R18 K69 ["Data"]
  SETTABLEKS R14 R18 K70 ["MenuItems"]
  DUPCLOSURE R20 K76 [PROTO_2]
  CAPTURE UPVAL U2
  ORK R19 R20 K75 []
  SETTABLEKS R19 R18 K71 ["MenuItemsFilterFunc"]
  SETTABLEKS R13 R18 K72 ["OnItemClicked"]
  LOADN R19 2
  SETTABLEKS R19 R18 K8 ["LayoutOrder"]
  SETTABLEKS R8 R18 K73 ["NextPageFunc"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K26 ["DeveloperProductTable"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K28 ["createElement"]
  GETUPVAL R17 9
  DUPTABLE R18 K79 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
  GETIMPORT R19 K81 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K77 ["AutomaticSize"]
  GETIMPORT R19 K84 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K33 ["Layout"]
  SETTABLEKS R9 R18 K8 ["LayoutOrder"]
  GETTABLEKS R20 R2 K42 ["devProducts"]
  GETTABLEKS R19 R20 K85 ["headerPadding"]
  SETTABLEKS R19 R18 K78 ["Spacing"]
  MOVE R19 R15
  CALL R16 3 -1
  RETURN R16 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["KeyProvider"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["getCopyIdKeyName"]
  GETTABLEKS R3 R1 K9 ["getEditKeyName"]
  GETIMPORT R4 K11 [game]
  LOADK R6 K12 ["StudioService"]
  NAMECALL R4 R4 K13 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K14 ["Packages"]
  GETTABLEKS R6 R7 K15 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K14 ["Packages"]
  GETTABLEKS R7 R8 K16 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K6 ["Util"]
  GETTABLEKS R8 R7 K17 ["GetTextSize"]
  GETTABLEKS R9 R6 K18 ["UI"]
  GETTABLEKS R10 R9 K19 ["Button"]
  GETTABLEKS R11 R9 K20 ["HoverArea"]
  GETTABLEKS R12 R9 K21 ["Pane"]
  GETTABLEKS R13 R9 K22 ["TitledFrame"]
  GETTABLEKS R14 R6 K23 ["ContextServices"]
  GETTABLEKS R15 R14 K24 ["withContext"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K5 ["Src"]
  GETTABLEKS R18 R19 K25 ["Components"]
  GETTABLEKS R17 R18 K26 ["TableWithMenu"]
  CALL R16 1 1
  GETTABLEKS R17 R5 K27 ["PureComponent"]
  GETIMPORT R20 K1 [script]
  GETTABLEKS R19 R20 K28 ["Name"]
  NAMECALL R17 R17 K29 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K30 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R16
  CAPTURE VAL R12
  SETTABLEKS R18 R17 K31 ["render"]
  MOVE R18 R15
  DUPTABLE R19 K34 [{"Localization", "Stylizer"}]
  GETTABLEKS R20 R14 K32 ["Localization"]
  SETTABLEKS R20 R19 K32 ["Localization"]
  GETTABLEKS R20 R14 K33 ["Stylizer"]
  SETTABLEKS R20 R19 K33 ["Stylizer"]
  CALL R18 1 1
  MOVE R19 R17
  CALL R18 1 1
  MOVE R17 R18
  RETURN R17 1
