PROTO_0:
  JUMPIFNOTEQ R1 R2 [+3]
  LOADB R3 1
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["MoveXY"]
  JUMPIFNOTEQ R1 R3 [+15]
  LOADB R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["MoveX"]
  JUMPIFEQ R2 R4 [+8]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["MoveY"]
  JUMPIFEQ R2 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["ResizeXpYp"]
  JUMPIFNOTEQ R1 R3 [+15]
  LOADB R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["ResizeXp"]
  JUMPIFEQ R2 R4 [+8]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["ResizeYp"]
  JUMPIFEQ R2 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["ResizeXnYp"]
  JUMPIFNOTEQ R1 R3 [+15]
  LOADB R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["ResizeXn"]
  JUMPIFEQ R2 R4 [+8]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["ResizeYp"]
  JUMPIFEQ R2 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["ResizeXpYn"]
  JUMPIFNOTEQ R1 R3 [+15]
  LOADB R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["ResizeXp"]
  JUMPIFEQ R2 R4 [+8]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["ResizeYn"]
  JUMPIFEQ R2 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["ResizeXnYn"]
  JUMPIFNOTEQ R1 R3 [+15]
  LOADB R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["ResizeXn"]
  JUMPIFEQ R2 R4 [+8]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["ResizeYn"]
  JUMPIFEQ R2 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1
  LOADB R3 0
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["MoveX"]
  LOADN R1 1
  SETTABLEKS R1 R0 K1 ["MoveY"]
  LOADN R1 2
  SETTABLEKS R1 R0 K2 ["MoveXY"]
  LOADN R1 3
  SETTABLEKS R1 R0 K3 ["ResizeXp"]
  LOADN R1 4
  SETTABLEKS R1 R0 K4 ["ResizeXn"]
  LOADN R1 5
  SETTABLEKS R1 R0 K5 ["ResizeYp"]
  LOADN R1 6
  SETTABLEKS R1 R0 K6 ["ResizeYn"]
  LOADN R1 7
  SETTABLEKS R1 R0 K7 ["ResizeXpYp"]
  LOADN R1 8
  SETTABLEKS R1 R0 K8 ["ResizeXnYp"]
  LOADN R1 9
  SETTABLEKS R1 R0 K9 ["ResizeXpYn"]
  LOADN R1 10
  SETTABLEKS R1 R0 K10 ["ResizeXnYn"]
  DUPCLOSURE R1 K11 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["containsType"]
  RETURN R0 1
