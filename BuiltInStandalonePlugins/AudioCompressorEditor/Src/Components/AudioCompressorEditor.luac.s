PROTO_0:
  GETTABLEKS R1 R0 K0 ["Enabled"]
  JUMPIFNOT R1 [+19]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R2 1
  NEWTABLE R3 2 0
  GETIMPORT R4 K4 [UDim2.fromScale]
  LOADN R5 1
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Size"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["Tag"]
  LOADK R5 K7 ["X-Pad X-ColumnM X-FitY"]
  SETTABLE R5 R3 R4
  CALL R1 2 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R3 K3 ["AudioCompressorEditor"]
  NAMECALL R1 R0 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R1 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R4 R5 K11 ["Pane"]
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R5 1
