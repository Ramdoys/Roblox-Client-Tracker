PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["number"] [+13]
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["number"] [+6]
  JUMPIFLT R0 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K4 [tostring]
  CALL R3 1 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K4 [tostring]
  CALL R4 1 1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADK R3 K0 ["nil"]
  RETURN R3 1
  ORK R1 R1 K1 [0]
  MOVE R3 R2
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  MOVE R2 R3
  FASTCALL1 ASSERT R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K3 [assert]
  CALL R3 1 0
  FASTCALL1 ASSERT R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K3 [assert]
  CALL R3 1 0
  FASTCALL1 ASSERT R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K3 [assert]
  CALL R3 1 0
  GETTABLE R3 R2 R0
  JUMPIFNOT R3 [+2]
  LOADK R3 K4 ["<cycle detected>"]
  RETURN R3 1
  LOADB R3 1
  SETTABLE R3 R2 R0
  GETIMPORT R3 K7 [string.rep]
  LOADK R4 K8 ["  "]
  MOVE R5 R1
  CALL R3 2 1
  LOADK R4 K9 ["{
"]
  NEWTABLE R5 0 0
  MOVE R6 R0
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  FASTCALL2 TABLE_INSERT R5 R9 [+5]
  MOVE R12 R5
  MOVE R13 R9
  GETIMPORT R11 K12 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-8]
  GETIMPORT R6 K14 [table.sort]
  MOVE R7 R5
  DUPCLOSURE R8 K15 [PROTO_0]
  CALL R6 2 0
  GETIMPORT R6 K17 [ipairs]
  MOVE R7 R5
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLE R11 R0 R10
  LOADNIL R12
  FASTCALL1 TYPE R10 [+3]
  MOVE R14 R10
  GETIMPORT R13 K19 [type]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K20 ["number"] [+11]
  LOADK R13 K21 ["["]
  FASTCALL1 TOSTRING R10 [+3]
  MOVE R17 R10
  GETIMPORT R16 K23 [tostring]
  CALL R16 1 1
  MOVE R14 R16
  LOADK R15 K24 ["]"]
  CONCAT R12 R13 R15
  JUMP [+18]
  FASTCALL1 TYPE R10 [+3]
  MOVE R14 R10
  GETIMPORT R13 K19 [type]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K5 ["string"] [+3]
  MOVE R12 R10
  JUMP [+9]
  LOADK R13 K25 ["`"]
  FASTCALL1 TOSTRING R10 [+3]
  MOVE R17 R10
  GETIMPORT R16 K23 [tostring]
  CALL R16 1 1
  MOVE R14 R16
  LOADK R15 K25 ["`"]
  CONCAT R12 R13 R15
  MOVE R13 R4
  MOVE R14 R3
  LOADK R15 K8 ["  "]
  MOVE R16 R12
  LOADK R17 K26 [" = "]
  CONCAT R4 R13 R17
  FASTCALL1 TYPE R11 [+3]
  MOVE R14 R11
  GETIMPORT R13 K19 [type]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K10 ["table"] [+9]
  MOVE R13 R4
  GETUPVAL R14 0
  MOVE R15 R11
  ADDK R16 R1 K27 [1]
  MOVE R17 R2
  CALL R14 3 1
  CONCAT R4 R13 R14
  JUMP [+82]
  FASTCALL1 TYPE R11 [+3]
  MOVE R14 R11
  GETIMPORT R13 K19 [type]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K28 ["userdata"] [+18]
  MOVE R13 R4
  FASTCALL1 TYPEOF R11 [+3]
  MOVE R19 R11
  GETIMPORT R18 K30 [typeof]
  CALL R18 1 1
  MOVE R14 R18
  LOADK R15 K31 [".new("]
  FASTCALL1 TOSTRING R11 [+3]
  MOVE R19 R11
  GETIMPORT R18 K23 [tostring]
  CALL R18 1 1
  MOVE R16 R18
  LOADK R17 K32 [")"]
  CONCAT R4 R13 R17
  JUMP [+58]
  FASTCALL1 TYPE R11 [+3]
  MOVE R14 R11
  GETIMPORT R13 K19 [type]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K33 ["function"] [+5]
  MOVE R13 R4
  LOADK R14 K34 ["function() end"]
  CONCAT R4 R13 R14
  JUMP [+47]
  FASTCALL1 TYPE R11 [+3]
  MOVE R14 R11
  GETIMPORT R13 K19 [type]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K5 ["string"] [+7]
  MOVE R13 R4
  LOADK R14 K35 ["\""]
  MOVE R15 R11
  LOADK R16 K35 ["\""]
  CONCAT R4 R13 R16
  JUMP [+34]
  FASTCALL1 TYPE R11 [+3]
  MOVE R14 R11
  GETIMPORT R13 K19 [type]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K20 ["number"] [+21]
  JUMPIFNOTEQKN R11 K36 [∞] [+5]
  MOVE R13 R4
  LOADK R14 K37 ["math.huge"]
  CONCAT R4 R13 R14
  JUMP [+21]
  JUMPIFNOTEQKN R11 K38 [-∞] [+5]
  MOVE R13 R4
  LOADK R14 K39 ["-math.huge"]
  CONCAT R4 R13 R14
  JUMP [+15]
  MOVE R13 R4
  FASTCALL1 TOSTRING R11 [+3]
  MOVE R15 R11
  GETIMPORT R14 K23 [tostring]
  CALL R14 1 1
  CONCAT R4 R13 R14
  JUMP [+7]
  MOVE R13 R4
  FASTCALL1 TOSTRING R11 [+3]
  MOVE R15 R11
  GETIMPORT R14 K23 [tostring]
  CALL R14 1 1
  CONCAT R4 R13 R14
  MOVE R13 R4
  LOADK R14 K40 [",
"]
  CONCAT R4 R13 R14
  FORGLOOP R6 2 [inext] [-144]
  LOADNIL R6
  SETTABLE R6 R2 R0
  MOVE R7 R4
  MOVE R8 R3
  LOADK R9 K41 ["}"]
  CONCAT R6 R7 R9
  RETURN R6 1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  LOADN R4 0
  CALL R2 2 1
  JUMPIFNOT R1 [+4]
  MOVE R3 R1
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0
  GETIMPORT R3 K1 [print]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_1]
  CAPTURE VAL R0
  DUPCLOSURE R1 K1 [PROTO_2]
  CAPTURE VAL R0
  RETURN R1 1
