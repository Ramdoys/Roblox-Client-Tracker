PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"hover"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["hover"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"hover"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["hover"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Expected FFlagMaterialGeneratorNewUI to be false"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["mouseEnter"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["mouseLeave"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["TextureItem"]
  GETTABLEKS R3 R2 K3 ["BackgroundColor"]
  GETTABLEKS R5 R1 K4 ["Selected"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K5 ["SelectedBorderColor"]
  JUMP [+2]
  GETTABLEKS R4 R2 K6 ["BorderColor"]
  GETTABLEKS R5 R2 K7 ["BorderThickness"]
  GETTABLEKS R6 R2 K8 ["CornerRadius"]
  GETUPVAL R7 0
  GETTABLEKS R8 R1 K9 ["Size"]
  GETTABLEKS R9 R2 K9 ["Size"]
  CALL R7 2 1
  GETTABLEKS R9 R0 K10 ["state"]
  GETTABLEKS R8 R9 K11 ["hover"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K12 ["createElement"]
  LOADK R10 K13 ["ImageButton"]
  NEWTABLE R11 16 0
  LOADB R12 1
  SETTABLEKS R12 R11 K14 ["AutoButtonColor"]
  SETTABLEKS R3 R11 K15 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K16 ["BorderSizePixel"]
  GETTABLEKS R12 R1 K17 ["Image"]
  SETTABLEKS R12 R11 K17 ["Image"]
  GETTABLEKS R12 R2 K18 ["ImageColor3"]
  SETTABLEKS R12 R11 K18 ["ImageColor3"]
  GETTABLEKS R12 R1 K19 ["LayoutOrder"]
  SETTABLEKS R12 R11 K19 ["LayoutOrder"]
  SETTABLEKS R7 R11 K9 ["Size"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K20 ["Event"]
  GETTABLEKS R12 R13 K21 ["Activated"]
  GETTABLEKS R13 R1 K22 ["OnClick"]
  SETTABLE R13 R11 R12
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K20 ["Event"]
  GETTABLEKS R12 R13 K23 ["MouseButton2Click"]
  GETTABLEKS R13 R1 K24 ["OnRightClick"]
  SETTABLE R13 R11 R12
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K20 ["Event"]
  GETTABLEKS R12 R13 K25 ["MouseEnter"]
  GETTABLEKS R13 R0 K26 ["mouseEnter"]
  SETTABLE R13 R11 R12
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K20 ["Event"]
  GETTABLEKS R12 R13 K27 ["MouseLeave"]
  GETTABLEKS R13 R0 K28 ["mouseLeave"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K31 [{"UICorner", "UIStroke"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K12 ["createElement"]
  LOADK R14 K29 ["UICorner"]
  DUPTABLE R15 K32 [{"CornerRadius"}]
  SETTABLEKS R6 R15 K8 ["CornerRadius"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K29 ["UICorner"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K12 ["createElement"]
  LOADK R14 K30 ["UIStroke"]
  DUPTABLE R15 K36 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R16 K39 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R16 R15 K33 ["ApplyStrokeMode"]
  SETTABLEKS R4 R15 K34 ["Color"]
  SETTABLEKS R5 R15 K35 ["Thickness"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["UIStroke"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_4:
  LOADNIL R2
  GETTABLEKS R3 R1 K0 ["hover"]
  JUMPIFNOT R3 [+3]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Hover"]
  GETTABLEKS R3 R1 K2 ["StyleModifier"]
  JUMPIFEQ R2 R3 [+10]
  DUPTABLE R3 K3 [{"StyleModifier"}]
  MOVE R4 R2
  JUMPIF R4 [+3]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["None"]
  SETTABLEKS R4 R3 K2 ["StyleModifier"]
  RETURN R3 1
  LOADNIL R3
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["ReactRoblox"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["Localization"]
  GETTABLEKS R6 R4 K11 ["withContext"]
  GETTABLEKS R8 R1 K12 ["Style"]
  GETTABLEKS R7 R8 K13 ["Stylizer"]
  GETTABLEKS R8 R1 K14 ["Util"]
  GETTABLEKS R9 R8 K15 ["StyleModifier"]
  GETTABLEKS R11 R1 K14 ["Util"]
  GETTABLEKS R10 R11 K16 ["prioritize"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K18 ["Flags"]
  GETTABLEKS R12 R13 K19 ["getFFlagMaterialGeneratorNewUI"]
  CALL R11 1 1
  GETTABLEKS R12 R2 K20 ["PureComponent"]
  LOADK R14 K21 ["TextureItem"]
  NAMECALL R12 R12 K22 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K23 [PROTO_2]
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K24 ["init"]
  DUPCLOSURE R13 K25 [PROTO_3]
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R13 R12 K26 ["render"]
  DUPCLOSURE R13 K27 [PROTO_4]
  CAPTURE VAL R9
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K28 ["getDerivedStateFromProps"]
  MOVE R13 R6
  DUPTABLE R14 K29 [{"Localization", "Stylizer"}]
  SETTABLEKS R5 R14 K10 ["Localization"]
  SETTABLEKS R7 R14 K13 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 -1
  RETURN R13 -1
