PROTO_0:
  JUMPIF R0 [+2]
  LOADK R2 K0 [""]
  RETURN R2 1
  FASTCALL2K ASSERT R0 K1 [+5]
  MOVE R3 R0
  LOADK R4 K1 ["Luau: Ensure this is defined"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETIMPORT R2 K6 [DateTime.fromIsoDate]
  MOVE R3 R0
  CALL R2 1 1
  JUMPIF R2 [+2]
  LOADK R3 K0 [""]
  RETURN R3 1
  FASTCALL2K ASSERT R2 K1 [+5]
  MOVE R4 R2
  LOADK R5 K1 ["Luau: Ensure this is defined"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  LOADK R5 K7 ["L LT"]
  GETTABLEKS R6 R1 K8 ["getLocale"]
  CALL R6 0 -1
  NAMECALL R3 R2 K9 ["FormatUniversalTime"]
  CALL R3 -1 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
