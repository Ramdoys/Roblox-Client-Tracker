MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ImprovePluginSpeed_ManageCollaborators"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K8 ["Parent"]
  GETTABLEKS R1 R2 K9 ["main"]
  CALL R0 1 1
  MOVE R1 R0
  GETIMPORT R2 K11 [plugin]
  CALL R1 1 0
  RETURN R0 0
