MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 0
  GETIMPORT R1 K10 [game]
  LOADK R3 K11 ["StudioVisualizationModes"]
  NAMECALL R1 R1 K12 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K13 ["Packages"]
  GETTABLEKS R2 R3 K14 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K15 ["launch"]
  LOADK R3 K2 ["VisualizationModes"]
  GETTABLEKS R4 R0 K16 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K17 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K19 [plugin]
  GETTABLEKS R3 R0 K20 ["Name"]
  SETTABLEKS R3 R2 K20 ["Name"]
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K21 ["Parent"]
  GETTABLEKS R3 R4 K22 ["main"]
  CALL R2 1 1
  MOVE R3 R2
  GETIMPORT R4 K19 [plugin]
  CALL R3 1 0
  RETURN R0 0
