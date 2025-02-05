PROTO_0:
  FASTCALL2K STRING_SUB R0 K0 [+5]
  MOVE R2 R0
  LOADK R3 K0 [-1]
  GETIMPORT R1 K3 [string.sub]
  CALL R1 2 1
  JUMPIFNOTEQKS R1 K4 ["*"] [+10]
  LOADN R3 1
  LOADN R4 254
  FASTCALL3 STRING_SUB R0 R3 R4
  MOVE R2 R0
  GETIMPORT R1 K3 [string.sub]
  CALL R1 3 1
  MOVE R0 R1
  RETURN R0 1

PROTO_1:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["Stylizer"]
  GETTABLEKS R4 R5 K2 ["TopBar"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K3 ["PresetController"]
  LOADNIL R6
  MOVE R8 R0
  FASTCALL2K STRING_SUB R8 K4 [+5]
  MOVE R10 R8
  LOADK R11 K4 [-1]
  GETIMPORT R9 K7 [string.sub]
  CALL R9 2 1
  JUMPIFNOTEQKS R9 K8 ["*"] [+10]
  LOADN R11 1
  LOADN R12 254
  FASTCALL3 STRING_SUB R8 R11 R12
  MOVE R10 R8
  GETIMPORT R9 K7 [string.sub]
  CALL R9 3 1
  MOVE R8 R9
  MOVE R7 R8
  MOVE R10 R7
  NAMECALL R8 R5 K9 ["isStudioDefault"]
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  LOADN R6 1
  JUMP [+9]
  MOVE R10 R7
  NAMECALL R8 R5 K10 ["isLastImport"]
  CALL R8 2 1
  JUMPIFNOT R8 [+2]
  LOADN R6 2
  JUMP [+2]
  LOADN R8 2
  ADD R6 R8 R1
  JUMPIFNOT R3 [+4]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K11 ["Hover"]
  JUMP [+1]
  LOADNIL R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K12 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K17 [{"LayoutOrder", "OnClick", "Size", "StyleModifier"}]
  SETTABLEKS R6 R11 K13 ["LayoutOrder"]
  SETTABLEKS R2 R11 K14 ["OnClick"]
  GETTABLEKS R12 R4 K18 ["MenuItemSize"]
  SETTABLEKS R12 R11 K15 ["Size"]
  SETTABLEKS R8 R11 K16 ["StyleModifier"]
  DUPTABLE R12 K20 [{"TextLabel"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K24 [{"Text", "TextXAlignment", "Size", "TextTruncate", "StyleModifier"}]
  SETTABLEKS R7 R15 K21 ["Text"]
  GETIMPORT R16 K27 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K22 ["TextXAlignment"]
  GETIMPORT R16 K30 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K15 ["Size"]
  GETIMPORT R16 K32 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R16 R15 K23 ["TextTruncate"]
  SETTABLEKS R8 R15 K16 ["StyleModifier"]
  DUPTABLE R16 K34 [{"Padding"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K12 ["createElement"]
  LOADK R18 K35 ["UIPadding"]
  DUPTABLE R19 K38 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R20 K41 [UDim.new]
  LOADN R21 0
  GETTABLEKS R23 R4 K33 ["Padding"]
  GETTABLEKS R22 R23 K26 ["Left"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K36 ["PaddingLeft"]
  GETIMPORT R20 K41 [UDim.new]
  LOADN R21 0
  GETTABLEKS R23 R4 K33 ["Padding"]
  GETTABLEKS R22 R23 K42 ["Right"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K37 ["PaddingRight"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["Padding"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K19 ["TextLabel"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["PresetController"]
  MOVE R5 R0
  GETTABLEKS R6 R2 K2 ["QueueItem"]
  NAMECALL R3 R3 K3 ["resolvePreset"]
  CALL R3 3 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K0 ["renderDropdownItem"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onItemActivated"]
  RETURN R0 0

PROTO_4:
  MOVE R3 R0
  FASTCALL2K STRING_SUB R3 K0 [+5]
  MOVE R5 R3
  LOADK R6 K0 [-1]
  GETIMPORT R4 K3 [string.sub]
  CALL R4 2 1
  JUMPIFNOTEQKS R4 K4 ["*"] [+10]
  LOADN R6 1
  LOADN R7 254
  FASTCALL3 STRING_SUB R3 R6 R7
  MOVE R5 R3
  GETIMPORT R4 K3 [string.sub]
  CALL R4 3 1
  MOVE R3 R4
  MOVE R2 R3
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["QueueItem"]
  GETTABLEKS R2 R3 K2 ["currentPreset"]
  GETTABLEKS R3 R1 K3 ["PresetController"]
  MOVE R5 R2
  GETTABLEKS R6 R1 K1 ["QueueItem"]
  NAMECALL R3 R3 K4 ["getNameList"]
  CALL R3 3 1
  GETUPVAL R4 0
  MOVE R5 R3
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K14 [{"Items", "LayoutOrder", "OnRenderItem", "OnItemActivated", "SelectedIndex", "Size", "Enabled", "TextTruncate"}]
  SETTABLEKS R3 R7 K6 ["Items"]
  GETTABLEKS R8 R1 K7 ["LayoutOrder"]
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  GETTABLEKS R8 R0 K15 ["renderDropdownItem"]
  SETTABLEKS R8 R7 K8 ["OnRenderItem"]
  GETTABLEKS R8 R0 K16 ["onItemActivated"]
  SETTABLEKS R8 R7 K9 ["OnItemActivated"]
  SETTABLEKS R4 R7 K10 ["SelectedIndex"]
  GETTABLEKS R8 R1 K11 ["Size"]
  SETTABLEKS R8 R7 K11 ["Size"]
  GETTABLEKS R8 R1 K12 ["Enabled"]
  SETTABLEKS R8 R7 K12 ["Enabled"]
  GETIMPORT R8 K19 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R8 R7 K13 ["TextTruncate"]
  CALL R5 2 1
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["RoactCompat"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Dash"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Localization"]
  GETTABLEKS R8 R2 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["Stylizer"]
  GETTABLEKS R8 R2 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["Button"]
  GETTABLEKS R10 R8 K17 ["SelectInput"]
  GETTABLEKS R11 R8 K18 ["TextLabel"]
  GETTABLEKS R12 R2 K19 ["Util"]
  GETTABLEKS R13 R12 K20 ["StyleModifier"]
  GETTABLEKS R14 R3 K21 ["findIndex"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K22 ["Src"]
  GETTABLEKS R17 R18 K23 ["Controllers"]
  GETTABLEKS R16 R17 K24 ["PresetController"]
  CALL R15 1 1
  GETTABLEKS R16 R1 K25 ["PureComponent"]
  LOADK R18 K26 ["PresetSelector"]
  NAMECALL R16 R16 K27 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K28 [PROTO_0]
  DUPTABLE R18 K31 [{"Enabled", "Size"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K29 ["Enabled"]
  GETIMPORT R19 K34 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K30 ["Size"]
  SETTABLEKS R18 R16 K35 ["defaultProps"]
  DUPCLOSURE R18 K36 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R18 R16 K37 ["init"]
  DUPCLOSURE R18 K38 [PROTO_5]
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R10
  SETTABLEKS R18 R16 K39 ["render"]
  MOVE R18 R5
  DUPTABLE R19 K40 [{"Localization", "Stylizer", "PresetController"}]
  SETTABLEKS R6 R19 K12 ["Localization"]
  SETTABLEKS R7 R19 K14 ["Stylizer"]
  SETTABLEKS R15 R19 K24 ["PresetController"]
  CALL R18 1 1
  MOVE R19 R16
  CALL R18 1 1
  MOVE R16 R18
  RETURN R16 1
