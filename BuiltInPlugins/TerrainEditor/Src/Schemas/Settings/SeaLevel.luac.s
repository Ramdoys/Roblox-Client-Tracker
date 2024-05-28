PROTO_0:
  GETTABLEN R2 R0 1
  GETTABLEN R3 R0 2
  GETTABLEN R4 R0 3
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K2 [Vector3.new]
  CALL R1 3 1
  RETURN R1 1

PROTO_1:
  NEWTABLE R1 0 3
  GETTABLEKS R2 R0 K0 ["X"]
  GETTABLEKS R3 R0 K1 ["Y"]
  GETTABLEKS R4 R0 K2 ["Z"]
  SETLIST R1 R2 3 [1]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["X"]
  LOADN R2 4
  JUMPIFLT R1 R2 [+11]
  GETTABLEKS R1 R0 K1 ["Y"]
  LOADN R2 4
  JUMPIFLT R1 R2 [+6]
  GETTABLEKS R1 R0 K2 ["Z"]
  LOADN R2 4
  JUMPIFNOTLT R1 R2 [+10]
  GETIMPORT R1 K6 [Enum.PropertyStatus.Error]
  GETUPVAL R2 0
  LOADK R4 K7 ["SelectionWarning"]
  LOADK R5 K8 ["Size"]
  NAMECALL R2 R2 K9 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K0 ["X"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["MaxRegion"]
  JUMPIFLT R2 R1 [+15]
  GETTABLEKS R1 R0 K1 ["Y"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["MaxRegion"]
  JUMPIFLT R2 R1 [+8]
  GETTABLEKS R1 R0 K2 ["Z"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["MaxRegion"]
  JUMPIFNOTLT R2 R1 [+10]
  GETIMPORT R1 K6 [Enum.PropertyStatus.Error]
  GETUPVAL R2 0
  LOADK R4 K7 ["SelectionWarning"]
  LOADK R5 K11 ["SizeMax"]
  NAMECALL R2 R2 K9 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETIMPORT R1 K13 [Enum.PropertyStatus.Ok]
  LOADK R2 K14 [""]
  RETURN R1 2

PROTO_3:
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Transform"]
  GETTABLE R2 R3 R4
  GETTABLEKS R1 R2 K1 ["Rotation"]
  GETTABLEN R4 R0 1
  GETTABLEN R5 R0 2
  GETTABLEN R6 R0 3
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K4 [Vector3.new]
  CALL R3 3 1
  ADD R2 R1 R3
  RETURN R2 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["Position"]
  NEWTABLE R2 0 3
  GETTABLEKS R3 R1 K1 ["X"]
  GETTABLEKS R4 R1 K2 ["Y"]
  GETTABLEKS R5 R1 K3 ["Z"]
  SETLIST R2 R3 3 [1]
  RETURN R2 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Tool"]
  NAMECALL R1 R1 K1 ["getPayload"]
  CALL R1 1 1
  GETUPVAL R2 1
  MOVE R3 R0
  GETUPVAL R6 2
  GETTABLE R5 R1 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K2 ["Size"]
  GETTABLE R4 R5 R6
  CALL R2 2 1
  JUMPIF R2 [+9]
  GETIMPORT R2 K6 [Enum.PropertyStatus.Error]
  GETUPVAL R3 4
  LOADK R5 K7 ["SelectionWarning"]
  LOADK R6 K8 ["OutOfBounds"]
  NAMECALL R3 R3 K9 ["getText"]
  CALL R3 3 -1
  RETURN R2 -1
  GETIMPORT R2 K11 [Enum.PropertyStatus.Ok]
  LOADK R3 K12 [""]
  RETURN R2 2

PROTO_6:
  GETTABLEKS R4 R0 K0 ["Localization"]
  GETUPVAL R5 0
  MOVE R6 R0
  NEWTABLE R7 0 5
  DUPTABLE R8 K5 [{"Id", "Schema", "Validate", "Value"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["Size"]
  SETTABLEKS R9 R8 K1 ["Id"]
  DUPTABLE R9 K11 [{"Type", "Components", "GetValue", "GetComponents"}]
  LOADK R10 K12 ["Vector"]
  SETTABLEKS R10 R9 K7 ["Type"]
  NEWTABLE R10 0 3
  LOADK R11 K13 ["X"]
  LOADK R12 K14 ["Y"]
  LOADK R13 K15 ["Z"]
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K8 ["Components"]
  DUPCLOSURE R10 K16 [PROTO_0]
  SETTABLEKS R10 R9 K9 ["GetValue"]
  DUPCLOSURE R10 K17 [PROTO_1]
  SETTABLEKS R10 R9 K10 ["GetComponents"]
  SETTABLEKS R9 R8 K2 ["Schema"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R4
  CAPTURE UPVAL U2
  SETTABLEKS R9 R8 K3 ["Validate"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["Size"]
  GETTABLE R9 R1 R10
  SETTABLEKS R9 R8 K4 ["Value"]
  DUPTABLE R9 K20 [{"DataId", "Hidden", "Id", "Schema", "Validate", "Value"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K21 ["Transform"]
  SETTABLEKS R10 R9 K18 ["DataId"]
  LOADB R10 0
  SETTABLEKS R10 R9 K19 ["Hidden"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K22 ["Position"]
  SETTABLEKS R10 R9 K1 ["Id"]
  DUPTABLE R10 K11 [{"Type", "Components", "GetValue", "GetComponents"}]
  LOADK R11 K12 ["Vector"]
  SETTABLEKS R11 R10 K7 ["Type"]
  NEWTABLE R11 0 3
  LOADK R12 K13 ["X"]
  LOADK R13 K14 ["Y"]
  LOADK R14 K15 ["Z"]
  SETLIST R11 R12 3 [1]
  SETTABLEKS R11 R10 K8 ["Components"]
  NEWCLOSURE R11 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  SETTABLEKS R11 R10 K9 ["GetValue"]
  DUPCLOSURE R11 K23 [PROTO_4]
  SETTABLEKS R11 R10 K10 ["GetComponents"]
  SETTABLEKS R10 R9 K2 ["Schema"]
  GETUPVAL R11 3
  CALL R11 0 1
  JUMPIFNOT R11 [+7]
  NEWCLOSURE R10 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K3 ["Validate"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K21 ["Transform"]
  GETTABLE R10 R1 R11
  SETTABLEKS R10 R9 K4 ["Value"]
  DUPTABLE R10 K24 [{"Id", "Schema"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K25 ["SnapToVoxels"]
  SETTABLEKS R11 R10 K1 ["Id"]
  DUPTABLE R11 K26 [{"Type"}]
  LOADK R12 K27 ["Checkbox"]
  SETTABLEKS R12 R11 K7 ["Type"]
  SETTABLEKS R11 R10 K2 ["Schema"]
  DUPTABLE R11 K29 [{"Id", "Layout", "Schema"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K30 ["Evaporate"]
  SETTABLEKS R12 R11 K1 ["Id"]
  GETIMPORT R12 K34 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K28 ["Layout"]
  DUPTABLE R12 K36 [{"Label", "Type"}]
  GETUPVAL R15 5
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K30 ["Evaporate"]
  NAMECALL R13 R4 K37 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K35 ["Label"]
  LOADK R13 K38 ["Button"]
  SETTABLEKS R13 R12 K7 ["Type"]
  SETTABLEKS R12 R11 K2 ["Schema"]
  DUPTABLE R12 K29 [{"Id", "Layout", "Schema"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K39 ["Create"]
  SETTABLEKS R13 R12 K1 ["Id"]
  GETIMPORT R13 K34 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K28 ["Layout"]
  DUPTABLE R13 K36 [{"Label", "Type"}]
  GETUPVAL R16 5
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K39 ["Create"]
  NAMECALL R14 R4 K37 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K35 ["Label"]
  LOADK R14 K38 ["Button"]
  SETTABLEKS R14 R13 K7 ["Type"]
  SETTABLEKS R13 R12 K2 ["Schema"]
  SETLIST R7 R8 5 [1]
  DUPTABLE R8 K43 [{"Category", "Data", "Overrides"}]
  GETUPVAL R9 5
  SETTABLEKS R9 R8 K40 ["Category"]
  SETTABLEKS R1 R8 K41 ["Data"]
  SETTABLEKS R3 R8 K42 ["Overrides"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["ApplyById"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["Category"]
  GETTABLEKS R4 R2 K11 ["SeaLevelSettings"]
  GETTABLEKS R5 R2 K12 ["Storage"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K13 ["Resources"]
  GETTABLEKS R7 R8 K14 ["Constants"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K11 ["SeaLevelSettings"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K7 ["Util"]
  GETTABLEKS R9 R10 K15 ["getWithinTerrainBounds"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K16 ["Flags"]
  GETTABLEKS R10 R11 K17 ["getFFlagTerrainEditorErrorHandling"]
  CALL R9 1 1
  NEWTABLE R10 2 0
  NEWTABLE R11 8 0
  GETTABLEKS R12 R4 K18 ["Evaporate"]
  GETTABLEKS R13 R5 K19 ["LocalSession"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K20 ["Create"]
  GETTABLEKS R13 R5 K19 ["LocalSession"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K21 ["Size"]
  GETTABLEKS R13 R5 K22 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K23 ["SnapToVoxels"]
  GETTABLEKS R13 R5 K22 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R4 K24 ["Transform"]
  GETTABLEKS R13 R5 K22 ["LocalPersistent"]
  SETTABLE R13 R11 R12
  SETTABLEKS R11 R10 K12 ["Storage"]
  DUPCLOSURE R11 K25 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K26 ["Generator"]
  RETURN R10 1
