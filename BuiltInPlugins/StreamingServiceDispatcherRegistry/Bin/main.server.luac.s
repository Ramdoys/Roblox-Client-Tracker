PROTO_0:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K3 ["new"]
  CALL R0 0 1
  SETUPVAL R0 1
  GETUPVAL R0 1
  NAMECALL R0 R0 K4 ["init"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [script]
  LOADK R2 K4 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K5 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K7 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Utils"]
  GETTABLEKS R2 R3 K10 ["CliAdapter"]
  CALL R1 1 1
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R0 K11 ["Packages"]
  GETTABLEKS R3 R4 K12 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K13 ["RunningEval"]
  JUMPIF R3 [+6]
  GETTABLEKS R3 R2 K14 ["launch"]
  LOADK R4 K4 ["StreamingServiceDispatcherRegistry"]
  GETTABLEKS R5 R0 K8 ["Src"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K15 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R1 K13 ["RunningEval"]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K16 ["MainPlugin"]
  CALL R3 1 1
  LOADNIL R4
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE REF R4
  CAPTURE VAL R3
  GETIMPORT R7 K1 [plugin]
  GETTABLEKS R6 R7 K17 ["Unloading"]
  NEWCLOSURE R8 P1
  CAPTURE REF R4
  NAMECALL R6 R6 K18 ["Connect"]
  CALL R6 2 0
  GETIMPORT R6 K1 [plugin]
  GETTABLEKS R7 R0 K19 ["Name"]
  SETTABLEKS R7 R6 K19 ["Name"]
  GETTABLEKS R6 R3 K20 ["new"]
  CALL R6 0 1
  MOVE R4 R6
  NAMECALL R6 R4 K21 ["init"]
  CALL R6 1 0
  CLOSEUPVALS R4
  RETURN R0 0
