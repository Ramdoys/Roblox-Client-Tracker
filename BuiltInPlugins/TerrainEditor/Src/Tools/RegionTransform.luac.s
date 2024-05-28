PROTO_0:
  GETUPVAL R2 0
  JUMPIFNOTEQ R2 R0 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Rotation"]
  GETIMPORT R3 K3 [CFrame.new]
  CALL R3 0 1
  JUMPIFEQ R2 R3 [+3]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["_services"]
  GETTABLEKS R2 R3 K5 ["Terrain"]
  NAMECALL R4 R1 K6 ["Clone"]
  CALL R4 1 1
  GETUPVAL R6 3
  GETUPVAL R7 1
  GETUPVAL R8 0
  LOADB R9 1
  CALL R6 3 1
  GETTABLEKS R5 R6 K7 ["Min"]
  GETUPVAL R8 4
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K8 ["TransformSettings"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K9 ["MergeEmpty"]
  GETTABLE R6 R7 R8
  NAMECALL R2 R2 K10 ["PasteRegion"]
  CALL R2 4 0
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["finishOperation"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["_operation"]
  NAMECALL R0 R0 K2 ["wasCanceled"]
  CALL R0 1 1
  JUMPIF R0 [+50]
  GETUPVAL R0 1
  NAMECALL R0 R0 K3 ["getPayload"]
  CALL R0 1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["_analytics"]
  LOADK R3 K5 ["RegionProperties"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["getRegionPayload"]
  MOVE R5 R0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["_operation"]
  NAMECALL R6 R6 K7 ["getTimeTaken"]
  CALL R6 1 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K8 ["Transform"]
  CALL R4 3 -1
  NAMECALL R1 R1 K9 ["report"]
  CALL R1 -1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["_analytics"]
  LOADK R3 K10 ["Usage"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["Transform"]
  LOADN R5 1
  NAMECALL R1 R1 K9 ["report"]
  CALL R1 4 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K11 ["_operationFinishedConnection"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K11 ["_operationFinishedConnection"]
  NAMECALL R1 R1 K12 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLEKS R2 R1 K11 ["_operationFinishedConnection"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["startOperation"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  NAMECALL R2 R0 K1 ["getPayload"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["SelectionSettings"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["Get"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["SelectionSettings"]
  GETTABLEKS R6 R0 K4 ["_pluginController"]
  GETTABLEKS R8 R0 K5 ["_persistentUserSettings"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K2 ["SelectionSettings"]
  GETTABLE R7 R8 R9
  CALL R4 3 1
  SETTABLE R4 R2 R3
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["TransformSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K7 ["TransformMode"]
  GETTABLE R3 R4 R5
  GETTABLEKS R4 R0 K8 ["_localization"]
  LOADK R6 K9 ["Operations"]
  LOADK R8 K10 ["%*Name"]
  MOVE R10 R3
  NAMECALL R8 R8 K11 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  NAMECALL R4 R4 K12 ["getText"]
  CALL R4 3 1
  GETTABLEKS R5 R0 K8 ["_localization"]
  LOADK R7 K9 ["Operations"]
  LOADK R9 K13 ["%*Description"]
  MOVE R11 R3
  NAMECALL R9 R9 K11 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  NAMECALL R5 R5 K12 ["getText"]
  CALL R5 3 1
  GETUPVAL R6 5
  MOVE R7 R4
  MOVE R8 R5
  GETTABLEKS R9 R0 K14 ["_services"]
  CALL R6 3 1
  SETTABLEKS R6 R0 K15 ["_operation"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["TransformSettings"]
  GETTABLE R7 R2 R8
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K16 ["Size"]
  GETTABLE R6 R7 R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["TransformSettings"]
  GETTABLE R8 R2 R9
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K17 ["Transform"]
  GETTABLE R7 R8 R9
  NEWCLOSURE R8 P0
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K18 ["Move"]
  JUMPIFNOTEQ R3 R9 [+22]
  MOVE R9 R8
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K2 ["SelectionSettings"]
  GETTABLE R11 R2 R12
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K16 ["Size"]
  GETTABLE R10 R11 R12
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K6 ["TransformSettings"]
  GETTABLE R12 R2 R13
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K19 ["TerrainRegion"]
  GETTABLE R11 R12 R13
  CALL R9 2 1
  JUMPIFNOT R9 [+58]
  RETURN R0 0
  JUMP [+56]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K20 ["Paste"]
  JUMPIFNOTEQ R3 R9 [+22]
  MOVE R9 R8
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K6 ["TransformSettings"]
  GETTABLE R11 R2 R12
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K21 ["TerrainRegionBufferSize"]
  GETTABLE R10 R11 R12
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K6 ["TransformSettings"]
  GETTABLE R12 R2 R13
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K22 ["TerrainRegionBuffer"]
  GETTABLE R11 R12 R13
  CALL R9 2 1
  JUMPIFNOT R9 [+32]
  RETURN R0 0
  JUMP [+30]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K23 ["Import"]
  JUMPIFEQ R3 R9 [+6]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K24 ["Duplicate"]
  JUMPIFNOTEQ R3 R9 [+21]
  MOVE R9 R8
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K6 ["TransformSettings"]
  GETTABLE R11 R2 R12
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K25 ["TerrainRegionSize"]
  GETTABLE R10 R11 R12
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K6 ["TransformSettings"]
  GETTABLE R12 R2 R13
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K19 ["TerrainRegion"]
  GETTABLE R11 R12 R13
  CALL R9 2 1
  JUMPIFNOT R9 [+1]
  RETURN R0 0
  GETTABLEKS R10 R0 K15 ["_operation"]
  GETTABLEKS R9 R10 K26 ["Finished"]
  NEWCLOSURE R11 P1
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  NAMECALL R9 R9 K27 ["Connect"]
  CALL R9 2 1
  SETTABLEKS R9 R0 K28 ["_operationFinishedConnection"]
  GETTABLEKS R9 R0 K15 ["_operation"]
  GETUPVAL R12 12
  GETTABLEKS R11 R12 K29 ["join"]
  DUPTABLE R12 K31 [{"Payload"}]
  SETTABLEKS R2 R12 K30 ["Payload"]
  MOVE R13 R1
  CALL R11 2 -1
  NAMECALL R9 R9 K32 ["start"]
  CALL R9 -1 0
  GETTABLEKS R9 R0 K33 ["OnOperationChanged"]
  NAMECALL R9 R9 K34 ["Fire"]
  CALL R9 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["TransformSettings"]
  NEWTABLE R5 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["Rotation"]
  DUPTABLE R7 K4 [{"Hidden"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K3 ["Hidden"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["Apply"]
  DUPTABLE R7 K9 [{"Hidden", "Label", "Schema", "Value"}]
  GETTABLEKS R11 R0 K10 ["_persistentUserSettings"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["TransformSettings"]
  GETTABLE R10 R11 R12
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["ForcePreview"]
  GETTABLE R9 R10 R11
  NOT R8 R9
  JUMPIFNOT R8 [+10]
  GETTABLEKS R10 R0 K10 ["_persistentUserSettings"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["TransformSettings"]
  GETTABLE R9 R10 R11
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K12 ["LiveEdit"]
  GETTABLE R8 R9 R10
  SETTABLEKS R8 R7 K3 ["Hidden"]
  LOADK R8 K13 [""]
  SETTABLEKS R8 R7 K6 ["Label"]
  DUPTABLE R8 K15 [{"OnClick"}]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K14 ["OnClick"]
  SETTABLEKS R8 R7 K7 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["Value"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K16 ["_overrides"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Get"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["SelectionSettings"]
  GETTABLEKS R3 R0 K2 ["_pluginController"]
  GETTABLEKS R5 R0 K3 ["_persistentUserSettings"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["SelectionSettings"]
  GETTABLE R4 R5 R6
  GETTABLEKS R6 R0 K4 ["_sessionUserSettings"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["SelectionSettings"]
  GETTABLE R5 R6 R7
  CALL R1 4 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Get"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["TransformSettings"]
  GETTABLEKS R4 R0 K2 ["_pluginController"]
  GETTABLEKS R6 R0 K3 ["_persistentUserSettings"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["TransformSettings"]
  GETTABLE R5 R6 R7
  GETTABLEKS R7 R0 K4 ["_sessionUserSettings"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["TransformSettings"]
  GETTABLE R6 R7 R8
  CALL R2 4 1
  RETURN R1 2

PROTO_6:
  GETUPVAL R5 0
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 1
  GETTABLEKS R7 R5 K0 ["Max"]
  GETTABLEKS R8 R5 K1 ["Min"]
  SUB R6 R7 R8
  GETTABLEKS R10 R6 K2 ["X"]
  GETTABLEKS R11 R6 K3 ["Y"]
  MUL R9 R10 R11
  GETTABLEKS R10 R6 K4 ["Z"]
  MUL R8 R9 R10
  GETUPVAL R9 1
  JUMPIFLT R9 R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+5]
  NAMECALL R8 R0 K5 ["hasError"]
  CALL R8 1 1
  JUMPIFNOT R8 [+1]
  LOADB R7 1
  JUMPIFNOT R3 [+34]
  JUMPIFNOT R4 [+33]
  GETUPVAL R8 0
  MOVE R9 R3
  MOVE R10 R4
  CALL R8 2 1
  GETTABLEKS R10 R8 K0 ["Max"]
  GETTABLEKS R11 R8 K1 ["Min"]
  SUB R9 R10 R11
  MOVE R10 R7
  JUMPIF R10 [+13]
  GETTABLEKS R13 R9 K2 ["X"]
  GETTABLEKS R14 R9 K3 ["Y"]
  MUL R12 R13 R14
  GETTABLEKS R13 R9 K4 ["Z"]
  MUL R11 R12 R13
  GETUPVAL R12 1
  JUMPIFLT R12 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  MOVE R7 R10
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+5]
  NAMECALL R10 R0 K5 ["hasError"]
  CALL R10 1 1
  JUMPIFNOT R10 [+1]
  LOADB R7 1
  NEWTABLE R10 1 0
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K6 ["TransformSettings"]
  NEWTABLE R12 1 0
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K7 ["ForcePreview"]
  SETTABLE R7 R12 R13
  SETTABLE R12 R10 R11
  NAMECALL R8 R0 K8 ["setPayload"]
  CALL R8 2 0
  RETURN R7 1

PROTO_7:
  NAMECALL R1 R0 K0 ["getValues"]
  CALL R1 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Size"]
  GETTABLE R3 R1 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Transform"]
  GETTABLE R4 R1 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["hasError"]
  MOVE R6 R0
  CALL R5 1 1
  JUMPIF R5 [+5]
  GETUPVAL R6 2
  MOVE R7 R4
  MOVE R8 R3
  CALL R6 2 1
  NOT R5 R6
  RETURN R5 1

PROTO_8:
  NAMECALL R1 R0 K0 ["hasError"]
  CALL R1 1 1
  GETTABLEKS R5 R0 K1 ["_overrides"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["TransformSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Apply"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K4 ["Disabled"]
  JUMPIFEQ R2 R1 [+18]
  GETTABLEKS R4 R0 K1 ["_overrides"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["TransformSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Apply"]
  GETTABLE R2 R3 R4
  SETTABLEKS R1 R2 K4 ["Disabled"]
  GETTABLEKS R2 R0 K5 ["OnInternalsChanged"]
  NAMECALL R2 R2 K6 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_live"]
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  NAMECALL R1 R0 K0 ["getValues"]
  CALL R1 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Size"]
  GETTABLE R3 R1 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["SnapToVoxels"]
  GETTABLE R4 R1 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["Transform"]
  GETTABLE R5 R1 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["TransformMode"]
  GETTABLE R6 R2 R7
  MOVE R9 R5
  MOVE R10 R3
  NAMECALL R7 R0 K5 ["checkSize"]
  CALL R7 3 0
  LOADNIL R7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["Move"]
  JUMPIFNOTEQ R6 R8 [+20]
  GETTABLEKS R9 R0 K7 ["_services"]
  GETTABLEKS R8 R9 K8 ["Terrain"]
  GETUPVAL R10 2
  MOVE R11 R5
  MOVE R12 R3
  LOADB R13 1
  CALL R10 3 -1
  NAMECALL R8 R8 K9 ["CopyRegion"]
  CALL R8 -1 1
  MOVE R7 R8
  GETTABLEKS R9 R0 K7 ["_services"]
  GETTABLEKS R8 R9 K10 ["CoreGui"]
  SETTABLEKS R8 R7 K11 ["Parent"]
  GETTABLEKS R8 R0 K12 ["_shortcutController"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K13 ["Apply"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  NAMECALL R8 R8 K14 ["Connect"]
  CALL R8 3 1
  SETTABLEKS R8 R0 K15 ["_applyConnection"]
  GETTABLEKS R8 R0 K12 ["_shortcutController"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K13 ["Apply"]
  NAMECALL R8 R8 K16 ["Enable"]
  CALL R8 2 0
  NEWTABLE R10 1 0
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K17 ["TransformSettings"]
  NEWTABLE R12 4 0
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K1 ["Size"]
  SETTABLE R3 R12 R13
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K2 ["SnapToVoxels"]
  SETTABLE R4 R12 R13
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K3 ["Transform"]
  SETTABLE R5 R12 R13
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K18 ["TerrainRegion"]
  SETTABLE R7 R12 R13
  SETTABLE R12 R10 R11
  NAMECALL R8 R0 K19 ["setPayload"]
  CALL R8 2 0
  GETUPVAL R8 2
  MOVE R9 R5
  MOVE R10 R3
  CALL R8 2 1
  SETTABLEKS R8 R0 K20 ["_region"]
  GETUPVAL R8 2
  MOVE R9 R5
  MOVE R10 R3
  CALL R8 2 1
  SETTABLEKS R8 R0 K21 ["_regionOriginal"]
  GETTABLEKS R9 R0 K7 ["_services"]
  GETTABLEKS R8 R9 K8 ["Terrain"]
  GETTABLEKS R10 R0 K20 ["_region"]
  NAMECALL R8 R8 K9 ["CopyRegion"]
  CALL R8 2 1
  SETTABLEKS R8 R0 K22 ["_terrainBackup"]
  GETTABLEKS R9 R0 K7 ["_services"]
  GETTABLEKS R8 R9 K8 ["Terrain"]
  GETTABLEKS R10 R0 K20 ["_region"]
  NAMECALL R8 R8 K9 ["CopyRegion"]
  CALL R8 2 1
  SETTABLEKS R8 R0 K23 ["_terrainOriginal"]
  GETTABLEKS R8 R0 K24 ["_analytics"]
  LOADK R10 K25 ["Activated"]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K3 ["Transform"]
  NAMECALL R8 R8 K26 ["report"]
  CALL R8 3 0
  NAMECALL R8 R0 K27 ["updateValues"]
  CALL R8 1 0
  GETUPVAL R8 7
  CALL R8 0 1
  JUMPIFNOT R8 [+5]
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K28 ["activate"]
  MOVE R9 R0
  CALL R8 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["gizmos"]
  MOVE R2 R0
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K1 ["Id"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["Region"]
  JUMPIFNOTEQ R7 R8 [+22]
  GETTABLEKS R7 R6 K3 ["Value"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["SelectionSettings"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["Get"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["SelectionSettings"]
  GETTABLEKS R11 R0 K6 ["_pluginController"]
  GETTABLEKS R13 R0 K7 ["_persistentUserSettings"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K4 ["SelectionSettings"]
  GETTABLE R12 R13 R14
  CALL R9 3 1
  SETTABLE R9 R7 R8
  FORGLOOP R2 2 [-29]
  RETURN R1 1

PROTO_12:
  GETTABLEKS R1 R0 K0 ["_operation"]
  RETURN R1 1

PROTO_13:
  GETTABLEKS R1 R0 K0 ["_note"]
  RETURN R1 1

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["deactivate"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_applyConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_shortcutController"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Apply"]
  NAMECALL R1 R1 K5 ["Disable"]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["Set"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K7 ["TransformSettings"]
  GETTABLEKS R3 R0 K8 ["_pluginController"]
  DUPTABLE R4 K10 [{"TransformMode"}]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K11 ["Move"]
  SETTABLEKS R5 R4 K9 ["TransformMode"]
  CALL R1 3 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveGizmos"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  NAMECALL R2 R0 K1 ["updateValues"]
  CALL R2 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveForm"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  NAMECALL R2 R0 K1 ["updateValues"]
  CALL R2 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFormChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  NAMECALL R1 R0 K0 ["getValues"]
  CALL R1 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["ForcePreview"]
  GETTABLE R4 R2 R5
  NOT R3 R4
  JUMPIFNOT R3 [+4]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["LiveEdit"]
  GETTABLE R3 R2 R4
  GETTABLEKS R7 R0 K3 ["_overrides"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K4 ["TransformSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["Apply"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K6 ["Hidden"]
  JUMPIFEQ R4 R3 [+31]
  JUMPIFNOT R3 [+2]
  LOADNIL R4
  JUMP [+3]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["Transform"]
  SETTABLEKS R4 R0 K8 ["_note"]
  GETTABLEKS R4 R0 K9 ["OnNoteChanged"]
  NAMECALL R4 R4 K10 ["Fire"]
  CALL R4 1 0
  GETTABLEKS R6 R0 K3 ["_overrides"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["TransformSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["Apply"]
  GETTABLE R4 R5 R6
  SETTABLEKS R3 R4 K6 ["Hidden"]
  GETIMPORT R4 K13 [task.spawn]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CALL R4 1 0
  JUMPIFNOT R3 [+32]
  GETTABLEKS R4 R0 K14 ["_live"]
  JUMPIF R4 [+60]
  GETTABLEKS R5 R0 K15 ["_services"]
  GETTABLEKS R4 R5 K16 ["Terrain"]
  GETTABLEKS R6 R0 K17 ["_terrainOriginal"]
  GETTABLEKS R8 R0 K18 ["_regionOriginal"]
  GETTABLEKS R7 R8 K19 ["Min"]
  LOADB R8 1
  NAMECALL R4 R4 K20 ["PasteRegion"]
  CALL R4 4 0
  GETTABLEKS R5 R0 K15 ["_services"]
  GETTABLEKS R4 R5 K16 ["Terrain"]
  GETTABLEKS R6 R0 K21 ["_terrainBackup"]
  GETTABLEKS R8 R0 K22 ["_region"]
  GETTABLEKS R7 R8 K19 ["Min"]
  LOADB R8 1
  NAMECALL R4 R4 K20 ["PasteRegion"]
  CALL R4 4 0
  JUMP [+31]
  GETTABLEKS R4 R0 K14 ["_live"]
  JUMPIFNOT R4 [+28]
  GETTABLEKS R5 R0 K15 ["_services"]
  GETTABLEKS R4 R5 K16 ["Terrain"]
  GETTABLEKS R6 R0 K17 ["_terrainOriginal"]
  GETTABLEKS R8 R0 K18 ["_regionOriginal"]
  GETTABLEKS R7 R8 K19 ["Min"]
  LOADB R8 1
  NAMECALL R4 R4 K20 ["PasteRegion"]
  CALL R4 4 0
  GETTABLEKS R5 R0 K15 ["_services"]
  GETTABLEKS R4 R5 K16 ["Terrain"]
  GETTABLEKS R6 R0 K21 ["_terrainBackup"]
  GETTABLEKS R8 R0 K22 ["_region"]
  GETTABLEKS R7 R8 K19 ["Min"]
  LOADB R8 1
  NAMECALL R4 R4 K20 ["PasteRegion"]
  CALL R4 4 0
  SETTABLEKS R3 R0 K14 ["_live"]
  GETTABLEKS R5 R0 K14 ["_live"]
  NOT R4 R5
  RETURN R4 1

PROTO_19:
  NAMECALL R1 R0 K0 ["getValues"]
  CALL R1 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Size"]
  GETTABLE R3 R1 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Transform"]
  GETTABLE R4 R1 R5
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["Size"]
  GETTABLE R5 R2 R6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["Transform"]
  GETTABLE R6 R2 R7
  MOVE R9 R4
  MOVE R10 R3
  MOVE R11 R6
  MOVE R12 R5
  NAMECALL R7 R0 K3 ["checkSize"]
  CALL R7 5 0
  NAMECALL R7 R0 K4 ["updateMode"]
  CALL R7 1 1
  JUMPIFNOT R7 [+1]
  RETURN R0 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["OperationSource"]
  GETTABLE R7 R2 R8
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["History"]
  JUMPIFNOTEQ R7 R8 [+2]
  RETURN R0 0
  MOVE R10 R1
  MOVE R11 R2
  NAMECALL R8 R0 K7 ["transform"]
  CALL R8 3 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Size"]
  GETTABLE R3 R2 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["Transform"]
  GETTABLE R4 R2 R5
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["Size"]
  GETTABLE R5 R1 R6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["Transform"]
  GETTABLE R6 R1 R7
  GETUPVAL R7 2
  MOVE R8 R4
  MOVE R9 R3
  CALL R7 2 1
  GETIMPORT R8 K4 [os.clock]
  CALL R8 0 1
  GETTABLEKS R10 R0 K5 ["_services"]
  GETTABLEKS R9 R10 K6 ["Terrain"]
  GETTABLEKS R11 R0 K7 ["_terrainBackup"]
  GETTABLEKS R13 R0 K8 ["_region"]
  GETTABLEKS R12 R13 K9 ["Min"]
  LOADB R13 1
  NAMECALL R9 R9 K10 ["PasteRegion"]
  CALL R9 4 0
  GETTABLEKS R10 R0 K5 ["_services"]
  GETTABLEKS R9 R10 K6 ["Terrain"]
  MOVE R11 R7
  NAMECALL R9 R9 K11 ["CopyRegion"]
  CALL R9 2 1
  SETTABLEKS R9 R0 K7 ["_terrainBackup"]
  SETTABLEKS R7 R0 K8 ["_region"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K12 ["MergeEmpty"]
  GETTABLE R9 R2 R10
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K13 ["TransformMode"]
  GETTABLE R10 R2 R11
  LOADNIL R11
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K14 ["Move"]
  JUMPIFNOTEQ R10 R12 [+33]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K15 ["TerrainRegion"]
  GETTABLE R12 R2 R13
  NAMECALL R12 R12 K16 ["Clone"]
  CALL R12 1 1
  MOVE R11 R12
  JUMPIFNOT R9 [+11]
  GETTABLEKS R13 R0 K5 ["_services"]
  GETTABLEKS R12 R13 K6 ["Terrain"]
  MOVE R14 R4
  MOVE R15 R3
  GETIMPORT R16 K20 [Enum.Material.Air]
  NAMECALL R12 R12 K21 ["SetMaterialInTransform"]
  CALL R12 4 0
  GETTABLEKS R13 R0 K5 ["_services"]
  GETTABLEKS R12 R13 K6 ["Terrain"]
  MOVE R14 R6
  MOVE R15 R5
  GETIMPORT R16 K20 [Enum.Material.Air]
  NAMECALL R12 R12 K21 ["SetMaterialInTransform"]
  CALL R12 4 0
  JUMP [+58]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K22 ["Paste"]
  JUMPIFNOTEQ R10 R12 [+22]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K23 ["TerrainRegionBuffer"]
  GETTABLE R12 R2 R13
  NAMECALL R12 R12 K16 ["Clone"]
  CALL R12 1 1
  MOVE R11 R12
  JUMPIFNOT R9 [+44]
  GETTABLEKS R13 R0 K5 ["_services"]
  GETTABLEKS R12 R13 K6 ["Terrain"]
  MOVE R14 R4
  MOVE R15 R3
  GETIMPORT R16 K20 [Enum.Material.Air]
  NAMECALL R12 R12 K21 ["SetMaterialInTransform"]
  CALL R12 4 0
  JUMP [+32]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K24 ["Duplicate"]
  JUMPIFEQ R10 R12 [+6]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K25 ["Import"]
  JUMPIFNOTEQ R10 R12 [+22]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K15 ["TerrainRegion"]
  GETTABLE R12 R2 R13
  NAMECALL R12 R12 K16 ["Clone"]
  CALL R12 1 1
  MOVE R11 R12
  JUMPIFNOT R9 [+13]
  GETTABLEKS R13 R0 K5 ["_services"]
  GETTABLEKS R12 R13 K6 ["Terrain"]
  MOVE R14 R4
  MOVE R15 R3
  GETIMPORT R16 K20 [Enum.Material.Air]
  NAMECALL R12 R12 K21 ["SetMaterialInTransform"]
  CALL R12 4 0
  JUMP [+1]
  RETURN R0 0
  GETUPVAL R12 4
  GETTABLEKS R14 R0 K5 ["_services"]
  GETTABLEKS R13 R14 K6 ["Terrain"]
  MOVE R14 R11
  MOVE R15 R4
  MOVE R16 R3
  LOADB R17 0
  GETTABLEKS R18 R4 K26 ["Rotation"]
  GETTABLEKS R19 R6 K26 ["Rotation"]
  JUMPIFNOTEQ R18 R19 [+5]
  JUMPIFEQ R3 R5 [+2]
  LOADB R17 0 +1
  LOADB R17 1
  CALL R12 5 0
  GETIMPORT R13 K4 [os.clock]
  CALL R13 0 1
  SUB R12 R13 R8
  SETTABLEKS R12 R0 K27 ["_time"]
  GETUPVAL R12 5
  CALL R12 0 1
  JUMPIFNOT R12 [+22]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K28 ["NormalizeRegionTimer"]
  MOVE R13 R8
  MOVE R14 R3
  CALL R12 2 1
  GETTABLEKS R15 R0 K30 ["_totalTime"]
  ORK R14 R15 K29 [0]
  ADD R13 R14 R12
  SETTABLEKS R13 R0 K30 ["_totalTime"]
  GETTABLEKS R14 R0 K31 ["_count"]
  JUMPIFNOT R14 [+4]
  GETTABLEKS R14 R0 K31 ["_count"]
  ADDK R13 R14 K32 [1]
  JUMP [+1]
  LOADN R13 1
  SETTABLEKS R13 R0 K31 ["_count"]
  GETIMPORT R13 K4 [os.clock]
  CALL R13 0 1
  SUB R12 R13 R8
  LOADN R13 5
  JUMPIFNOTLT R13 R12 [+17]
  NEWTABLE R14 1 0
  GETUPVAL R16 7
  GETTABLEKS R15 R16 K33 ["TransformSettings"]
  NEWTABLE R16 1 0
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K34 ["LiveEdit"]
  LOADB R18 0
  SETTABLE R18 R16 R17
  SETTABLE R16 R14 R15
  NAMECALL R12 R0 K35 ["setPayload"]
  CALL R12 2 0
  RETURN R0 0

PROTO_21:
  NAMECALL R1 R0 K0 ["getValues"]
  CALL R1 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["ForcePreview"]
  GETTABLE R4 R2 R5
  NOT R3 R4
  JUMPIFNOT R3 [+4]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["LiveEdit"]
  GETTABLE R3 R2 R4
  JUMPIFNOT R3 [+52]
  GETTABLEKS R4 R0 K3 ["_time"]
  JUMPIFNOT R4 [+49]
  NAMECALL R4 R0 K4 ["getPayload"]
  CALL R4 1 1
  GETTABLEKS R5 R0 K5 ["_analytics"]
  LOADK R7 K6 ["RegionProperties"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["getRegionPayload"]
  MOVE R9 R4
  GETTABLEKS R10 R0 K3 ["_time"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K8 ["Transform"]
  CALL R8 3 -1
  NAMECALL R5 R5 K9 ["report"]
  CALL R5 -1 0
  GETTABLEKS R5 R0 K5 ["_analytics"]
  LOADK R7 K10 ["Usage"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["Transform"]
  LOADN R9 1
  NAMECALL R5 R5 K9 ["report"]
  CALL R5 4 0
  GETUPVAL R5 3
  CALL R5 0 1
  JUMPIFNOT R5 [+14]
  GETTABLEKS R5 R0 K5 ["_analytics"]
  LOADK R7 K11 ["Performance"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["Transform"]
  GETTABLEKS R10 R0 K12 ["_totalTime"]
  GETTABLEKS R11 R0 K13 ["_count"]
  DIV R9 R10 R11
  NAMECALL R5 R5 K9 ["report"]
  CALL R5 4 0
  LOADNIL R5
  SETTABLEKS R5 R0 K3 ["_time"]
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
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["Category"]
  GETTABLEKS R5 R3 K13 ["Gizmo"]
  GETTABLEKS R6 R3 K14 ["Note"]
  GETTABLEKS R7 R3 K15 ["OperationSource"]
  GETTABLEKS R8 R3 K16 ["PluginAction"]
  GETTABLEKS R9 R3 K17 ["SelectionSettings"]
  GETTABLEKS R10 R3 K18 ["TransformMode"]
  GETTABLEKS R11 R3 K19 ["TransformSettings"]
  GETTABLEKS R12 R3 K20 ["Tab"]
  GETTABLEKS R13 R3 K21 ["Tool"]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K22 ["Util"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R14 K23 ["AnalyticsHelper"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R14 K24 ["ApplyTransform"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R14 K25 ["ConvertTransformToRegion"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R14 K26 ["getWithinTerrainBounds"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R14 K27 ["SettingsHelper"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R14 K28 ["Operations"]
  GETTABLEKS R21 R22 K29 ["TransformOperation"]
  CALL R20 1 1
  GETIMPORT R21 K31 [game]
  LOADK R23 K32 ["SmoothTerrainMaxCppRegion"]
  NAMECALL R21 R21 K33 ["GetFastInt"]
  CALL R21 2 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K10 ["Src"]
  GETTABLEKS R24 R25 K34 ["Flags"]
  GETTABLEKS R23 R24 K35 ["getFFlagTerrainEditorTimeStatistic"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K10 ["Src"]
  GETTABLEKS R25 R26 K34 ["Flags"]
  GETTABLEKS R24 R25 K36 ["getFFlagTerrainEditorErrorHandling"]
  CALL R23 1 1
  NEWTABLE R24 0 1
  DUPTABLE R25 K39 [{"Defaults", "Id"}]
  NEWTABLE R26 4 0
  GETTABLEKS R27 R11 K40 ["MergeEmpty"]
  LOADB R28 0
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R11 K41 ["LiveEdit"]
  LOADB R28 1
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R11 K42 ["ForcePreview"]
  LOADB R28 0
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R11 K18 ["TransformMode"]
  GETTABLEKS R28 R10 K43 ["Move"]
  SETTABLE R28 R26 R27
  SETTABLEKS R26 R25 K37 ["Defaults"]
  GETTABLEKS R26 R4 K19 ["TransformSettings"]
  SETTABLEKS R26 R25 K38 ["Id"]
  SETLIST R24 R25 1 [1]
  NEWTABLE R25 0 1
  DUPTABLE R26 K45 [{"Id", "Schema"}]
  GETTABLEKS R27 R5 K46 ["Region"]
  SETTABLEKS R27 R26 K38 ["Id"]
  DUPTABLE R27 K51 [{"Type", "Color", "Wireframe", "Rotation"}]
  GETTABLEKS R28 R5 K46 ["Region"]
  SETTABLEKS R28 R27 K47 ["Type"]
  GETIMPORT R28 K54 [Color3.new]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 1
  CALL R28 3 1
  SETTABLEKS R28 R27 K48 ["Color"]
  LOADB R28 1
  SETTABLEKS R28 R27 K49 ["Wireframe"]
  LOADB R28 1
  SETTABLEKS R28 R27 K50 ["Rotation"]
  SETTABLEKS R27 R26 K44 ["Schema"]
  SETLIST R25 R26 1 [1]
  GETTABLEKS R28 R13 K55 ["Transform"]
  GETTABLEKS R29 R12 K56 ["Edit"]
  MOVE R30 R24
  MOVE R31 R25
  NAMECALL R26 R2 K53 ["new"]
  CALL R26 5 1
  DUPCLOSURE R27 K57 [PROTO_2]
  CAPTURE VAL R23
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R20
  CAPTURE VAL R17
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R22
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R1
  SETTABLEKS R27 R26 K58 ["startOperation"]
  DUPCLOSURE R27 K59 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R11
  SETTABLEKS R27 R26 K60 ["init"]
  DUPCLOSURE R27 K61 [PROTO_5]
  CAPTURE VAL R19
  CAPTURE VAL R4
  SETTABLEKS R27 R26 K62 ["getValues"]
  DUPCLOSURE R27 K63 [PROTO_6]
  CAPTURE VAL R17
  CAPTURE VAL R21
  CAPTURE VAL R23
  CAPTURE VAL R4
  CAPTURE VAL R11
  SETTABLEKS R27 R26 K64 ["checkSize"]
  MOVE R27 R23
  CALL R27 0 1
  JUMPIFNOT R27 [+11]
  DUPCLOSURE R27 K65 [PROTO_7]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R18
  SETTABLEKS R27 R26 K66 ["hasError"]
  DUPCLOSURE R27 K67 [PROTO_8]
  CAPTURE VAL R4
  CAPTURE VAL R11
  SETTABLEKS R27 R26 K68 ["setDisabledState"]
  DUPCLOSURE R27 K69 [PROTO_10]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R17
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R23
  CAPTURE VAL R2
  SETTABLEKS R27 R26 K70 ["activate"]
  DUPCLOSURE R27 K71 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R19
  SETTABLEKS R27 R26 K72 ["gizmos"]
  DUPCLOSURE R27 K73 [PROTO_12]
  SETTABLEKS R27 R26 K74 ["operation"]
  DUPCLOSURE R27 K75 [PROTO_13]
  SETTABLEKS R27 R26 K76 ["note"]
  DUPCLOSURE R27 K77 [PROTO_14]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R19
  CAPTURE VAL R4
  CAPTURE VAL R10
  SETTABLEKS R27 R26 K78 ["deactivate"]
  DUPCLOSURE R27 K79 [PROTO_15]
  CAPTURE VAL R2
  SETTABLEKS R27 R26 K80 ["saveGizmos"]
  DUPCLOSURE R27 K81 [PROTO_16]
  CAPTURE VAL R2
  SETTABLEKS R27 R26 K82 ["saveForm"]
  DUPCLOSURE R27 K83 [PROTO_18]
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R27 R26 K84 ["updateMode"]
  DUPCLOSURE R27 K85 [PROTO_19]
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R7
  SETTABLEKS R27 R26 K86 ["updateValues"]
  DUPCLOSURE R27 K87 [PROTO_20]
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R17
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R22
  CAPTURE VAL R15
  CAPTURE VAL R4
  SETTABLEKS R27 R26 K88 ["transform"]
  DUPCLOSURE R27 K89 [PROTO_21]
  CAPTURE VAL R11
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R22
  SETTABLEKS R27 R26 K90 ["reportAnalytics"]
  RETURN R26 1
