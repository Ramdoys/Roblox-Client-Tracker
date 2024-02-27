PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["status"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Stylizer"]
  LOADK R5 K4 [""]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["ScanningScripts"]
  JUMPIFEQ R2 R6 [+11]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["ScanningWorkspace"]
  JUMPIFEQ R2 R6 [+6]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["ConvertingAnimations"]
  JUMPIFNOTEQ R2 R6 [+7]
  LOADK R8 K8 ["AnimationConversion"]
  MOVE R9 R2
  NAMECALL R6 R3 K9 ["getText"]
  CALL R6 3 1
  MOVE R5 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["new"]
  CALL R6 0 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K17 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  GETIMPORT R10 K21 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K12 ["Layout"]
  GETIMPORT R10 K23 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R10 R9 K13 ["HorizontalAlignment"]
  GETIMPORT R10 K24 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K14 ["VerticalAlignment"]
  GETTABLEKS R10 R4 K15 ["Spacing"]
  SETTABLEKS R10 R9 K15 ["Spacing"]
  GETTABLEKS R10 R4 K16 ["Padding"]
  SETTABLEKS R10 R9 K16 ["Padding"]
  DUPTABLE R10 K27 [{"Text", "LoadingIndicator"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K30 [{"Text", "AutomaticSize", "LayoutOrder"}]
  SETTABLEKS R5 R13 K25 ["Text"]
  GETIMPORT R14 K32 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K28 ["AutomaticSize"]
  NAMECALL R14 R6 K33 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K29 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["Text"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K34 [{"LayoutOrder"}]
  NAMECALL R14 R6 K33 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K29 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["LoadingIndicator"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_1:
  DUPTABLE R2 K1 [{"status"}]
  GETTABLEKS R4 R0 K2 ["AnimationConversion"]
  GETTABLEKS R3 R4 K0 ["status"]
  SETTABLEKS R3 R2 K0 ["status"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R1 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["LoadingIndicator"]
  GETTABLEKS R8 R5 K14 ["TextLabel"]
  GETTABLEKS R10 R1 K15 ["Util"]
  GETTABLEKS R9 R10 K16 ["LayoutOrderIterator"]
  GETTABLEKS R12 R0 K17 ["Src"]
  GETTABLEKS R11 R12 K15 ["Util"]
  GETTABLEKS R10 R11 K18 ["AnimationConversion"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R10 K19 ["constants"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K20 ["Status"]
  GETTABLEKS R12 R2 K21 ["PureComponent"]
  LOADK R14 K22 ["LoadingScreen"]
  NAMECALL R12 R12 K23 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K24 [PROTO_0]
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K25 ["render"]
  GETTABLEKS R13 R4 K26 ["withContext"]
  DUPTABLE R14 K29 [{"Stylizer", "Localization"}]
  GETTABLEKS R15 R4 K27 ["Stylizer"]
  SETTABLEKS R15 R14 K27 ["Stylizer"]
  GETTABLEKS R15 R4 K28 ["Localization"]
  SETTABLEKS R15 R14 K28 ["Localization"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  DUPCLOSURE R13 K30 [PROTO_1]
  GETTABLEKS R14 R3 K31 ["connect"]
  MOVE R15 R13
  CALL R14 1 1
  MOVE R15 R12
  CALL R14 1 -1
  RETURN R14 -1
