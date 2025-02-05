PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["DebuggerConnectionManager"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETUPVAL R5 0
  NAMECALL R3 R2 K4 ["GetConnectionById"]
  CALL R3 2 1
  GETUPVAL R4 1
  JUMPIFEQKNIL R4 [+3]
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R0 0
  GETUPVAL R6 1
  NAMECALL R4 R3 K5 ["GetThreadById"]
  CALL R4 2 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETUPVAL R5 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["StepActionIds"]
  GETTABLEKS R6 R7 K7 ["stepOverActionV2"]
  JUMPIFNOTEQ R5 R6 [+16]
  MOVE R7 R4
  DUPCLOSURE R8 K8 [PROTO_0]
  NAMECALL R5 R3 K9 ["Step"]
  CALL R5 3 0
  GETTABLEKS R5 R1 K10 ["analytics"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K11 ["CallstackStepOver"]
  GETUPVAL R8 5
  NAMECALL R5 R5 K12 ["report"]
  CALL R5 3 0
  JUMP [+52]
  GETUPVAL R5 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["StepActionIds"]
  GETTABLEKS R6 R7 K13 ["stepIntoActionV2"]
  JUMPIFNOTEQ R5 R6 [+16]
  MOVE R7 R4
  DUPCLOSURE R8 K14 [PROTO_1]
  NAMECALL R5 R3 K15 ["StepIn"]
  CALL R5 3 0
  GETTABLEKS R5 R1 K10 ["analytics"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K16 ["CallstackStepInto"]
  GETUPVAL R8 5
  NAMECALL R5 R5 K12 ["report"]
  CALL R5 3 0
  JUMP [+29]
  GETUPVAL R5 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["StepActionIds"]
  GETTABLEKS R6 R7 K17 ["stepOutActionV2"]
  JUMPIFNOTEQ R5 R6 [+16]
  MOVE R7 R4
  DUPCLOSURE R8 K18 [PROTO_2]
  NAMECALL R5 R3 K19 ["StepOut"]
  CALL R5 3 0
  GETTABLEKS R5 R1 K10 ["analytics"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K20 ["CallstackStepOut"]
  GETUPVAL R8 5
  NAMECALL R5 R5 K12 ["report"]
  CALL R5 3 0
  JUMP [+6]
  LOADB R6 0
  FASTCALL1 ASSERT R6 [+2]
  GETIMPORT R5 K22 [assert]
  CALL R5 1 0
  RETURN R0 0
  GETUPVAL R7 6
  LOADB R8 0
  CALL R7 1 -1
  NAMECALL R5 R0 K23 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Resources"]
  GETTABLEKS R2 R3 K7 ["AnalyticsEventNames"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K8 ["Actions"]
  GETTABLEKS R4 R5 K9 ["Common"]
  GETTABLEKS R3 R4 K10 ["SetPausedState"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R4 1
