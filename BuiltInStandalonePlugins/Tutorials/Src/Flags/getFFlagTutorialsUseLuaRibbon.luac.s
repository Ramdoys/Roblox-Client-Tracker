PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TutorialsUseLuaRibbon"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+6]
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["EnableRibbonPlugin"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TutorialsUseLuaRibbon"]
  LOADN R3 2
  NAMECALL R0 R0 K3 ["SetFlagVersion"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TutorialsUseLuaRibbon"]
  LOADB R3 0
  NAMECALL R0 R0 K4 ["DefineFastFlag"]
  CALL R0 3 0
  DUPCLOSURE R0 K5 [PROTO_0]
  RETURN R0 1
