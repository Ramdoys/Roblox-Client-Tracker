PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["state"]
  GETTABLEKS R4 R5 K0 ["enabled"]
  NOT R3 R4
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"enabled", "killDockWidget"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["enabled"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["killDockWidget"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["plugin"]
  DUPTABLE R2 K4 [{"enabled", "killDockWidget"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["enabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["killDockWidget"]
  SETTABLEKS R2 R0 K5 ["state"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["Localization"]
  GETTABLEKS R2 R3 K7 ["new"]
  DUPTABLE R3 K11 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K8 ["stringResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K9 ["translationResourceTable"]
  LOADK R4 K12 ["PluginInstallation"]
  SETTABLEKS R4 R3 K10 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K13 ["localization"]
  GETUPVAL R2 3
  SETTABLEKS R2 R0 K14 ["theme"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K15 ["toggleState"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K16 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K17 ["onWidgetEnabledChanged"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["plugin"]
  GETTABLEKS R3 R4 K18 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R2 R3 K19 ["DataModelSessionEnded"]
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  NAMECALL R2 R2 K20 ["connect"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R1 K0 ["enabled"]
  JUMPIFNOT R2 [+5]
  DUPTABLE R2 K2 [{"killDockWidget"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["killDockWidget"]
  RETURN R2 1
  RETURN R0 0

PROTO_6:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  DUPTABLE R3 K3 [{"Toggle"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"Toolbar", "Active", "Title", "OnClick"}]
  SETTABLEKS R1 R6 K5 ["Toolbar"]
  SETTABLEKS R2 R6 K6 ["Active"]
  LOADK R7 K10 ["luaManagePluginsButton"]
  SETTABLEKS R7 R6 K7 ["Title"]
  GETTABLEKS R7 R0 K11 ["toggleState"]
  SETTABLEKS R7 R6 K8 ["OnClick"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Toggle"]
  RETURN R3 1

PROTO_7:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["plugin"]
  GETTABLEKS R3 R1 K2 ["store"]
  GETTABLEKS R4 R1 K3 ["api"]
  GETTABLEKS R5 R1 K4 ["analytics"]
  GETTABLEKS R7 R0 K5 ["state"]
  GETTABLEKS R6 R7 K6 ["enabled"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["provide"]
  NEWTABLE R8 0 2
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["Plugin"]
  GETTABLEKS R9 R10 K9 ["new"]
  MOVE R10 R2
  CALL R9 1 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K9 ["new"]
  MOVE R11 R4
  CALL R10 1 -1
  SETLIST R8 R9 -1 [1]
  DUPTABLE R9 K12 [{"Toolbar", "MainWidget"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K13 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K16 [{"Title", "RenderButtons"}]
  LOADK R13 K17 ["luaManagePluginsToolbar"]
  SETTABLEKS R13 R12 K14 ["Title"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K15 ["RenderButtons"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K10 ["Toolbar"]
  GETTABLEKS R12 R0 K5 ["state"]
  GETTABLEKS R11 R12 K18 ["killDockWidget"]
  NOT R10 R11
  JUMPIFNOT R10 [+100]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K13 ["createElement"]
  GETUPVAL R11 4
  NEWTABLE R12 16 0
  LOADK R13 K19 ["PluginManagement"]
  SETTABLEKS R13 R12 K20 ["Id"]
  SETTABLEKS R6 R12 K21 ["Enabled"]
  GETTABLEKS R13 R0 K22 ["localization"]
  LOADK R15 K23 ["Manage"]
  LOADK R16 K24 ["WindowTitle"]
  NAMECALL R13 R13 K25 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K14 ["Title"]
  GETIMPORT R13 K29 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R13 R12 K27 ["ZIndexBehavior"]
  GETIMPORT R13 K32 [Enum.InitialDockState.Float]
  SETTABLEKS R13 R12 K30 ["InitialDockState"]
  GETIMPORT R13 K34 [Vector2.new]
  LOADN R14 88
  LOADN R15 48
  CALL R13 2 1
  SETTABLEKS R13 R12 K35 ["Size"]
  GETIMPORT R13 K34 [Vector2.new]
  LOADN R14 88
  LOADN R15 180
  CALL R13 2 1
  SETTABLEKS R13 R12 K36 ["MinSize"]
  GETTABLEKS R13 R0 K37 ["onClose"]
  SETTABLEKS R13 R12 K38 ["OnClose"]
  LOADB R13 0
  SETTABLEKS R13 R12 K39 ["ShouldRestore"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K40 ["Change"]
  GETTABLEKS R13 R14 K21 ["Enabled"]
  GETTABLEKS R14 R0 K41 ["onWidgetEnabledChanged"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K43 [{"MainProvider"}]
  MOVE R14 R6
  JUMPIFNOT R14 [+37]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K7 ["provide"]
  NEWTABLE R15 0 5
  GETTABLEKS R16 R0 K22 ["localization"]
  GETTABLEKS R17 R0 K44 ["theme"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K45 ["Store"]
  GETTABLEKS R18 R19 K9 ["new"]
  MOVE R19 R3
  CALL R18 1 1
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K46 ["Mouse"]
  GETTABLEKS R19 R20 K9 ["new"]
  NAMECALL R20 R2 K47 ["GetMouse"]
  CALL R20 1 -1
  CALL R19 -1 1
  MOVE R20 R5
  SETLIST R15 R16 5 [1]
  DUPTABLE R16 K49 [{"MainView"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K13 ["createElement"]
  GETUPVAL R18 5
  CALL R17 1 1
  SETTABLEKS R17 R16 K48 ["MainView"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K42 ["MainProvider"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K11 ["MainWidget"]
  CALL R7 2 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Components"]
  GETTABLEKS R3 R4 K9 ["ManagementMainView"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Navigation"]
  GETTABLEKS R4 R5 K11 ["NavigationContainer"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["ContextServices"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K13 ["ContextServices"]
  GETTABLEKS R7 R8 K14 ["PluginAPI2"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K7 ["Src"]
  GETTABLEKS R9 R10 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K17 ["UI"]
  GETTABLEKS R9 R8 K18 ["DockWidget"]
  GETTABLEKS R10 R8 K19 ["PluginButton"]
  GETTABLEKS R11 R8 K20 ["PluginToolbar"]
  GETTABLEKS R14 R0 K7 ["Src"]
  GETTABLEKS R13 R14 K21 ["Resources"]
  GETTABLEKS R12 R13 K22 ["SourceStrings"]
  GETTABLEKS R15 R0 K7 ["Src"]
  GETTABLEKS R14 R15 K21 ["Resources"]
  GETTABLEKS R13 R14 K23 ["LocalizedStrings"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K7 ["Src"]
  GETTABLEKS R16 R17 K21 ["Resources"]
  GETTABLEKS R15 R16 K24 ["makeTheme"]
  CALL R14 1 1
  GETTABLEKS R15 R1 K25 ["PureComponent"]
  LOADK R17 K26 ["ManagementApp"]
  NAMECALL R15 R15 K27 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K28 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R16 R15 K29 ["init"]
  DUPCLOSURE R16 K30 [PROTO_5]
  SETTABLEKS R16 R15 K31 ["getDerivedStateFromProps"]
  DUPCLOSURE R16 K32 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R10
  SETTABLEKS R16 R15 K33 ["renderButtons"]
  DUPCLOSURE R16 K34 [PROTO_8]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R3
  SETTABLEKS R16 R15 K35 ["render"]
  RETURN R15 1
