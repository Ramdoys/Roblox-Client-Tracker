PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["finishOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["startOperation"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  NAMECALL R2 R0 K1 ["getPayload"]
  CALL R2 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["MaterialSettings"]
  GETTABLE R5 R2 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["FillMode"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["Fill"]
  JUMPIFNOTEQ R4 R5 [+28]
  GETTABLEKS R3 R0 K5 ["_localization"]
  LOADK R5 K6 ["Operations"]
  LOADK R6 K7 ["FillDescription"]
  DUPTABLE R7 K9 [{"material"}]
  GETTABLEKS R8 R0 K5 ["_localization"]
  LOADK R10 K10 ["Materials"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K2 ["MaterialSettings"]
  GETTABLE R13 R2 R14
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K11 ["SourceMaterial"]
  GETTABLE R12 R13 R14
  GETTABLEKS R11 R12 K12 ["Name"]
  NAMECALL R8 R8 K13 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K8 ["material"]
  NAMECALL R3 R3 K13 ["getText"]
  CALL R3 4 1
  JUMP [+44]
  GETTABLEKS R3 R0 K5 ["_localization"]
  LOADK R5 K6 ["Operations"]
  LOADK R6 K14 ["ReplaceDescription"]
  DUPTABLE R7 K17 [{"source", "target"}]
  GETTABLEKS R8 R0 K5 ["_localization"]
  LOADK R10 K10 ["Materials"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K2 ["MaterialSettings"]
  GETTABLE R13 R2 R14
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K11 ["SourceMaterial"]
  GETTABLE R12 R13 R14
  GETTABLEKS R11 R12 K12 ["Name"]
  NAMECALL R8 R8 K13 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["source"]
  GETTABLEKS R8 R0 K5 ["_localization"]
  LOADK R10 K10 ["Materials"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K2 ["MaterialSettings"]
  GETTABLE R13 R2 R14
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K18 ["TargetMaterial"]
  GETTABLE R12 R13 R14
  GETTABLEKS R11 R12 K12 ["Name"]
  NAMECALL R8 R8 K13 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K16 ["target"]
  NAMECALL R3 R3 K13 ["getText"]
  CALL R3 4 1
  GETUPVAL R4 4
  GETTABLEKS R5 R0 K5 ["_localization"]
  LOADK R7 K6 ["Operations"]
  LOADK R9 K19 ["%*Name"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K2 ["MaterialSettings"]
  GETTABLE R12 R2 R13
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K3 ["FillMode"]
  GETTABLE R11 R12 R13
  NAMECALL R9 R9 K20 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  NAMECALL R5 R5 K13 ["getText"]
  CALL R5 3 1
  MOVE R6 R3
  GETTABLEKS R7 R0 K21 ["_services"]
  CALL R4 3 1
  SETTABLEKS R4 R0 K22 ["_operation"]
  GETTABLEKS R5 R0 K22 ["_operation"]
  GETTABLEKS R4 R5 K23 ["Finished"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  NAMECALL R4 R4 K24 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K25 ["_operationFinishedConnection"]
  GETTABLEKS R4 R0 K22 ["_operation"]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K26 ["join"]
  DUPTABLE R7 K28 [{"Payload"}]
  SETTABLEKS R2 R7 K27 ["Payload"]
  MOVE R8 R1
  CALL R6 2 -1
  NAMECALL R4 R4 K29 ["start"]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K30 ["OnOperationChanged"]
  NAMECALL R4 R4 K31 ["Fire"]
  CALL R4 1 0
  RETURN R0 0

PROTO_2:
  NAMECALL R1 R0 K0 ["hasError"]
  CALL R1 1 1
  GETTABLEKS R5 R0 K1 ["_overrides"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["MaterialSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Apply"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K4 ["Disabled"]
  JUMPIFEQ R2 R1 [+18]
  GETTABLEKS R4 R0 K1 ["_overrides"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["MaterialSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Apply"]
  GETTABLE R2 R3 R4
  SETTABLEKS R1 R2 K4 ["Disabled"]
  GETTABLEKS R2 R0 K5 ["OnInternalsChanged"]
  NAMECALL R2 R2 K6 ["Fire"]
  CALL R2 1 0
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
  NEWTABLE R3 4 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["MaterialSettings"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["Apply"]
  DUPTABLE R7 K7 [{"Hidden", "Label", "Schema", "Value"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K3 ["Hidden"]
  LOADK R8 K8 [""]
  SETTABLEKS R8 R7 K4 ["Label"]
  DUPTABLE R8 K10 [{"OnClick"}]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K9 ["OnClick"]
  SETTABLEKS R8 R7 K5 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["Value"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K11 ["SourceMaterial"]
  DUPTABLE R5 K12 [{"Schema"}]
  DUPTABLE R6 K14 [{"AllowAir"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K13 ["AllowAir"]
  SETTABLEKS R6 R5 K5 ["Schema"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K15 ["TargetMaterial"]
  DUPTABLE R5 K12 [{"Schema"}]
  DUPTABLE R6 K14 [{"AllowAir"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K13 ["AllowAir"]
  SETTABLEKS R6 R5 K5 ["Schema"]
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K16 ["_overrides"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_operation"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activate"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_analytics"]
  LOADK R3 K2 ["Activated"]
  GETUPVAL R5 1
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
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["Category"]
  GETTABLEKS R5 R3 K13 ["FillMode"]
  GETTABLEKS R6 R3 K14 ["Gizmo"]
  GETTABLEKS R7 R3 K15 ["MaterialSettings"]
  GETTABLEKS R8 R3 K16 ["Tab"]
  GETTABLEKS R9 R3 K17 ["Tool"]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K18 ["Util"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R10 K19 ["Operations"]
  GETTABLEKS R12 R13 K20 ["FillOperation"]
  CALL R11 1 1
  NEWTABLE R12 0 2
  DUPTABLE R13 K23 [{"Defaults", "Id"}]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K21 ["Defaults"]
  GETTABLEKS R14 R4 K24 ["SelectionSettings"]
  SETTABLEKS R14 R13 K22 ["Id"]
  DUPTABLE R14 K23 [{"Defaults", "Id"}]
  NEWTABLE R15 4 0
  GETTABLEKS R16 R7 K13 ["FillMode"]
  GETTABLEKS R17 R5 K25 ["Fill"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R7 K26 ["SourceMaterial"]
  GETIMPORT R17 K30 [Enum.Material.Grass]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R7 K31 ["TargetMaterial"]
  GETIMPORT R17 K30 [Enum.Material.Grass]
  SETTABLE R17 R15 R16
  SETTABLEKS R15 R14 K21 ["Defaults"]
  GETTABLEKS R15 R4 K15 ["MaterialSettings"]
  SETTABLEKS R15 R14 K22 ["Id"]
  SETLIST R12 R13 2 [1]
  NEWTABLE R13 0 1
  DUPTABLE R14 K33 [{"Id", "Schema"}]
  GETTABLEKS R15 R6 K34 ["Region"]
  SETTABLEKS R15 R14 K22 ["Id"]
  DUPTABLE R15 K38 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R16 R6 K34 ["Region"]
  SETTABLEKS R16 R15 K35 ["Type"]
  LOADB R16 0
  SETTABLEKS R16 R15 K36 ["Wireframe"]
  LOADB R16 0
  SETTABLEKS R16 R15 K37 ["Rotation"]
  SETTABLEKS R15 R14 K32 ["Schema"]
  SETLIST R13 R14 1 [1]
  GETTABLEKS R16 R9 K25 ["Fill"]
  GETTABLEKS R17 R8 K39 ["Edit"]
  MOVE R18 R12
  MOVE R19 R13
  NAMECALL R14 R2 K40 ["new"]
  CALL R14 5 1
  DUPCLOSURE R15 K41 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R1
  SETTABLEKS R15 R14 K42 ["startOperation"]
  DUPCLOSURE R15 K43 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K44 ["setDisabledState"]
  DUPCLOSURE R15 K45 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K46 ["init"]
  DUPCLOSURE R15 K47 [PROTO_5]
  SETTABLEKS R15 R14 K48 ["operation"]
  DUPCLOSURE R15 K49 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K50 ["activate"]
  RETURN R14 1
