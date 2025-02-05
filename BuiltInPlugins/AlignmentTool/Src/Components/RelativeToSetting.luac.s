PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R5 R1 K0 ["Value"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K2 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K3 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["Missing required property Value."]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETTABLEKS R5 R1 K7 ["OnValueChanged"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K2 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K8 ["function"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["Missing required property OnValueChanged."]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Value"]
  JUMPIFEQ R0 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K8 [{"Disabled", "Key", "LayoutOrder", "Selected", "Text", "OnClick"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K2 ["Disabled"]
  SETTABLEKS R0 R5 K3 ["Key"]
  SETTABLEKS R1 R5 K4 ["LayoutOrder"]
  SETTABLEKS R2 R5 K5 ["Selected"]
  GETUPVAL R6 3
  LOADK R8 K9 ["RelativeToSection"]
  MOVE R9 R0
  NAMECALL R6 R6 K10 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["Text"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["OnValueChanged"]
  SETTABLEKS R6 R5 K7 ["OnClick"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K8 [{"axis", "contentPadding", "BackgroundTransparency", "FillDirection"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K9 ["Axis"]
  GETTABLEKS R8 R9 K10 ["Both"]
  SETTABLEKS R8 R7 K4 ["axis"]
  GETTABLEKS R8 R3 K11 ["SectionContentPaddingCompact"]
  SETTABLEKS R8 R7 K5 ["contentPadding"]
  LOADN R8 1
  SETTABLEKS R8 R7 K6 ["BackgroundTransparency"]
  GETIMPORT R8 K14 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K7 ["FillDirection"]
  DUPTABLE R8 K17 [{"SelectionRadioButton", "ActiveRadioButton"}]
  MOVE R9 R4
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K18 ["Selection"]
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["SelectionRadioButton"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K20 [{"axis", "contentPadding", "BackgroundTransparency", "FillDirection", "LayoutOrder"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K9 ["Axis"]
  GETTABLEKS R12 R13 K10 ["Both"]
  SETTABLEKS R12 R11 K4 ["axis"]
  GETTABLEKS R13 R3 K21 ["RelativeToSetting"]
  GETTABLEKS R12 R13 K22 ["HelpIconPadding"]
  SETTABLEKS R12 R11 K5 ["contentPadding"]
  LOADN R12 1
  SETTABLEKS R12 R11 K6 ["BackgroundTransparency"]
  GETIMPORT R12 K24 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K7 ["FillDirection"]
  LOADN R12 2
  SETTABLEKS R12 R11 K19 ["LayoutOrder"]
  DUPTABLE R12 K27 [{"RadioButton", "HelpIcon"}]
  MOVE R13 R4
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K28 ["Active"]
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["RadioButton"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K3 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K30 [{"LayoutOrder", "Size"}]
  LOADN R16 2
  SETTABLEKS R16 R15 K19 ["LayoutOrder"]
  GETIMPORT R16 K33 [UDim2.new]
  LOADN R17 0
  LOADN R18 22
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K29 ["Size"]
  DUPTABLE R16 K36 [{"Icon", "Tooltip"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K3 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K38 [{"Style"}]
  LOADK R20 K26 ["HelpIcon"]
  SETTABLEKS R20 R19 K37 ["Style"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K34 ["Icon"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K3 ["createElement"]
  GETUPVAL R18 6
  DUPTABLE R19 K40 [{"Text"}]
  LOADK R22 K41 ["RelativeToSection"]
  LOADK R23 K42 ["ActiveObjectTooltip"]
  NAMECALL R20 R2 K43 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K39 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K35 ["Tooltip"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K26 ["HelpIcon"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["ActiveRadioButton"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["FitFrame"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K7 ["FitFrameOnAxis"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R3 K12 ["UI"]
  GETTABLEKS R7 R6 K13 ["Container"]
  GETTABLEKS R8 R6 K14 ["Image"]
  GETTABLEKS R9 R6 K15 ["RadioButton"]
  GETTABLEKS R10 R6 K16 ["Tooltip"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K18 ["Utility"]
  GETTABLEKS R12 R13 K19 ["RelativeTo"]
  CALL R11 1 1
  GETTABLEKS R12 R2 K20 ["PureComponent"]
  LOADK R14 K21 ["RelativeToSetting"]
  NAMECALL R12 R12 K22 ["extend"]
  CALL R12 2 1
  DUPTABLE R13 K25 [{"Value", "OnValueChanged"}]
  GETTABLEKS R14 R11 K26 ["Selection"]
  SETTABLEKS R14 R13 K23 ["Value"]
  DUPCLOSURE R14 K27 [PROTO_0]
  SETTABLEKS R14 R13 K24 ["OnValueChanged"]
  SETTABLEKS R13 R12 K28 ["defaultProps"]
  DUPCLOSURE R13 K29 [PROTO_1]
  SETTABLEKS R13 R12 K30 ["init"]
  DUPCLOSURE R13 K31 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K32 ["render"]
  MOVE R13 R5
  DUPTABLE R14 K35 [{"Localization", "Stylizer"}]
  GETTABLEKS R15 R4 K33 ["Localization"]
  SETTABLEKS R15 R14 K33 ["Localization"]
  GETTABLEKS R15 R4 K34 ["Stylizer"]
  SETTABLEKS R15 R14 K34 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
