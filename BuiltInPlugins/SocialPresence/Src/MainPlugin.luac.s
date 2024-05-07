PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["analytics"]
  LOADK R2 K1 ["panelToggled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["state"]
  GETTABLEKS R4 R5 K3 ["enabled"]
  NOT R3 R4
  NAMECALL R0 R0 K4 ["report"]
  CALL R0 3 0
  GETUPVAL R0 0
  DUPCLOSURE R2 K5 [PROTO_0]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["analytics"]
  LOADK R2 K1 ["panelToggled"]
  LOADB R3 0
  NAMECALL R0 R0 K2 ["report"]
  CALL R0 3 0
  GETUPVAL R0 0
  DUPTABLE R2 K4 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["enabled"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R4 K1 [{"enabled"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K0 ["enabled"]
  NAMECALL R2 R0 K2 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onWidgetEnabledChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Localization"]
  GETTABLEKS R2 R3 K8 ["new"]
  DUPTABLE R3 K12 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K9 ["stringResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K10 ["translationResourceTable"]
  LOADK R4 K13 ["SocialPresence"]
  SETTABLEKS R4 R3 K11 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K14 ["localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K15 ["Analytics"]
  GETTABLEKS R2 R3 K8 ["new"]
  GETUPVAL R3 3
  CALL R2 1 1
  SETTABLEKS R2 R0 K16 ["analytics"]
  GETTABLEKS R3 R1 K17 ["EnableSignal"]
  GETTABLEKS R2 R3 K18 ["Event"]
  GETTABLEKS R4 R0 K3 ["toggleEnabled"]
  NAMECALL R2 R2 K19 ["Connect"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["CollaboratorsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K4 ["props"]
  GETTABLEKS R3 R0 K5 ["state"]
  GETTABLEKS R4 R2 K6 ["Plugin"]
  GETTABLEKS R5 R3 K7 ["enabled"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["provide"]
  NEWTABLE R7 0 6
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["new"]
  MOVE R9 R4
  CALL R8 1 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K9 ["new"]
  NAMECALL R10 R4 K10 ["getMouse"]
  CALL R10 1 -1
  CALL R9 -1 1
  GETUPVAL R10 3
  CALL R10 0 1
  GETTABLEKS R11 R0 K11 ["localization"]
  GETTABLEKS R12 R0 K12 ["analytics"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K9 ["new"]
  MOVE R14 R1
  CALL R13 1 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K14 [{"MainWidget"}]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K15 ["createElement"]
  GETUPVAL R10 6
  NEWTABLE R11 16 0
  GETUPVAL R13 7
  JUMPIFNOT R13 [+2]
  LOADK R12 K16 ["SocialPresence"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K17 ["Id"]
  MOVE R12 R5
  JUMPIFNOT R12 [+4]
  GETUPVAL R12 8
  NAMECALL R12 R12 K18 ["IsEdit"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K19 ["Enabled"]
  GETTABLEKS R12 R0 K11 ["localization"]
  LOADK R14 K6 ["Plugin"]
  LOADK R15 K20 ["Name"]
  NAMECALL R12 R12 K21 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K22 ["Title"]
  GETIMPORT R12 K26 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K24 ["ZIndexBehavior"]
  GETIMPORT R12 K29 [Enum.InitialDockState.Right]
  SETTABLEKS R12 R11 K27 ["InitialDockState"]
  GETIMPORT R12 K31 [Vector2.new]
  LOADN R13 128
  LOADN R14 224
  CALL R12 2 1
  SETTABLEKS R12 R11 K32 ["Size"]
  GETIMPORT R12 K31 [Vector2.new]
  LOADN R13 250
  LOADN R14 200
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["MinSize"]
  GETTABLEKS R12 R0 K34 ["onClose"]
  SETTABLEKS R12 R11 K35 ["OnClose"]
  LOADB R12 1
  SETTABLEKS R12 R11 K36 ["ShouldRestore"]
  GETTABLEKS R12 R0 K37 ["onRestore"]
  SETTABLEKS R12 R11 K38 ["OnWidgetRestored"]
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K39 ["Change"]
  GETTABLEKS R12 R13 K19 ["Enabled"]
  GETTABLEKS R13 R0 K40 ["onWidgetEnabledChanged"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K42 [{"CollaboratorList"}]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K15 ["createElement"]
  GETUPVAL R14 10
  CALL R13 1 1
  SETTABLEKS R13 R12 K41 ["CollaboratorList"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["MainWidget"]
  CALL R6 2 -1
  RETURN R6 -1

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
  GETTABLEKS R5 R4 K13 ["UI"]
  GETTABLEKS R6 R4 K14 ["SharedFlags"]
  GETTABLEKS R7 R6 K15 ["getFFlagDevFrameworkBetterInit"]
  CALL R7 0 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R8 R5 K16 ["DockWidget"]
  JUMP [+4]
  GETTABLEKS R9 R4 K17 ["StudioUI"]
  GETTABLEKS R8 R9 K16 ["DockWidget"]
  GETTABLEKS R9 R4 K18 ["ContextServices"]
  GETTABLEKS R10 R9 K19 ["Plugin"]
  GETTABLEKS R11 R9 K20 ["Mouse"]
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K21 ["Src"]
  GETTABLEKS R14 R15 K22 ["Resources"]
  GETTABLEKS R13 R14 K23 ["MakeTheme"]
  CALL R12 1 1
  GETTABLEKS R16 R1 K21 ["Src"]
  GETTABLEKS R15 R16 K22 ["Resources"]
  GETTABLEKS R14 R15 K24 ["Localization"]
  GETTABLEKS R13 R14 K25 ["SourceStrings"]
  GETTABLEKS R17 R1 K21 ["Src"]
  GETTABLEKS R16 R17 K22 ["Resources"]
  GETTABLEKS R15 R16 K24 ["Localization"]
  GETTABLEKS R14 R15 K26 ["LocalizedStrings"]
  GETTABLEKS R16 R1 K21 ["Src"]
  GETTABLEKS R15 R16 K27 ["Components"]
  GETIMPORT R16 K8 [require]
  GETTABLEKS R17 R15 K28 ["CollaboratorList"]
  CALL R16 1 1
  GETIMPORT R17 K8 [require]
  GETTABLEKS R20 R1 K21 ["Src"]
  GETTABLEKS R19 R20 K18 ["ContextServices"]
  GETTABLEKS R18 R19 K29 ["CollaboratorsServiceContext"]
  CALL R17 1 1
  GETIMPORT R18 K8 [require]
  GETTABLEKS R21 R1 K21 ["Src"]
  GETTABLEKS R20 R21 K30 ["Util"]
  GETTABLEKS R19 R20 K31 ["AnalyticsHandlers"]
  CALL R18 1 1
  GETIMPORT R19 K1 [game]
  LOADK R21 K32 ["RunService"]
  NAMECALL R19 R19 K33 ["GetService"]
  CALL R19 2 1
  GETTABLEKS R20 R2 K34 ["PureComponent"]
  LOADK R22 K35 ["MainPlugin"]
  NAMECALL R20 R20 K36 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K37 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R18
  SETTABLEKS R21 R20 K38 ["init"]
  DUPCLOSURE R21 K39 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE VAL R19
  CAPTURE VAL R3
  CAPTURE VAL R16
  SETTABLEKS R21 R20 K40 ["render"]
  RETURN R20 1
