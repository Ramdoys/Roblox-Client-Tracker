PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Expected story to be a table"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["provideMockContext"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["TestHelpers"]
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Reducers"]
  GETTABLEKS R6 R7 K12 ["MainReducer"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K13 ["Resources"]
  GETTABLEKS R7 R8 K14 ["MakeTheme"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K15 ["Controllers"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R7 K16 ["GeneralServiceController"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R7 K17 ["ImageLoader"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R7 K18 ["ImageUploader"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R7 K19 ["ImportAssetHandler"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R7 K20 ["MaterialServiceController"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R7 K21 ["PluginController"]
  CALL R13 1 1
  GETTABLEKS R15 R4 K22 ["Store"]
  GETTABLEKS R14 R15 K23 ["new"]
  GETTABLEKS R16 R1 K22 ["Store"]
  GETTABLEKS R15 R16 K23 ["new"]
  MOVE R16 R5
  LOADNIL R17
  NEWTABLE R18 0 1
  GETTABLEKS R19 R1 K24 ["thunkMiddleware"]
  SETLIST R18 R19 1 [1]
  LOADNIL R19
  CALL R15 4 -1
  CALL R14 -1 1
  GETTABLEKS R15 R10 K23 ["new"]
  CALL R15 0 1
  NEWTABLE R16 0 9
  GETTABLEKS R18 R4 K25 ["Analytics"]
  GETTABLEKS R17 R18 K26 ["mock"]
  CALL R17 0 1
  GETTABLEKS R19 R4 K27 ["Localization"]
  GETTABLEKS R18 R19 K26 ["mock"]
  CALL R18 0 1
  MOVE R19 R14
  GETTABLEKS R20 R8 K26 ["mock"]
  CALL R20 0 1
  GETTABLEKS R21 R11 K26 ["mock"]
  MOVE R22 R15
  CALL R21 1 1
  GETTABLEKS R22 R9 K26 ["mock"]
  CALL R22 0 1
  GETTABLEKS R23 R12 K26 ["mock"]
  GETTABLEKS R24 R14 K28 ["store"]
  CALL R23 1 1
  GETTABLEKS R24 R13 K26 ["mock"]
  CALL R24 0 1
  MOVE R25 R6
  LOADB R26 1
  CALL R25 1 -1
  SETLIST R16 R17 -1 [1]
  DUPCLOSURE R17 K29 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R16
  RETURN R17 1
