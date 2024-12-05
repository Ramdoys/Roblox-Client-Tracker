PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_3:
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  SETTABLEKS R2 R0 K2 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["setDisabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onWidgetEnabledChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["Localization"]
  GETTABLEKS R2 R3 K6 ["new"]
  DUPTABLE R3 K10 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K7 ["stringResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K8 ["translationResourceTable"]
  LOADK R4 K11 ["AudioCompressorEditor"]
  SETTABLEKS R4 R3 K9 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K12 ["localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K13 ["Analytics"]
  GETTABLEKS R2 R3 K6 ["new"]
  DUPCLOSURE R3 K14 [PROTO_2]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K15 ["analytics"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K6 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K16 ["DEPRECATED_stylizer"]
  GETUPVAL R2 4
  GETTABLEKS R3 R1 K17 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K18 ["design"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 5
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["new"]
  NAMECALL R9 R3 K6 ["getMouse"]
  CALL R9 1 -1
  CALL R8 -1 1
  GETTABLEKS R9 R0 K7 ["DEPRECATED_stylizer"]
  GETTABLEKS R10 R0 K8 ["localization"]
  GETTABLEKS R11 R0 K9 ["analytics"]
  SETLIST R6 R7 5 [1]
  DUPTABLE R7 K11 [{"MainWidget"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K12 ["createElement"]
  GETUPVAL R9 4
  NEWTABLE R10 16 0
  LOADK R11 K13 ["AudioCompressorEditor"]
  SETTABLEKS R11 R10 K14 ["Id"]
  SETTABLEKS R4 R10 K15 ["Enabled"]
  LOADK R11 K13 ["AudioCompressorEditor"]
  SETTABLEKS R11 R10 K16 ["Title"]
  GETIMPORT R11 K20 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K18 ["ZIndexBehavior"]
  GETIMPORT R11 K23 [Enum.InitialDockState.Float]
  SETTABLEKS R11 R10 K21 ["InitialDockState"]
  GETIMPORT R11 K25 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["Size"]
  GETIMPORT R11 K25 [Vector2.new]
  LOADN R12 250
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["MinSize"]
  GETTABLEKS R11 R0 K28 ["setDisabled"]
  SETTABLEKS R11 R10 K29 ["OnClose"]
  GETTABLEKS R12 R1 K30 ["PluginLoaderContext"]
  GETTABLEKS R11 R12 K31 ["mainDockWidget"]
  SETTABLEKS R11 R10 K32 ["Widget"]
  GETTABLEKS R11 R0 K33 ["onDockWidgetCreated"]
  SETTABLEKS R11 R10 K34 ["OnWidgetCreated"]
  LOADB R11 0
  SETTABLEKS R11 R10 K35 ["ShouldRestore"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K36 ["Change"]
  GETTABLEKS R11 R12 K15 ["Enabled"]
  GETTABLEKS R12 R0 K37 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K40 [{"Wrapper", "StyleLink"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 5
  NEWTABLE R14 1 0
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K41 ["Tag"]
  LOADK R16 K42 ["X-Fill X-Column"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K43 [{"AudioCompressorEditor"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K12 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K44 [{"Enabled"}]
  SETTABLEKS R4 R18 K15 ["Enabled"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K13 ["AudioCompressorEditor"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K38 ["Wrapper"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K12 ["createElement"]
  LOADK R13 K39 ["StyleLink"]
  DUPTABLE R14 K46 [{"StyleSheet"}]
  GETTABLEKS R15 R0 K47 ["design"]
  SETTABLEKS R15 R14 K45 ["StyleSheet"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K39 ["StyleLink"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["MainWidget"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioCompressorEditor"]
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
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R3 R4 K10 ["DockWidget"]
  GETTABLEKS R5 R2 K9 ["UI"]
  GETTABLEKS R4 R5 K11 ["Pane"]
  GETTABLEKS R5 R2 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["Plugin"]
  GETTABLEKS R7 R5 K14 ["Mouse"]
  GETTABLEKS R10 R2 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["Themes"]
  GETTABLEKS R8 R9 K17 ["StudioTheme"]
  GETTABLEKS R10 R2 K18 ["Styling"]
  GETTABLEKS R9 R10 K19 ["registerPluginStyles"]
  GETTABLEKS R13 R0 K20 ["Src"]
  GETTABLEKS R12 R13 K21 ["Resources"]
  GETTABLEKS R11 R12 K22 ["Localization"]
  GETTABLEKS R10 R11 K23 ["SourceStrings"]
  GETTABLEKS R14 R0 K20 ["Src"]
  GETTABLEKS R13 R14 K21 ["Resources"]
  GETTABLEKS R12 R13 K22 ["Localization"]
  GETTABLEKS R11 R12 K24 ["LocalizedStrings"]
  GETTABLEKS R13 R0 K20 ["Src"]
  GETTABLEKS R12 R13 K25 ["Components"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K2 ["AudioCompressorEditor"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K26 ["PureComponent"]
  LOADK R16 K27 ["MainPlugin"]
  NAMECALL R14 R14 K28 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K29 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K30 ["init"]
  DUPCLOSURE R15 K31 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLEKS R15 R14 K32 ["render"]
  RETURN R14 1
