PROTO_0:
  MOVE R5 R3
  LOADK R8 K0 ["UIPadding"]
  NAMECALL R6 R4 K1 ["FindFirstChildWhichIsA"]
  CALL R6 2 1
  GETIMPORT R7 K4 [Vector2.zero]
  GETIMPORT R8 K4 [Vector2.zero]
  JUMPIFNOT R6 [+28]
  GETUPVAL R9 0
  GETIMPORT R11 K7 [UDim2.new]
  GETTABLEKS R12 R6 K8 ["PaddingLeft"]
  GETTABLEKS R13 R6 K9 ["PaddingTop"]
  CALL R11 2 1
  GETTABLEKS R12 R4 K10 ["AbsoluteSize"]
  NAMECALL R9 R9 K11 ["multUDimWithVector"]
  CALL R9 3 1
  MOVE R7 R9
  GETUPVAL R9 0
  GETIMPORT R11 K7 [UDim2.new]
  GETTABLEKS R12 R6 K12 ["PaddingRight"]
  GETTABLEKS R13 R6 K13 ["PaddingBottom"]
  CALL R11 2 1
  GETTABLEKS R12 R4 K10 ["AbsoluteSize"]
  NAMECALL R9 R9 K11 ["multUDimWithVector"]
  CALL R9 3 1
  MOVE R8 R9
  GETTABLEKS R11 R4 K10 ["AbsoluteSize"]
  SUB R10 R11 R7
  SUB R9 R10 R8
  LOADN R10 1
  LOADN R11 1
  GETTABLEKS R12 R9 K14 ["X"]
  JUMPIFEQKN R12 K15 [0] [+3]
  GETTABLEKS R10 R9 K14 ["X"]
  GETTABLEKS R12 R9 K16 ["Y"]
  JUMPIFEQKN R12 K15 [0] [+3]
  GETTABLEKS R11 R9 K16 ["Y"]
  GETIMPORT R12 K17 [Vector2.new]
  MOVE R13 R10
  MOVE R14 R11
  CALL R12 2 1
  MOVE R9 R12
  JUMPIFNOT R1 [+30]
  GETIMPORT R14 K17 [Vector2.new]
  GETTABLEKS R16 R3 K14 ["X"]
  GETTABLEKS R15 R16 K18 ["Offset"]
  GETTABLEKS R17 R3 K16 ["Y"]
  GETTABLEKS R16 R17 K18 ["Offset"]
  CALL R14 2 1
  SUB R13 R2 R14
  DIV R12 R13 R9
  GETIMPORT R13 K7 [UDim2.new]
  GETTABLEKS R14 R12 K14 ["X"]
  GETTABLEKS R16 R3 K14 ["X"]
  GETTABLEKS R15 R16 K18 ["Offset"]
  GETTABLEKS R16 R12 K16 ["Y"]
  GETTABLEKS R18 R3 K16 ["Y"]
  GETTABLEKS R17 R18 K18 ["Offset"]
  CALL R13 4 1
  MOVE R5 R13
  RETURN R5 1
  GETIMPORT R14 K17 [Vector2.new]
  GETTABLEKS R16 R3 K14 ["X"]
  GETTABLEKS R15 R16 K19 ["Scale"]
  GETTABLEKS R17 R3 K16 ["Y"]
  GETTABLEKS R16 R17 K19 ["Scale"]
  CALL R14 2 1
  GETTABLEKS R15 R4 K10 ["AbsoluteSize"]
  MUL R13 R14 R15
  SUB R12 R2 R13
  GETIMPORT R13 K7 [UDim2.new]
  GETTABLEKS R15 R3 K14 ["X"]
  GETTABLEKS R14 R15 K19 ["Scale"]
  GETTABLEKS R15 R12 K14 ["X"]
  GETTABLEKS R17 R3 K16 ["Y"]
  GETTABLEKS R16 R17 K19 ["Scale"]
  GETTABLEKS R17 R12 K16 ["Y"]
  CALL R13 4 1
  MOVE R5 R13
  RETURN R5 1

PROTO_1:
  MOVE R7 R4
  LOADK R10 K0 ["UIPadding"]
  NAMECALL R8 R5 K1 ["FindFirstChildWhichIsA"]
  CALL R8 2 1
  GETIMPORT R9 K4 [Vector2.zero]
  GETIMPORT R10 K4 [Vector2.zero]
  JUMPIFNOT R8 [+28]
  GETUPVAL R11 0
  GETIMPORT R13 K7 [UDim2.new]
  GETTABLEKS R14 R8 K8 ["PaddingLeft"]
  GETTABLEKS R15 R8 K9 ["PaddingTop"]
  CALL R13 2 1
  GETTABLEKS R14 R5 K10 ["AbsoluteSize"]
  NAMECALL R11 R11 K11 ["multUDimWithVector"]
  CALL R11 3 1
  MOVE R9 R11
  GETUPVAL R11 0
  GETIMPORT R13 K7 [UDim2.new]
  GETTABLEKS R14 R8 K12 ["PaddingRight"]
  GETTABLEKS R15 R8 K13 ["PaddingBottom"]
  CALL R13 2 1
  GETTABLEKS R14 R5 K10 ["AbsoluteSize"]
  NAMECALL R11 R11 K11 ["multUDimWithVector"]
  CALL R11 3 1
  MOVE R10 R11
  DIVK R11 R3 K14 [2]
  GETUPVAL R12 0
  MOVE R14 R11
  GETIMPORT R15 K4 [Vector2.zero]
  GETTABLEKS R16 R5 K15 ["AbsoluteRotation"]
  NAMECALL R12 R12 K16 ["rotate"]
  CALL R12 4 1
  ADD R14 R2 R11
  SUB R13 R14 R12
  GETTABLEKS R15 R5 K10 ["AbsoluteSize"]
  DIVK R14 R15 K14 [2]
  GETUPVAL R15 0
  MOVE R17 R14
  GETIMPORT R18 K4 [Vector2.zero]
  GETTABLEKS R19 R5 K15 ["AbsoluteRotation"]
  NAMECALL R15 R15 K16 ["rotate"]
  CALL R15 4 1
  GETTABLEKS R18 R5 K17 ["AbsolutePosition"]
  ADD R17 R18 R14
  SUB R16 R17 R15
  GETUPVAL R17 0
  MUL R19 R6 R3
  GETIMPORT R20 K4 [Vector2.zero]
  GETTABLEKS R21 R5 K15 ["AbsoluteRotation"]
  NAMECALL R17 R17 K16 ["rotate"]
  CALL R17 4 1
  SUB R19 R13 R16
  ADD R18 R19 R17
  GETUPVAL R19 0
  MOVE R21 R18
  GETIMPORT R22 K4 [Vector2.zero]
  GETTABLEKS R24 R5 K15 ["AbsoluteRotation"]
  MINUS R23 R24
  NAMECALL R19 R19 K16 ["rotate"]
  CALL R19 4 1
  GETTABLEKS R22 R5 K10 ["AbsoluteSize"]
  SUB R21 R22 R9
  SUB R20 R21 R10
  LOADN R21 1
  LOADN R22 1
  GETTABLEKS R23 R20 K18 ["X"]
  JUMPIFEQKN R23 K19 [0] [+3]
  GETTABLEKS R21 R20 K18 ["X"]
  GETTABLEKS R23 R20 K20 ["Y"]
  JUMPIFEQKN R23 K19 [0] [+3]
  GETTABLEKS R22 R20 K20 ["Y"]
  GETIMPORT R23 K21 [Vector2.new]
  MOVE R24 R21
  MOVE R25 R22
  CALL R23 2 1
  MOVE R20 R23
  JUMPIFNOT R1 [+31]
  GETIMPORT R23 K21 [Vector2.new]
  GETTABLEKS R25 R4 K18 ["X"]
  GETTABLEKS R24 R25 K22 ["Offset"]
  GETTABLEKS R26 R4 K20 ["Y"]
  GETTABLEKS R25 R26 K22 ["Offset"]
  CALL R23 2 1
  SUB R26 R19 R9
  SUB R25 R26 R23
  DIV R24 R25 R20
  GETIMPORT R25 K7 [UDim2.new]
  GETTABLEKS R26 R24 K18 ["X"]
  GETTABLEKS R28 R4 K18 ["X"]
  GETTABLEKS R27 R28 K22 ["Offset"]
  GETTABLEKS R28 R24 K20 ["Y"]
  GETTABLEKS R30 R4 K20 ["Y"]
  GETTABLEKS R29 R30 K22 ["Offset"]
  CALL R25 4 1
  MOVE R7 R25
  RETURN R7 1
  GETIMPORT R24 K21 [Vector2.new]
  GETTABLEKS R26 R4 K18 ["X"]
  GETTABLEKS R25 R26 K23 ["Scale"]
  GETTABLEKS R27 R4 K20 ["Y"]
  GETTABLEKS R26 R27 K23 ["Scale"]
  CALL R24 2 1
  GETTABLEKS R25 R5 K10 ["AbsoluteSize"]
  MUL R23 R24 R25
  SUB R25 R19 R9
  SUB R24 R25 R23
  GETIMPORT R25 K7 [UDim2.new]
  GETTABLEKS R27 R4 K18 ["X"]
  GETTABLEKS R26 R27 K23 ["Scale"]
  GETTABLEKS R27 R24 K18 ["X"]
  GETTABLEKS R29 R4 K20 ["Y"]
  GETTABLEKS R28 R29 K23 ["Scale"]
  GETTABLEKS R29 R24 K20 ["Y"]
  CALL R25 4 1
  MOVE R7 R25
  RETURN R7 1

PROTO_2:
  MOVE R11 R1
  MOVE R12 R3
  MOVE R13 R4
  MOVE R14 R5
  MOVE R15 R7
  MOVE R16 R8
  NAMECALL R9 R0 K0 ["convertAbsolutePositionToScaleOrOffset"]
  CALL R9 7 1
  MOVE R12 R2
  MOVE R13 R4
  MOVE R14 R6
  MOVE R15 R7
  NAMECALL R10 R0 K1 ["convertAbsoluteSizeToScaleOrOffset"]
  CALL R10 5 1
  RETURN R9 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Utility"]
  CALL R0 1 1
  NEWTABLE R1 4 0
  DUPCLOSURE R2 K6 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K7 ["convertAbsoluteSizeToScaleOrOffset"]
  DUPCLOSURE R2 K8 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K9 ["convertAbsolutePositionToScaleOrOffset"]
  DUPCLOSURE R2 K10 [PROTO_2]
  SETTABLEKS R2 R1 K11 ["convertAbsoluteToScaleOrOffset"]
  RETURN R1 1
