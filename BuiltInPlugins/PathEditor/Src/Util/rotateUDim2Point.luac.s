PROTO_0:
  JUMPIFNOTEQKN R2 K0 [0] [+2]
  RETURN R0 1
  GETUPVAL R4 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  MOVE R7 R0
  MOVE R8 R3
  CALL R6 2 1
  MOVE R7 R1
  MOVE R8 R2
  CALL R5 3 1
  MOVE R6 R3
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["getVector2FromUDim2Scale"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["getUDim2FromVector2"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["rotatePoint"]
  CALL R2 1 1
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETGLOBAL R3 K9 ["rotateUDim2Point"]
  GETGLOBAL R3 K9 ["rotateUDim2Point"]
  RETURN R3 1
