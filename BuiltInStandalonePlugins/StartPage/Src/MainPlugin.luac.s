PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Localization"]
  GETTABLEKS R2 R3 K1 ["new"]
  DUPTABLE R3 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K2 ["stringResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K3 ["translationResourceTable"]
  LOADK R4 K6 ["StartPage"]
  SETTABLEKS R4 R3 K4 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K7 ["localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Analytics"]
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 3
  GETIMPORT R4 K10 [game]
  LOADK R6 K11 ["RbxAnalyticsService"]
  NAMECALL R4 R4 K12 ["GetService"]
  CALL R4 2 -1
  CALL R2 -1 1
  SETTABLEKS R2 R0 K13 ["analytics"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K14 ["DEPRECATED_stylizer"]
  GETUPVAL R2 5
  GETTABLEKS R3 R1 K15 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K16 ["design"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["new"]
  NAMECALL R4 R2 K3 ["GetMouse"]
  CALL R4 1 -1
  CALL R3 -1 1
  SETTABLEKS R3 R0 K4 ["mouse"]
  GETTABLEKS R3 R0 K4 ["mouse"]
  LOADK R5 K5 ["Arrow"]
  LOADN R6 0
  NAMECALL R3 R3 K6 ["__pushCursor"]
  CALL R3 3 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["provide"]
  DUPTABLE R4 K13 [{"Plugin", "Mouse", "Stylizer", "Localization", "Analytics", "Design"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["new"]
  MOVE R6 R2
  CALL R5 1 1
  SETTABLEKS R5 R4 K1 ["Plugin"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["new"]
  NAMECALL R6 R2 K14 ["getMouse"]
  CALL R6 1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K8 ["Mouse"]
  GETTABLEKS R5 R0 K15 ["DEPRECATED_stylizer"]
  SETTABLEKS R5 R4 K9 ["Stylizer"]
  GETTABLEKS R5 R0 K16 ["localization"]
  SETTABLEKS R5 R4 K10 ["Localization"]
  GETTABLEKS R5 R0 K17 ["analytics"]
  SETTABLEKS R5 R4 K11 ["Analytics"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K2 ["new"]
  GETTABLEKS R6 R0 K18 ["design"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K12 ["Design"]
  DUPTABLE R5 K20 [{"MainWidget"}]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K21 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K31 [{"Id", "Enabled", "ShouldRestore", "Title", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "CreateWidgetImmediately"}]
  LOADK R9 K32 ["StartPage"]
  SETTABLEKS R9 R8 K22 ["Id"]
  LOADB R9 1
  SETTABLEKS R9 R8 K23 ["Enabled"]
  LOADB R9 0
  SETTABLEKS R9 R8 K24 ["ShouldRestore"]
  GETTABLEKS R9 R0 K16 ["localization"]
  LOADK R11 K1 ["Plugin"]
  LOADK R12 K33 ["Name"]
  NAMECALL R9 R9 K34 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K25 ["Title"]
  GETIMPORT R9 K37 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K26 ["ZIndexBehavior"]
  GETIMPORT R9 K39 [Enum.InitialDockState.Float]
  SETTABLEKS R9 R8 K27 ["InitialDockState"]
  GETIMPORT R9 K41 [Vector2.new]
  LOADN R10 232
  LOADN R11 232
  CALL R9 2 1
  SETTABLEKS R9 R8 K28 ["Size"]
  GETIMPORT R9 K41 [Vector2.new]
  LOADN R10 232
  LOADN R11 232
  CALL R9 2 1
  SETTABLEKS R9 R8 K29 ["MinSize"]
  LOADB R9 1
  SETTABLEKS R9 R8 K30 ["CreateWidgetImmediately"]
  DUPTABLE R9 K44 [{"Wrapper", "StyleLink"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K21 ["createElement"]
  GETUPVAL R11 6
  NEWTABLE R12 1 0
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K45 ["Tag"]
  LOADK R14 K46 ["X-Fill X-Column"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K48 [{"PageController"}]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K21 ["createElement"]
  GETUPVAL R15 7
  CALL R14 1 1
  SETTABLEKS R14 R13 K47 ["PageController"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K42 ["Wrapper"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K21 ["createElement"]
  LOADK R11 K43 ["StyleLink"]
  DUPTABLE R12 K50 [{"StyleSheet"}]
  GETTABLEKS R13 R0 K18 ["design"]
  SETTABLEKS R13 R12 K49 ["StyleSheet"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K43 ["StyleLink"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K19 ["MainWidget"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
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
  GETTABLEKS R3 R2 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["DockWidget"]
  GETTABLEKS R5 R3 K11 ["Pane"]
  GETTABLEKS R6 R2 K12 ["ContextServices"]
  GETTABLEKS R7 R6 K13 ["Plugin"]
  GETTABLEKS R8 R6 K14 ["Mouse"]
  GETTABLEKS R9 R6 K15 ["Design"]
  GETTABLEKS R12 R2 K16 ["Style"]
  GETTABLEKS R11 R12 K17 ["Themes"]
  GETTABLEKS R10 R11 K18 ["StudioTheme"]
  GETTABLEKS R12 R2 K19 ["Styling"]
  GETTABLEKS R11 R12 K20 ["registerPluginStyles"]
  GETTABLEKS R15 R0 K21 ["Src"]
  GETTABLEKS R14 R15 K22 ["Resources"]
  GETTABLEKS R13 R14 K23 ["Localization"]
  GETTABLEKS R12 R13 K24 ["SourceStrings"]
  GETTABLEKS R16 R0 K21 ["Src"]
  GETTABLEKS R15 R16 K22 ["Resources"]
  GETTABLEKS R14 R15 K23 ["Localization"]
  GETTABLEKS R13 R14 K25 ["LocalizedStrings"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K21 ["Src"]
  GETTABLEKS R16 R17 K22 ["Resources"]
  GETTABLEKS R15 R16 K26 ["createAnalyticsHandlers"]
  CALL R14 1 1
  GETTABLEKS R16 R0 K21 ["Src"]
  GETTABLEKS R15 R16 K27 ["Components"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R15 K28 ["PageController"]
  CALL R16 1 1
  GETTABLEKS R17 R1 K29 ["PureComponent"]
  LOADK R19 K30 ["MainPlugin"]
  NAMECALL R17 R17 K31 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K32 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R18 R17 K33 ["init"]
  DUPCLOSURE R18 K34 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R16
  SETTABLEKS R18 R17 K35 ["render"]
  RETURN R17 1
