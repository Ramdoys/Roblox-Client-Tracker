PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K2 [{"FindAsync", "ReplaceAsync"}]
  DUPCLOSURE R2 K3 [PROTO_0]
  SETTABLEKS R2 R1 K0 ["FindAsync"]
  DUPCLOSURE R2 K4 [PROTO_1]
  SETTABLEKS R2 R1 K1 ["ReplaceAsync"]
  DUPTABLE R4 K6 [{"__index"}]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K5 ["__index"]
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K8 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  RETURN R0 1
