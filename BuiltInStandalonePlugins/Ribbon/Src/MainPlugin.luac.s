PROTO_0:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["currentTab"]
  JUMPIFEQ R3 R0 [+39]
  GETUPVAL R3 0
  DUPTABLE R5 K3 [{"currentTab", "showRibbon"}]
  SETTABLEKS R0 R5 K1 ["currentTab"]
  GETUPVAL R7 1
  JUMPIFNOT R7 [+2]
  LOADB R6 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K2 ["showRibbon"]
  NAMECALL R3 R3 K4 ["setState"]
  CALL R3 2 0
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+28]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["InteractionTelemetry"]
  DUPTABLE R5 K9 [{"functionType", "sourceType", "sourceData"}]
  LOADK R6 K10 ["Navigation"]
  SETTABLEKS R6 R5 K6 ["functionType"]
  LOADK R6 K11 ["Widget"]
  SETTABLEKS R6 R5 K7 ["sourceType"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K12 ["toString"]
  MOVE R7 R1
  CALL R6 1 1
  SETTABLEKS R6 R5 K8 ["sourceData"]
  NAMECALL R3 R3 K13 ["ReportInteractionAsync"]
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+5]
  JUMPIFNOT R2 [+4]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["onToggleRibbon"]
  CALL R3 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"expanded"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["expanded"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R0 1
  JUMPIF R0 [+14]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["Panels"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["widgetUri"]
  GETIMPORT R3 K7 [Vector2.new]
  LOADN R4 0
  LOADN R5 129
  CALL R3 2 -1
  NAMECALL R0 R0 K8 ["SetSizeAsync"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"expanded"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["expanded"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R0 1
  JUMPIF R0 [+14]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["Panels"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["widgetUri"]
  GETIMPORT R3 K7 [Vector2.new]
  LOADN R4 0
  LOADN R5 44
  CALL R3 2 -1
  NAMECALL R0 R0 K8 ["SetSizeAsync"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toString"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Uri"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["toString"]
  GETTABLEKS R4 R0 K1 ["Uri"]
  CALL R3 1 1
  JUMPIFNOTEQ R2 R3 [+3]
  GETUPVAL R1 1
  RETURN R1 1
  MOVE R1 R0
  RETURN R1 1

PROTO_5:
  DUPTABLE R1 K1 [{"customTools"}]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["customTools"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["customTools"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R1 R2 K1 ["X"]
  GETUPVAL R2 0
  JUMPIFNOTLT R2 R1 [+10]
  GETUPVAL R2 1
  DUPTABLE R4 K3 [{"scale"}]
  LOADK R5 K4 ["Large"]
  SETTABLEKS R5 R4 K2 ["scale"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R2 2
  JUMPIFNOTLT R2 R1 [+10]
  GETUPVAL R2 1
  DUPTABLE R4 K3 [{"scale"}]
  LOADK R5 K6 ["Medium"]
  SETTABLEKS R5 R4 K2 ["scale"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R2 1
  DUPTABLE R4 K3 [{"scale"}]
  LOADK R5 K7 ["Small"]
  SETTABLEKS R5 R4 K2 ["scale"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K1 [{"showLabels"}]
  GETTABLEKS R3 R0 K0 ["showLabels"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["showLabels"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_8]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K1 [{"showRibbon"}]
  GETTABLEKS R3 R0 K0 ["showRibbon"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["showRibbon"]
  RETURN R1 1

PROTO_11:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_10]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R2 R1 K0 ["Plugin"]
  GETTABLEKS R3 R2 K1 ["MultipleDocumentInterfaceInstance"]
  FASTCALL2K ASSERT R3 K2 [+5]
  MOVE R5 R3
  LOADK R6 K2 ["roblox-cli analyze w/o --project thinks mdiInstance is optional"]
  GETIMPORT R4 K4 [assert]
  CALL R4 2 0
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+5]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADNIL R4
  JUMP [+2]
  GETTABLEKS R4 R3 K5 ["FocusedDataModelSession"]
  DUPTABLE R5 K12 [{"expanded", "currentTab", "customTools", "scale", "showRibbon", "showLabels"}]
  JUMPIFNOT R4 [+2]
  LOADB R6 1
  JUMP [+1]
  LOADB R6 0
  SETTABLEKS R6 R5 K6 ["expanded"]
  LOADK R6 K13 ["Home"]
  SETTABLEKS R6 R5 K7 ["currentTab"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K8 ["customTools"]
  LOADK R6 K14 ["Large"]
  SETTABLEKS R6 R5 K9 ["scale"]
  GETUPVAL R7 2
  JUMPIFNOT R7 [+2]
  LOADB R6 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K10 ["showRibbon"]
  GETUPVAL R7 2
  JUMPIFNOT R7 [+2]
  LOADB R6 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K11 ["showLabels"]
  SETTABLEKS R5 R0 K15 ["state"]
  GETTABLEKS R5 R1 K0 ["Plugin"]
  LOADK R7 K16 ["Tools"]
  NAMECALL R5 R5 K17 ["GetPluginComponent"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K16 ["Tools"]
  GETTABLEKS R5 R1 K0 ["Plugin"]
  LOADK R7 K18 ["Panels"]
  NAMECALL R5 R5 K17 ["GetPluginComponent"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K18 ["Panels"]
  GETTABLEKS R5 R1 K0 ["Plugin"]
  LOADK R7 K19 ["Widgets"]
  NAMECALL R5 R5 K17 ["GetPluginComponent"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K19 ["Widgets"]
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+7]
  GETTABLEKS R5 R1 K0 ["Plugin"]
  LOADK R7 K20 ["InteractionTelemetry"]
  NAMECALL R5 R5 K17 ["GetPluginComponent"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R0 K20 ["InteractionTelemetry"]
  GETUPVAL R5 4
  NAMECALL R6 R2 K21 ["GetUri"]
  CALL R6 1 1
  DUPTABLE R7 K24 [{"Category", "ItemId"}]
  LOADK R8 K25 ["Widget"]
  SETTABLEKS R8 R7 K22 ["Category"]
  LOADK R8 K26 ["Ribbon"]
  SETTABLEKS R8 R7 K23 ["ItemId"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K27 ["widgetUri"]
  GETTABLEKS R5 R0 K18 ["Panels"]
  GETTABLEKS R7 R0 K27 ["widgetUri"]
  GETIMPORT R8 K30 [Vector2.new]
  LOADN R9 0
  JUMPIFNOT R4 [+2]
  LOADN R10 129
  JUMP [+1]
  LOADN R10 44
  CALL R8 2 -1
  NAMECALL R5 R5 K31 ["SetSizeAsync"]
  CALL R5 -1 0
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K32 ["Localization"]
  GETTABLEKS R5 R6 K29 ["new"]
  DUPTABLE R6 K36 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R7 6
  SETTABLEKS R7 R6 K33 ["stringResourceTable"]
  GETUPVAL R7 7
  SETTABLEKS R7 R6 K34 ["translationResourceTable"]
  LOADK R7 K26 ["Ribbon"]
  SETTABLEKS R7 R6 K35 ["pluginName"]
  CALL R5 1 1
  SETTABLEKS R5 R0 K37 ["localization"]
  GETUPVAL R5 8
  JUMPIFNOT R5 [+10]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K38 ["Analytics"]
  GETTABLEKS R5 R6 K29 ["new"]
  GETUPVAL R6 9
  CALL R5 1 1
  SETTABLEKS R5 R0 K39 ["analytics"]
  JUMP [+11]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K38 ["Analytics"]
  GETTABLEKS R5 R6 K29 ["new"]
  DUPCLOSURE R6 K40 [PROTO_0]
  NEWTABLE R7 0 0
  CALL R5 2 1
  SETTABLEKS R5 R0 K39 ["analytics"]
  GETUPVAL R5 10
  GETTABLEKS R6 R1 K0 ["Plugin"]
  CALL R5 1 1
  SETTABLEKS R5 R0 K41 ["design"]
  GETTABLEKS R5 R1 K0 ["Plugin"]
  NAMECALL R5 R5 K21 ["GetUri"]
  CALL R5 1 1
  SETTABLEKS R5 R0 K42 ["pluginUri"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U11
  SETTABLEKS R5 R0 K43 ["onSelectTab"]
  GETUPVAL R5 12
  GETUPVAL R8 13
  GETTABLEKS R7 R8 K44 ["Src"]
  GETTABLEKS R6 R7 K45 ["Components"]
  CALL R5 1 1
  CALL R5 0 1
  SETTABLEKS R5 R0 K46 ["theme"]
  GETUPVAL R6 14
  GETTABLEKS R5 R6 K29 ["new"]
  GETTABLEKS R6 R1 K0 ["Plugin"]
  NAMECALL R6 R6 K47 ["GetMouse"]
  CALL R6 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R0 K48 ["mouse"]
  GETTABLEKS R5 R0 K48 ["mouse"]
  LOADK R7 K49 ["Arrow"]
  LOADN R8 0
  NAMECALL R5 R5 K50 ["__pushCursor"]
  CALL R5 3 0
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R5 R0 K51 ["expand"]
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R5 R0 K52 ["compact"]
  NEWCLOSURE R5 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U15
  CAPTURE UPVAL U11
  SETTABLEKS R5 R0 K53 ["onToolChanged"]
  NEWCLOSURE R5 P5
  CAPTURE UPVAL U16
  CAPTURE VAL R0
  CAPTURE UPVAL U17
  SETTABLEKS R5 R0 K54 ["onResize"]
  GETUPVAL R5 2
  JUMPIFNOT R5 [+96]
  NEWCLOSURE R5 P6
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K55 ["onToggleLabels"]
  NEWCLOSURE R5 P7
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K56 ["onToggleRibbon"]
  LOADK R7 K57 ["Actions"]
  NAMECALL R5 R2 K17 ["GetPluginComponent"]
  CALL R5 2 1
  DUPTABLE R8 K63 [{"Uri", "Enabled", "Exists", "Visible", "Text"}]
  GETUPVAL R9 4
  GETTABLEKS R10 R0 K42 ["pluginUri"]
  DUPTABLE R11 K24 [{"Category", "ItemId"}]
  LOADK R12 K57 ["Actions"]
  SETTABLEKS R12 R11 K22 ["Category"]
  LOADK R12 K64 ["ShowHideLabels"]
  SETTABLEKS R12 R11 K23 ["ItemId"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K58 ["Uri"]
  LOADB R9 1
  SETTABLEKS R9 R8 K59 ["Enabled"]
  LOADB R9 1
  SETTABLEKS R9 R8 K60 ["Exists"]
  LOADB R9 1
  SETTABLEKS R9 R8 K61 ["Visible"]
  GETTABLEKS R9 R0 K37 ["localization"]
  LOADK R11 K0 ["Plugin"]
  LOADK R12 K64 ["ShowHideLabels"]
  NAMECALL R9 R9 K65 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K62 ["Text"]
  LOADB R9 1
  NAMECALL R6 R5 K66 ["CreateAsync"]
  CALL R6 3 1
  GETTABLEN R7 R6 1
  GETTABLEKS R9 R0 K55 ["onToggleLabels"]
  NAMECALL R7 R7 K67 ["Connect"]
  CALL R7 2 0
  DUPTABLE R9 K63 [{"Uri", "Enabled", "Exists", "Visible", "Text"}]
  GETUPVAL R10 4
  GETTABLEKS R11 R0 K42 ["pluginUri"]
  DUPTABLE R12 K24 [{"Category", "ItemId"}]
  LOADK R13 K57 ["Actions"]
  SETTABLEKS R13 R12 K22 ["Category"]
  LOADK R13 K68 ["ShowHideRibbon"]
  SETTABLEKS R13 R12 K23 ["ItemId"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K58 ["Uri"]
  LOADB R10 1
  SETTABLEKS R10 R9 K59 ["Enabled"]
  LOADB R10 1
  SETTABLEKS R10 R9 K60 ["Exists"]
  LOADB R10 1
  SETTABLEKS R10 R9 K61 ["Visible"]
  GETTABLEKS R10 R0 K37 ["localization"]
  LOADK R12 K0 ["Plugin"]
  LOADK R13 K68 ["ShowHideRibbon"]
  NAMECALL R10 R10 K65 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K62 ["Text"]
  LOADB R10 1
  NAMECALL R7 R5 K66 ["CreateAsync"]
  CALL R7 3 1
  GETTABLEN R8 R7 1
  GETTABLEKS R10 R0 K56 ["onToggleRibbon"]
  NAMECALL R8 R8 K67 ["Connect"]
  CALL R8 2 0
  GETUPVAL R6 18
  GETTABLEKS R5 R6 K69 ["createSettings"]
  MOVE R6 R2
  GETTABLEKS R7 R0 K37 ["localization"]
  CALL R5 2 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K1 [{"customTools"}]
  GETUPVAL R2 0
  NEWTABLE R3 0 0
  GETTABLEKS R4 R0 K0 ["customTools"]
  GETUPVAL R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K0 ["customTools"]
  RETURN R1 1

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Tools"]
  GETTABLEKS R3 R0 K1 ["Uri"]
  NAMECALL R1 R1 K2 ["BindAsync"]
  CALL R1 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["onToolChanged"]
  NAMECALL R1 R1 K4 ["Connect"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Tools"]
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K1 ["Uri"]
  SETLIST R3 R4 1 [1]
  NAMECALL R1 R1 K5 ["GetAsync"]
  CALL R1 2 1
  GETUPVAL R2 0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Tools"]
  NAMECALL R0 R0 K1 ["ListAsync"]
  CALL R0 1 1
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Tools"]
  MOVE R8 R5
  NAMECALL R6 R6 K2 ["BindAsync"]
  CALL R6 2 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["onToolChanged"]
  NAMECALL R6 R6 K4 ["Connect"]
  CALL R6 2 0
  FORGLOOP R1 2 [-14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Tools"]
  MOVE R3 R0
  NAMECALL R1 R1 K5 ["GetAsync"]
  CALL R1 2 1
  GETUPVAL R2 0
  DUPTABLE R4 K7 [{"customTools"}]
  SETTABLEKS R1 R4 K6 ["customTools"]
  NAMECALL R2 R2 K8 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+24]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+21]
  GETTABLEKS R3 R1 K1 ["Plugin"]
  LOADK R5 K2 ["PlaceManager"]
  NAMECALL R3 R3 K3 ["GetPluginComponent"]
  CALL R3 2 1
  GETTABLEKS R4 R3 K4 ["PlaceDocPanelShown"]
  GETTABLEKS R6 R0 K5 ["expand"]
  NAMECALL R4 R4 K6 ["Connect"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K7 ["PlaceDocPanelClosed"]
  GETTABLEKS R6 R0 K8 ["compact"]
  NAMECALL R4 R4 K6 ["Connect"]
  CALL R4 2 0
  JUMP [+16]
  GETTABLEKS R3 R2 K9 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R4 R3 K10 ["DataModelSessionStarted"]
  GETTABLEKS R6 R0 K5 ["expand"]
  NAMECALL R4 R4 K6 ["Connect"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K11 ["DataModelSessionEnded"]
  GETTABLEKS R6 R0 K8 ["compact"]
  NAMECALL R4 R4 K6 ["Connect"]
  CALL R4 2 0
  GETTABLEKS R4 R0 K12 ["Tools"]
  GETTABLEKS R3 R4 K13 ["Added"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K14 ["Widgets"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K18 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
  GETTABLEKS R7 R0 K19 ["pluginUri"]
  SETTABLEKS R7 R6 K15 ["Uri"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K16 ["Widget"]
  SETTABLEKS R7 R6 K16 ["Widget"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K16 ["Widget"]
  SETTABLEKS R7 R6 K17 ["DEPRECATED_PluginGui"]
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R3 K20 ["RegisterAsync"]
  CALL R3 2 0
  GETIMPORT R3 K23 [task.defer]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CALL R3 1 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["showRibbon"]
  GETTABLEKS R4 R2 K1 ["showRibbon"]
  JUMPIFNOTEQ R3 R4 [+17]
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K2 ["showLabels"]
  GETTABLEKS R4 R2 K2 ["showLabels"]
  JUMPIFNOTEQ R3 R4 [+9]
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K3 ["expanded"]
  GETTABLEKS R4 R2 K3 ["expanded"]
  JUMPIFEQ R3 R4 [+54]
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["showRibbon"]
  JUMPIFNOT R3 [+36]
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K3 ["expanded"]
  JUMPIFNOT R3 [+31]
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K2 ["showLabels"]
  JUMPIFNOT R3 [+13]
  GETTABLEKS R3 R0 K4 ["Panels"]
  GETTABLEKS R5 R0 K5 ["widgetUri"]
  GETIMPORT R6 K8 [Vector2.new]
  LOADN R7 0
  LOADN R8 129
  CALL R6 2 -1
  NAMECALL R3 R3 K9 ["SetSizeAsync"]
  CALL R3 -1 0
  RETURN R0 0
  GETTABLEKS R3 R0 K4 ["Panels"]
  GETTABLEKS R5 R0 K5 ["widgetUri"]
  GETIMPORT R6 K8 [Vector2.new]
  LOADN R7 0
  LOADN R8 116
  CALL R6 2 -1
  NAMECALL R3 R3 K9 ["SetSizeAsync"]
  CALL R3 -1 0
  RETURN R0 0
  GETTABLEKS R3 R0 K4 ["Panels"]
  GETTABLEKS R5 R0 K5 ["widgetUri"]
  GETIMPORT R6 K8 [Vector2.new]
  LOADN R7 0
  LOADN R8 44
  CALL R6 2 -1
  NAMECALL R3 R3 K9 ["SetSizeAsync"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R2 K2 ["expanded"]
  GETTABLEKS R4 R1 K3 ["Plugin"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R4
  CALL R7 1 1
  GETTABLEKS R8 R0 K6 ["mouse"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["new"]
  GETTABLEKS R10 R1 K7 ["Widget"]
  CALL R9 1 1
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K5 ["new"]
  GETTABLEKS R11 R0 K8 ["design"]
  CALL R10 1 1
  GETTABLEKS R11 R0 K9 ["theme"]
  GETTABLEKS R12 R0 K10 ["localization"]
  GETTABLEKS R13 R0 K11 ["analytics"]
  SETLIST R6 R7 7 [1]
  DUPTABLE R7 K13 [{"Surface"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K27 [{"ActiveTab", "CustomTools", "Design", "Expanded", "OnResize", "OnSelectTab", "OnToggleLabels", "OnToggleRibbon", "ShowLabels", "ShowRibbon", "Plugin", "PluginUri", "Scale"}]
  GETTABLEKS R11 R2 K28 ["currentTab"]
  SETTABLEKS R11 R10 K15 ["ActiveTab"]
  GETTABLEKS R11 R2 K29 ["customTools"]
  SETTABLEKS R11 R10 K16 ["CustomTools"]
  GETTABLEKS R11 R0 K8 ["design"]
  SETTABLEKS R11 R10 K17 ["Design"]
  SETTABLEKS R3 R10 K18 ["Expanded"]
  GETTABLEKS R11 R0 K30 ["onResize"]
  SETTABLEKS R11 R10 K19 ["OnResize"]
  GETTABLEKS R11 R0 K31 ["onSelectTab"]
  SETTABLEKS R11 R10 K20 ["OnSelectTab"]
  GETTABLEKS R11 R0 K32 ["onToggleLabels"]
  SETTABLEKS R11 R10 K21 ["OnToggleLabels"]
  GETTABLEKS R11 R0 K33 ["onToggleRibbon"]
  SETTABLEKS R11 R10 K22 ["OnToggleRibbon"]
  GETUPVAL R12 6
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R2 K34 ["showLabels"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K23 ["ShowLabels"]
  GETUPVAL R12 6
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R2 K35 ["showRibbon"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K24 ["ShowRibbon"]
  SETTABLEKS R4 R10 K3 ["Plugin"]
  GETTABLEKS R11 R0 K36 ["pluginUri"]
  SETTABLEKS R11 R10 K25 ["PluginUri"]
  GETTABLEKS R11 R2 K37 ["scale"]
  SETTABLEKS R11 R10 K26 ["Scale"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["Surface"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["SharedFlags"]
  GETTABLEKS R3 R4 K10 ["getFFlagLuaRibbonContextMenu"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["SharedFlags"]
  GETTABLEKS R4 R5 K11 ["getFFlagLuaRibbonSocialPresence"]
  CALL R3 1 1
  CALL R3 0 1
  JUMPIFNOT R3 [+10]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["AnalyticsHandlers"]
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K15 ["Styling"]
  GETTABLEKS R7 R5 K16 ["Style"]
  GETTABLEKS R8 R7 K17 ["makeTheme"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K18 ["Types"]
  CALL R9 1 1
  GETTABLEKS R10 R5 K19 ["ContextServices"]
  GETTABLEKS R11 R6 K20 ["registerPluginStyles"]
  GETTABLEKS R12 R10 K21 ["Plugin"]
  GETTABLEKS R13 R10 K22 ["Focus"]
  GETTABLEKS R14 R10 K23 ["Mouse"]
  GETTABLEKS R18 R0 K8 ["Src"]
  GETTABLEKS R17 R18 K24 ["Resources"]
  GETTABLEKS R16 R17 K25 ["Localization"]
  GETTABLEKS R15 R16 K26 ["SourceStrings"]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K24 ["Resources"]
  GETTABLEKS R17 R18 K25 ["Localization"]
  GETTABLEKS R16 R17 K27 ["LocalizedStrings"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K8 ["Src"]
  GETTABLEKS R19 R20 K12 ["Util"]
  GETTABLEKS R18 R19 K28 ["SettingsHelper"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K8 ["Src"]
  GETTABLEKS R20 R21 K12 ["Util"]
  GETTABLEKS R19 R20 K29 ["DesignContext"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K8 ["Src"]
  GETTABLEKS R21 R22 K12 ["Util"]
  GETTABLEKS R20 R21 K30 ["StudioUri"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R0 K6 ["Packages"]
  GETTABLEKS R21 R22 K31 ["Dash"]
  CALL R20 1 1
  GETTABLEKS R21 R20 K32 ["append"]
  GETTABLEKS R22 R20 K33 ["map"]
  GETTABLEKS R23 R20 K34 ["join"]
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K8 ["Src"]
  GETTABLEKS R26 R27 K35 ["Components"]
  GETTABLEKS R25 R26 K36 ["MainView"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K8 ["Src"]
  GETTABLEKS R27 R28 K9 ["SharedFlags"]
  GETTABLEKS R26 R27 K37 ["getFFlagStudioEnableInteractionTelemetry"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R29 R0 K8 ["Src"]
  GETTABLEKS R28 R29 K9 ["SharedFlags"]
  GETTABLEKS R27 R28 K38 ["getFFlagStudioFixOpenPlaceOverhaulLayout"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K8 ["Src"]
  GETTABLEKS R29 R30 K9 ["SharedFlags"]
  GETTABLEKS R28 R29 K39 ["getFFlagStudioOpenPlaceOverhaul"]
  CALL R27 1 1
  GETTABLEKS R28 R1 K40 ["PureComponent"]
  LOADK R30 K41 ["MainPlugin"]
  NAMECALL R28 R28 K42 ["extend"]
  CALL R28 2 1
  JUMPIFNOT R2 [+2]
  LOADN R29 100
  JUMP [+1]
  LOADN R29 116
  JUMPIFNOT R2 [+2]
  LOADN R30 136
  JUMP [+1]
  LOADN R30 16
  DUPCLOSURE R31 K43 [PROTO_12]
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R2
  CAPTURE VAL R25
  CAPTURE VAL R23
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R19
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE VAL R14
  CAPTURE VAL R22
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R17
  SETTABLEKS R31 R28 K44 ["init"]
  DUPCLOSURE R31 K45 [PROTO_16]
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R21
  SETTABLEKS R31 R28 K46 ["didMount"]
  JUMPIFNOT R2 [+3]
  DUPCLOSURE R31 K47 [PROTO_17]
  SETTABLEKS R31 R28 K48 ["didUpdate"]
  DUPCLOSURE R31 K49 [PROTO_18]
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R24
  CAPTURE VAL R2
  SETTABLEKS R31 R28 K50 ["render"]
  RETURN R28 1
