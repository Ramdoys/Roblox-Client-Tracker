PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["PluginLoaderContext"]
  JUMPIFNOT R0 [+28]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButton"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["state"]
  GETTABLEKS R2 R3 K4 ["enabled"]
  NAMECALL R0 R0 K5 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginLoaderContext"]
  GETTABLEKS R0 R1 K6 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["toggleEnabled"]
  NAMECALL R0 R0 K8 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["pluginController"]
  NAMECALL R0 R0 K1 ["resume"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["pluginController"]
  NAMECALL R0 R0 K1 ["pause"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R1 K0 ["Plugin"]
  LOADB R3 0
  GETTABLEKS R4 R1 K1 ["PluginLoaderContext"]
  JUMPIFNOT R4 [+10]
  GETTABLEKS R5 R1 K1 ["PluginLoaderContext"]
  GETTABLEKS R4 R5 K2 ["mainDockWidget"]
  LOADB R5 0
  JUMPIFEQKNIL R4 [+3]
  GETTABLEKS R5 R4 K3 ["Enabled"]
  MOVE R3 R5
  DUPTABLE R6 K5 [{"enabled"}]
  SETTABLEKS R3 R6 K4 ["enabled"]
  NAMECALL R4 R0 K6 ["setState"]
  CALL R4 2 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K7 ["toggleEnabled"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K8 ["onClose"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K9 ["onCreated"]
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K10 ["onRestore"]
  NEWCLOSURE R4 P4
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K11 ["onWidgetEnabledChanged"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["Localization"]
  GETTABLEKS R4 R5 K13 ["new"]
  DUPTABLE R5 K18 [{"libraries", "stringResourceTable", "translationResourceTable", "pluginName"}]
  NEWTABLE R6 2 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K19 ["Resources"]
  GETTABLEKS R7 R8 K20 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R8 K21 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K19 ["Resources"]
  GETTABLEKS R9 R10 K22 ["SourceStrings"]
  SETTABLEKS R9 R8 K15 ["stringResourceTable"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K19 ["Resources"]
  GETTABLEKS R9 R10 K23 ["LocalizedStrings"]
  SETTABLEKS R9 R8 K16 ["translationResourceTable"]
  SETTABLE R8 R6 R7
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K19 ["Resources"]
  GETTABLEKS R7 R8 K20 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R8 K21 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K19 ["Resources"]
  GETTABLEKS R9 R10 K22 ["SourceStrings"]
  SETTABLEKS R9 R8 K15 ["stringResourceTable"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K19 ["Resources"]
  GETTABLEKS R9 R10 K23 ["LocalizedStrings"]
  SETTABLEKS R9 R8 K16 ["translationResourceTable"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K14 ["libraries"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K15 ["stringResourceTable"]
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K16 ["translationResourceTable"]
  LOADK R6 K24 ["TerrainEditor"]
  SETTABLEKS R6 R5 K17 ["pluginName"]
  CALL R4 1 1
  SETTABLEKS R4 R0 K25 ["localization"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K26 ["Analytics"]
  GETTABLEKS R4 R5 K13 ["new"]
  GETUPVAL R5 5
  CALL R4 1 1
  SETTABLEKS R4 R0 K27 ["analytics"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K13 ["new"]
  MOVE R5 R2
  GETTABLEKS R6 R0 K25 ["localization"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K28 ["shortcutController"]
  GETUPVAL R5 7
  GETTABLEKS R4 R5 K13 ["new"]
  MOVE R5 R2
  CALL R4 1 1
  SETTABLEKS R4 R0 K29 ["pluginController"]
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K13 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R0 K30 ["studioServices"]
  GETUPVAL R4 9
  CALL R4 0 1
  SETTABLEKS R4 R0 K31 ["stylizer"]
  GETUPVAL R5 10
  GETTABLEKS R4 R5 K13 ["new"]
  GETTABLEKS R5 R0 K29 ["pluginController"]
  GETTABLEKS R6 R0 K28 ["shortcutController"]
  GETTABLEKS R7 R0 K27 ["analytics"]
  GETTABLEKS R8 R0 K25 ["localization"]
  GETTABLEKS R9 R0 K31 ["stylizer"]
  CALL R4 5 1
  SETTABLEKS R4 R0 K32 ["toolController"]
  NEWCLOSURE R4 P5
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K33 ["onFocused"]
  NEWCLOSURE R4 P6
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K34 ["onUnfocused"]
  GETTABLEKS R6 R0 K35 ["props"]
  GETTABLEKS R5 R6 K1 ["PluginLoaderContext"]
  JUMPIFNOT R5 [+7]
  GETTABLEKS R6 R0 K35 ["props"]
  GETTABLEKS R5 R6 K1 ["PluginLoaderContext"]
  GETTABLEKS R4 R5 K36 ["mainButton"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R0 K37 ["button"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["button"]
  GETTABLEKS R4 R0 K1 ["state"]
  GETTABLEKS R3 R4 K2 ["enabled"]
  NAMECALL R1 R1 K3 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 9
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["new"]
  NAMECALL R9 R3 K6 ["getMouse"]
  CALL R9 1 -1
  CALL R8 -1 1
  GETTABLEKS R9 R0 K7 ["stylizer"]
  GETTABLEKS R10 R0 K8 ["localization"]
  GETTABLEKS R11 R0 K9 ["analytics"]
  GETTABLEKS R12 R0 K10 ["shortcutController"]
  GETTABLEKS R13 R0 K11 ["pluginController"]
  GETTABLEKS R14 R0 K12 ["studioServices"]
  GETTABLEKS R15 R0 K13 ["toolController"]
  SETLIST R6 R7 9 [1]
  DUPTABLE R7 K15 [{"MainWidget"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R9 4
  NEWTABLE R10 16 0
  GETUPVAL R12 5
  JUMPIFNOT R12 [+2]
  LOADK R11 K17 ["TerrainEditor"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K18 ["Id"]
  SETTABLEKS R4 R10 K19 ["Enabled"]
  GETTABLEKS R11 R0 K8 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K20 ["Name"]
  NAMECALL R11 R11 K21 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["Title"]
  GETIMPORT R11 K26 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K24 ["ZIndexBehavior"]
  GETIMPORT R11 K29 [Enum.InitialDockState.Left]
  SETTABLEKS R11 R10 K27 ["InitialDockState"]
  GETIMPORT R11 K31 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["Size"]
  GETIMPORT R11 K31 [Vector2.new]
  LOADN R12 64
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["MinSize"]
  GETTABLEKS R11 R0 K34 ["onClose"]
  SETTABLEKS R11 R10 K35 ["OnClose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K36 ["ShouldRestore"]
  GETTABLEKS R11 R0 K37 ["onCreated"]
  SETTABLEKS R11 R10 K38 ["OnWidgetCreated"]
  GETTABLEKS R11 R0 K39 ["onFocused"]
  SETTABLEKS R11 R10 K40 ["OnWidgetFocused"]
  GETTABLEKS R11 R0 K41 ["onUnfocused"]
  SETTABLEKS R11 R10 K42 ["OnWidgetFocusReleased"]
  GETTABLEKS R11 R0 K43 ["onRestore"]
  SETTABLEKS R11 R10 K44 ["OnWidgetRestored"]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K45 ["PluginLoaderContext"]
  JUMPIFNOT R12 [+7]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K45 ["PluginLoaderContext"]
  GETTABLEKS R11 R12 K46 ["mainDockWidget"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K47 ["Widget"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K48 ["Change"]
  GETTABLEKS R11 R12 K19 ["Enabled"]
  GETTABLEKS R12 R0 K49 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K51 [{"App"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K16 ["createElement"]
  GETUPVAL R13 7
  CALL R12 1 1
  SETTABLEKS R12 R11 K50 ["App"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K14 ["MainWidget"]
  LOADB R8 1
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["ReactRoblox"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K9 ["Packages"]
  GETTABLEKS R6 R7 K13 ["MaterialFramework"]
  CALL R5 1 1
  GETTABLEKS R6 R4 K14 ["UI"]
  GETTABLEKS R7 R6 K15 ["DockWidget"]
  GETTABLEKS R8 R6 K16 ["PluginButton"]
  GETTABLEKS R9 R6 K17 ["PluginToolbar"]
  GETTABLEKS R10 R4 K18 ["ContextServices"]
  GETTABLEKS R11 R10 K19 ["Plugin"]
  GETTABLEKS R12 R10 K20 ["Mouse"]
  GETTABLEKS R14 R5 K21 ["Context"]
  GETTABLEKS R13 R14 K22 ["StudioServices"]
  GETIMPORT R14 K8 [require]
  GETTABLEKS R17 R1 K23 ["Src"]
  GETTABLEKS R16 R17 K24 ["Resources"]
  GETTABLEKS R15 R16 K25 ["MakeTheme"]
  CALL R14 1 1
  GETTABLEKS R18 R1 K23 ["Src"]
  GETTABLEKS R17 R18 K24 ["Resources"]
  GETTABLEKS R16 R17 K26 ["Localization"]
  GETTABLEKS R15 R16 K27 ["SourceStrings"]
  GETTABLEKS R19 R1 K23 ["Src"]
  GETTABLEKS R18 R19 K24 ["Resources"]
  GETTABLEKS R17 R18 K26 ["Localization"]
  GETTABLEKS R16 R17 K28 ["LocalizedStrings"]
  GETTABLEKS R18 R1 K23 ["Src"]
  GETTABLEKS R17 R18 K29 ["Components"]
  GETIMPORT R18 K8 [require]
  GETTABLEKS R19 R17 K30 ["App"]
  CALL R18 1 1
  GETTABLEKS R20 R1 K23 ["Src"]
  GETTABLEKS R19 R20 K31 ["Controllers"]
  GETIMPORT R20 K8 [require]
  GETTABLEKS R21 R19 K32 ["ShortcutController"]
  CALL R20 1 1
  GETIMPORT R21 K8 [require]
  GETTABLEKS R22 R19 K33 ["PluginController"]
  CALL R21 1 1
  GETIMPORT R22 K8 [require]
  GETTABLEKS R23 R19 K34 ["ToolController"]
  CALL R22 1 1
  GETIMPORT R23 K8 [require]
  GETTABLEKS R26 R1 K23 ["Src"]
  GETTABLEKS R25 R26 K24 ["Resources"]
  GETTABLEKS R24 R25 K35 ["AnalyticsHandlers"]
  CALL R23 1 1
  GETTABLEKS R24 R2 K36 ["PureComponent"]
  LOADK R26 K37 ["MainPlugin"]
  NAMECALL R24 R24 K38 ["extend"]
  CALL R24 2 1
  DUPCLOSURE R25 K39 [PROTO_8]
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R23
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R22
  SETTABLEKS R25 R24 K40 ["init"]
  DUPCLOSURE R25 K41 [PROTO_9]
  SETTABLEKS R25 R24 K42 ["didUpdate"]
  DUPCLOSURE R25 K43 [PROTO_10]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R18
  SETTABLEKS R25 R24 K44 ["render"]
  RETURN R24 1
