PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K1 ["wasCanceled"]
  CALL R0 1 1
  JUMPIF R0 [+61]
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["getPayload"]
  CALL R0 1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["_analytics"]
  LOADK R3 K4 ["RegionProperties"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["getRegionPayload"]
  MOVE R5 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["_operation"]
  NAMECALL R6 R6 K6 ["getTimeTaken"]
  CALL R6 1 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["Fill"]
  CALL R4 3 -1
  NAMECALL R1 R1 K8 ["report"]
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["_analytics"]
  LOADK R3 K9 ["MaterialProperties"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["getMaterialPayload"]
  GETUPVAL R5 3
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["Fill"]
  CALL R4 2 -1
  NAMECALL R1 R1 K8 ["report"]
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["_analytics"]
  LOADK R3 K11 ["Usage"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["Fill"]
  LOADN R5 1
  NAMECALL R1 R1 K8 ["report"]
  CALL R1 4 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K12 ["_operationFinishedConnection"]
  NAMECALL R1 R1 K13 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K12 ["_operationFinishedConnection"]
  RETURN R0 0

PROTO_1:
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["MaterialSettings"]
  GETTABLE R5 R2 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["FillMode"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["Fill"]
  JUMPIFNOTEQ R4 R5 [+28]
  GETTABLEKS R3 R0 K4 ["_localization"]
  LOADK R5 K5 ["Operations"]
  LOADK R6 K6 ["FillDescription"]
  DUPTABLE R7 K8 [{"material"}]
  GETTABLEKS R8 R0 K4 ["_localization"]
  LOADK R10 K9 ["Materials"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["MaterialSettings"]
  GETTABLE R13 R2 R14
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K10 ["SourceMaterial"]
  GETTABLE R12 R13 R14
  GETTABLEKS R11 R12 K11 ["Name"]
  NAMECALL R8 R8 K12 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["material"]
  NAMECALL R3 R3 K12 ["getText"]
  CALL R3 4 1
  JUMP [+44]
  GETTABLEKS R3 R0 K4 ["_localization"]
  LOADK R5 K5 ["Operations"]
  LOADK R6 K13 ["ReplaceDescription"]
  DUPTABLE R7 K16 [{"source", "target"}]
  GETTABLEKS R8 R0 K4 ["_localization"]
  LOADK R10 K9 ["Materials"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["MaterialSettings"]
  GETTABLE R13 R2 R14
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K10 ["SourceMaterial"]
  GETTABLE R12 R13 R14
  GETTABLEKS R11 R12 K11 ["Name"]
  NAMECALL R8 R8 K12 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K14 ["source"]
  GETTABLEKS R8 R0 K4 ["_localization"]
  LOADK R10 K9 ["Materials"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["MaterialSettings"]
  GETTABLE R13 R2 R14
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K17 ["TargetMaterial"]
  GETTABLE R12 R13 R14
  GETTABLEKS R11 R12 K11 ["Name"]
  NAMECALL R8 R8 K12 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["target"]
  NAMECALL R3 R3 K12 ["getText"]
  CALL R3 4 1
  GETUPVAL R4 3
  GETTABLEKS R5 R0 K4 ["_localization"]
  LOADK R7 K5 ["Operations"]
  LOADK R9 K18 ["%*Name"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K1 ["MaterialSettings"]
  GETTABLE R12 R2 R13
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K2 ["FillMode"]
  GETTABLE R11 R12 R13
  NAMECALL R9 R9 K19 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  NAMECALL R5 R5 K12 ["getText"]
  CALL R5 3 1
  MOVE R6 R3
  GETTABLEKS R7 R0 K20 ["_services"]
  CALL R4 3 1
  SETTABLEKS R4 R0 K21 ["_operation"]
  GETUPVAL R4 4
  CALL R4 0 1
  JUMPIFNOT R4 [+14]
  GETTABLEKS R5 R0 K21 ["_operation"]
  GETTABLEKS R4 R5 K22 ["Finished"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  NAMECALL R4 R4 K23 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K24 ["_operationFinishedConnection"]
  GETTABLEKS R4 R0 K21 ["_operation"]
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K25 ["join"]
  DUPTABLE R7 K27 [{"Payload"}]
  SETTABLEKS R2 R7 K26 ["Payload"]
  MOVE R8 R1
  CALL R6 2 -1
  NAMECALL R4 R4 K28 ["start"]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K29 ["OnOperationChanged"]
  NAMECALL R4 R4 K30 ["Fire"]
  CALL R4 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["TransformSettings"]
  NEWTABLE R5 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["SourceMaterial"]
  DUPTABLE R7 K4 [{"Schema"}]
  DUPTABLE R8 K6 [{"AllowAir"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K5 ["AllowAir"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["TargetMaterial"]
  DUPTABLE R7 K4 [{"Schema"}]
  DUPTABLE R8 K6 [{"AllowAir"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K5 ["AllowAir"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["MaterialSettings"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["Apply"]
  DUPTABLE R7 K13 [{"Hidden", "Label", "Schema", "Value"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K10 ["Hidden"]
  LOADK R8 K14 [""]
  SETTABLEKS R8 R7 K11 ["Label"]
  DUPTABLE R8 K16 [{"OnClick"}]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K15 ["OnClick"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K12 ["Value"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K17 ["_overrides"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_operation"]
  RETURN R1 1

PROTO_5:
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
  GETTABLEKS R4 R5 K3 ["Fill"]
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
  GETTABLEKS R6 R7 K16 ["Material"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K14 ["Schemas"]
  GETTABLEKS R8 R9 K15 ["Settings"]
  GETTABLEKS R7 R8 K17 ["Selection"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K18 ["Types"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K19 ["Category"]
  GETTABLEKS R9 R7 K20 ["FillMode"]
  GETTABLEKS R10 R7 K21 ["Gizmo"]
  GETTABLEKS R11 R7 K22 ["MaterialSettings"]
  GETTABLEKS R12 R7 K23 ["Tab"]
  GETTABLEKS R13 R7 K24 ["Tool"]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K25 ["Util"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R14 K26 ["AnalyticsHelper"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R14 K27 ["Operations"]
  GETTABLEKS R17 R18 K28 ["FillOperation"]
  CALL R16 1 1
  NEWTABLE R17 0 2
  DUPTABLE R18 K32 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R19 0 0
  SETTABLEKS R19 R18 K29 ["Defaults"]
  GETTABLEKS R19 R8 K33 ["SelectionSettings"]
  SETTABLEKS R19 R18 K30 ["Id"]
  MOVE R20 R3
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+1]
  MOVE R19 R6
  SETTABLEKS R19 R18 K31 ["Schema"]
  DUPTABLE R19 K32 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R20 4 0
  GETTABLEKS R21 R11 K20 ["FillMode"]
  GETTABLEKS R22 R9 K34 ["Fill"]
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R11 K35 ["SourceMaterial"]
  GETIMPORT R22 K38 [Enum.Material.Grass]
  SETTABLE R22 R20 R21
  GETTABLEKS R21 R11 K39 ["TargetMaterial"]
  GETIMPORT R22 K38 [Enum.Material.Grass]
  SETTABLE R22 R20 R21
  SETTABLEKS R20 R19 K29 ["Defaults"]
  GETTABLEKS R20 R8 K22 ["MaterialSettings"]
  SETTABLEKS R20 R19 K30 ["Id"]
  MOVE R21 R3
  CALL R21 0 1
  JUMPIFNOT R21 [+2]
  LOADNIL R20
  JUMP [+1]
  MOVE R20 R5
  SETTABLEKS R20 R19 K31 ["Schema"]
  SETLIST R17 R18 2 [1]
  NEWTABLE R18 0 1
  DUPTABLE R19 K40 [{"Id", "Schema"}]
  GETTABLEKS R20 R10 K41 ["Region"]
  SETTABLEKS R20 R19 K30 ["Id"]
  DUPTABLE R20 K45 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R21 R10 K41 ["Region"]
  SETTABLEKS R21 R20 K42 ["Type"]
  LOADB R21 1
  SETTABLEKS R21 R20 K43 ["Wireframe"]
  LOADB R21 0
  SETTABLEKS R21 R20 K44 ["Rotation"]
  SETTABLEKS R20 R19 K31 ["Schema"]
  SETLIST R18 R19 1 [1]
  GETTABLEKS R21 R13 K34 ["Fill"]
  GETTABLEKS R22 R12 K46 ["Edit"]
  MOVE R23 R17
  MOVE R24 R18
  NAMECALL R19 R2 K47 ["new"]
  CALL R19 5 1
  DUPCLOSURE R20 K48 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R16
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R1
  SETTABLEKS R20 R19 K49 ["startOperation"]
  DUPCLOSURE R20 K50 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R11
  SETTABLEKS R20 R19 K51 ["init"]
  DUPCLOSURE R20 K52 [PROTO_4]
  SETTABLEKS R20 R19 K53 ["operation"]
  DUPCLOSURE R20 K54 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLEKS R20 R19 K55 ["activate"]
  RETURN R19 1
