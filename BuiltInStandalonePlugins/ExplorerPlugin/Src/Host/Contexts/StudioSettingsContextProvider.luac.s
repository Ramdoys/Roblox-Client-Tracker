PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  LOADK R4 K0 ["ExplorerPluginSearchHistory"]
  MOVE R5 R0
  CONCAT R3 R4 R5
  NAMECALL R1 R1 K1 ["GetSetting"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  LOADK R5 K0 ["ExplorerPluginSearchHistory"]
  MOVE R6 R0
  CONCAT R4 R5 R6
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["SetSetting"]
  CALL R2 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetSelectOnInsertionAsync"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+2]
  LOADB R0 0
  RETURN R0 1
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CALL R0 1 2
  JUMPIFNOT R0 [+1]
  RETURN R1 1
  LOADB R2 0
  RETURN R2 1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["SetSelectOnInsertionAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K2 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetIncrementNamesAsync"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_9:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+3]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIF R0 [+2]
  LOADB R0 0
  RETURN R0 1
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CALL R0 1 2
  JUMPIFNOT R0 [+1]
  RETURN R1 1
  LOADB R2 0
  RETURN R2 1

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["SetIncrementNamesAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+3]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K2 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  LOADK R2 K0 ["ExplorerPluginExpandHierarchy"]
  NAMECALL R0 R0 K1 ["GetSetting"]
  CALL R0 2 1
  LOADB R1 1
  JUMPIFEQKNIL R0 [+2]
  MOVE R1 R0
  RETURN R1 1

PROTO_13:
  GETUPVAL R1 0
  LOADK R3 K0 ["ExplorerPluginExpandHierarchy"]
  MOVE R4 R0
  NAMECALL R1 R1 K1 ["SetSetting"]
  CALL R1 3 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 1 1
  LOADNIL R2
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  LOADK R5 K4 ["InsertObjectSettings"]
  NAMECALL R3 R1 K5 ["GetPluginComponent"]
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R3 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K6 ["Components"]
  GETTABLEKS R5 R6 K7 ["Contexts"]
  GETTABLEKS R4 R5 K8 ["SettingsContextProvider"]
  DUPTABLE R5 K20 [{"rememberedFields", "addField", "removeField", "getSearchHistory", "saveSearchHistory", "getSelectOnInsertionAsync", "setSelectOnInsertion", "getIncrementNamesAsync", "setIncrementNames", "getExpandHierarchy", "setExpandHierarchy"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K9 ["rememberedFields"]
  DUPCLOSURE R6 K21 [PROTO_0]
  SETTABLEKS R6 R5 K10 ["addField"]
  DUPCLOSURE R6 K22 [PROTO_1]
  SETTABLEKS R6 R5 K11 ["removeField"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K12 ["getSearchHistory"]
  NEWCLOSURE R6 P3
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K13 ["saveSearchHistory"]
  NEWCLOSURE R6 P4
  CAPTURE UPVAL U1
  CAPTURE REF R2
  SETTABLEKS R6 R5 K14 ["getSelectOnInsertionAsync"]
  NEWCLOSURE R6 P5
  CAPTURE UPVAL U1
  CAPTURE REF R2
  SETTABLEKS R6 R5 K15 ["setSelectOnInsertion"]
  NEWCLOSURE R6 P6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  CAPTURE REF R2
  SETTABLEKS R6 R5 K16 ["getIncrementNamesAsync"]
  NEWCLOSURE R6 P7
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  CAPTURE REF R2
  SETTABLEKS R6 R5 K17 ["setIncrementNames"]
  NEWCLOSURE R6 P8
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K18 ["getExpandHierarchy"]
  NEWCLOSURE R6 P9
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K19 ["setExpandHierarchy"]
  GETTABLEKS R6 R0 K23 ["children"]
  CALL R3 3 -1
  CLOSEUPVALS R2
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Explorer"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagExplorerIncrementNames"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Flags"]
  GETTABLEKS R6 R7 K13 ["getFFlagExplorerInsertObjectSettings"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K14 ["createElement"]
  DUPCLOSURE R7 K15 [PROTO_14]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R4
  RETURN R7 1
