PROTO_0:
  NAMECALL R6 R2 K0 ["getState"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K1 ["Watch"]
  GETTABLEKS R4 R5 K2 ["filterText"]
  NAMECALL R7 R2 K0 ["getState"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K1 ["Watch"]
  GETTABLEKS R5 R6 K3 ["listOfEnabledScopes"]
  GETTABLEKS R6 R1 K4 ["Locals"]
  NAMECALL R6 R6 K5 ["GetChildren"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K6 ["Globals"]
  NAMECALL R7 R7 K5 ["GetChildren"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K7 ["Upvalues"]
  NAMECALL R8 R8 K5 ["GetChildren"]
  CALL R8 1 1
  NEWTABLE R9 0 0
  NEWTABLE R10 0 0
  GETIMPORT R11 K9 [ipairs]
  MOVE R12 R6
  CALL R11 1 3
  FORGPREP_INEXT R11
  MOVE R17 R9
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K10 ["fromInstance"]
  MOVE R19 R15
  LOADNIL R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["Local"]
  MOVE R22 R4
  MOVE R23 R5
  CALL R18 5 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R16 K14 [table.insert]
  CALL R16 -1 0
  FASTCALL2 TABLE_INSERT R10 R15 [+5]
  MOVE R17 R10
  MOVE R18 R15
  GETIMPORT R16 K14 [table.insert]
  CALL R16 2 0
  FORGLOOP R11 2 [inext] [-24]
  GETIMPORT R11 K9 [ipairs]
  MOVE R12 R7
  CALL R11 1 3
  FORGPREP_INEXT R11
  MOVE R17 R9
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K10 ["fromInstance"]
  MOVE R19 R15
  LOADNIL R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K15 ["Global"]
  MOVE R22 R4
  MOVE R23 R5
  CALL R18 5 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R16 K14 [table.insert]
  CALL R16 -1 0
  FASTCALL2 TABLE_INSERT R10 R15 [+5]
  MOVE R17 R10
  MOVE R18 R15
  GETIMPORT R16 K14 [table.insert]
  CALL R16 2 0
  FORGLOOP R11 2 [inext] [-24]
  GETIMPORT R11 K9 [ipairs]
  MOVE R12 R8
  CALL R11 1 3
  FORGPREP_INEXT R11
  MOVE R17 R9
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K10 ["fromInstance"]
  MOVE R19 R15
  LOADNIL R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K16 ["Upvalue"]
  MOVE R22 R4
  MOVE R23 R5
  CALL R18 5 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R16 K14 [table.insert]
  CALL R16 -1 0
  FASTCALL2 TABLE_INSERT R10 R15 [+5]
  MOVE R17 R10
  MOVE R18 R15
  GETIMPORT R16 K14 [table.insert]
  CALL R16 2 0
  FORGLOOP R11 2 [inext] [-24]
  GETUPVAL R13 2
  MOVE R14 R3
  MOVE R15 R9
  CALL R13 2 -1
  NAMECALL R11 R2 K17 ["dispatch"]
  CALL R11 -1 0
  GETUPVAL R13 3
  LOADK R14 K18 [""]
  MOVE R15 R10
  MOVE R16 R3
  LOADB R17 1
  MOVE R18 R0
  CALL R13 5 -1
  NAMECALL R11 R2 K17 ["dispatch"]
  CALL R11 -1 0
  RETURN R0 0

PROTO_1:
  LOADB R6 1
  SETTABLE R6 R1 R0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["Local"]
  GETTABLE R6 R1 R7
  JUMPIFNOT R6 [+16]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["Global"]
  GETTABLE R6 R1 R7
  JUMPIFNOT R6 [+11]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["Upvalue"]
  GETTABLE R6 R1 R7
  JUMPIFNOT R6 [+6]
  GETUPVAL R6 1
  MOVE R7 R2
  MOVE R8 R3
  MOVE R9 R4
  MOVE R10 R5
  CALL R6 4 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["debuggerStateToken"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K1 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["Common"]
  GETTABLEKS R2 R3 K3 ["debuggerConnectionIdToDST"]
  GETTABLEKS R3 R0 K4 ["debuggerConnectionId"]
  GETTABLE R1 R2 R3
  JUMPIFEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["Local"]
  GETUPVAL R2 3
  GETUPVAL R3 4
  GETUPVAL R4 5
  GETUPVAL R5 1
  GETUPVAL R6 0
  LOADB R7 1
  SETTABLE R7 R2 R1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["Local"]
  GETTABLE R7 R2 R8
  JUMPIFNOT R7 [+16]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["Global"]
  GETTABLE R7 R2 R8
  JUMPIFNOT R7 [+11]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["Upvalue"]
  GETTABLE R7 R2 R8
  JUMPIFNOT R7 [+6]
  GETUPVAL R7 6
  MOVE R8 R3
  MOVE R9 R4
  MOVE R10 R5
  MOVE R11 R6
  CALL R7 4 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["debuggerStateToken"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K1 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["Common"]
  GETTABLEKS R2 R3 K3 ["debuggerConnectionIdToDST"]
  GETTABLEKS R3 R0 K4 ["debuggerConnectionId"]
  GETTABLE R1 R2 R3
  JUMPIFEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["Global"]
  GETUPVAL R2 3
  GETUPVAL R3 4
  GETUPVAL R4 5
  GETUPVAL R5 1
  GETUPVAL R6 0
  LOADB R7 1
  SETTABLE R7 R2 R1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["Local"]
  GETTABLE R7 R2 R8
  JUMPIFNOT R7 [+16]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["Global"]
  GETTABLE R7 R2 R8
  JUMPIFNOT R7 [+11]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["Upvalue"]
  GETTABLE R7 R2 R8
  JUMPIFNOT R7 [+6]
  GETUPVAL R7 6
  MOVE R8 R3
  MOVE R9 R4
  MOVE R10 R5
  MOVE R11 R6
  CALL R7 4 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["debuggerStateToken"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K1 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["Common"]
  GETTABLEKS R2 R3 K3 ["debuggerConnectionIdToDST"]
  GETTABLEKS R3 R0 K4 ["debuggerConnectionId"]
  GETTABLE R1 R2 R3
  JUMPIFEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["Upvalue"]
  GETUPVAL R2 3
  GETUPVAL R3 4
  GETUPVAL R4 5
  GETUPVAL R5 1
  GETUPVAL R6 0
  LOADB R7 1
  SETTABLE R7 R2 R1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["Local"]
  GETTABLE R7 R2 R8
  JUMPIFNOT R7 [+16]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["Global"]
  GETTABLE R7 R2 R8
  JUMPIFNOT R7 [+11]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["Upvalue"]
  GETTABLE R7 R2 R8
  JUMPIFNOT R7 [+6]
  GETUPVAL R7 6
  MOVE R8 R3
  MOVE R9 R4
  MOVE R10 R5
  MOVE R11 R6
  CALL R7 4 0
  RETURN R0 0

PROTO_5:
  NEWTABLE R4 0 0
  GETTABLEKS R7 R1 K0 ["Locals"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  NAMECALL R5 R0 K1 ["Populate"]
  CALL R5 3 0
  GETTABLEKS R7 R1 K2 ["Globals"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  NAMECALL R5 R0 K1 ["Populate"]
  CALL R5 3 0
  GETTABLEKS R7 R1 K3 ["Upvalues"]
  NEWCLOSURE R8 P2
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  NAMECALL R5 R0 K1 ["Populate"]
  CALL R5 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["debuggerStateToken"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K1 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["Common"]
  GETTABLEKS R2 R3 K3 ["debuggerConnectionIdToDST"]
  GETTABLEKS R3 R0 K4 ["debuggerConnectionId"]
  GETTABLE R1 R2 R3
  JUMPIFEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R1 2
  GETUPVAL R2 3
  GETUPVAL R3 4
  GETUPVAL R4 1
  GETUPVAL R5 0
  CALL R1 4 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Populated"]
  JUMPIF R2 [+11]
  GETUPVAL R2 1
  GETUPVAL R4 0
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R2 R2 K1 ["Populate"]
  CALL R2 3 0
  RETURN R0 0

PROTO_8:
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Src"]
  GETTABLEKS R1 R2 K4 ["Models"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Watch"]
  GETTABLEKS R3 R4 K8 ["ScopeEnum"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K9 ["StepStateBundle"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R8 R0 K3 ["Src"]
  GETTABLEKS R7 R8 K4 ["Models"]
  GETTABLEKS R6 R7 K7 ["Watch"]
  GETTABLEKS R5 R6 K10 ["VariableRow"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K3 ["Src"]
  GETTABLEKS R5 R6 K11 ["Actions"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R5 K7 ["Watch"]
  GETTABLEKS R7 R8 K12 ["AddRootVariables"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K3 ["Src"]
  GETTABLEKS R7 R8 K13 ["Thunks"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R7 K14 ["Common"]
  GETTABLEKS R9 R10 K15 ["AddChildRowsToVars"]
  CALL R8 1 1
  DUPCLOSURE R9 K16 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R8
  DUPCLOSURE R10 K17 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R9
  DUPCLOSURE R11 K18 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R9
  DUPCLOSURE R12 K19 [PROTO_8]
  CAPTURE VAL R11
  RETURN R12 1
