PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Value"]
  GETUPVAL R1 1
  JUMPIFEQ R0 R1 [+10]
  GETUPVAL R0 2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Value"]
  JUMPIF R1 [+3]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K1 ["Min"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+15]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["OnChanged"]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["Min"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["Max"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K5 [math.clamp]
  CALL R1 3 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  ORK R2 R0 K0 [0]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["Schema"]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K1 ["Value"]
  CALL R2 1 2
  GETUPVAL R4 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  NEWTABLE R6 0 1
  GETTABLEKS R7 R0 K1 ["Value"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 0
  GETUPVAL R4 0
  LOADB R5 0
  CALL R4 1 2
  GETUPVAL R6 1
  NEWCLOSURE R7 P1
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R1
  NEWTABLE R8 0 2
  MOVE R9 R4
  MOVE R10 R2
  SETLIST R8 R9 2 [1]
  CALL R6 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K14 [{"Disabled", "Max", "Min", "OnInputEnded", "OnValueChanged", "Size", "CustomValidation", "ShowInput", "SnapIncrement", "StyleModifier", "VerticalDragTolerance", "Value"}]
  GETTABLEKS R9 R0 K3 ["Disabled"]
  SETTABLEKS R9 R8 K3 ["Disabled"]
  GETTABLEKS R9 R1 K4 ["Max"]
  SETTABLEKS R9 R8 K4 ["Max"]
  GETTABLEKS R9 R1 K5 ["Min"]
  SETTABLEKS R9 R8 K5 ["Min"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K6 ["OnInputEnded"]
  NEWCLOSURE R9 P3
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K7 ["OnValueChanged"]
  GETIMPORT R9 K17 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K8 ["Size"]
  GETTABLEKS R9 R0 K9 ["CustomValidation"]
  SETTABLEKS R9 R8 K9 ["CustomValidation"]
  GETTABLEKS R9 R1 K10 ["ShowInput"]
  SETTABLEKS R9 R8 K10 ["ShowInput"]
  GETTABLEKS R9 R1 K11 ["SnapIncrement"]
  SETTABLEKS R9 R8 K11 ["SnapIncrement"]
  GETTABLEKS R10 R0 K18 ["HasError"]
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K19 ["Error"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K12 ["StyleModifier"]
  LOADN R9 0
  SETTABLEKS R9 R8 K13 ["VerticalDragTolerance"]
  SETTABLEKS R2 R8 K1 ["Value"]
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useEffect"]
  GETTABLEKS R4 R2 K10 ["useState"]
  GETTABLEKS R6 R1 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["StyleModifier"]
  GETTABLEKS R7 R1 K13 ["UI"]
  GETTABLEKS R6 R7 K14 ["Slider"]
  DUPCLOSURE R7 K15 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R7 1
