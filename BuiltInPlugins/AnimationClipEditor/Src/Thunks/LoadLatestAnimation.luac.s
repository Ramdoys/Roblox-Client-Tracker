PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K0 ["animation"]
  NAMECALL R2 R2 K1 ["GetTags"]
  CALL R2 2 1
  GETUPVAL R3 0
  GETTABLEKS R5 R1 K0 ["animation"]
  NAMECALL R3 R3 K1 ["GetTags"]
  CALL R3 2 1
  GETTABLEN R4 R2 1
  JUMPIFNOT R4 [+5]
  GETTABLEN R5 R2 1
  FASTCALL1 TONUMBER R5 [+2]
  GETIMPORT R4 K3 [tonumber]
  CALL R4 1 1
  GETTABLEN R5 R3 1
  JUMPIFNOT R5 [+5]
  GETTABLEN R6 R3 1
  FASTCALL1 TONUMBER R6 [+2]
  GETIMPORT R5 K3 [tonumber]
  CALL R5 1 1
  JUMPIF R4 [+14]
  JUMPIF R5 [+13]
  GETTABLEKS R8 R0 K0 ["animation"]
  GETTABLEKS R7 R8 K4 ["Name"]
  GETTABLEKS R9 R1 K0 ["animation"]
  GETTABLEKS R8 R9 K4 ["Name"]
  JUMPIFLT R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  RETURN R6 1
  JUMPIFNOT R4 [+3]
  JUMPIF R5 [+2]
  LOADB R6 1
  RETURN R6 1
  JUMPIFNOT R5 [+3]
  JUMPIF R4 [+2]
  LOADB R6 0
  RETURN R6 1
  JUMPIFLT R5 R4 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  RETURN R6 1

PROTO_1:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["GetTags"]
  CALL R2 2 1
  GETUPVAL R3 0
  MOVE R5 R1
  NAMECALL R3 R3 K0 ["GetTags"]
  CALL R3 2 1
  GETTABLEN R4 R2 1
  JUMPIFNOT R4 [+5]
  GETTABLEN R5 R2 1
  FASTCALL1 TONUMBER R5 [+2]
  GETIMPORT R4 K2 [tonumber]
  CALL R4 1 1
  GETTABLEN R5 R3 1
  JUMPIFNOT R5 [+5]
  GETTABLEN R6 R3 1
  FASTCALL1 TONUMBER R6 [+2]
  GETIMPORT R5 K2 [tonumber]
  CALL R5 1 1
  JUMPIF R4 [+10]
  JUMPIF R5 [+9]
  GETTABLEKS R7 R0 K3 ["Name"]
  GETTABLEKS R8 R1 K3 ["Name"]
  JUMPIFLT R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  RETURN R6 1
  JUMPIFNOT R4 [+3]
  JUMPIF R5 [+2]
  LOADB R6 1
  RETURN R6 1
  JUMPIFNOT R5 [+3]
  JUMPIF R4 [+2]
  LOADB R6 0
  RETURN R6 1
  JUMPIFLT R5 R4 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  RETURN R6 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getAnimSaves"]
  GETUPVAL R2 1
  CALL R1 1 1
  LENGTH R2 R1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+41]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+21]
  GETIMPORT R2 K3 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K4 [PROTO_0]
  CAPTURE UPVAL U3
  CALL R2 2 0
  GETUPVAL R4 4
  GETTABLEN R7 R1 1
  GETTABLEKS R6 R7 K5 ["animation"]
  GETTABLEKS R5 R6 K6 ["Name"]
  GETTABLEN R7 R1 1
  GETTABLEKS R6 R7 K7 ["isLegacyAnimSaves"]
  GETUPVAL R7 5
  CALL R4 3 -1
  NAMECALL R2 R0 K8 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETIMPORT R2 K3 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K9 [PROTO_1]
  CAPTURE UPVAL U3
  CALL R2 2 0
  GETUPVAL R4 4
  GETTABLEN R6 R1 1
  GETTABLEKS R5 R6 K6 ["Name"]
  GETUPVAL R6 5
  CALL R4 2 -1
  NAMECALL R2 R0 K8 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R4 6
  NEWTABLE R5 0 0
  CALL R4 1 -1
  NAMECALL R2 R0 K8 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 7
  NEWTABLE R5 0 0
  CALL R4 1 -1
  NAMECALL R2 R0 K8 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 8
  NEWTABLE R5 0 0
  CALL R4 1 -1
  NAMECALL R2 R0 K8 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 9
  NEWTABLE R5 0 0
  CALL R4 1 -1
  NAMECALL R2 R0 K8 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 10
  LOADNIL R5
  CALL R4 1 -1
  NAMECALL R2 R0 K8 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CollectionService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationClipEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K12 ["Src"]
  GETTABLEKS R5 R6 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["RigUtils"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K12 ["Src"]
  GETTABLEKS R6 R7 K13 ["Util"]
  GETTABLEKS R5 R6 K15 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K12 ["Src"]
  GETTABLEKS R7 R8 K16 ["Actions"]
  GETTABLEKS R6 R7 K17 ["SetIKEnabled"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K12 ["Src"]
  GETTABLEKS R8 R9 K16 ["Actions"]
  GETTABLEKS R7 R8 K18 ["SetIKMode"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K12 ["Src"]
  GETTABLEKS R9 R10 K16 ["Actions"]
  GETTABLEKS R8 R9 K19 ["SetShowTree"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K12 ["Src"]
  GETTABLEKS R10 R11 K16 ["Actions"]
  GETTABLEKS R9 R10 K20 ["SetPinnedParts"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K12 ["Src"]
  GETTABLEKS R11 R12 K16 ["Actions"]
  GETTABLEKS R10 R11 K21 ["SetClipboard"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R1 K12 ["Src"]
  GETTABLEKS R12 R13 K22 ["Thunks"]
  GETTABLEKS R11 R12 K23 ["ReleaseEditor"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R1 K12 ["Src"]
  GETTABLEKS R13 R14 K22 ["Thunks"]
  GETTABLEKS R12 R13 K24 ["AttachEditor"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R1 K12 ["Src"]
  GETTABLEKS R14 R15 K16 ["Actions"]
  GETTABLEKS R13 R14 K25 ["SetRootInstance"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R1 K12 ["Src"]
  GETTABLEKS R15 R16 K16 ["Actions"]
  GETTABLEKS R14 R15 K26 ["SetAnimationData"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R18 R1 K12 ["Src"]
  GETTABLEKS R17 R18 K22 ["Thunks"]
  GETTABLEKS R16 R17 K27 ["Exporting"]
  GETTABLEKS R15 R16 K28 ["LoadAnimation"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R18 R1 K12 ["Src"]
  GETTABLEKS R17 R18 K22 ["Thunks"]
  GETTABLEKS R16 R17 K29 ["SortAndSetTracks"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R19 R1 K12 ["Src"]
  GETTABLEKS R18 R19 K16 ["Actions"]
  GETTABLEKS R17 R18 K30 ["SetPast"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R20 R1 K12 ["Src"]
  GETTABLEKS R19 R20 K16 ["Actions"]
  GETTABLEKS R18 R19 K31 ["SetFuture"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R1 K12 ["Src"]
  GETTABLEKS R20 R21 K16 ["Actions"]
  GETTABLEKS R19 R20 K32 ["SetSelectedKeyframes"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R22 R1 K12 ["Src"]
  GETTABLEKS R21 R22 K16 ["Actions"]
  GETTABLEKS R20 R21 K33 ["SetLegacyAnimationInstances"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R22 R1 K34 ["LuaFlags"]
  GETTABLEKS R21 R22 K35 ["GetFFlagAnimSavesMigration"]
  CALL R20 1 1
  DUPCLOSURE R21 K36 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R0
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R13
  RETURN R21 1
