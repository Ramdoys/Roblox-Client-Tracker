PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["table"] [+3]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R1 R0 K3 ["ageRecommendationDetails"]
  JUMPIFNOT R1 [+46]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K2 ["table"] [+3]
  LOADB R2 0
  RETURN R2 1
  GETTABLEKS R2 R1 K4 ["ageRecommendationSummary"]
  JUMPIFNOT R2 [+34]
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+3]
  LOADB R3 0
  RETURN R3 1
  GETTABLEKS R3 R2 K5 ["ageRecommendation"]
  JUMPIFNOT R3 [+22]
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["table"] [+3]
  LOADB R4 0
  RETURN R4 1
  GETTABLEKS R4 R3 K6 ["minimumAge"]
  JUMPIFNOT R4 [+10]
  GETTABLEKS R5 R3 K6 ["minimumAge"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K7 ["number"] [+3]
  LOADB R4 0
  RETURN R4 1
  GETTABLEKS R2 R0 K8 ["universeId"]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R3 R0 K8 ["universeId"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K7 ["number"] [+3]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPTABLE R1 K2 [{"validate"}]
  SETTABLEKS R0 R1 K1 ["validate"]
  RETURN R1 1
