PROTO_0:
  LOADN R0 176
  RETURN R0 1

PROTO_1:
  LOADN R0 30
  RETURN R0 1

PROTO_2:
  LOADN R0 176
  RETURN R0 1

PROTO_3:
  LOADN R0 30
  RETURN R0 1

PROTO_4:
  GETIMPORT R3 K2 [Vector2.one]
  GETTABLEKS R5 R1 K3 ["X"]
  GETTABLEKS R6 R1 K4 ["Y"]
  FASTCALL2 MATH_MIN R5 R6 [+3]
  GETIMPORT R4 K7 [math.min]
  CALL R4 2 1
  MUL R2 R3 R4
  DIVK R3 R1 K8 [2]
  GETIMPORT R4 K11 [Rect.new]
  DIVK R6 R2 K8 [2]
  SUB R5 R3 R6
  DIVK R7 R2 K8 [2]
  ADD R6 R3 R7
  CALL R4 2 1
  GETIMPORT R5 K12 [Vector2.new]
  GETTABLEKS R8 R0 K3 ["X"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K13 ["getXMin"]
  CALL R9 0 1
  SUB R7 R8 R9
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K14 ["getXMax"]
  CALL R9 0 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K13 ["getXMin"]
  CALL R10 0 1
  SUB R8 R9 R10
  DIV R6 R7 R8
  GETTABLEKS R10 R0 K4 ["Y"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K16 ["getYMin"]
  CALL R11 0 1
  SUB R9 R10 R11
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K17 ["getYMax"]
  CALL R11 0 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K16 ["getYMin"]
  CALL R12 0 1
  SUB R10 R11 R12
  DIV R8 R9 R10
  SUBRK R7 R15 K8 [2]
  CALL R5 2 1
  GETIMPORT R6 K12 [Vector2.new]
  GETTABLEKS R9 R4 K18 ["Min"]
  GETTABLEKS R8 R9 K3 ["X"]
  GETTABLEKS R10 R5 K3 ["X"]
  GETTABLEKS R13 R4 K19 ["Max"]
  GETTABLEKS R12 R13 K3 ["X"]
  GETTABLEKS R14 R4 K18 ["Min"]
  GETTABLEKS R13 R14 K3 ["X"]
  SUB R11 R12 R13
  MUL R9 R10 R11
  ADD R7 R8 R9
  GETTABLEKS R10 R4 K18 ["Min"]
  GETTABLEKS R9 R10 K4 ["Y"]
  GETTABLEKS R11 R5 K4 ["Y"]
  GETTABLEKS R14 R4 K19 ["Max"]
  GETTABLEKS R13 R14 K4 ["Y"]
  GETTABLEKS R15 R4 K18 ["Min"]
  GETTABLEKS R14 R15 K4 ["Y"]
  SUB R12 R13 R14
  MUL R10 R11 R12
  ADD R8 R9 R10
  CALL R6 2 1
  MOVE R5 R6
  GETIMPORT R6 K12 [Vector2.new]
  GETTABLEKS R8 R5 K3 ["X"]
  GETTABLEKS R9 R1 K3 ["X"]
  DIV R7 R8 R9
  GETTABLEKS R9 R5 K4 ["Y"]
  GETTABLEKS R10 R1 K4 ["Y"]
  DIV R8 R9 R10
  CALL R6 2 1
  MOVE R5 R6
  RETURN R5 1

PROTO_5:
  GETIMPORT R3 K2 [Vector2.one]
  GETTABLEKS R5 R1 K3 ["X"]
  GETTABLEKS R6 R1 K4 ["Y"]
  FASTCALL2 MATH_MIN R5 R6 [+3]
  GETIMPORT R4 K7 [math.min]
  CALL R4 2 1
  MUL R2 R3 R4
  DIVK R3 R1 K8 [2]
  GETIMPORT R4 K11 [Rect.new]
  DIVK R6 R2 K8 [2]
  SUB R5 R3 R6
  DIVK R7 R2 K8 [2]
  ADD R6 R3 R7
  CALL R4 2 1
  GETIMPORT R5 K12 [Vector2.new]
  GETTABLEKS R7 R0 K3 ["X"]
  GETTABLEKS R8 R1 K3 ["X"]
  MUL R6 R7 R8
  GETTABLEKS R8 R0 K4 ["Y"]
  GETTABLEKS R9 R1 K4 ["Y"]
  MUL R7 R8 R9
  CALL R5 2 1
  GETIMPORT R6 K12 [Vector2.new]
  GETTABLEKS R9 R5 K3 ["X"]
  GETTABLEKS R11 R4 K13 ["Min"]
  GETTABLEKS R10 R11 K3 ["X"]
  SUB R8 R9 R10
  GETTABLEKS R11 R4 K14 ["Max"]
  GETTABLEKS R10 R11 K3 ["X"]
  GETTABLEKS R12 R4 K13 ["Min"]
  GETTABLEKS R11 R12 K3 ["X"]
  SUB R9 R10 R11
  DIV R7 R8 R9
  GETTABLEKS R10 R5 K4 ["Y"]
  GETTABLEKS R12 R4 K13 ["Min"]
  GETTABLEKS R11 R12 K4 ["Y"]
  SUB R9 R10 R11
  GETTABLEKS R12 R4 K14 ["Max"]
  GETTABLEKS R11 R12 K4 ["Y"]
  GETTABLEKS R13 R4 K13 ["Min"]
  GETTABLEKS R12 R13 K4 ["Y"]
  SUB R10 R11 R12
  DIV R8 R9 R10
  CALL R6 2 1
  MOVE R5 R6
  GETIMPORT R6 K12 [Vector2.new]
  GETTABLEKS R9 R5 K3 ["X"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K15 ["getXMax"]
  CALL R11 0 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K16 ["getXMin"]
  CALL R12 0 1
  SUB R10 R11 R12
  MUL R8 R9 R10
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K16 ["getXMin"]
  CALL R9 0 1
  ADD R7 R8 R9
  GETTABLEKS R11 R5 K4 ["Y"]
  SUBRK R10 R17 K11 [Rect.new]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K18 ["getYMax"]
  CALL R12 0 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K19 ["getYMin"]
  CALL R13 0 1
  SUB R11 R12 R13
  MUL R9 R10 R11
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K19 ["getYMin"]
  CALL R10 0 1
  ADD R8 R9 R10
  CALL R6 2 1
  MOVE R5 R6
  RETURN R5 1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["plotToView"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  MUL R2 R3 R1
  RETURN R2 1

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["viewToPlot"]
  DIV R3 R0 R1
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  MUL R2 R0 R1
  RETURN R2 1

PROTO_9:
  DIV R2 R0 R1
  RETURN R2 1

PROTO_10:
  JUMPIF R1 [+12]
  GETIMPORT R2 K2 [Vector2.new]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["getXMin"]
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["getYMin"]
  CALL R4 0 -1
  CALL R2 -1 -1
  RETURN R2 -1
  GETTABLEKS R2 R1 K5 ["AbsoluteSize"]
  GETTABLEKS R4 R1 K6 ["AbsolutePosition"]
  SUB R3 R0 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["absToPlot"]
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["getXMin"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["getXMax"]
  DUPCLOSURE R1 K4 [PROTO_2]
  SETTABLEKS R1 R0 K5 ["getYMin"]
  DUPCLOSURE R1 K6 [PROTO_3]
  SETTABLEKS R1 R0 K7 ["getYMax"]
  DUPCLOSURE R1 K8 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["plotToView"]
  DUPCLOSURE R1 K10 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["viewToPlot"]
  DUPCLOSURE R1 K12 [PROTO_6]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["plotToAbs"]
  DUPCLOSURE R1 K14 [PROTO_7]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["absToPlot"]
  DUPCLOSURE R1 K16 [PROTO_8]
  SETTABLEKS R1 R0 K17 ["viewToAbs"]
  DUPCLOSURE R1 K18 [PROTO_9]
  SETTABLEKS R1 R0 K19 ["absToView"]
  DUPCLOSURE R1 K20 [PROTO_10]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K21 ["mouseToPlot"]
  RETURN R0 1
