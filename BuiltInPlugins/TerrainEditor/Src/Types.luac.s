MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagTerrainEditorBrushSizeSnapping"]
  CALL R1 1 1
  DUPTABLE R2 K24 [{"Clear", "Draw", "Empty", "Fill", "Flatten", "Generate", "Import", "Mock", "Paint", "SeaLevel", "Select", "Sculpt", "Smooth", "Transform", "Upgrade"}]
  LOADK R3 K9 ["Clear"]
  SETTABLEKS R3 R2 K9 ["Clear"]
  LOADK R3 K10 ["Draw"]
  SETTABLEKS R3 R2 K10 ["Draw"]
  LOADK R3 K11 ["Empty"]
  SETTABLEKS R3 R2 K11 ["Empty"]
  LOADK R3 K12 ["Fill"]
  SETTABLEKS R3 R2 K12 ["Fill"]
  LOADK R3 K13 ["Flatten"]
  SETTABLEKS R3 R2 K13 ["Flatten"]
  LOADK R3 K14 ["Generate"]
  SETTABLEKS R3 R2 K14 ["Generate"]
  LOADK R3 K15 ["Import"]
  SETTABLEKS R3 R2 K15 ["Import"]
  LOADK R3 K16 ["Mock"]
  SETTABLEKS R3 R2 K16 ["Mock"]
  LOADK R3 K17 ["Paint"]
  SETTABLEKS R3 R2 K17 ["Paint"]
  LOADK R3 K18 ["SeaLevel"]
  SETTABLEKS R3 R2 K18 ["SeaLevel"]
  LOADK R3 K19 ["Select"]
  SETTABLEKS R3 R2 K19 ["Select"]
  LOADK R3 K20 ["Sculpt"]
  SETTABLEKS R3 R2 K20 ["Sculpt"]
  LOADK R3 K21 ["Smooth"]
  SETTABLEKS R3 R2 K21 ["Smooth"]
  LOADK R3 K22 ["Transform"]
  SETTABLEKS R3 R2 K22 ["Transform"]
  LOADK R3 K23 ["Upgrade"]
  SETTABLEKS R3 R2 K23 ["Upgrade"]
  DUPTABLE R3 K28 [{"Create", "Edit", "None"}]
  LOADK R4 K25 ["Create"]
  SETTABLEKS R4 R3 K25 ["Create"]
  LOADK R4 K26 ["Edit"]
  SETTABLEKS R4 R3 K26 ["Edit"]
  LOADK R4 K27 ["None"]
  SETTABLEKS R4 R3 K27 ["None"]
  DUPTABLE R4 K31 [{"Add", "Subtract"}]
  LOADK R5 K29 ["Add"]
  SETTABLEKS R5 R4 K29 ["Add"]
  LOADK R5 K30 ["Subtract"]
  SETTABLEKS R5 R4 K30 ["Subtract"]
  DUPTABLE R5 K35 [{"Sphere", "Cube", "Cylinder"}]
  LOADK R6 K32 ["Sphere"]
  SETTABLEKS R6 R5 K32 ["Sphere"]
  LOADK R6 K33 ["Cube"]
  SETTABLEKS R6 R5 K33 ["Cube"]
  LOADK R6 K34 ["Cylinder"]
  SETTABLEKS R6 R5 K34 ["Cylinder"]
  DUPTABLE R6 K37 [{"Fill", "Replace"}]
  LOADK R7 K12 ["Fill"]
  SETTABLEKS R7 R6 K12 ["Fill"]
  LOADK R7 K36 ["Replace"]
  SETTABLEKS R7 R6 K36 ["Replace"]
  DUPTABLE R7 K41 [{"Erode", "Grow", "Both"}]
  LOADK R8 K38 ["Erode"]
  SETTABLEKS R8 R7 K38 ["Erode"]
  LOADK R8 K39 ["Grow"]
  SETTABLEKS R8 R7 K39 ["Grow"]
  LOADK R8 K40 ["Both"]
  SETTABLEKS R8 R7 K40 ["Both"]
  DUPTABLE R8 K44 [{"Auto", "Fixed"}]
  LOADK R9 K42 ["Auto"]
  SETTABLEKS R9 R8 K42 ["Auto"]
  LOADK R9 K43 ["Fixed"]
  SETTABLEKS R9 R8 K43 ["Fixed"]
  DUPTABLE R9 K48 [{"Bottom", "Center", "Top"}]
  LOADK R10 K45 ["Bottom"]
  SETTABLEKS R10 R9 K45 ["Bottom"]
  LOADK R10 K46 ["Center"]
  SETTABLEKS R10 R9 K46 ["Center"]
  LOADK R10 K47 ["Top"]
  SETTABLEKS R10 R9 K47 ["Top"]
  DUPTABLE R10 K51 [{"Auto", "Off", "Manual"}]
  LOADK R11 K42 ["Auto"]
  SETTABLEKS R11 R10 K42 ["Auto"]
  LOADK R11 K49 ["Off"]
  SETTABLEKS R11 R10 K49 ["Off"]
  LOADK R11 K50 ["Manual"]
  SETTABLEKS R11 R10 K50 ["Manual"]
  DUPTABLE R11 K52 [{"Paint", "Replace"}]
  LOADK R12 K17 ["Paint"]
  SETTABLEKS R12 R11 K17 ["Paint"]
  LOADK R12 K36 ["Replace"]
  SETTABLEKS R12 R11 K36 ["Replace"]
  DUPTABLE R12 K55 [{"BrushSize", "Off", "Voxel"}]
  LOADK R13 K53 ["BrushSize"]
  SETTABLEKS R13 R12 K53 ["BrushSize"]
  LOADK R13 K49 ["Off"]
  SETTABLEKS R13 R12 K49 ["Off"]
  LOADK R13 K54 ["Voxel"]
  SETTABLEKS R13 R12 K54 ["Voxel"]
  DUPTABLE R13 K65 [{"Arctic", "Canyons", "Dunes", "Hills", "Lavascape", "Marsh", "Mountains", "Plains", "Water"}]
  LOADK R14 K56 ["Arctic"]
  SETTABLEKS R14 R13 K56 ["Arctic"]
  LOADK R14 K57 ["Canyons"]
  SETTABLEKS R14 R13 K57 ["Canyons"]
  LOADK R14 K58 ["Dunes"]
  SETTABLEKS R14 R13 K58 ["Dunes"]
  LOADK R14 K59 ["Hills"]
  SETTABLEKS R14 R13 K59 ["Hills"]
  LOADK R14 K60 ["Lavascape"]
  SETTABLEKS R14 R13 K60 ["Lavascape"]
  LOADK R14 K61 ["Marsh"]
  SETTABLEKS R14 R13 K61 ["Marsh"]
  LOADK R14 K62 ["Mountains"]
  SETTABLEKS R14 R13 K62 ["Mountains"]
  LOADK R14 K63 ["Plains"]
  SETTABLEKS R14 R13 K63 ["Plains"]
  LOADK R14 K64 ["Water"]
  SETTABLEKS R14 R13 K64 ["Water"]
  DUPTABLE R14 K75 [{"BrushMode", "BrushShape", "FillMode", "FlattenPlane", "FlattenMode", "PivotPosition", "PlaneLock", "MaterialMode", "Snapping"}]
  LOADK R15 K66 ["BrushMode"]
  SETTABLEKS R15 R14 K66 ["BrushMode"]
  LOADK R15 K67 ["BrushShape"]
  SETTABLEKS R15 R14 K67 ["BrushShape"]
  LOADK R15 K68 ["FillMode"]
  SETTABLEKS R15 R14 K68 ["FillMode"]
  LOADK R15 K69 ["FlattenPlane"]
  SETTABLEKS R15 R14 K69 ["FlattenPlane"]
  LOADK R15 K70 ["FlattenMode"]
  SETTABLEKS R15 R14 K70 ["FlattenMode"]
  LOADK R15 K71 ["PivotPosition"]
  SETTABLEKS R15 R14 K71 ["PivotPosition"]
  LOADK R15 K72 ["PlaneLock"]
  SETTABLEKS R15 R14 K72 ["PlaneLock"]
  LOADK R15 K73 ["MaterialMode"]
  SETTABLEKS R15 R14 K73 ["MaterialMode"]
  LOADK R15 K74 ["Snapping"]
  SETTABLEKS R15 R14 K74 ["Snapping"]
  NEWTABLE R15 16 0
  GETTABLEKS R16 R14 K66 ["BrushMode"]
  NEWTABLE R17 0 2
  GETTABLEKS R18 R4 K29 ["Add"]
  GETTABLEKS R19 R4 K30 ["Subtract"]
  SETLIST R17 R18 2 [1]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R14 K67 ["BrushShape"]
  NEWTABLE R17 0 3
  GETTABLEKS R18 R5 K32 ["Sphere"]
  GETTABLEKS R19 R5 K33 ["Cube"]
  GETTABLEKS R20 R5 K34 ["Cylinder"]
  SETLIST R17 R18 3 [1]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R14 K68 ["FillMode"]
  NEWTABLE R17 0 2
  GETTABLEKS R18 R6 K12 ["Fill"]
  GETTABLEKS R19 R6 K36 ["Replace"]
  SETLIST R17 R18 2 [1]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R14 K69 ["FlattenPlane"]
  NEWTABLE R17 0 2
  GETTABLEKS R18 R8 K42 ["Auto"]
  GETTABLEKS R19 R8 K43 ["Fixed"]
  SETLIST R17 R18 2 [1]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R14 K70 ["FlattenMode"]
  NEWTABLE R17 0 3
  GETTABLEKS R18 R7 K38 ["Erode"]
  GETTABLEKS R19 R7 K39 ["Grow"]
  GETTABLEKS R20 R7 K40 ["Both"]
  SETLIST R17 R18 3 [1]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R14 K71 ["PivotPosition"]
  NEWTABLE R17 0 3
  GETTABLEKS R18 R9 K45 ["Bottom"]
  GETTABLEKS R19 R9 K46 ["Center"]
  GETTABLEKS R20 R9 K47 ["Top"]
  SETLIST R17 R18 3 [1]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R14 K72 ["PlaneLock"]
  NEWTABLE R17 0 3
  GETTABLEKS R18 R10 K49 ["Off"]
  GETTABLEKS R19 R10 K42 ["Auto"]
  GETTABLEKS R20 R10 K50 ["Manual"]
  SETLIST R17 R18 3 [1]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R14 K73 ["MaterialMode"]
  NEWTABLE R17 0 2
  GETTABLEKS R18 R11 K17 ["Paint"]
  GETTABLEKS R19 R11 K36 ["Replace"]
  SETLIST R17 R18 2 [1]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R14 K74 ["Snapping"]
  NEWTABLE R17 0 2
  GETTABLEKS R18 R12 K49 ["Off"]
  GETTABLEKS R19 R12 K54 ["Voxel"]
  SETLIST R17 R18 2 [1]
  SETTABLE R17 R15 R16
  MOVE R16 R1
  CALL R16 0 1
  JUMPIFNOT R16 [+10]
  GETTABLEKS R18 R14 K74 ["Snapping"]
  GETTABLE R17 R15 R18
  GETTABLEKS R18 R12 K53 ["BrushSize"]
  FASTCALL2 TABLE_INSERT R17 R18 [+3]
  GETIMPORT R16 K78 [table.insert]
  CALL R16 2 0
  DUPTABLE R16 K83 [{"Duplicate", "Import", "Move", "Paste", "Stamp"}]
  LOADK R17 K79 ["Duplicate"]
  SETTABLEKS R17 R16 K79 ["Duplicate"]
  LOADK R17 K15 ["Import"]
  SETTABLEKS R17 R16 K15 ["Import"]
  LOADK R17 K80 ["Move"]
  SETTABLEKS R17 R16 K80 ["Move"]
  LOADK R17 K81 ["Paste"]
  SETTABLEKS R17 R16 K81 ["Paste"]
  LOADK R17 K82 ["Stamp"]
  SETTABLEKS R17 R16 K82 ["Stamp"]
  DUPTABLE R17 K86 [{"Gizmo", "History"}]
  LOADK R18 K84 ["Gizmo"]
  SETTABLEKS R18 R17 K84 ["Gizmo"]
  LOADK R18 K85 ["History"]
  SETTABLEKS R18 R17 K85 ["History"]
  DUPTABLE R18 K95 [{"Apply", "CopySelected", "CutSelected", "DeleteSelected", "DuplicateSelected", "EditPlane", "PasteSelected", "Quit"}]
  LOADK R19 K87 ["Apply"]
  SETTABLEKS R19 R18 K87 ["Apply"]
  LOADK R19 K88 ["CopySelected"]
  SETTABLEKS R19 R18 K88 ["CopySelected"]
  LOADK R19 K89 ["CutSelected"]
  SETTABLEKS R19 R18 K89 ["CutSelected"]
  LOADK R19 K90 ["DeleteSelected"]
  SETTABLEKS R19 R18 K90 ["DeleteSelected"]
  LOADK R19 K91 ["DuplicateSelected"]
  SETTABLEKS R19 R18 K91 ["DuplicateSelected"]
  LOADK R19 K92 ["EditPlane"]
  SETTABLEKS R19 R18 K92 ["EditPlane"]
  LOADK R19 K93 ["PasteSelected"]
  SETTABLEKS R19 R18 K93 ["PasteSelected"]
  LOADK R19 K94 ["Quit"]
  SETTABLEKS R19 R18 K94 ["Quit"]
  DUPTABLE R19 K101 [{"Biomes", "BiomeBlending", "BiomeSize", "Caves", "Seed", "Generate"}]
  LOADK R20 K96 ["Biomes"]
  SETTABLEKS R20 R19 K96 ["Biomes"]
  LOADK R20 K97 ["BiomeBlending"]
  SETTABLEKS R20 R19 K97 ["BiomeBlending"]
  LOADK R20 K98 ["BiomeSize"]
  SETTABLEKS R20 R19 K98 ["BiomeSize"]
  LOADK R20 K99 ["Caves"]
  SETTABLEKS R20 R19 K99 ["Caves"]
  LOADK R20 K100 ["Seed"]
  SETTABLEKS R20 R19 K100 ["Seed"]
  LOADK R20 K14 ["Generate"]
  SETTABLEKS R20 R19 K14 ["Generate"]
  DUPTABLE R20 K104 [{"Height", "Size"}]
  LOADK R21 K102 ["Height"]
  SETTABLEKS R21 R20 K102 ["Height"]
  LOADK R21 K103 ["Size"]
  SETTABLEKS R21 R20 K103 ["Size"]
  DUPTABLE R21 K117 [{"BrushMode", "BrushSize", "BrushShape", "FixedPlane", "FlattenMode", "FlattenPlane", "IgnoreParts", "IgnoreWater", "ManualPlaneLock", "PivotPosition", "PlaneLock", "PlanePosition", "PlaneRotation", "PlaneTransform", "PullTerrain", "Snapping", "State", "Strength", "TemporarySmooth", "WaterAutofill"}]
  LOADK R22 K66 ["BrushMode"]
  SETTABLEKS R22 R21 K66 ["BrushMode"]
  LOADK R22 K53 ["BrushSize"]
  SETTABLEKS R22 R21 K53 ["BrushSize"]
  LOADK R22 K67 ["BrushShape"]
  SETTABLEKS R22 R21 K67 ["BrushShape"]
  LOADK R22 K105 ["FixedPlane"]
  SETTABLEKS R22 R21 K105 ["FixedPlane"]
  LOADK R22 K70 ["FlattenMode"]
  SETTABLEKS R22 R21 K70 ["FlattenMode"]
  LOADK R22 K69 ["FlattenPlane"]
  SETTABLEKS R22 R21 K69 ["FlattenPlane"]
  LOADK R22 K106 ["IgnoreParts"]
  SETTABLEKS R22 R21 K106 ["IgnoreParts"]
  LOADK R22 K107 ["IgnoreWater"]
  SETTABLEKS R22 R21 K107 ["IgnoreWater"]
  LOADK R22 K108 ["ManualPlaneLock"]
  SETTABLEKS R22 R21 K108 ["ManualPlaneLock"]
  LOADK R22 K71 ["PivotPosition"]
  SETTABLEKS R22 R21 K71 ["PivotPosition"]
  LOADK R22 K72 ["PlaneLock"]
  SETTABLEKS R22 R21 K72 ["PlaneLock"]
  LOADK R22 K109 ["PlanePosition"]
  SETTABLEKS R22 R21 K109 ["PlanePosition"]
  LOADK R22 K110 ["PlaneRotation"]
  SETTABLEKS R22 R21 K110 ["PlaneRotation"]
  LOADK R22 K111 ["PlaneTransform"]
  SETTABLEKS R22 R21 K111 ["PlaneTransform"]
  LOADK R22 K112 ["PullTerrain"]
  SETTABLEKS R22 R21 K112 ["PullTerrain"]
  LOADK R22 K74 ["Snapping"]
  SETTABLEKS R22 R21 K74 ["Snapping"]
  LOADK R22 K113 ["State"]
  SETTABLEKS R22 R21 K113 ["State"]
  LOADK R22 K114 ["Strength"]
  SETTABLEKS R22 R21 K114 ["Strength"]
  LOADK R22 K115 ["TemporarySmooth"]
  SETTABLEKS R22 R21 K115 ["TemporarySmooth"]
  LOADK R22 K116 ["WaterAutofill"]
  SETTABLEKS R22 R21 K116 ["WaterAutofill"]
  DUPTABLE R22 K118 [{"Clear"}]
  LOADK R23 K9 ["Clear"]
  SETTABLEKS R23 R22 K9 ["Clear"]
  DUPTABLE R23 K122 [{"Heightmap", "Colormap", "DefaultMaterial", "Import"}]
  LOADK R24 K119 ["Heightmap"]
  SETTABLEKS R24 R23 K119 ["Heightmap"]
  LOADK R24 K120 ["Colormap"]
  SETTABLEKS R24 R23 K120 ["Colormap"]
  LOADK R24 K121 ["DefaultMaterial"]
  SETTABLEKS R24 R23 K121 ["DefaultMaterial"]
  LOADK R24 K15 ["Import"]
  SETTABLEKS R24 R23 K15 ["Import"]
  DUPTABLE R24 K126 [{"Apply", "AutoMaterial", "FillMode", "MaterialMode", "SourceMaterial", "TargetMaterial"}]
  LOADK R25 K87 ["Apply"]
  SETTABLEKS R25 R24 K87 ["Apply"]
  LOADK R25 K123 ["AutoMaterial"]
  SETTABLEKS R25 R24 K123 ["AutoMaterial"]
  LOADK R25 K68 ["FillMode"]
  SETTABLEKS R25 R24 K68 ["FillMode"]
  LOADK R25 K73 ["MaterialMode"]
  SETTABLEKS R25 R24 K73 ["MaterialMode"]
  LOADK R25 K124 ["SourceMaterial"]
  SETTABLEKS R25 R24 K124 ["SourceMaterial"]
  LOADK R25 K125 ["TargetMaterial"]
  SETTABLEKS R25 R24 K125 ["TargetMaterial"]
  DUPTABLE R25 K131 [{"Create", "Evaporate", "OperationSource", "Position", "Size", "SnapToVoxels", "Transform"}]
  LOADK R26 K25 ["Create"]
  SETTABLEKS R26 R25 K25 ["Create"]
  LOADK R26 K127 ["Evaporate"]
  SETTABLEKS R26 R25 K127 ["Evaporate"]
  LOADK R26 K128 ["OperationSource"]
  SETTABLEKS R26 R25 K128 ["OperationSource"]
  LOADK R26 K129 ["Position"]
  SETTABLEKS R26 R25 K129 ["Position"]
  LOADK R26 K103 ["Size"]
  SETTABLEKS R26 R25 K103 ["Size"]
  LOADK R26 K130 ["SnapToVoxels"]
  SETTABLEKS R26 R25 K130 ["SnapToVoxels"]
  LOADK R26 K22 ["Transform"]
  SETTABLEKS R26 R25 K22 ["Transform"]
  DUPTABLE R26 K134 [{"OperationSource", "Position", "Rotation", "Size", "SnapToVoxels", "Transform", "TransformMode"}]
  LOADK R27 K128 ["OperationSource"]
  SETTABLEKS R27 R26 K128 ["OperationSource"]
  LOADK R27 K129 ["Position"]
  SETTABLEKS R27 R26 K129 ["Position"]
  LOADK R27 K132 ["Rotation"]
  SETTABLEKS R27 R26 K132 ["Rotation"]
  LOADK R27 K103 ["Size"]
  SETTABLEKS R27 R26 K103 ["Size"]
  LOADK R27 K130 ["SnapToVoxels"]
  SETTABLEKS R27 R26 K130 ["SnapToVoxels"]
  LOADK R27 K22 ["Transform"]
  SETTABLEKS R27 R26 K22 ["Transform"]
  LOADK R27 K133 ["TransformMode"]
  SETTABLEKS R27 R26 K133 ["TransformMode"]
  DUPTABLE R27 K144 [{"Apply", "ForcePreview", "LiveEdit", "MergeEmpty", "OperationSource", "Position", "Rotation", "Size", "SnapToVoxels", "TerrainRegion", "TerrainRegionSize", "TerrainRegionTransform", "TerrainRegionBuffer", "TerrainRegionBufferSize", "TerrainRegionBufferTransform", "Transform", "TransformMode"}]
  LOADK R28 K87 ["Apply"]
  SETTABLEKS R28 R27 K87 ["Apply"]
  LOADK R28 K135 ["ForcePreview"]
  SETTABLEKS R28 R27 K135 ["ForcePreview"]
  LOADK R28 K136 ["LiveEdit"]
  SETTABLEKS R28 R27 K136 ["LiveEdit"]
  LOADK R28 K137 ["MergeEmpty"]
  SETTABLEKS R28 R27 K137 ["MergeEmpty"]
  LOADK R28 K128 ["OperationSource"]
  SETTABLEKS R28 R27 K128 ["OperationSource"]
  LOADK R28 K129 ["Position"]
  SETTABLEKS R28 R27 K129 ["Position"]
  LOADK R28 K132 ["Rotation"]
  SETTABLEKS R28 R27 K132 ["Rotation"]
  LOADK R28 K103 ["Size"]
  SETTABLEKS R28 R27 K103 ["Size"]
  LOADK R28 K130 ["SnapToVoxels"]
  SETTABLEKS R28 R27 K130 ["SnapToVoxels"]
  LOADK R28 K138 ["TerrainRegion"]
  SETTABLEKS R28 R27 K138 ["TerrainRegion"]
  LOADK R28 K139 ["TerrainRegionSize"]
  SETTABLEKS R28 R27 K139 ["TerrainRegionSize"]
  LOADK R28 K140 ["TerrainRegionTransform"]
  SETTABLEKS R28 R27 K140 ["TerrainRegionTransform"]
  LOADK R28 K141 ["TerrainRegionBuffer"]
  SETTABLEKS R28 R27 K141 ["TerrainRegionBuffer"]
  LOADK R28 K142 ["TerrainRegionBufferSize"]
  SETTABLEKS R28 R27 K142 ["TerrainRegionBufferSize"]
  LOADK R28 K143 ["TerrainRegionBufferTransform"]
  SETTABLEKS R28 R27 K143 ["TerrainRegionBufferTransform"]
  LOADK R28 K22 ["Transform"]
  SETTABLEKS R28 R27 K22 ["Transform"]
  LOADK R28 K133 ["TransformMode"]
  SETTABLEKS R28 R27 K133 ["TransformMode"]
  DUPTABLE R28 K146 [{"Shorelines"}]
  LOADK R29 K145 ["Shorelines"]
  SETTABLEKS R29 R28 K145 ["Shorelines"]
  DUPTABLE R29 K156 [{"BiomeSettings", "BrushSettings", "ClearSettings", "HeightmapSettings", "MaterialSettings", "SeaLevelSettings", "SelectionSettings", "TransformSettings", "Upgrades"}]
  LOADK R30 K147 ["BiomeSettings"]
  SETTABLEKS R30 R29 K147 ["BiomeSettings"]
  LOADK R30 K148 ["BrushSettings"]
  SETTABLEKS R30 R29 K148 ["BrushSettings"]
  LOADK R30 K149 ["ClearSettings"]
  SETTABLEKS R30 R29 K149 ["ClearSettings"]
  LOADK R30 K150 ["HeightmapSettings"]
  SETTABLEKS R30 R29 K150 ["HeightmapSettings"]
  LOADK R30 K151 ["MaterialSettings"]
  SETTABLEKS R30 R29 K151 ["MaterialSettings"]
  LOADK R30 K152 ["SeaLevelSettings"]
  SETTABLEKS R30 R29 K152 ["SeaLevelSettings"]
  LOADK R30 K153 ["SelectionSettings"]
  SETTABLEKS R30 R29 K153 ["SelectionSettings"]
  LOADK R30 K154 ["TransformSettings"]
  SETTABLEKS R30 R29 K154 ["TransformSettings"]
  LOADK R30 K155 ["Upgrades"]
  SETTABLEKS R30 R29 K155 ["Upgrades"]
  DUPTABLE R30 K160 [{"Global", "LocalPersistent", "LocalSession"}]
  LOADK R31 K157 ["Global"]
  SETTABLEKS R31 R30 K157 ["Global"]
  LOADK R31 K158 ["LocalPersistent"]
  SETTABLEKS R31 R30 K158 ["LocalPersistent"]
  LOADK R31 K159 ["LocalSession"]
  SETTABLEKS R31 R30 K159 ["LocalSession"]
  DUPTABLE R31 K165 [{"Brush", "Note", "Plane", "Region"}]
  LOADK R32 K161 ["Brush"]
  SETTABLEKS R32 R31 K161 ["Brush"]
  LOADK R32 K162 ["Note"]
  SETTABLEKS R32 R31 K162 ["Note"]
  LOADK R32 K163 ["Plane"]
  SETTABLEKS R32 R31 K163 ["Plane"]
  LOADK R32 K164 ["Region"]
  SETTABLEKS R32 R31 K164 ["Region"]
  DUPTABLE R32 K168 [{"Dimensions", "Filename"}]
  LOADK R33 K166 ["Dimensions"]
  SETTABLEKS R33 R32 K166 ["Dimensions"]
  LOADK R33 K167 ["Filename"]
  SETTABLEKS R33 R32 K167 ["Filename"]
  DUPTABLE R33 K172 [{"Cancel", "Pause", "Resume"}]
  LOADK R34 K169 ["Cancel"]
  SETTABLEKS R34 R33 K169 ["Cancel"]
  LOADK R34 K170 ["Pause"]
  SETTABLEKS R34 R33 K170 ["Pause"]
  LOADK R34 K171 ["Resume"]
  SETTABLEKS R34 R33 K171 ["Resume"]
  DUPTABLE R34 K173 [{"Transform"}]
  LOADK R35 K22 ["Transform"]
  SETTABLEKS R35 R34 K22 ["Transform"]
  NEWTABLE R35 64 0
  SETTABLEKS R13 R35 K96 ["Biomes"]
  SETTABLEKS R19 R35 K147 ["BiomeSettings"]
  SETTABLEKS R4 R35 K66 ["BrushMode"]
  SETTABLEKS R21 R35 K148 ["BrushSettings"]
  SETTABLEKS R5 R35 K67 ["BrushShape"]
  SETTABLEKS R20 R35 K174 ["BrushSizeType"]
  SETTABLEKS R29 R35 K175 ["Categories"]
  SETTABLEKS R22 R35 K149 ["ClearSettings"]
  SETTABLEKS R33 R35 K176 ["DialogOption"]
  SETTABLEKS R14 R35 K177 ["EditorEnum"]
  SETTABLEKS R15 R35 K178 ["EditorEnumIndeces"]
  SETTABLEKS R6 R35 K68 ["FillMode"]
  SETTABLEKS R7 R35 K70 ["FlattenMode"]
  SETTABLEKS R8 R35 K69 ["FlattenPlane"]
  SETTABLEKS R31 R35 K84 ["Gizmo"]
  SETTABLEKS R23 R35 K150 ["HeightmapSettings"]
  SETTABLEKS R34 R35 K162 ["Note"]
  SETTABLEKS R11 R35 K73 ["MaterialMode"]
  SETTABLEKS R24 R35 K151 ["MaterialSettings"]
  SETTABLEKS R32 R35 K179 ["MetadataItem"]
  SETTABLEKS R17 R35 K128 ["OperationSource"]
  SETTABLEKS R9 R35 K71 ["PivotPosition"]
  SETTABLEKS R10 R35 K72 ["PlaneLock"]
  SETTABLEKS R18 R35 K180 ["PluginAction"]
  SETTABLEKS R25 R35 K152 ["SeaLevelSettings"]
  SETTABLEKS R26 R35 K153 ["SelectionSettings"]
  SETTABLEKS R12 R35 K74 ["Snapping"]
  SETTABLEKS R30 R35 K181 ["Storage"]
  SETTABLEKS R3 R35 K182 ["ToolCategories"]
  SETTABLEKS R2 R35 K183 ["Tools"]
  SETTABLEKS R16 R35 K133 ["TransformMode"]
  SETTABLEKS R27 R35 K154 ["TransformSettings"]
  SETTABLEKS R28 R35 K155 ["Upgrades"]
  RETURN R35 1
