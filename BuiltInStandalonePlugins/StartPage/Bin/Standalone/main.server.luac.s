MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["launch"]
  LOADK R3 K2 ["StartPage"]
  GETTABLEKS R4 R0 K9 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K10 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K12 [game]
  LOADK R4 K13 ["EnableLuaStartPage"]
  NAMECALL R2 R2 K14 ["GetFastFlag"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K12 [game]
  LOADK R4 K15 ["StartPageService"]
  NAMECALL R2 R2 K16 ["GetService"]
  CALL R2 2 1
  NAMECALL R3 R2 K17 ["getStartPageVersionForUser"]
  CALL R3 1 1
  JUMPIFNOTEQKN R3 K18 [1] [+2]
  RETURN R0 0
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K19 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K20 ["ReactRoblox"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K21 ["MainPlugin"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K22 ["createElement"]
  MOVE R7 R5
  DUPTABLE R8 K24 [{"Plugin"}]
  GETIMPORT R9 K26 [plugin]
  SETTABLEKS R9 R8 K23 ["Plugin"]
  CALL R6 2 1
  GETIMPORT R7 K29 [Instance.new]
  LOADK R8 K30 ["Frame"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K31 ["createRoot"]
  MOVE R9 R7
  CALL R8 1 1
  MOVE R11 R6
  NAMECALL R9 R8 K32 ["render"]
  CALL R9 2 0
  RETURN R0 0
