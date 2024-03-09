PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Terrain"]
  NAMECALL R0 R0 K1 ["Clear"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["ChangeHistoryService"]
  LOADK R2 K3 ["Cleared Terrain"]
  NAMECALL R0 R0 K4 ["SetWaypoint"]
  CALL R0 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["_overrides"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["ClearSettings"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K1 ["Clear"]
  GETTABLE R0 R1 R2
  LOADB R1 1
  SETTABLEKS R1 R0 K7 ["Disabled"]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K8 ["OnGizmoChanged"]
  NAMECALL R0 R0 K9 ["Fire"]
  CALL R0 1 0
  GETUPVAL R0 4
  CALL R0 0 1
  JUMPIFNOT R0 [+11]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K10 ["_analytics"]
  LOADK R2 K11 ["Usage"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K1 ["Clear"]
  LOADN R4 1
  NAMECALL R0 R0 K12 ["report"]
  CALL R0 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["ClearSettings"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["Clear"]
  DUPTABLE R7 K8 [{"Disabled", "Hidden", "Label", "Schema", "Value"}]
  GETTABLEKS R9 R2 K9 ["Terrain"]
  NAMECALL R9 R9 K10 ["CountCells"]
  CALL R9 1 1
  JUMPIFEQKN R9 K11 [0] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K3 ["Disabled"]
  LOADB R8 0
  SETTABLEKS R8 R7 K4 ["Hidden"]
  LOADK R8 K12 [""]
  SETTABLEKS R8 R7 K5 ["Label"]
  DUPTABLE R8 K14 [{"OnClick"}]
  NEWCLOSURE R9 P0
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R9 R8 K13 ["OnClick"]
  SETTABLEKS R8 R7 K6 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["Value"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K15 ["_overrides"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activate"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETTABLEKS R1 R0 K1 ["_analytics"]
  LOADK R3 K2 ["Activated"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["Clear"]
  NAMECALL R1 R1 K4 ["report"]
  CALL R1 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["BaseTool"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagTerrainEditorRemoveSchema"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Flags"]
  GETTABLEKS R4 R5 K11 ["getFFlagTerrainEditorAnalytics"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K12 ["Schemas"]
  GETTABLEKS R6 R7 K13 ["Settings"]
  GETTABLEKS R5 R6 K14 ["Clear"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K15 ["Types"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K16 ["Category"]
  GETTABLEKS R7 R5 K17 ["ClearSettings"]
  GETTABLEKS R8 R5 K18 ["Tab"]
  GETTABLEKS R9 R5 K19 ["Tool"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K23 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K20 ["Defaults"]
  GETTABLEKS R12 R6 K17 ["ClearSettings"]
  SETTABLEKS R12 R11 K21 ["Id"]
  MOVE R13 R2
  CALL R13 0 1
  JUMPIFNOT R13 [+2]
  LOADNIL R12
  JUMP [+1]
  MOVE R12 R4
  SETTABLEKS R12 R11 K22 ["Schema"]
  SETLIST R10 R11 1 [1]
  NEWTABLE R11 0 0
  GETTABLEKS R14 R9 K14 ["Clear"]
  GETTABLEKS R15 R8 K24 ["Create"]
  MOVE R16 R10
  MOVE R17 R11
  NAMECALL R12 R1 K25 ["new"]
  CALL R12 5 1
  DUPCLOSURE R13 K26 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R9
  SETTABLEKS R13 R12 K27 ["init"]
  DUPCLOSURE R13 K28 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R9
  SETTABLEKS R13 R12 K29 ["activate"]
  RETURN R12 1
