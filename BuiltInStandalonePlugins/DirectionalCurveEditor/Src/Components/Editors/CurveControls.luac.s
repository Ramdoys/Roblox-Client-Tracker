PROTO_0:
  GETIMPORT R1 K2 [Vector2.new]
  MOVE R2 R0
  GETUPVAL R3 0
  CALL R1 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["CurveHook"]
  GETTABLEKS R2 R3 K4 ["update"]
  MOVE R3 R1
  LOADB R4 1
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K2 [Vector2.new]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["CurveHook"]
  GETTABLEKS R2 R3 K4 ["update"]
  MOVE R3 R1
  LOADB R4 1
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["CurveHook"]
  GETTABLEKS R0 R1 K1 ["remove"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["Context"]
  GETTABLEKS R3 R4 K2 ["Consumer"]
  CALL R2 1 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["Localization"]
  GETTABLEKS R4 R5 K4 ["Key"]
  GETTABLE R3 R2 R4
  GETTABLEKS R5 R0 K5 ["CurveHook"]
  GETTABLEKS R4 R5 K6 ["getSelectedKeypoint"]
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K7 ["X"]
  JUMP [+1]
  LOADNIL R5
  JUMPIFNOT R4 [+3]
  GETTABLEKS R6 R4 K8 ["Y"]
  JUMP [+1]
  LOADNIL R6
  GETUPVAL R7 3
  NEWCLOSURE R8 P0
  CAPTURE VAL R6
  CAPTURE VAL R0
  NEWTABLE R9 0 1
  GETTABLEKS R10 R0 K5 ["CurveHook"]
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R8 3
  NEWCLOSURE R9 P1
  CAPTURE VAL R5
  CAPTURE VAL R0
  NEWTABLE R10 0 1
  GETTABLEKS R11 R0 K5 ["CurveHook"]
  SETLIST R10 R11 1 [1]
  CALL R8 2 1
  GETUPVAL R9 3
  NEWCLOSURE R10 P2
  CAPTURE VAL R0
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K5 ["CurveHook"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K9 ["createElement"]
  GETUPVAL R11 5
  NEWTABLE R12 4 0
  LOADN R13 2
  SETTABLEKS R13 R12 K10 ["LayoutOrder"]
  GETIMPORT R13 K13 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["Size"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K15 ["Tag"]
  LOADK R14 K16 ["X-Center X-Middle X-RowM X-Fit"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K18 [{"X", "Y", "Delete"}]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K23 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
  NAMECALL R17 R1 K24 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K10 ["LayoutOrder"]
  LOADK R19 K25 ["Label"]
  LOADK R20 K26 ["Angle"]
  NAMECALL R17 R3 K27 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K19 ["Text"]
  GETUPVAL R17 7
  SETTABLEKS R17 R16 K20 ["Schema"]
  SETTABLEKS R5 R16 K21 ["Value"]
  SETTABLEKS R7 R16 K22 ["OnChanged"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K7 ["X"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K23 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
  NAMECALL R17 R1 K24 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K10 ["LayoutOrder"]
  LOADK R19 K25 ["Label"]
  LOADK R20 K28 ["Volume"]
  NAMECALL R17 R3 K27 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K19 ["Text"]
  GETUPVAL R17 8
  SETTABLEKS R17 R16 K20 ["Schema"]
  SETTABLEKS R6 R16 K21 ["Value"]
  SETTABLEKS R8 R16 K22 ["OnChanged"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K8 ["Y"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 9
  DUPTABLE R16 K30 [{"LayoutOrder", "Text", "OnClick"}]
  NAMECALL R17 R1 K24 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K10 ["LayoutOrder"]
  LOADK R19 K31 ["Control"]
  LOADK R20 K17 ["Delete"]
  NAMECALL R17 R3 K27 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K19 ["Text"]
  SETTABLEKS R9 R16 K29 ["OnClick"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K17 ["Delete"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["DirectionalCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useCallback"]
  GETTABLEKS R3 R1 K9 ["useContext"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R7 R4 K12 ["UI"]
  GETTABLEKS R6 R7 K13 ["IconButton"]
  GETTABLEKS R8 R4 K12 ["UI"]
  GETTABLEKS R7 R8 K14 ["Pane"]
  GETTABLEKS R9 R4 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["LayoutOrderIterator"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K17 ["Src"]
  GETTABLEKS R10 R11 K18 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K19 ["Components"]
  GETTABLEKS R11 R12 K20 ["LabelCell"]
  CALL R10 1 1
  DUPTABLE R11 K23 [{"Type", "Min"}]
  LOADK R12 K24 ["Number"]
  SETTABLEKS R12 R11 K21 ["Type"]
  LOADN R12 0
  SETTABLEKS R12 R11 K22 ["Min"]
  DUPTABLE R12 K26 [{"Type", "Min", "Max"}]
  LOADK R13 K24 ["Number"]
  SETTABLEKS R13 R12 K21 ["Type"]
  LOADN R13 0
  SETTABLEKS R13 R12 K22 ["Min"]
  LOADN R13 1
  SETTABLEKS R13 R12 K25 ["Max"]
  DUPCLOSURE R13 K27 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R6
  RETURN R13 1
