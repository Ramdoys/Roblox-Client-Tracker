PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  GETUPVAL R3 0
  GETUPVAL R5 0
  GETTABLE R4 R5 R1
  SETTABLE R4 R3 R0
  GETUPVAL R3 0
  SETTABLE R2 R3 R1
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["Selected"]
  LOADN R2 1
  JUMPIFLE R1 R2 [+6]
  GETTABLEKS R3 R0 K1 ["Keypoints"]
  LENGTH R2 R3
  JUMPIFNOTLE R2 R1 [+2]
  RETURN R1 1
  GETTABLEKS R2 R0 K1 ["Keypoints"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  LOADN R6 0
  LOADN R4 15
  LOADN R5 1
  FORNPREP R4
  GETTABLE R7 R2 R1
  SUBK R9 R1 K2 [1]
  GETTABLE R8 R2 R9
  JUMPIFNOT R8 [+14]
  GETTABLEKS R9 R8 K3 ["Time"]
  GETTABLEKS R10 R7 K3 ["Time"]
  JUMPIFNOTLT R10 R9 [+9]
  SUBK R9 R1 K2 [1]
  MOVE R10 R1
  GETTABLE R11 R2 R9
  GETTABLE R12 R2 R10
  SETTABLE R12 R2 R9
  SETTABLE R11 R2 R10
  SUBK R1 R1 K2 [1]
  JUMP [+18]
  ADDK R10 R1 K2 [1]
  GETTABLE R9 R2 R10
  JUMPIFNOT R9 [+16]
  GETTABLEKS R10 R9 K3 ["Time"]
  GETTABLEKS R11 R7 K3 ["Time"]
  JUMPIFNOTLT R10 R11 [+11]
  MOVE R10 R1
  ADDK R11 R1 K2 [1]
  GETTABLE R12 R2 R10
  GETTABLE R13 R2 R11
  SETTABLE R13 R2 R10
  SETTABLE R12 R2 R11
  ADDK R1 R1 K2 [1]
  JUMP [+1]
  JUMP [+1]
  FORNLOOP R4
  SETTABLEKS R1 R0 K0 ["Selected"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["Selected"]
  JUMPIFNOTEQKN R2 K1 [1] [+5]
  LOADN R2 0
  SETTABLEKS R2 R1 K2 ["Time"]
  JUMP [+25]
  GETTABLEKS R2 R0 K0 ["Selected"]
  GETTABLEKS R4 R0 K3 ["Keypoints"]
  LENGTH R3 R4
  JUMPIFNOTEQ R2 R3 [+5]
  LOADN R2 1
  SETTABLEKS R2 R1 K2 ["Time"]
  JUMP [+14]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K2 ["Time"]
  LOADN R4 3
  CALL R2 2 1
  MOVE R4 R2
  LOADK R5 K4 [0.01]
  LOADK R6 K5 [0.99]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R3 K8 [math.clamp]
  CALL R3 3 1
  SETTABLEKS R3 R1 K2 ["Time"]
  GETTABLEKS R3 R1 K9 ["Value"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K11 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K12 ["number"] [+15]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K9 ["Value"]
  LOADN R4 3
  CALL R2 2 1
  MOVE R4 R2
  LOADN R5 0
  LOADN R6 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R3 K8 [math.clamp]
  CALL R3 3 1
  SETTABLEKS R3 R1 K9 ["Value"]
  GETUPVAL R2 1
  MOVE R3 R0
  DUPTABLE R4 K13 [{"Keypoints"}]
  GETUPVAL R5 1
  GETTABLEKS R6 R0 K3 ["Keypoints"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R0 K0 ["Selected"]
  SETTABLE R1 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["Keypoints"]
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K14 ["updateIndexMut"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R2 1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["Keypoints"]
  LENGTH R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["MAX_KEYPOINT_COUNT"]
  JUMPIFNOTLE R3 R2 [+2]
  RETURN R0 1
  GETUPVAL R2 1
  MOVE R3 R0
  DUPTABLE R4 K2 [{"Keypoints"}]
  GETUPVAL R5 2
  GETTABLEKS R6 R0 K0 ["Keypoints"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K0 ["Keypoints"]
  CALL R2 2 1
  LOADN R3 255
  GETTABLEKS R4 R2 K0 ["Keypoints"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R1 K3 ["Time"]
  GETTABLEKS R10 R8 K3 ["Time"]
  JUMPIFNOTEQ R9 R10 [+6]
  GETTABLEKS R9 R1 K3 ["Time"]
  SUBK R9 R9 K4 [0.001]
  SETTABLEKS R9 R1 K3 ["Time"]
  GETTABLEKS R9 R1 K3 ["Time"]
  GETTABLEKS R10 R8 K3 ["Time"]
  JUMPIFNOTLT R9 R10 [+11]
  MOVE R3 R7
  GETTABLEKS R10 R2 K0 ["Keypoints"]
  MOVE R11 R3
  MOVE R12 R1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R9 K7 [table.insert]
  CALL R9 3 0
  JUMP [+2]
  FORGLOOP R4 2 [-28]
  SETTABLEKS R3 R2 K8 ["Selected"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Keypoints"]
  CALL R1 1 1
  GETIMPORT R2 K3 [table.remove]
  MOVE R3 R1
  GETTABLEKS R4 R0 K4 ["Selected"]
  CALL R2 2 0
  DUPTABLE R2 K5 [{"Keypoints", "Selected"}]
  SETTABLEKS R1 R2 K0 ["Keypoints"]
  GETTABLEKS R4 R0 K4 ["Selected"]
  SUBK R3 R4 K6 [1]
  SETTABLEKS R3 R2 K4 ["Selected"]
  RETURN R2 1

PROTO_5:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["Selected"]
  JUMPIFEQKN R2 K1 [1] [+10]
  GETTABLEKS R2 R0 K0 ["Selected"]
  GETTABLEKS R4 R0 K2 ["Keypoints"]
  LENGTH R3 R4
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Selected"}]
  SETTABLEKS R1 R4 K0 ["Selected"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["Keypoints"]
  GETTABLEKS R3 R0 K1 ["Selected"]
  GETTABLE R1 R2 R3
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["join"]
  GETTABLEKS R3 R1 K8 ["joinDeep"]
  GETTABLEKS R4 R1 K9 ["copy"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["roundDecimal"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K13 ["Renderers"]
  GETTABLEKS R8 R9 K14 ["SequenceRenderers"]
  GETTABLEKS R7 R8 K15 ["Types"]
  CALL R6 1 1
  NEWTABLE R7 8 0
  LOADN R8 20
  SETTABLEKS R8 R7 K16 ["MAX_KEYPOINT_COUNT"]
  DUPCLOSURE R8 K17 [PROTO_1]
  SETTABLEKS R8 R7 K18 ["updateIndexMut"]
  DUPCLOSURE R8 K19 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K20 ["updateSelected"]
  DUPCLOSURE R8 K21 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K22 ["add"]
  DUPCLOSURE R8 K23 [PROTO_4]
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K24 ["removeSelected"]
  DUPCLOSURE R8 K25 [PROTO_5]
  SETTABLEKS R8 R7 K26 ["isFixedKeypointSelected"]
  DUPCLOSURE R8 K27 [PROTO_6]
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K28 ["select"]
  DUPCLOSURE R8 K29 [PROTO_7]
  SETTABLEKS R8 R7 K30 ["selectedKeypoint"]
  RETURN R7 1
