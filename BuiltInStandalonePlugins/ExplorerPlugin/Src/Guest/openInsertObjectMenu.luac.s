PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"TargetWidgetUri", "Offset"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K0 ["TargetWidgetUri"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K1 ["Offset"]
  GETUPVAL R3 3
  NAMECALL R0 R0 K3 ["OpenPopupAsync"]
  CALL R0 3 0
  RETURN R0 0

PROTO_1:
  LOADK R5 K0 ["InsertObjectDataModelController"]
  NAMECALL R3 R0 K1 ["GetPluginComponent"]
  CALL R3 2 1
  GETUPVAL R4 0
  NEWTABLE R6 0 1
  MOVE R7 R1
  SETLIST R6 R7 1 [1]
  NAMECALL R4 R4 K2 ["Set"]
  CALL R4 2 0
  GETIMPORT R4 K5 [task.spawn]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE VAL R1
  CALL R4 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Selection"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["ExplorerPlugin"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["ExplorerGuiUri"]
  CALL R2 1 1
  DUPCLOSURE R3 K13 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R3 1
