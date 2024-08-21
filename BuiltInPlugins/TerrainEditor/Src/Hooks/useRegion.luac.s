PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Selection"]
  GETTABLEKS R0 R1 K1 ["new"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["Transform"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["Size"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  NEWTABLE R2 1 0
  GETUPVAL R4 0
  GETUPVAL R5 1
  GETTABLE R3 R4 R5
  NEWTABLE R4 4 0
  GETUPVAL R7 2
  GETUPVAL R8 1
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K0 ["OperationSource"]
  SETTABLE R1 R4 R5
  GETUPVAL R7 2
  GETUPVAL R8 1
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K1 ["Size"]
  GETTABLEKS R6 R0 K1 ["Size"]
  SETTABLE R6 R4 R5
  GETUPVAL R7 2
  GETUPVAL R8 1
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K2 ["Transform"]
  GETTABLEKS R6 R0 K2 ["Transform"]
  SETTABLE R6 R4 R5
  SETTABLE R4 R2 R3
  GETUPVAL R3 3
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R3 1 0
  GETUPVAL R3 1
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K2 ["Transform"]
  JUMPIFNOTEQ R3 R4 [+74]
  GETUPVAL R5 6
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K3 ["SelectionSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 8
  GETTABLEKS R5 R6 K1 ["Size"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 6
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K4 ["TransformSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K5 ["TransformMode"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K6 ["Paste"]
  JUMPIFNOTEQ R4 R5 [+11]
  GETUPVAL R6 6
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K4 ["TransformSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K7 ["TerrainRegionBufferSize"]
  GETTABLE R3 R5 R6
  JUMP [+34]
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K8 ["Import"]
  JUMPIFEQ R4 R5 [+6]
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K9 ["Duplicate"]
  JUMPIFNOTEQ R4 R5 [+11]
  GETUPVAL R6 6
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K4 ["TransformSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K10 ["TerrainRegionSize"]
  GETTABLE R3 R5 R6
  JUMP [+14]
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K11 ["Move"]
  JUMPIFNOTEQ R4 R5 [+10]
  GETUPVAL R6 6
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K3 ["SelectionSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 8
  GETTABLEKS R6 R7 K1 ["Size"]
  GETTABLE R3 R5 R6
  GETTABLEKS R5 R0 K1 ["Size"]
  GETUPVAL R6 11
  DIV R7 R5 R3
  CALL R6 1 0
  RETURN R0 0
  GETUPVAL R3 1
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K12 ["Select"]
  JUMPIFNOTEQ R3 R4 [+5]
  GETUPVAL R3 11
  GETIMPORT R4 K15 [Vector3.one]
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["History"]
  CALL R1 2 0
  GETUPVAL R1 2
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["SetRegionSignal"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETUPVAL R6 1
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  GETUPVAL R6 3
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K0 ["SnapToVoxels"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+29]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K2 ["GridSize"]
  DIVK R4 R5 K1 [4]
  FASTCALL1 MATH_ROUND R4 [+2]
  GETIMPORT R3 K5 [math.round]
  CALL R3 1 1
  MULK R2 R3 K1 [4]
  LOADN R3 0
  JUMPIFNOTLE R2 R3 [+2]
  LOADN R2 4
  SUBK R4 R2 K6 [0.01]
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K8 [math.abs]
  CALL R3 1 1
  LOADK R4 K9 [0.001]
  JUMPIFNOTLT R3 R4 [+2]
  RETURN R1 1
  DIV R5 R1 R2
  FASTCALL1 MATH_ROUND R5 [+2]
  GETIMPORT R4 K5 [math.round]
  CALL R4 1 1
  MUL R3 R4 R2
  RETURN R3 1
  RETURN R1 1

PROTO_5:
  DUPTABLE R2 K2 [{"Size", "Transform"}]
  SETTABLEKS R1 R2 K0 ["Size"]
  SETTABLEKS R0 R2 K1 ["Transform"]
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K3 ["SetRegion"]
  CALL R3 2 0
  GETUPVAL R3 1
  MOVE R4 R2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["Gizmo"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["SetRegion"]
  CALL R1 2 0
  GETUPVAL R1 1
  MOVE R2 R0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Gizmo"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["selectionOnDragPoint"]
  RETURN R0 0

PROTO_8:
  RETURN R0 0

PROTO_9:
  LOADB R0 1
  RETURN R0 1

PROTO_10:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["isMocking"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  DUPTABLE R0 K2 [{"Mock"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["Mock"]
  JUMP [+13]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["new"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETIMPORT R2 K6 [game]
  GETIMPORT R3 K8 [settings]
  CALL R3 0 1
  GETUPVAL R4 3
  CALL R0 4 1
  GETUPVAL R1 4
  SETTABLEKS R1 R0 K9 ["snapToGridSize"]
  GETUPVAL R2 5
  CALL R2 0 1
  JUMPIFNOT R2 [+2]
  GETUPVAL R1 6
  JUMP [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K10 ["snapToVoxels"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["endSelectionOnDrag"]
  GETUPVAL R1 7
  SETTABLEKS R1 R0 K12 ["updateRegion"]
  GETUPVAL R1 8
  SETTABLEKS R1 R0 K13 ["updateSelectionOnDrag"]
  GETUPVAL R2 9
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 10
  GETUPVAL R4 11
  GETTABLEKS R3 R4 K14 ["Build"]
  JUMPIFEQ R2 R3 [+3]
  GETUPVAL R1 12
  JUMP [+1]
  DUPCLOSURE R1 K15 [PROTO_8]
  SETTABLEKS R1 R0 K16 ["addWaypoint"]
  DUPCLOSURE R1 K17 [PROTO_9]
  SETTABLEKS R1 R0 K18 ["shouldExtendSelection"]
  NEWTABLE R1 0 2
  GETUPVAL R3 13
  GETTABLEKS R2 R3 K3 ["new"]
  MOVE R3 R0
  DUPTABLE R4 K21 [{"ShowBoundingBox", "Summonable"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K19 ["ShowBoundingBox"]
  LOADB R5 0
  SETTABLEKS R5 R4 K20 ["Summonable"]
  GETUPVAL R6 9
  CALL R6 0 1
  JUMPIFNOT R6 [+26]
  GETUPVAL R6 10
  GETUPVAL R8 11
  GETTABLEKS R7 R8 K14 ["Build"]
  JUMPIFNOTEQ R6 R7 [+21]
  GETUPVAL R7 14
  GETTABLEKS R6 R7 K22 ["ExtrudeHandlesImplementation"]
  GETTABLEKS R5 R6 K3 ["new"]
  MOVE R6 R0
  DUPTABLE R7 K25 [{"Max", "UseVolume"}]
  GETIMPORT R9 K28 [Vector3.one]
  GETUPVAL R11 15
  GETTABLEKS R10 R11 K29 ["MaxBuildRegion"]
  MUL R8 R9 R10
  SETTABLEKS R8 R7 K23 ["Max"]
  LOADB R8 1
  SETTABLEKS R8 R7 K24 ["UseVolume"]
  CALL R5 2 1
  JUMP [+52]
  GETUPVAL R6 10
  GETUPVAL R8 11
  GETTABLEKS R7 R8 K30 ["Import"]
  JUMPIFEQ R6 R7 [+7]
  GETUPVAL R6 10
  GETUPVAL R8 11
  GETTABLEKS R7 R8 K31 ["Generate"]
  JUMPIFNOTEQ R6 R7 [+34]
  GETUPVAL R7 14
  GETTABLEKS R6 R7 K22 ["ExtrudeHandlesImplementation"]
  GETTABLEKS R5 R6 K3 ["new"]
  MOVE R6 R0
  DUPTABLE R7 K25 [{"Max", "UseVolume"}]
  LOADN R10 0
  GETUPVAL R12 15
  GETTABLEKS R11 R12 K32 ["VoxelResolution"]
  MUL R9 R10 R11
  LOADN R11 0
  GETUPVAL R13 15
  GETTABLEKS R12 R13 K32 ["VoxelResolution"]
  MUL R10 R11 R12
  LOADN R12 0
  GETUPVAL R14 15
  GETTABLEKS R13 R14 K32 ["VoxelResolution"]
  MUL R11 R12 R13
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K33 [Vector3.new]
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["Max"]
  LOADB R8 1
  SETTABLEKS R8 R7 K24 ["UseVolume"]
  CALL R5 2 1
  JUMP [+7]
  GETUPVAL R7 14
  GETTABLEKS R6 R7 K22 ["ExtrudeHandlesImplementation"]
  GETTABLEKS R5 R6 K3 ["new"]
  MOVE R6 R0
  CALL R5 1 1
  CALL R2 3 1
  GETUPVAL R4 16
  GETTABLEKS R3 R4 K3 ["new"]
  MOVE R4 R0
  DUPTABLE R5 K35 [{"ShowBoundingBox", "Summonable", "Outset"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K19 ["ShowBoundingBox"]
  LOADB R6 0
  SETTABLEKS R6 R5 K20 ["Summonable"]
  LOADN R6 1
  SETTABLEKS R6 R5 K34 ["Outset"]
  GETUPVAL R8 14
  GETTABLEKS R7 R8 K36 ["TransformHandlesImplementation"]
  GETTABLEKS R6 R7 K3 ["new"]
  MOVE R7 R0
  CALL R6 1 -1
  CALL R3 -1 -1
  SETLIST R1 R2 -1 [1]
  GETUPVAL R2 17
  JUMPIFNOT R2 [+27]
  MOVE R3 R1
  GETUPVAL R5 18
  GETTABLEKS R4 R5 K3 ["new"]
  MOVE R5 R0
  DUPTABLE R6 K35 [{"ShowBoundingBox", "Summonable", "Outset"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K19 ["ShowBoundingBox"]
  LOADB R7 0
  SETTABLEKS R7 R6 K20 ["Summonable"]
  LOADN R7 1
  SETTABLEKS R7 R6 K34 ["Outset"]
  GETUPVAL R9 14
  GETTABLEKS R8 R9 K36 ["TransformHandlesImplementation"]
  GETTABLEKS R7 R8 K3 ["new"]
  MOVE R8 R0
  CALL R7 1 -1
  CALL R4 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K39 [table.insert]
  CALL R2 -1 0
  DUPTABLE R2 K44 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["Parent"]
  NAMECALL R3 R3 K45 ["GetMouse"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K40 ["Mouse"]
  SETTABLEKS R0 R2 K41 ["DraggerContext"]
  GETUPVAL R3 14
  SETTABLEKS R3 R2 K42 ["DraggerSchema"]
  DUPTABLE R3 K53 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "ShowDragSelect", "ShowLocalSpaceIndicator", "ShowPivotIndicator", "HandlesList"}]
  LOADK R4 K54 ["TerrainEditorRegion"]
  SETTABLEKS R4 R3 K46 ["AnalyticsName"]
  GETUPVAL R5 10
  GETUPVAL R7 11
  GETTABLEKS R6 R7 K14 ["Build"]
  JUMPIFNOTEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K47 ["AllowDragSelect"]
  LOADB R4 0
  SETTABLEKS R4 R3 K48 ["AllowFreeformDrag"]
  LOADB R4 0
  SETTABLEKS R4 R3 K49 ["ShowDragSelect"]
  LOADB R4 1
  SETTABLEKS R4 R3 K50 ["ShowLocalSpaceIndicator"]
  LOADB R4 1
  SETTABLEKS R4 R3 K51 ["ShowPivotIndicator"]
  SETTABLEKS R1 R3 K52 ["HandlesList"]
  SETTABLEKS R3 R2 K43 ["DraggerSettings"]
  RETURN R2 1

PROTO_11:
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DraggerContext"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["Build"]
  JUMPIFEQ R2 R3 [+3]
  GETUPVAL R1 4
  JUMP [+1]
  DUPCLOSURE R1 K2 [PROTO_11]
  SETTABLEKS R1 R0 K3 ["addWaypoint"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DraggerContext"]
  GETUPVAL R1 5
  SETTABLEKS R1 R0 K4 ["updateRegion"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DraggerContext"]
  GETUPVAL R1 6
  SETTABLEKS R1 R0 K5 ["updateSelectionOnDrag"]
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DraggerContext"]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K1 ["snapToGridSize"]
  RETURN R0 0

PROTO_14:
  DUPTABLE R0 K2 [{"Size", "Transform"}]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K0 ["Size"]
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K0 ["Size"]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K1 ["Transform"]
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K1 ["Transform"]
  GETTABLEKS R1 R0 K0 ["Size"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K0 ["Size"]
  JUMPIFNOTEQ R1 R2 [+8]
  GETTABLEKS R1 R0 K1 ["Transform"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K1 ["Transform"]
  JUMPIFEQ R1 R2 [+12]
  GETUPVAL R1 5
  MOVE R3 R0
  NAMECALL R1 R1 K3 ["SetRegionSignal"]
  CALL R1 2 0
  GETUPVAL R1 6
  MOVE R2 R0
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K4 ["Gizmo"]
  CALL R1 2 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R0 K2 [{"Size", "Transform"}]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K0 ["Size"]
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K0 ["Size"]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K1 ["Transform"]
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K1 ["Transform"]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K3 ["SnapToVoxels"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+95]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  GETUPVAL R5 3
  GETUPVAL R6 2
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K3 ["SnapToVoxels"]
  GETTABLE R1 R2 R3
  GETUPVAL R2 4
  JUMPIFNOTEQ R1 R2 [+15]
  GETTABLEKS R1 R0 K0 ["Size"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K0 ["Size"]
  JUMPIFNOTEQ R1 R2 [+8]
  GETTABLEKS R1 R0 K1 ["Transform"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K1 ["Transform"]
  JUMPIFEQ R1 R2 [+68]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K6 ["GridSize"]
  DIVK R4 R5 K4 [4]
  ADDK R3 R4 K5 [0.5]
  FASTCALL1 MATH_FLOOR R3 [+2]
  GETIMPORT R2 K9 [math.floor]
  CALL R2 1 1
  MULK R1 R2 K4 [4]
  LOADN R2 0
  JUMPIFNOTLE R1 R2 [+2]
  LOADN R1 4
  GETUPVAL R2 7
  GETUPVAL R5 0
  GETUPVAL R7 1
  GETUPVAL R8 2
  GETTABLE R6 R7 R8
  GETTABLE R4 R5 R6
  GETUPVAL R7 3
  GETUPVAL R8 2
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K1 ["Transform"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 0
  GETUPVAL R8 1
  GETUPVAL R9 2
  GETTABLE R7 R8 R9
  GETTABLE R5 R6 R7
  GETUPVAL R8 3
  GETUPVAL R9 2
  GETTABLE R7 R8 R9
  GETTABLEKS R6 R7 K0 ["Size"]
  GETTABLE R4 R5 R6
  MOVE R5 R1
  CALL R2 3 2
  DUPTABLE R4 K2 [{"Size", "Transform"}]
  SETTABLEKS R3 R4 K0 ["Size"]
  SETTABLEKS R2 R4 K1 ["Transform"]
  GETTABLEKS R5 R4 K0 ["Size"]
  GETTABLEKS R6 R0 K0 ["Size"]
  JUMPIFNOTEQ R5 R6 [+7]
  GETTABLEKS R5 R4 K1 ["Transform"]
  GETTABLEKS R6 R0 K1 ["Transform"]
  JUMPIFEQ R5 R6 [+12]
  GETUPVAL R5 8
  MOVE R7 R4
  NAMECALL R5 R5 K10 ["SetRegionSignal"]
  CALL R5 2 0
  GETUPVAL R5 9
  MOVE R6 R4
  GETUPVAL R8 10
  GETTABLEKS R7 R8 K11 ["Gizmo"]
  CALL R5 2 0
  GETUPVAL R1 11
  GETUPVAL R4 0
  GETUPVAL R6 1
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  GETUPVAL R6 3
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K3 ["SnapToVoxels"]
  GETTABLE R2 R3 R4
  CALL R1 1 0
  GETUPVAL R1 12
  CALL R1 0 1
  JUMPIFNOT R1 [+16]
  GETUPVAL R2 13
  GETTABLEKS R1 R2 K12 ["DraggerContext"]
  GETUPVAL R4 0
  GETUPVAL R6 1
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  GETUPVAL R6 3
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K3 ["SnapToVoxels"]
  GETTABLE R2 R3 R4
  SETTABLEKS R2 R1 K3 ["SnapToVoxels"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Transform"]
  JUMPIFNOTEQ R0 R1 [+81]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["SelectionSettings"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["Size"]
  GETTABLE R0 R1 R2
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["TransformSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K4 ["TransformMode"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K5 ["Paste"]
  JUMPIFNOTEQ R1 R2 [+11]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["TransformSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K6 ["TerrainRegionBufferSize"]
  GETTABLE R0 R2 R3
  JUMP [+34]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K7 ["Import"]
  JUMPIFEQ R1 R2 [+6]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K8 ["Duplicate"]
  JUMPIFNOTEQ R1 R2 [+11]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["TransformSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K9 ["TerrainRegionSize"]
  GETTABLE R0 R2 R3
  JUMP [+14]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K10 ["Move"]
  JUMPIFNOTEQ R1 R2 [+10]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["SelectionSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K2 ["Size"]
  GETTABLE R0 R2 R3
  GETUPVAL R2 7
  GETUPVAL R6 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["TransformSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K2 ["Size"]
  GETTABLE R4 R5 R6
  DIV R3 R4 R0
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K11 ["Select"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R0 7
  GETIMPORT R1 K14 [Vector3.one]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R4 0
  NAMECALL R4 R4 K0 ["use"]
  CALL R4 1 1
  GETUPVAL R5 1
  DUPTABLE R6 K3 [{"Size", "Transform"}]
  GETUPVAL R10 2
  GETTABLE R9 R10 R0
  GETTABLE R8 R1 R9
  GETUPVAL R11 3
  GETTABLE R10 R11 R0
  GETTABLEKS R9 R10 K1 ["Size"]
  GETTABLE R7 R8 R9
  SETTABLEKS R7 R6 K1 ["Size"]
  GETUPVAL R10 2
  GETTABLE R9 R10 R0
  GETTABLE R8 R1 R9
  GETUPVAL R11 3
  GETTABLE R10 R11 R0
  GETTABLEKS R9 R10 K2 ["Transform"]
  GETTABLE R7 R8 R9
  SETTABLEKS R7 R6 K2 ["Transform"]
  CALL R5 1 2
  GETUPVAL R7 1
  LOADK R8 K4 [{1, 1, 1}]
  CALL R7 1 2
  GETUPVAL R9 4
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R5
  NEWTABLE R11 0 1
  MOVE R12 R0
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  GETUPVAL R10 1
  LOADNIL R11
  CALL R10 1 2
  GETUPVAL R12 6
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE VAL R8
  NEWTABLE R14 0 3
  MOVE R15 R2
  MOVE R16 R0
  MOVE R17 R1
  SETLIST R14 R15 3 [1]
  CALL R12 2 1
  GETUPVAL R13 12
  MOVE R14 R5
  NEWCLOSURE R15 P2
  CAPTURE VAL R12
  CAPTURE UPVAL U13
  CAPTURE VAL R9
  NEWTABLE R16 0 1
  MOVE R17 R0
  SETLIST R16 R17 1 [1]
  CALL R13 3 1
  GETUPVAL R14 6
  NEWCLOSURE R15 P3
  CAPTURE VAL R13
  CAPTURE VAL R5
  NEWTABLE R16 0 2
  MOVE R17 R13
  MOVE R18 R5
  SETLIST R16 R17 2 [1]
  CALL R14 2 1
  GETUPVAL R15 6
  NEWCLOSURE R16 P4
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U14
  NEWTABLE R17 0 1
  GETUPVAL R21 2
  GETTABLE R20 R21 R0
  GETTABLE R19 R1 R20
  GETUPVAL R22 3
  GETTABLE R21 R22 R0
  GETTABLEKS R20 R21 K5 ["SnapToVoxels"]
  GETTABLE R18 R19 R20
  SETLIST R17 R18 1 [1]
  CALL R15 2 1
  GETUPVAL R16 6
  NEWCLOSURE R17 P5
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE UPVAL U13
  NEWTABLE R18 0 1
  MOVE R19 R12
  SETLIST R18 R19 1 [1]
  CALL R16 2 1
  GETUPVAL R17 6
  NEWCLOSURE R18 P6
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE UPVAL U13
  NEWTABLE R19 0 1
  MOVE R20 R12
  SETLIST R19 R20 1 [1]
  CALL R17 2 1
  GETUPVAL R18 4
  NEWCLOSURE R19 P7
  CAPTURE VAL R4
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE UPVAL U17
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE UPVAL U18
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE VAL R14
  CAPTURE UPVAL U19
  CAPTURE UPVAL U5
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE VAL R3
  CAPTURE UPVAL U22
  NEWTABLE R20 0 1
  MOVE R21 R0
  SETLIST R20 R21 1 [1]
  CALL R18 2 1
  GETUPVAL R19 23
  NEWCLOSURE R20 P8
  CAPTURE VAL R18
  CAPTURE UPVAL U18
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R17
  NEWTABLE R21 0 3
  MOVE R22 R5
  MOVE R23 R12
  MOVE R24 R13
  SETLIST R21 R22 3 [1]
  CALL R19 2 0
  GETUPVAL R19 23
  NEWCLOSURE R20 P9
  CAPTURE VAL R18
  CAPTURE VAL R15
  NEWTABLE R21 0 1
  MOVE R22 R15
  SETLIST R21 R22 1 [1]
  CALL R19 2 0
  GETUPVAL R19 23
  NEWCLOSURE R20 P10
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE UPVAL U13
  NEWTABLE R21 0 3
  MOVE R22 R0
  GETUPVAL R26 2
  GETTABLE R25 R26 R0
  GETTABLE R24 R1 R25
  GETUPVAL R27 3
  GETTABLE R26 R27 R0
  GETTABLEKS R25 R26 K1 ["Size"]
  GETTABLE R23 R24 R25
  GETUPVAL R27 2
  GETTABLE R26 R27 R0
  GETTABLE R25 R1 R26
  GETUPVAL R28 3
  GETTABLE R27 R28 R0
  GETTABLEKS R26 R27 K2 ["Transform"]
  GETTABLE R24 R25 R26
  SETLIST R21 R22 3 [1]
  CALL R19 2 0
  GETUPVAL R19 23
  NEWCLOSURE R20 P11
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE UPVAL U14
  CAPTURE UPVAL U24
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE UPVAL U13
  CAPTURE VAL R11
  CAPTURE UPVAL U17
  CAPTURE VAL R18
  NEWTABLE R21 0 4
  GETUPVAL R25 2
  GETTABLE R24 R25 R0
  GETTABLE R23 R1 R24
  GETUPVAL R26 3
  GETTABLE R25 R26 R0
  GETTABLEKS R24 R25 K5 ["SnapToVoxels"]
  GETTABLE R22 R23 R24
  GETUPVAL R26 2
  GETTABLE R25 R26 R0
  GETTABLE R24 R1 R25
  GETUPVAL R27 3
  GETTABLE R26 R27 R0
  GETTABLEKS R25 R26 K1 ["Size"]
  GETTABLE R23 R24 R25
  GETUPVAL R27 2
  GETTABLE R26 R27 R0
  GETTABLE R25 R1 R26
  GETUPVAL R28 3
  GETTABLE R27 R28 R0
  GETTABLEKS R26 R27 K2 ["Transform"]
  GETTABLE R24 R25 R26
  GETUPVAL R26 17
  CALL R26 0 1
  JUMPIFNOT R26 [+2]
  MOVE R25 R18
  JUMP [+1]
  LOADNIL R25
  SETLIST R21 R22 4 [1]
  CALL R19 2 0
  GETUPVAL R19 23
  NEWCLOSURE R20 P12
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE VAL R8
  NEWTABLE R21 0 1
  MOVE R22 R0
  SETLIST R21 R22 1 [1]
  CALL R19 2 0
  MOVE R19 R18
  MOVE R20 R5
  MOVE R21 R7
  RETURN R19 3

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Packages"]
  GETTABLEKS R1 R2 K5 ["DraggerFramework"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R0 K4 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useCallback"]
  GETTABLEKS R4 R2 K10 ["useEffect"]
  GETTABLEKS R5 R2 K11 ["useMemo"]
  GETTABLEKS R6 R2 K12 ["useState"]
  GETIMPORT R7 K7 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Schemas"]
  GETTABLEKS R8 R9 K15 ["Region"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R10 R1 K16 ["Implementation"]
  GETTABLEKS R9 R10 K17 ["DraggerContext_PluginImpl"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R11 R1 K18 ["Handles"]
  GETTABLEKS R10 R11 K19 ["MoveHandles"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R12 R1 K18 ["Handles"]
  GETTABLEKS R11 R12 K20 ["RotateHandles"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R13 R1 K18 ["Handles"]
  GETTABLEKS R12 R13 K21 ["ExtrudeHandles"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R15 R0 K13 ["Src"]
  GETTABLEKS R14 R15 K22 ["Util"]
  GETTABLEKS R13 R14 K23 ["getVoxelAlignedRegion"]
  CALL R12 1 1
  GETTABLEKS R14 R0 K13 ["Src"]
  GETTABLEKS R13 R14 K24 ["Hooks"]
  GETIMPORT R14 K7 [require]
  GETTABLEKS R15 R13 K25 ["useHistory"]
  CALL R14 1 1
  GETIMPORT R15 K7 [require]
  GETTABLEKS R18 R0 K13 ["Src"]
  GETTABLEKS R17 R18 K26 ["Resources"]
  GETTABLEKS R16 R17 K27 ["Constants"]
  CALL R15 1 1
  GETIMPORT R16 K7 [require]
  GETTABLEKS R18 R0 K13 ["Src"]
  GETTABLEKS R17 R18 K28 ["Types"]
  CALL R16 1 1
  GETTABLEKS R17 R16 K29 ["BuildSettings"]
  GETTABLEKS R18 R16 K30 ["Category"]
  GETTABLEKS R19 R16 K31 ["OperationSource"]
  GETTABLEKS R20 R16 K32 ["SeaLevelSettings"]
  GETTABLEKS R21 R16 K33 ["SelectionSettings"]
  GETTABLEKS R22 R16 K34 ["Tool"]
  GETTABLEKS R23 R16 K35 ["TransformMode"]
  GETTABLEKS R24 R16 K36 ["TransformSettings"]
  GETIMPORT R25 K7 [require]
  GETTABLEKS R28 R0 K13 ["Src"]
  GETTABLEKS R27 R28 K37 ["Controllers"]
  GETTABLEKS R26 R27 K38 ["PluginController"]
  CALL R25 1 1
  GETIMPORT R26 K7 [require]
  GETTABLEKS R29 R0 K13 ["Src"]
  GETTABLEKS R28 R29 K39 ["Flags"]
  GETTABLEKS R27 R28 K40 ["getFFlagTerrainEditorGenerationFeature"]
  CALL R26 1 1
  GETIMPORT R27 K7 [require]
  GETTABLEKS R30 R0 K13 ["Src"]
  GETTABLEKS R29 R30 K39 ["Flags"]
  GETTABLEKS R28 R29 K41 ["getFFlagTerrainEditorPredetermineVoxelAlignment"]
  CALL R27 1 1
  GETIMPORT R28 K43 [game]
  LOADK R30 K44 ["StudioService"]
  NAMECALL R28 R28 K45 ["GetService"]
  CALL R28 2 1
  NEWTABLE R29 8 0
  GETTABLEKS R30 R22 K46 ["Build"]
  MOVE R32 R26
  CALL R32 0 1
  JUMPIFNOT R32 [+3]
  GETTABLEKS R31 R18 K29 ["BuildSettings"]
  JUMP [+1]
  LOADNIL R31
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R22 K47 ["Transform"]
  GETTABLEKS R31 R18 K36 ["TransformSettings"]
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R22 K48 ["Select"]
  GETTABLEKS R31 R18 K33 ["SelectionSettings"]
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R22 K49 ["Generate"]
  GETTABLEKS R31 R18 K33 ["SelectionSettings"]
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R22 K50 ["Fill"]
  GETTABLEKS R31 R18 K33 ["SelectionSettings"]
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R22 K51 ["Import"]
  GETTABLEKS R31 R18 K33 ["SelectionSettings"]
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R22 K52 ["SeaLevel"]
  GETTABLEKS R31 R18 K32 ["SeaLevelSettings"]
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R22 K53 ["Mock"]
  GETTABLEKS R31 R18 K33 ["SelectionSettings"]
  SETTABLE R31 R29 R30
  NEWTABLE R30 8 0
  GETTABLEKS R31 R22 K46 ["Build"]
  MOVE R33 R26
  CALL R33 0 1
  JUMPIFNOT R33 [+2]
  MOVE R32 R17
  JUMP [+1]
  LOADNIL R32
  SETTABLE R32 R30 R31
  GETTABLEKS R31 R22 K47 ["Transform"]
  SETTABLE R24 R30 R31
  GETTABLEKS R31 R22 K48 ["Select"]
  SETTABLE R21 R30 R31
  GETTABLEKS R31 R22 K49 ["Generate"]
  SETTABLE R21 R30 R31
  GETTABLEKS R31 R22 K50 ["Fill"]
  SETTABLE R21 R30 R31
  GETTABLEKS R31 R22 K51 ["Import"]
  SETTABLE R21 R30 R31
  GETTABLEKS R31 R22 K52 ["SeaLevel"]
  SETTABLE R20 R30 R31
  GETTABLEKS R31 R22 K53 ["Mock"]
  SETTABLE R21 R30 R31
  DUPCLOSURE R31 K54 [PROTO_17]
  CAPTURE VAL R25
  CAPTURE VAL R6
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R22
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R28
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE VAL R27
  CAPTURE VAL R26
  CAPTURE VAL R11
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R12
  RETURN R31 1
