PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  NEWTABLE R4 4 0
  GETTABLEKS R5 R0 K2 ["LayoutOrder"]
  SETTABLEKS R5 R4 K2 ["LayoutOrder"]
  GETIMPORT R5 K6 [Enum.FillDirection.Horizontal]
  SETTABLEKS R5 R4 K7 ["Layout"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["Tag"]
  LOADK R6 K9 ["TopBar HeaderBar X-Left X-Row X-Stroke"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K12 [{"ScopeTitleContainer", "Options"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  NEWTABLE R8 2 0
  NAMECALL R9 R1 K13 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["Tag"]
  LOADK R10 K14 ["Header X-Pad X-Left X-Middle"]
  SETTABLE R10 R8 R9
  DUPTABLE R9 K16 [{"ScopeTitle"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 3
  NEWTABLE R12 2 0
  LOADK R13 K17 [""]
  SETTABLEKS R13 R12 K18 ["Text"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K8 ["Tag"]
  LOADK R14 K19 ["Title X-Fit X-PadS"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["ScopeTitle"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K10 ["ScopeTitleContainer"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  NEWTABLE R8 2 0
  NAMECALL R9 R1 K13 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["Tag"]
  LOADK R10 K20 ["Options X-Right X-RowM X-Middle X-PadS"]
  SETTABLE R10 R8 R9
  NEWTABLE R9 0 0
  CALL R6 3 1
  SETTABLEKS R6 R5 K11 ["Options"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
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
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["LayoutOrderIterator"]
  GETTABLEKS R4 R2 K11 ["UI"]
  GETTABLEKS R5 R4 K12 ["Pane"]
  GETTABLEKS R6 R4 K13 ["TextLabel"]
  GETTABLEKS R7 R1 K14 ["useState"]
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R8 1
