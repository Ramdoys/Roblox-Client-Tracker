PROTO_0:
  JUMPIFNOTEQKS R1 K0 ["."] [+2]
  LOADK R1 K1 ["%."]
  LOADK R6 K2 ["(.*)"]
  MOVE R7 R1
  LOADK R8 K2 ["(.*)"]
  CONCAT R5 R6 R8
  LOADK R7 K3 ["%1"]
  MOVE R8 R2
  LOADK R9 K4 ["%2"]
  CONCAT R6 R7 R9
  NAMECALL R3 R0 K5 ["gsub"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["StudioLocaleId"]
  GETUPVAL R4 1
  GETTABLE R3 R4 R1
  ORK R2 R3 K1 ["."]
  GETUPVAL R3 2
  MOVE R4 R0
  MOVE R5 R2
  LOADK R6 K1 ["."]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["delimitersByLocaleId"]
  CALL R1 1 1
  GETTABLEKS R0 R1 K6 ["decimalDelimiterByLocale"]
  GETIMPORT R1 K8 [game]
  LOADK R3 K9 ["StudioService"]
  NAMECALL R1 R1 K10 ["GetService"]
  CALL R1 2 1
  DUPCLOSURE R2 K11 [PROTO_0]
  DUPCLOSURE R3 K12 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  DUPCLOSURE R4 K13 [PROTO_2]
  CAPTURE VAL R3
  RETURN R4 1
