PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["PlayerEmulationEnabled"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["PlayerEmulationEnabled"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["MAIN_SWITCH_KEY"]
  NAMECALL R2 R1 K4 ["GetSetting"]
  CALL R2 2 1
  JUMPIFNOTEQKB R2 TRUE [+5]
  GETUPVAL R3 1
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["PlayerEmulationEnabled"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Plugin"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["MAIN_SWITCH_KEY"]
  MOVE R6 R1
  NAMECALL R3 R2 K4 ["SetSetting"]
  CALL R3 3 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["onPlayerEmulationEnabledChanged"]
  MOVE R4 R3
  MOVE R5 R1
  CALL R4 1 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["signalTokens"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["PlayerEmulationEnabled"]
  NAMECALL R0 R0 K1 ["updatePlayerEmulationEnabled"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  LOADK R3 K0 ["PlayerEmulationEnabled"]
  NAMECALL R1 R1 K1 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  GETTABLEKS R3 R0 K3 ["signalTokens"]
  FASTCALL2 TABLE_INSERT R3 R1 [+4]
  MOVE R4 R1
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  NAMECALL R2 R0 K7 ["initEnabledStatus"]
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K1 [pairs]
  GETTABLEKS R2 R0 K2 ["signalTokens"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  NAMECALL R6 R5 K3 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["signalTokens"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["mainSwitchEnabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  LOADK R6 K5 ["Frame"]
  DUPTABLE R7 K9 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R8 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K6 ["AutomaticSize"]
  GETIMPORT R8 K15 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K8 ["BackgroundTransparency"]
  SETTABLEKS R3 R7 K2 ["LayoutOrder"]
  DUPTABLE R8 K19 [{"Layout", "Label", "Toggle"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  LOADK R10 K20 ["UIListLayout"]
  DUPTABLE R11 K25 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment"}]
  GETIMPORT R12 K28 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R12 R11 K21 ["HorizontalFlex"]
  GETIMPORT R12 K29 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K22 ["SortOrder"]
  GETIMPORT R12 K31 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K23 ["FillDirection"]
  GETIMPORT R12 K33 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K24 ["VerticalAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["Layout"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K38 [{"AutomaticSize", "Text", "TextXAlignment", "TextWrapped", "TextTruncate", "LayoutOrder"}]
  GETIMPORT R12 K40 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K6 ["AutomaticSize"]
  LOADK R14 K41 ["MainSwitchSection"]
  LOADK R15 K42 ["LabelText"]
  NAMECALL R12 R2 K43 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K34 ["Text"]
  GETIMPORT R12 K45 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K35 ["TextXAlignment"]
  LOADB R12 1
  SETTABLEKS R12 R11 K36 ["TextWrapped"]
  GETIMPORT R12 K47 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R12 R11 K37 ["TextTruncate"]
  LOADN R12 1
  SETTABLEKS R12 R11 K2 ["LayoutOrder"]
  DUPTABLE R12 K49 [{"FlexItem"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K50 ["UIFlexItem"]
  DUPTABLE R15 K52 [{"FlexMode"}]
  GETIMPORT R16 K55 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R16 R15 K51 ["FlexMode"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K48 ["FlexItem"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["Label"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K58 [{"LayoutOrder", "OnClick", "Selected"}]
  LOADN R12 2
  SETTABLEKS R12 R11 K2 ["LayoutOrder"]
  GETUPVAL R12 3
  SETTABLEKS R12 R11 K56 ["OnClick"]
  SETTABLEKS R4 R11 K57 ["Selected"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["Toggle"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_9:
  DUPTABLE R2 K1 [{"mainSwitchEnabled"}]
  GETTABLEKS R4 R0 K2 ["MainSwitch"]
  GETTABLEKS R3 R4 K0 ["mainSwitchEnabled"]
  SETTABLEKS R3 R2 K0 ["mainSwitchEnabled"]
  RETURN R2 1

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K1 [{"onPlayerEmulationEnabledChanged"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["onPlayerEmulationEnabledChanged"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["PlayerEmulatorService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["withContext"]
  GETTABLEKS R7 R4 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["TextLabel"]
  GETTABLEKS R9 R7 K17 ["ToggleButton"]
  GETIMPORT R10 K8 [require]
  GETTABLEKS R13 R1 K18 ["Src"]
  GETTABLEKS R12 R13 K19 ["Util"]
  GETTABLEKS R11 R12 K20 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R1 K18 ["Src"]
  GETTABLEKS R13 R14 K21 ["Actions"]
  GETTABLEKS R12 R13 K22 ["OnPlayerEmulationEnabledChanged"]
  CALL R11 1 1
  DUPCLOSURE R12 K23 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R13 K24 [PROTO_1]
  CAPTURE VAL R0
  GETTABLEKS R14 R2 K25 ["PureComponent"]
  LOADK R16 K26 ["MainSwitchSection"]
  NAMECALL R14 R14 K27 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K28 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K29 ["initEnabledStatus"]
  DUPCLOSURE R15 K30 [PROTO_3]
  CAPTURE VAL R10
  SETTABLEKS R15 R14 K31 ["updatePlayerEmulationEnabled"]
  DUPCLOSURE R15 K32 [PROTO_4]
  SETTABLEKS R15 R14 K33 ["init"]
  DUPCLOSURE R15 K34 [PROTO_6]
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K35 ["didMount"]
  DUPCLOSURE R15 K36 [PROTO_7]
  SETTABLEKS R15 R14 K37 ["willUnmount"]
  DUPCLOSURE R15 K38 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R13
  SETTABLEKS R15 R14 K39 ["render"]
  MOVE R15 R6
  DUPTABLE R16 K42 [{"Plugin", "Localization"}]
  GETTABLEKS R17 R5 K40 ["Plugin"]
  SETTABLEKS R17 R16 K40 ["Plugin"]
  GETTABLEKS R17 R5 K41 ["Localization"]
  SETTABLEKS R17 R16 K41 ["Localization"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  DUPCLOSURE R15 K43 [PROTO_9]
  DUPCLOSURE R16 K44 [PROTO_11]
  CAPTURE VAL R11
  GETTABLEKS R17 R3 K45 ["connect"]
  MOVE R18 R15
  MOVE R19 R16
  CALL R17 2 1
  MOVE R18 R14
  CALL R17 1 -1
  RETURN R17 -1
