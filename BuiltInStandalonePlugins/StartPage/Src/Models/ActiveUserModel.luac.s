PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["table"] [+3]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R1 R0 K3 ["id"]
  JUMPIFNOT R1 [+10]
  GETTABLEKS R2 R0 K3 ["id"]
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K4 ["number"] [+3]
  LOADB R1 0
  RETURN R1 1
  LOADB R1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPTABLE R1 K2 [{"validate"}]
  SETTABLEKS R0 R1 K1 ["validate"]
  RETURN R1 1
