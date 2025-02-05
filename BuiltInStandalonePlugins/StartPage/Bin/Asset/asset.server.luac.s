PROTO_0:
  GETIMPORT R1 K1 [plugin]
  GETTABLEKS R0 R1 K2 ["HostDataModelTypeIsCurrent"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K5 [{"Plugin"}]
  GETIMPORT R3 K1 [plugin]
  SETTABLEKS R3 R2 K4 ["Plugin"]
  CALL R0 2 1
  GETIMPORT R1 K8 [Instance.new]
  LOADK R2 K9 ["Frame"]
  CALL R1 1 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["createRoot"]
  MOVE R3 R1
  CALL R2 1 1
  SETUPVAL R2 2
  GETUPVAL R3 2
  FASTCALL2K ASSERT R3 K11 [+4]
  LOADK R4 K11 ["Force Luau to know root is non-nil"]
  GETIMPORT R2 K13 [assert]
  CALL R2 2 0
  GETUPVAL R2 2
  MOVE R4 R0
  NAMECALL R2 R2 K14 ["render"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["unmount"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [require]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Packages"]
  GETTABLEKS R1 R2 K3 ["React"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Packages"]
  GETTABLEKS R2 R3 K4 ["ReactRoblox"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["MainPlugin"]
  CALL R2 1 1
  GETIMPORT R4 K8 [plugin]
  GETTABLEKS R3 R4 K9 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R4 R3 K10 ["FocusedDataModelSession"]
  LOADNIL R5
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE REF R5
  CAPTURE VAL R1
  NEWCLOSURE R7 P1
  CAPTURE REF R5
  GETTABLEKS R8 R4 K11 ["CurrentDataModelTypeAboutToChange"]
  MOVE R10 R7
  NAMECALL R8 R8 K12 ["Connect"]
  CALL R8 2 0
  GETTABLEKS R8 R4 K13 ["CurrentDataModelTypeChanged"]
  MOVE R10 R6
  NAMECALL R8 R8 K12 ["Connect"]
  CALL R8 2 0
  MOVE R8 R6
  CALL R8 0 0
  CLOSEUPVALS R5
  RETURN R0 0

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
  DUPCLOSURE R2 K10 [PROTO_2]
  CAPTURE VAL R0
  GETIMPORT R3 K12 [game]
  LOADK R5 K13 ["DebugTestStartPageInAssetDM"]
  LOADB R6 0
  NAMECALL R3 R3 K14 ["DefineFastFlag"]
  CALL R3 3 1
  JUMPIFNOT R3 [+2]
  MOVE R4 R2
  CALL R4 0 0
  RETURN R0 0
