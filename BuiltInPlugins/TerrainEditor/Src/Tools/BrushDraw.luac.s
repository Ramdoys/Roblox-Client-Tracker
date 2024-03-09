PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFormChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["OnGizmoChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+23]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["Set"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["BrushSettings"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["_pluginController"]
  NEWTABLE R3 1 0
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["PlaneTransform"]
  GETIMPORT R5 K6 [CFrame.Angles]
  LOADK R6 K7 [1.5707963267949]
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLE R5 R3 R4
  CALL R0 3 0
  JUMP [+25]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["Set"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["BrushSettings"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K8 ["Storage"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["_pluginController"]
  NEWTABLE R4 1 0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K3 ["PlaneTransform"]
  GETIMPORT R6 K6 [CFrame.Angles]
  LOADK R7 K7 [1.5707963267949]
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  SETTABLE R6 R4 R5
  CALL R0 4 0
  GETIMPORT R0 K11 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U3
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["ManualPlaneLock"]
  DUPTABLE R7 K4 [{"Schema"}]
  DUPTABLE R8 K6 [{"OnReset"}]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  SETTABLEKS R9 R8 K5 ["OnReset"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K7 ["_overrides"]
  LOADN R3 0
  SETTABLEKS R3 R0 K8 ["_brushTime"]
  LOADN R3 0
  SETTABLEKS R3 R0 K9 ["_brushUsages"]
  RETURN R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
  GETUPVAL R2 0
  LOADK R3 K0 ["Draw"]
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

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
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

PROTO_8:
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
  GETTABLEKS R5 R6 K10 ["Draw"]
  NAMECALL R2 R2 K11 ["report"]
  CALL R2 3 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_mouseDownConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_mouseUpConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_operation"]
  JUMPIFNOT R1 [+29]
  GETTABLEKS R1 R0 K3 ["_operation"]
  NAMECALL R1 R1 K4 ["isRunning"]
  CALL R1 1 1
  JUMPIFNOT R1 [+23]
  GETTABLEKS R1 R0 K5 ["_brushUsages"]
  ADDK R1 R1 K6 [1]
  SETTABLEKS R1 R0 K5 ["_brushUsages"]
  GETTABLEKS R2 R0 K3 ["_operation"]
  NAMECALL R2 R2 K7 ["getCurrentTimeTaken"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K3 ["_operation"]
  NAMECALL R3 R3 K8 ["getStepsTaken"]
  CALL R3 1 1
  DIV R1 R2 R3
  SETTABLEKS R1 R0 K9 ["_brushTime"]
  GETTABLEKS R1 R0 K3 ["_operation"]
  NAMECALL R1 R1 K10 ["destroy"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["deactivate"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["_brushTime"]
  JUMPIFNOT R2 [+46]
  GETTABLEKS R2 R0 K1 ["_brushTime"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+42]
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K3 ["BrushProperties"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["getBrushPayload"]
  MOVE R6 R1
  GETTABLEKS R7 R0 K1 ["_brushTime"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["Draw"]
  CALL R5 3 -1
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K7 ["MaterialProperties"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["getMaterialPayload"]
  MOVE R6 R1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["Draw"]
  CALL R5 2 -1
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K9 ["Usage"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Draw"]
  GETTABLEKS R6 R0 K10 ["_brushUsages"]
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 4 0
  LOADN R2 0
  SETTABLEKS R2 R0 K10 ["_brushUsages"]
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
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K14 ["Schemas"]
  GETTABLEKS R8 R9 K15 ["Settings"]
  GETTABLEKS R7 R8 K17 ["Material"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K18 ["Util"]
  GETTABLEKS R9 R10 K19 ["Operations"]
  GETTABLEKS R8 R9 K20 ["DrawOperation"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K21 ["Types"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K22 ["BrushMode"]
  GETTABLEKS R10 R8 K23 ["BrushSettings"]
  GETTABLEKS R11 R8 K24 ["BrushShape"]
  GETTABLEKS R12 R8 K25 ["Category"]
  GETTABLEKS R13 R8 K26 ["Gizmo"]
  GETTABLEKS R14 R8 K27 ["MaterialSettings"]
  GETTABLEKS R15 R8 K28 ["PivotPosition"]
  GETTABLEKS R16 R8 K29 ["Snapping"]
  GETTABLEKS R17 R8 K30 ["Tab"]
  GETTABLEKS R18 R8 K31 ["Tool"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K10 ["Src"]
  GETTABLEKS R21 R22 K18 ["Util"]
  GETTABLEKS R20 R21 K32 ["AnalyticsHelper"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K10 ["Src"]
  GETTABLEKS R22 R23 K18 ["Util"]
  GETTABLEKS R21 R22 K33 ["SettingsHelper"]
  CALL R20 1 1
  NEWTABLE R21 0 2
  DUPTABLE R22 K37 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R23 16 0
  GETTABLEKS R24 R10 K22 ["BrushMode"]
  GETTABLEKS R25 R9 K38 ["Add"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R10 K24 ["BrushShape"]
  GETTABLEKS R25 R11 K39 ["Sphere"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R10 K40 ["BrushSize"]
  DUPTABLE R25 K44 [{"Height", "Locked", "Size"}]
  LOADN R26 6
  SETTABLEKS R26 R25 K41 ["Height"]
  LOADB R26 1
  SETTABLEKS R26 R25 K42 ["Locked"]
  LOADN R26 6
  SETTABLEKS R26 R25 K43 ["Size"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R10 K28 ["PivotPosition"]
  GETTABLEKS R25 R15 K45 ["Center"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R10 K29 ["Snapping"]
  GETTABLEKS R25 R16 K46 ["Off"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R10 K47 ["State"]
  DUPTABLE R25 K49 [{"Position"}]
  LOADN R27 0
  LOADN R28 0
  LOADN R29 0
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K52 [Vector3.new]
  CALL R26 3 1
  SETTABLEKS R26 R25 K48 ["Position"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R10 K53 ["IgnoreWater"]
  LOADB R25 0
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R10 K54 ["IgnoreParts"]
  LOADB R25 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R10 K55 ["TemporarySmooth"]
  LOADB R25 0
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R10 K56 ["WaterAutofill"]
  LOADB R25 0
  SETTABLE R25 R23 R24
  SETTABLEKS R23 R22 K34 ["Defaults"]
  GETTABLEKS R23 R12 K23 ["BrushSettings"]
  SETTABLEKS R23 R22 K35 ["Id"]
  MOVE R24 R3
  CALL R24 0 1
  JUMPIFNOT R24 [+2]
  LOADNIL R23
  JUMP [+1]
  MOVE R23 R5
  SETTABLEKS R23 R22 K36 ["Schema"]
  DUPTABLE R23 K37 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R24 2 0
  GETTABLEKS R25 R14 K57 ["AutoMaterial"]
  LOADB R26 0
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R14 K58 ["SourceMaterial"]
  GETIMPORT R26 K61 [Enum.Material.Grass]
  SETTABLE R26 R24 R25
  SETTABLEKS R24 R23 K34 ["Defaults"]
  GETTABLEKS R24 R12 K27 ["MaterialSettings"]
  SETTABLEKS R24 R23 K35 ["Id"]
  MOVE R25 R3
  CALL R25 0 1
  JUMPIFNOT R25 [+2]
  LOADNIL R24
  JUMP [+1]
  MOVE R24 R6
  SETTABLEKS R24 R23 K36 ["Schema"]
  SETLIST R21 R22 2 [1]
  NEWTABLE R22 0 2
  DUPTABLE R23 K62 [{"Id", "Schema"}]
  GETTABLEKS R24 R13 K63 ["Plane"]
  SETTABLEKS R24 R23 K35 ["Id"]
  DUPTABLE R24 K65 [{"Type"}]
  GETTABLEKS R25 R13 K63 ["Plane"]
  SETTABLEKS R25 R24 K64 ["Type"]
  SETTABLEKS R24 R23 K36 ["Schema"]
  DUPTABLE R24 K62 [{"Id", "Schema"}]
  GETTABLEKS R25 R13 K16 ["Brush"]
  SETTABLEKS R25 R24 K35 ["Id"]
  DUPTABLE R25 K65 [{"Type"}]
  GETTABLEKS R26 R13 K16 ["Brush"]
  SETTABLEKS R26 R25 K64 ["Type"]
  SETTABLEKS R25 R24 K36 ["Schema"]
  SETLIST R22 R23 2 [1]
  GETTABLEKS R25 R18 K66 ["Draw"]
  GETTABLEKS R26 R17 K67 ["Edit"]
  MOVE R27 R21
  MOVE R28 R22
  NAMECALL R23 R2 K51 ["new"]
  CALL R23 5 1
  DUPCLOSURE R24 K68 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R5
  SETTABLEKS R24 R23 K69 ["init"]
  DUPCLOSURE R24 K70 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R24 R23 K71 ["saveForm"]
  DUPCLOSURE R24 K72 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R24 R23 K73 ["saveGizmos"]
  DUPCLOSURE R24 K74 [PROTO_5]
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R24 R23 K75 ["startOperation"]
  DUPCLOSURE R24 K76 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R18
  SETTABLEKS R24 R23 K77 ["activate"]
  DUPCLOSURE R24 K78 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R24 R23 K79 ["deactivate"]
  DUPCLOSURE R24 K80 [PROTO_10]
  CAPTURE VAL R19
  CAPTURE VAL R18
  SETTABLEKS R24 R23 K81 ["reportAnalytics"]
  RETURN R23 1
