PROTO_0:
  DUPTABLE R1 K1 [{"managedGroups"}]
  SETTABLEKS R0 R1 K0 ["managedGroups"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["Action"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K12 ["Name"]
  DUPCLOSURE R5 K13 [PROTO_0]
  CALL R3 2 -1
  RETURN R3 -1
