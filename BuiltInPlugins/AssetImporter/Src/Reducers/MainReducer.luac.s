MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K8 ["Src"]
  GETTABLEKS R2 R3 K9 ["Reducers"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K10 ["Preview"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K11 ["Dialogs"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K12 ["Sessions"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K13 ["Flags"]
  GETTABLEKS R7 R8 K14 ["getFFlagAssetImportRefactorReducer"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K13 ["Flags"]
  GETTABLEKS R8 R9 K15 ["getFFlagAssetImportRefactorFileOpen"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K13 ["Flags"]
  GETTABLEKS R9 R10 K16 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K17 ["combineReducers"]
  DUPTABLE R10 K18 [{"Preview", "Dialogs", "Sessions"}]
  SETTABLEKS R3 R10 K10 ["Preview"]
  MOVE R12 R7
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  MOVE R11 R4
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K11 ["Dialogs"]
  MOVE R12 R8
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  MOVE R11 R5
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K12 ["Sessions"]
  CALL R9 1 1
  MOVE R10 R6
  CALL R10 0 1
  JUMPIFNOT R10 [+1]
  RETURN R9 1
  RETURN R3 1
