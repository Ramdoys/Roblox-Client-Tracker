PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Context"]
  GETTABLEKS R1 R2 K1 ["Consumer"]
  CALL R0 1 1
  DUPTABLE R1 K5 [{"Focus", "Localization", "Plugin"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Focus"]
  GETTABLEKS R3 R4 K6 ["Key"]
  GETTABLE R2 R0 R3
  SETTABLEKS R2 R1 K2 ["Focus"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Localization"]
  GETTABLEKS R3 R4 K6 ["Key"]
  GETTABLE R2 R0 R3
  SETTABLEKS R2 R1 K3 ["Localization"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["Plugin"]
  GETTABLEKS R3 R4 K6 ["Key"]
  GETTABLE R2 R0 R3
  SETTABLEKS R2 R1 K4 ["Plugin"]
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
  GETTABLEKS R2 R1 K7 ["useContext"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Types"]
  CALL R5 1 1
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R6 1
