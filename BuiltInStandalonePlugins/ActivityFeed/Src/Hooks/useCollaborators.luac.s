PROTO_0:
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["GetCollaboratorsList"]
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE REF R1
  CAPTURE VAL R0
  CALL R2 1 2
  JUMPIF R2 [0]
  NEWTABLE R4 0 0
  GETIMPORT R5 K3 [pairs]
  MOVE R6 R1
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETTABLEKS R12 R9 K4 ["UserId"]
  FASTCALL2 TABLE_INSERT R4 R12 [+4]
  MOVE R11 R4
  GETIMPORT R10 K7 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-9]
  CLOSEUPVALS R1
  RETURN R4 1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CollaboratorsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R1 1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R1 1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R1 1 1
  CALL R0 1 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K0 ["CollaboratorInstanceCreatedSignal"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["CollaboratorInstanceDestroyedSignal"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useMemo"]
  DUPCLOSURE R1 K1 [PROTO_2]
  NEWTABLE R2 0 0
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["useState"]
  NEWTABLE R2 0 0
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["useEffect"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NEWTABLE R5 0 0
  CALL R3 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_1]
  DUPCLOSURE R3 K8 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
