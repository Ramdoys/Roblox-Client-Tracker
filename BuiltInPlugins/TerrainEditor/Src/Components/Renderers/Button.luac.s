PROTO_0:
  GETTABLEKS R1 R0 K0 ["Schema"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"OnClick", "Size", "Style", "Text", "StyleModifier"}]
  GETTABLEKS R5 R1 K2 ["OnClick"]
  SETTABLEKS R5 R4 K2 ["OnClick"]
  GETIMPORT R5 K10 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 32
  CALL R5 4 1
  SETTABLEKS R5 R4 K3 ["Size"]
  LOADK R5 K11 ["RoundPrimary"]
  SETTABLEKS R5 R4 K4 ["Style"]
  GETTABLEKS R5 R1 K12 ["Label"]
  SETTABLEKS R5 R4 K5 ["Text"]
  GETTABLEKS R6 R0 K13 ["Disabled"]
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K13 ["Disabled"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K6 ["StyleModifier"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K9 ["UI"]
  GETTABLEKS R3 R4 K10 ["Button"]
  GETTABLEKS R5 R1 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["StyleModifier"]
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
