PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["PathReducer"]
  GETTABLEKS R2 R1 K2 ["SelectedObject"]
  NAMECALL R2 R2 K3 ["GetControlPoints"]
  CALL R2 1 1
  GETUPVAL R3 0
  LOADN R4 0
  JUMPIFLE R3 R4 [+5]
  GETUPVAL R3 0
  LENGTH R4 R2
  JUMPIFNOTLT R4 R3 [+2]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K4 ["ControlPointStates"]
  GETTABLE R6 R4 R3
  GETTABLEKS R5 R6 K5 ["Sharp"]
  JUMPIF R5 [+1]
  RETURN R0 0
  LOADB R5 0
  GETTABLEKS R7 R1 K6 ["ControlPoints"]
  LENGTH R6 R7
  LOADN R7 1
  JUMPIFNOTLT R7 R6 [+22]
  JUMPIFEQKN R3 K7 [1] [+7]
  LOADB R5 0
  GETTABLEKS R7 R1 K6 ["ControlPoints"]
  LENGTH R6 R7
  JUMPIFNOTEQ R3 R6 [+14]
  GETTABLEN R7 R2 1
  GETTABLEKS R6 R7 K8 ["Position"]
  GETTABLEKS R10 R1 K6 ["ControlPoints"]
  LENGTH R9 R10
  GETTABLE R8 R2 R9
  GETTABLEKS R7 R8 K8 ["Position"]
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFNOT R5 [+6]
  JUMPIFNOTEQKN R3 K7 [1] [+5]
  GETTABLEKS R7 R1 K6 ["ControlPoints"]
  LENGTH R6 R7
  JUMP [+1]
  LOADN R6 1
  GETUPVAL R7 1
  LOADK R8 K9 ["Add Control Point Tangents"]
  CALL R7 1 0
  GETUPVAL R7 2
  GETTABLEKS R9 R1 K2 ["SelectedObject"]
  GETTABLEKS R8 R9 K10 ["Parent"]
  CALL R7 1 1
  GETTABLEKS R10 R1 K2 ["SelectedObject"]
  GETTABLEKS R9 R10 K10 ["Parent"]
  GETTABLEKS R8 R9 K11 ["AbsoluteSize"]
  GETTABLEKS R10 R1 K6 ["ControlPoints"]
  LENGTH R9 R10
  JUMPIFNOTEQKN R9 K7 [1] [+37]
  GETIMPORT R9 K14 [Vector2.one]
  GETUPVAL R11 0
  GETTABLE R10 R2 R11
  GETUPVAL R11 3
  GETTABLEKS R13 R9 K15 ["Unit"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K16 ["DefaultTangentLength"]
  MINUS R14 R15
  MUL R12 R13 R14
  GETTABLEKS R14 R1 K2 ["SelectedObject"]
  GETTABLEKS R13 R14 K10 ["Parent"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["LeftTangent"]
  GETUPVAL R11 0
  GETTABLE R10 R2 R11
  GETUPVAL R11 3
  GETTABLEKS R13 R9 K15 ["Unit"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K16 ["DefaultTangentLength"]
  MUL R12 R13 R14
  GETTABLEKS R14 R1 K2 ["SelectedObject"]
  GETTABLEKS R13 R14 K10 ["Parent"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["RightTangent"]
  JUMP [+282]
  GETUPVAL R9 0
  LOADN R10 1
  JUMPIFNOTLT R10 R9 [+70]
  GETUPVAL R9 0
  GETTABLEKS R11 R1 K6 ["ControlPoints"]
  LENGTH R10 R11
  JUMPIFNOTLT R9 R10 [+64]
  GETUPVAL R11 0
  SUBK R10 R11 K7 [1]
  GETTABLE R9 R2 R10
  GETUPVAL R12 0
  ADDK R11 R12 K7 [1]
  GETTABLE R10 R2 R11
  GETUPVAL R12 5
  GETTABLEKS R13 R10 K8 ["Position"]
  MOVE R14 R7
  MOVE R15 R8
  CALL R12 3 1
  GETUPVAL R13 5
  GETTABLEKS R14 R9 K8 ["Position"]
  MOVE R15 R7
  MOVE R16 R8
  CALL R13 3 1
  SUB R11 R12 R13
  GETTABLEKS R12 R11 K19 ["Y"]
  JUMPIFNOTEQKN R12 K20 [0] [+7]
  GETTABLEKS R12 R11 K21 ["X"]
  JUMPIFNOTEQKN R12 K20 [0] [+3]
  GETIMPORT R11 K14 [Vector2.one]
  GETUPVAL R13 0
  GETTABLE R12 R2 R13
  GETUPVAL R13 3
  GETTABLEKS R15 R11 K15 ["Unit"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K16 ["DefaultTangentLength"]
  MINUS R16 R17
  MUL R14 R15 R16
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R16 K10 ["Parent"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["LeftTangent"]
  GETUPVAL R13 0
  GETTABLE R12 R2 R13
  GETUPVAL R13 3
  GETTABLEKS R15 R11 K15 ["Unit"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K16 ["DefaultTangentLength"]
  MUL R14 R15 R16
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R16 K10 ["Parent"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["RightTangent"]
  JUMP [+209]
  JUMPIFNOT R5 [+76]
  GETTABLEKS R11 R1 K6 ["ControlPoints"]
  LENGTH R10 R11
  GETTABLE R9 R2 R10
  GETTABLEN R10 R2 2
  GETUPVAL R12 5
  GETTABLEKS R13 R10 K8 ["Position"]
  MOVE R14 R7
  MOVE R15 R8
  CALL R12 3 1
  GETUPVAL R13 5
  GETTABLEKS R14 R9 K8 ["Position"]
  MOVE R15 R7
  MOVE R16 R8
  CALL R13 3 1
  SUB R11 R12 R13
  GETTABLEKS R12 R11 K19 ["Y"]
  JUMPIFNOTEQKN R12 K20 [0] [+7]
  GETTABLEKS R12 R11 K21 ["X"]
  JUMPIFNOTEQKN R12 K20 [0] [+3]
  GETIMPORT R11 K14 [Vector2.one]
  GETUPVAL R13 0
  GETTABLE R12 R2 R13
  GETUPVAL R13 3
  GETTABLEKS R15 R11 K15 ["Unit"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K16 ["DefaultTangentLength"]
  MINUS R16 R17
  MUL R14 R15 R16
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R16 K10 ["Parent"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["LeftTangent"]
  GETUPVAL R13 0
  GETTABLE R12 R2 R13
  GETUPVAL R13 3
  GETTABLEKS R15 R11 K15 ["Unit"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K16 ["DefaultTangentLength"]
  MUL R14 R15 R16
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R16 K10 ["Parent"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["RightTangent"]
  GETTABLE R12 R2 R6
  GETUPVAL R15 0
  GETTABLE R14 R2 R15
  GETTABLEKS R13 R14 K17 ["LeftTangent"]
  SETTABLEKS R13 R12 K17 ["LeftTangent"]
  GETTABLE R12 R2 R6
  GETUPVAL R15 0
  GETTABLE R14 R2 R15
  GETTABLEKS R13 R14 K18 ["RightTangent"]
  SETTABLEKS R13 R12 K18 ["RightTangent"]
  JUMP [+132]
  GETUPVAL R9 0
  JUMPIFNOTEQKN R9 K7 [1] [+63]
  GETUPVAL R10 0
  GETTABLE R9 R2 R10
  GETUPVAL R12 0
  ADDK R11 R12 K7 [1]
  GETTABLE R10 R2 R11
  GETUPVAL R12 5
  GETTABLEKS R13 R10 K8 ["Position"]
  MOVE R14 R7
  MOVE R15 R8
  CALL R12 3 1
  GETUPVAL R13 5
  GETTABLEKS R14 R9 K8 ["Position"]
  MOVE R15 R7
  MOVE R16 R8
  CALL R13 3 1
  SUB R11 R12 R13
  GETTABLEKS R12 R11 K19 ["Y"]
  JUMPIFNOTEQKN R12 K20 [0] [+7]
  GETTABLEKS R12 R11 K21 ["X"]
  JUMPIFNOTEQKN R12 K20 [0] [+3]
  GETIMPORT R11 K14 [Vector2.one]
  GETUPVAL R13 0
  GETTABLE R12 R2 R13
  GETUPVAL R13 3
  GETTABLEKS R15 R11 K15 ["Unit"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K16 ["DefaultTangentLength"]
  MINUS R16 R17
  MUL R14 R15 R16
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R16 K10 ["Parent"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["LeftTangent"]
  GETUPVAL R13 0
  GETTABLE R12 R2 R13
  GETUPVAL R13 3
  GETTABLEKS R15 R11 K15 ["Unit"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K16 ["DefaultTangentLength"]
  MUL R14 R15 R16
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R16 K10 ["Parent"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["RightTangent"]
  JUMP [+67]
  GETUPVAL R9 0
  GETTABLEKS R11 R1 K6 ["ControlPoints"]
  LENGTH R10 R11
  JUMPIFNOTEQ R9 R10 [+62]
  GETUPVAL R11 0
  SUBK R10 R11 K7 [1]
  GETTABLE R9 R2 R10
  GETUPVAL R11 0
  GETTABLE R10 R2 R11
  GETUPVAL R12 5
  GETTABLEKS R13 R10 K8 ["Position"]
  MOVE R14 R7
  MOVE R15 R8
  CALL R12 3 1
  GETUPVAL R13 5
  GETTABLEKS R14 R9 K8 ["Position"]
  MOVE R15 R7
  MOVE R16 R8
  CALL R13 3 1
  SUB R11 R12 R13
  GETTABLEKS R12 R11 K19 ["Y"]
  JUMPIFNOTEQKN R12 K20 [0] [+7]
  GETTABLEKS R12 R11 K21 ["X"]
  JUMPIFNOTEQKN R12 K20 [0] [+3]
  GETIMPORT R11 K14 [Vector2.one]
  GETUPVAL R13 0
  GETTABLE R12 R2 R13
  GETUPVAL R13 3
  GETTABLEKS R15 R11 K15 ["Unit"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K16 ["DefaultTangentLength"]
  MINUS R16 R17
  MUL R14 R15 R16
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R16 K10 ["Parent"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["LeftTangent"]
  GETUPVAL R13 0
  GETTABLE R12 R2 R13
  GETUPVAL R13 3
  GETTABLEKS R15 R11 K15 ["Unit"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K16 ["DefaultTangentLength"]
  MUL R14 R15 R16
  GETTABLEKS R16 R1 K2 ["SelectedObject"]
  GETTABLEKS R15 R16 K10 ["Parent"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["RightTangent"]
  GETUPVAL R11 0
  GETTABLE R10 R4 R11
  GETTABLEKS R9 R10 K5 ["Sharp"]
  JUMPIFNOT R9 [+6]
  GETUPVAL R11 6
  GETUPVAL R12 0
  CALL R11 1 -1
  NAMECALL R9 R0 K22 ["dispatch"]
  CALL R9 -1 0
  JUMPIFNOT R5 [+10]
  GETTABLE R10 R4 R6
  GETTABLEKS R9 R10 K5 ["Sharp"]
  JUMPIFNOT R9 [+6]
  GETUPVAL R11 6
  MOVE R12 R6
  CALL R11 1 -1
  NAMECALL R9 R0 K22 ["dispatch"]
  CALL R9 -1 0
  GETTABLEKS R9 R1 K2 ["SelectedObject"]
  MOVE R11 R2
  NAMECALL R9 R9 K23 ["SetControlPoints"]
  CALL R9 2 0
  GETUPVAL R11 1
  CALL R11 0 -1
  NAMECALL R9 R0 K22 ["dispatch"]
  CALL R9 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Thunks"]
  GETTABLEKS R2 R3 K7 ["RecordChangeHistory"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K8 ["Actions"]
  GETTABLEKS R3 R4 K9 ["ToggleSharp"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["getAbsPosFromUDim2"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K14 ["getAbsolutePosition"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K15 ["getUDim2ScaleFromVector2"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R7 1
