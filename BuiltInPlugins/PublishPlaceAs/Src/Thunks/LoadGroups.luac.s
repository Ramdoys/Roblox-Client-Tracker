PROTO_0:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R0 K2 ["groups"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R9 R6 K3 ["id"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K6 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-9]
  GETUPVAL R2 0
  GETUPVAL R4 1
  DUPTABLE R5 K7 [{"groups"}]
  GETTABLEKS R6 R0 K2 ["groups"]
  SETTABLEKS R6 R5 K2 ["groups"]
  CALL R4 1 -1
  NAMECALL R2 R2 K8 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  DUPTABLE R4 K1 [{"ownedGroups"}]
  SETTABLEKS R0 R4 K0 ["ownedGroups"]
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["Failed to fetch groups with edit permission"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  DUPTABLE R4 K1 [{"groups"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K0 ["groups"]
  CALL R3 1 -1
  NAMECALL R1 R0 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 1
  CALL R1 0 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  NAMECALL R2 R1 K3 ["andThen"]
  CALL R2 2 1
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R2 R2 K3 ["andThen"]
  CALL R2 2 1
  DUPCLOSURE R4 K4 [PROTO_2]
  NAMECALL R2 R2 K5 ["catch"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  DUPCLOSURE R0 K0 [PROTO_3]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["SetGroupInfo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K8 ["Network"]
  GETTABLEKS R4 R5 K9 ["Requests"]
  GETTABLEKS R3 R4 K10 ["ApiFetchGroupsHavePermission"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K8 ["Network"]
  GETTABLEKS R5 R6 K9 ["Requests"]
  GETTABLEKS R4 R5 K11 ["ApiFetchOwnedGroups"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
