PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  NEWTABLE R5 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["PlaneLock"]
  DUPTABLE R7 K4 [{"Hidden"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K3 ["Hidden"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["ManualPlaneLock"]
  DUPTABLE R7 K4 [{"Hidden"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K3 ["Hidden"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K6 ["_overrides"]
  LOADN R3 0
  SETTABLEKS R3 R0 K7 ["_brushUsages"]
  LOADN R3 0
  SETTABLEKS R3 R0 K8 ["_brushTime"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveForm"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_operation"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K1 ["_operation"]
  NAMECALL R4 R0 K2 ["getPayload"]
  CALL R4 1 -1
  NAMECALL R2 R2 K3 ["updatePayload"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveGizmos"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_operation"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K1 ["_operation"]
  NAMECALL R4 R0 K2 ["getPayload"]
  CALL R4 1 -1
  NAMECALL R2 R2 K3 ["updatePayload"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  LOADK R3 K0 ["Flatten"]
  GETTABLEKS R4 R0 K1 ["_services"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K2 ["_operation"]
  GETTABLEKS R2 R0 K2 ["_operation"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["join"]
  DUPTABLE R5 K5 [{"Payload"}]
  NAMECALL R6 R0 K6 ["getPayload"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K4 ["Payload"]
  MOVE R6 R1
  CALL R4 2 -1
  NAMECALL R2 R2 K7 ["start"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  JUMPIFNOT R0 [+35]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K1 ["isRunning"]
  CALL R0 1 1
  JUMPIFNOT R0 [+28]
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K2 ["_brushUsages"]
  ADDK R1 R1 K3 [1]
  SETTABLEKS R1 R0 K2 ["_brushUsages"]
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_operation"]
  NAMECALL R2 R2 K4 ["getCurrentTimeTaken"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["_operation"]
  NAMECALL R3 R3 K5 ["getStepsTaken"]
  CALL R3 1 1
  DIV R1 R2 R3
  SETTABLEKS R1 R0 K6 ["_brushTime"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K7 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activate"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_shortcutController"]
  NAMECALL R1 R1 K2 ["getMouse"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_shortcutController"]
  GETTABLEKS R2 R3 K3 ["MouseDownAction"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_mouseDownConnection"]
  GETTABLEKS R2 R1 K6 ["Button1Up"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["_mouseUpConnection"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K8 ["_analytics"]
  LOADK R4 K9 ["Activated"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["Flatten"]
  NAMECALL R2 R2 K11 ["report"]
  CALL R2 3 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_mouseDownConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_mouseUpConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_operation"]
  JUMPIFNOT R1 [+32]
  GETTABLEKS R1 R0 K3 ["_operation"]
  NAMECALL R1 R1 K4 ["isRunning"]
  CALL R1 1 1
  JUMPIFNOT R1 [+26]
  GETTABLEKS R1 R0 K5 ["_brushUsages"]
  ADDK R1 R1 K6 [1]
  SETTABLEKS R1 R0 K5 ["_brushUsages"]
  GETTABLEKS R1 R0 K7 ["_brushTime"]
  GETTABLEKS R3 R0 K3 ["_operation"]
  NAMECALL R3 R3 K8 ["getCurrentTimeTaken"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K3 ["_operation"]
  NAMECALL R4 R4 K9 ["getStepsTaken"]
  CALL R4 1 1
  DIV R2 R3 R4
  ADD R1 R1 R2
  SETTABLEKS R1 R0 K7 ["_brushTime"]
  GETTABLEKS R1 R0 K3 ["_operation"]
  NAMECALL R1 R1 K10 ["destroy"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["deactivate"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["_brushTime"]
  JUMPIFNOT R2 [+32]
  GETTABLEKS R2 R0 K1 ["_brushTime"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+28]
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K3 ["BrushProperties"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["getBrushPayload"]
  MOVE R6 R1
  GETTABLEKS R7 R0 K1 ["_brushTime"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["Flatten"]
  CALL R5 3 -1
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K7 ["Usage"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Flatten"]
  GETTABLEKS R6 R0 K8 ["_brushUsages"]
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 4 0
  LOADN R2 0
  SETTABLEKS R2 R0 K8 ["_brushUsages"]
  LOADN R2 0
  SETTABLEKS R2 R0 K1 ["_brushTime"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["BaseTool"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Flags"]
  GETTABLEKS R4 R5 K12 ["getFFlagTerrainEditorRemoveSchema"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagTerrainEditorAnalytics"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Schemas"]
  GETTABLEKS R7 R8 K15 ["Settings"]
  GETTABLEKS R6 R7 K16 ["Brush"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K17 ["Util"]
  GETTABLEKS R7 R8 K18 ["AnalyticsHelper"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K17 ["Util"]
  GETTABLEKS R9 R10 K19 ["Operations"]
  GETTABLEKS R8 R9 K20 ["FlattenOperation"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K21 ["Types"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K22 ["BrushSettings"]
  GETTABLEKS R10 R8 K23 ["BrushShape"]
  GETTABLEKS R11 R8 K24 ["Category"]
  GETTABLEKS R12 R8 K25 ["FlattenMode"]
  GETTABLEKS R13 R8 K26 ["FlattenPlane"]
  GETTABLEKS R14 R8 K27 ["Gizmo"]
  GETTABLEKS R15 R8 K28 ["PivotPosition"]
  GETTABLEKS R16 R8 K29 ["Snapping"]
  GETTABLEKS R17 R8 K30 ["Tab"]
  GETTABLEKS R18 R8 K31 ["Tool"]
  NEWTABLE R19 0 1
  DUPTABLE R20 K35 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R21 16 0
  GETTABLEKS R22 R9 K23 ["BrushShape"]
  GETTABLEKS R23 R10 K36 ["Sphere"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K37 ["BrushSize"]
  DUPTABLE R23 K41 [{"Height", "Locked", "Size"}]
  LOADN R24 6
  SETTABLEKS R24 R23 K38 ["Height"]
  LOADB R24 1
  SETTABLEKS R24 R23 K39 ["Locked"]
  LOADN R24 6
  SETTABLEKS R24 R23 K40 ["Size"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K42 ["Strength"]
  LOADN R23 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K43 ["FixedYPlane"]
  LOADN R23 0
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K25 ["FlattenMode"]
  GETTABLEKS R23 R12 K44 ["Both"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K26 ["FlattenPlane"]
  GETTABLEKS R23 R13 K45 ["Auto"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K28 ["PivotPosition"]
  GETTABLEKS R23 R15 K46 ["Center"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K29 ["Snapping"]
  GETTABLEKS R23 R16 K47 ["Off"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K48 ["State"]
  DUPTABLE R23 K50 [{"Position"}]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  FASTCALL VECTOR [+2]
  GETIMPORT R24 K53 [Vector3.new]
  CALL R24 3 1
  SETTABLEKS R24 R23 K49 ["Position"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K54 ["IgnoreWater"]
  LOADB R23 0
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K55 ["IgnoreParts"]
  LOADB R23 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K56 ["PullTerrain"]
  LOADB R23 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R9 K57 ["WaterAutofill"]
  LOADB R23 0
  SETTABLE R23 R21 R22
  SETTABLEKS R21 R20 K32 ["Defaults"]
  GETTABLEKS R21 R11 K22 ["BrushSettings"]
  SETTABLEKS R21 R20 K33 ["Id"]
  MOVE R22 R3
  CALL R22 0 1
  JUMPIFNOT R22 [+2]
  LOADNIL R21
  JUMP [+1]
  MOVE R21 R5
  SETTABLEKS R21 R20 K34 ["Schema"]
  SETLIST R19 R20 1 [1]
  NEWTABLE R20 0 2
  DUPTABLE R21 K58 [{"Id", "Schema"}]
  GETTABLEKS R22 R14 K59 ["Plane"]
  SETTABLEKS R22 R21 K33 ["Id"]
  DUPTABLE R22 K61 [{"Type"}]
  GETTABLEKS R23 R14 K59 ["Plane"]
  SETTABLEKS R23 R22 K60 ["Type"]
  SETTABLEKS R22 R21 K34 ["Schema"]
  DUPTABLE R22 K58 [{"Id", "Schema"}]
  GETTABLEKS R23 R14 K16 ["Brush"]
  SETTABLEKS R23 R22 K33 ["Id"]
  DUPTABLE R23 K61 [{"Type"}]
  GETTABLEKS R24 R14 K16 ["Brush"]
  SETTABLEKS R24 R23 K60 ["Type"]
  SETTABLEKS R23 R22 K34 ["Schema"]
  SETLIST R20 R21 2 [1]
  GETTABLEKS R23 R18 K62 ["Flatten"]
  GETTABLEKS R24 R17 K63 ["Edit"]
  MOVE R25 R19
  MOVE R26 R20
  NAMECALL R21 R2 K52 ["new"]
  CALL R21 5 1
  DUPCLOSURE R22 K64 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R9
  SETTABLEKS R22 R21 K65 ["init"]
  DUPCLOSURE R22 K66 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R22 R21 K67 ["saveForm"]
  DUPCLOSURE R22 K68 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R22 R21 K69 ["saveGizmos"]
  DUPCLOSURE R22 K70 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R22 R21 K71 ["startOperation"]
  DUPCLOSURE R22 K72 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R22 R21 K73 ["activate"]
  DUPCLOSURE R22 K74 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R22 R21 K75 ["deactivate"]
  DUPCLOSURE R22 K76 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R18
  SETTABLEKS R22 R21 K77 ["reportAnalytics"]
  RETURN R21 1
