PROTO_0:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Guest"]
  GETTABLEKS R2 R3 K1 ["InstanceGuestRPCInterface"]
  GETTABLEKS R1 R2 K2 ["createInstanceGuestRPCInterface"]
  GETIMPORT R2 K4 [game]
  MOVE R3 R0
  GETUPVAL R4 1
  GETUPVAL R5 2
  GETUPVAL R6 3
  CALL R4 2 1
  DUPTABLE R5 K12 [{"openInsertObjectMenu", "listenForVisibilityChanges", "instancePicker", "isServiceVisible", "openScript", "triggerFocus", "listenForFocus"}]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  SETTABLEKS R6 R5 K5 ["openInsertObjectMenu"]
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K6 ["listenForVisibilityChanges"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K7 ["instancePicker"]
  GETUPVAL R6 7
  SETTABLEKS R6 R5 K8 ["isServiceVisible"]
  GETUPVAL R6 8
  SETTABLEKS R6 R5 K9 ["openScript"]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U9
  CAPTURE UPVAL U2
  SETTABLEKS R6 R5 K10 ["triggerFocus"]
  GETUPVAL R6 10
  SETTABLEKS R6 R5 K11 ["listenForFocus"]
  CALL R1 4 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R0 0
  CALL R0 0 0
  GETUPVAL R0 1
  CALL R0 0 0
  GETUPVAL R0 2
  CALL R0 0 0
  GETUPVAL R0 3
  CALL R0 0 0
  GETUPVAL R0 4
  CALL R0 0 0
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K0 ["destroy"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["connectGuest"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["connectGuest"]
  CALL R3 0 1
  GETUPVAL R4 3
  MOVE R5 R0
  CALL R4 1 2
  GETUPVAL R6 4
  MOVE R7 R0
  CALL R6 1 2
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K1 ["Guest"]
  GETTABLEKS R8 R9 K2 ["startGuest"]
  DUPTABLE R9 K5 [{"guestConnectionObservable", "createGuestRpcInterface"}]
  SETTABLEKS R4 R9 K3 ["guestConnectionObservable"]
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R6
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  SETTABLEKS R10 R9 K4 ["createGuestRpcInterface"]
  CALL R8 1 1
  GETTABLEKS R9 R0 K6 ["Unloading"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  NAMECALL R9 R9 K7 ["Connect"]
  CALL R9 2 0
  RETURN R0 0

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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["SharedFeatures"]
  GETTABLEKS R3 R4 K10 ["StudioSelectAll"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["SharedFeatures"]
  GETTABLEKS R4 R5 K11 ["StudioWindowInput"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["SharedFeatures"]
  GETTABLEKS R6 R7 K12 ["ContextMenu"]
  GETTABLEKS R5 R6 K13 ["createContextMenuActionWatcher"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K14 ["Guest"]
  GETTABLEKS R6 R7 K15 ["createStudioGuestConnection"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K9 ["SharedFeatures"]
  GETTABLEKS R8 R9 K12 ["ContextMenu"]
  GETTABLEKS R7 R8 K16 ["createStudioGuestContextMenuActions"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K14 ["Guest"]
  GETTABLEKS R8 R9 K17 ["createStudioInstancePicker"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K14 ["Guest"]
  GETTABLEKS R9 R10 K18 ["isServiceVisible"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K8 ["Src"]
  GETTABLEKS R11 R12 K14 ["Guest"]
  GETTABLEKS R10 R11 K19 ["listenForFocus"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K8 ["Src"]
  GETTABLEKS R12 R13 K14 ["Guest"]
  GETTABLEKS R11 R12 K20 ["listenForVisibilityChanges"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K8 ["Src"]
  GETTABLEKS R13 R14 K14 ["Guest"]
  GETTABLEKS R12 R13 K21 ["openInsertObjectMenu"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K8 ["Src"]
  GETTABLEKS R14 R15 K14 ["Guest"]
  GETTABLEKS R13 R14 K22 ["openScript"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K8 ["Src"]
  GETTABLEKS R15 R16 K14 ["Guest"]
  GETTABLEKS R14 R15 K23 ["triggerFocus"]
  CALL R13 1 1
  DUPCLOSURE R14 K24 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R9
  RETURN R14 1
