PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Enabled"]
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["Enabled"]
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["IsEdit"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R1 0
  JUMPIFNOTEQ R1 R0 [+2]
  RETURN R0 0
  SETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R3 0
  NAMECALL R1 R1 K0 ["SetActive"]
  CALL R1 2 0
  GETUPVAL R1 0
  JUMPIFNOT R1 [+12]
  GETIMPORT R1 K2 [plugin]
  LOADB R3 0
  NAMECALL R1 R1 K3 ["Activate"]
  CALL R1 2 0
  GETUPVAL R1 2
  GETIMPORT R2 K2 [plugin]
  GETUPVAL R3 3
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 4
  GETIMPORT R2 K2 [plugin]
  GETUPVAL R3 3
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Enabled"]
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["Enabled"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Enabled"]
  NAMECALL R0 R0 K1 ["SetActive"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  JUMPIFNOTEQKB R0 FALSE [+2]
  RETURN R0 0
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R0 1
  GETUPVAL R2 0
  NAMECALL R0 R0 K0 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R0 0
  JUMPIFNOT R0 [+12]
  GETIMPORT R0 K2 [plugin]
  LOADB R2 0
  NAMECALL R0 R0 K3 ["Activate"]
  CALL R0 2 0
  GETUPVAL R0 2
  GETIMPORT R1 K2 [plugin]
  GETUPVAL R2 3
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R0 4
  GETIMPORT R1 K2 [plugin]
  GETUPVAL R2 3
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["Src"]
  GETTABLEKS R0 R1 K4 ["Events"]
  GETIMPORT R1 K6 [require]
  GETTABLEKS R2 R0 K7 ["onPluginOpened"]
  CALL R1 1 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R0 K8 ["onPluginClosed"]
  CALL R2 1 1
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K9 ["FileSync"]
  NAMECALL R3 R3 K10 ["CreateToolbar"]
  CALL R3 2 1
  GETIMPORT R7 K1 [plugin]
  GETTABLEKS R6 R7 K2 ["Name"]
  LOADK R7 K11 ["Toggles the Template plugin window."]
  LOADK R8 K12 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
  NAMECALL R4 R3 K13 ["CreateButton"]
  CALL R4 4 1
  LOADB R5 1
  SETTABLEKS R5 R4 K14 ["ClickableWhenViewportHidden"]
  GETIMPORT R5 K16 [pcall]
  DUPCLOSURE R6 K17 [PROTO_1]
  CALL R5 1 2
  JUMPIFNOT R5 [+1]
  JUMPIF R6 [+4]
  LOADB R7 0
  SETTABLEKS R7 R4 K18 ["Enabled"]
  RETURN R0 0
  LOADB R7 0
  NEWCLOSURE R8 P1
  CAPTURE REF R7
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  GETTABLEKS R9 R4 K19 ["Click"]
  DUPCLOSURE R11 K20 [PROTO_3]
  CAPTURE UPVAL U1
  NAMECALL R9 R9 K21 ["Connect"]
  CALL R9 2 0
  GETUPVAL R9 1
  LOADK R11 K18 ["Enabled"]
  NAMECALL R9 R9 K22 ["GetPropertyChangedSignal"]
  CALL R9 2 1
  NEWCLOSURE R11 P3
  CAPTURE VAL R4
  CAPTURE UPVAL U1
  NAMECALL R9 R9 K21 ["Connect"]
  CALL R9 2 0
  GETIMPORT R10 K1 [plugin]
  GETTABLEKS R9 R10 K23 ["Deactivation"]
  NEWCLOSURE R11 P4
  CAPTURE REF R7
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  NAMECALL R9 R9 K21 ["Connect"]
  CALL R9 2 0
  CLOSEUPVALS R7
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FileSync"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Components"]
  GETTABLEKS R2 R3 K8 ["MainView"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K9 ["ServiceWrapper"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["ReactRoblox"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Rodux"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K14 ["Reducers"]
  GETTABLEKS R7 R8 K15 ["MainReducer"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K16 ["Resources"]
  GETTABLEKS R8 R9 K17 ["Theme"]
  CALL R7 1 1
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K16 ["Resources"]
  GETTABLEKS R9 R10 K18 ["Localization"]
  GETTABLEKS R8 R9 K19 ["SourceStrings"]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K16 ["Resources"]
  GETTABLEKS R10 R11 K18 ["Localization"]
  GETTABLEKS R9 R10 K20 ["LocalizedStrings"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K10 ["Packages"]
  GETTABLEKS R11 R12 K21 ["Framework"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K22 ["ContextServices"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K6 ["Src"]
  GETTABLEKS R14 R15 K23 ["Util"]
  GETTABLEKS R13 R14 K24 ["MakePluginActions"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K6 ["Src"]
  GETTABLEKS R15 R16 K23 ["Util"]
  GETTABLEKS R14 R15 K25 ["Constants"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R0 K10 ["Packages"]
  GETTABLEKS R15 R16 K26 ["TestLoader"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K27 ["launch"]
  LOADK R16 K2 ["FileSync"]
  GETTABLEKS R17 R0 K6 ["Src"]
  CALL R15 2 0
  GETTABLEKS R15 R14 K28 ["isCli"]
  CALL R15 0 1
  JUMPIFNOT R15 [+1]
  RETURN R0 0
  GETIMPORT R15 K30 [plugin]
  JUMPIF R15 [+1]
  RETURN R0 0
  GETIMPORT R15 K32 [game]
  LOADK R17 K33 ["Collab4900"]
  NAMECALL R15 R15 K34 ["GetFastFlag"]
  CALL R15 2 1
  JUMPIF R15 [+1]
  RETURN R0 0
  GETIMPORT R15 K37 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R16 K41 [Enum.InitialDockState.Float]
  LOADB R17 0
  LOADB R18 1
  GETTABLEKS R19 R13 K42 ["BACKGROUND_WIDTH"]
  LOADN R20 43
  GETTABLEKS R21 R13 K42 ["BACKGROUND_WIDTH"]
  LOADN R22 8
  CALL R15 7 1
  GETTABLEKS R17 R5 K43 ["Store"]
  GETTABLEKS R16 R17 K36 ["new"]
  MOVE R17 R6
  NEWTABLE R18 0 0
  LOADNIL R19
  CALL R16 3 1
  GETIMPORT R17 K30 [plugin]
  LOADK R19 K2 ["FileSync"]
  MOVE R20 R15
  NAMECALL R17 R17 K44 ["CreateDockWidgetPluginGui"]
  CALL R17 3 1
  LOADK R18 K2 ["FileSync"]
  SETTABLEKS R18 R17 K45 ["Name"]
  LOADK R18 K2 ["FileSync"]
  SETTABLEKS R18 R17 K46 ["Title"]
  GETTABLEKS R19 R11 K18 ["Localization"]
  GETTABLEKS R18 R19 K36 ["new"]
  DUPTABLE R19 K50 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R8 R19 K47 ["stringResourceTable"]
  SETTABLEKS R9 R19 K48 ["translationResourceTable"]
  LOADK R20 K2 ["FileSync"]
  SETTABLEKS R20 R19 K49 ["pluginName"]
  CALL R18 1 1
  GETTABLEKS R20 R11 K51 ["PluginActions"]
  GETTABLEKS R19 R20 K36 ["new"]
  GETIMPORT R20 K30 [plugin]
  MOVE R21 R12
  GETIMPORT R22 K30 [plugin]
  MOVE R23 R18
  CALL R21 2 -1
  CALL R19 -1 1
  GETTABLEKS R20 R3 K52 ["createElement"]
  MOVE R21 R2
  DUPTABLE R22 K59 [{"plugin", "focusGui", "store", "mouse", "theme", "localization", "pluginActions"}]
  GETIMPORT R23 K30 [plugin]
  SETTABLEKS R23 R22 K29 ["plugin"]
  SETTABLEKS R17 R22 K53 ["focusGui"]
  SETTABLEKS R16 R22 K54 ["store"]
  GETIMPORT R23 K30 [plugin]
  NAMECALL R23 R23 K60 ["getMouse"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K55 ["mouse"]
  MOVE R23 R7
  CALL R23 0 1
  SETTABLEKS R23 R22 K56 ["theme"]
  SETTABLEKS R18 R22 K57 ["localization"]
  SETTABLEKS R19 R22 K58 ["pluginActions"]
  DUPTABLE R23 K61 [{"MainView"}]
  GETTABLEKS R24 R3 K52 ["createElement"]
  MOVE R25 R1
  NEWTABLE R26 0 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K8 ["MainView"]
  CALL R20 3 1
  GETTABLEKS R21 R4 K62 ["createRoot"]
  MOVE R22 R17
  CALL R21 1 1
  MOVE R24 R20
  NAMECALL R22 R21 K63 ["render"]
  CALL R22 2 0
  DUPCLOSURE R22 K64 [PROTO_0]
  CAPTURE VAL R17
  GETIMPORT R25 K1 [script]
  GETTABLEKS R24 R25 K65 ["Parent"]
  GETTABLEKS R23 R24 K65 ["Parent"]
  DUPCLOSURE R24 K66 [PROTO_6]
  CAPTURE VAL R23
  CAPTURE VAL R17
  MOVE R25 R24
  CALL R25 0 0
  RETURN R0 0
