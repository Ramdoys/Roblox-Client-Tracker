MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["StyleTips"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["defaultPadding"]
  MULK R5 R4 K13 [3]
  GETTABLEKS R8 R3 K14 ["normalFontSize"]
  ADD R7 R8 R5
  ADD R6 R7 R4
  MOVE R7 R2
  LOADK R8 K15 [".Component-ActivityHistoryBubbleListSectionHeader"]
  DUPTABLE R9 K17 [{"Size"}]
  GETIMPORT R10 K20 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  MOVE R14 R6
  CALL R10 4 1
  SETTABLEKS R10 R9 K16 ["Size"]
  NEWTABLE R10 0 2
  MOVE R11 R2
  LOADK R12 K21 ["::UIPadding"]
  DUPTABLE R13 K26 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R14 K28 [UDim.new]
  LOADN R15 0
  MOVE R16 R5
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["PaddingTop"]
  GETIMPORT R14 K28 [UDim.new]
  LOADN R15 0
  MOVE R16 R4
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["PaddingBottom"]
  GETIMPORT R14 K28 [UDim.new]
  LOADN R15 0
  MOVE R16 R4
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["PaddingLeft"]
  GETIMPORT R14 K28 [UDim.new]
  LOADN R15 0
  MOVE R16 R4
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["PaddingRight"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K29 ["> #Title"]
  DUPTABLE R14 K32 [{"TextColor3", "Font"}]
  LOADK R15 K33 ["$TextPrimary"]
  SETTABLEKS R15 R14 K30 ["TextColor3"]
  GETTABLEKS R15 R3 K34 ["boldedFont"]
  SETTABLEKS R15 R14 K31 ["Font"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  RETURN R7 -1
