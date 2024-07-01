PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R4 K1 ["CageEditingTool"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["new"]
  CALL R3 1 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["useState"]
  LOADN R5 50
  CALL R4 1 2
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["useState"]
  LOADK R7 K4 [0.3]
  CALL R6 1 2
  GETUPVAL R8 5
  LOADB R9 1
  CALL R8 1 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K3 ["useState"]
  NEWTABLE R10 0 0
  CALL R9 1 2
  GETUPVAL R11 6
  MOVE R12 R9
  CALL R11 1 0
  GETUPVAL R12 7
  GETTABLEKS R11 R12 K5 ["provide"]
  NEWTABLE R12 0 1
  GETUPVAL R14 8
  GETTABLEKS R13 R14 K2 ["new"]
  DUPTABLE R14 K7 [{"BrushTool"}]
  GETTABLEKS R15 R3 K8 ["current"]
  SETTABLEKS R15 R14 K6 ["BrushTool"]
  CALL R13 1 -1
  SETLIST R12 R13 -1 [1]
  NEWTABLE R13 2 0
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 9
  DUPTABLE R16 K15 [{"Mannequin", "Falloff", "Radius", "OnChangeSelectedPositions", "Symmetrical"}]
  GETTABLEKS R17 R0 K16 ["mannequin"]
  SETTABLEKS R17 R16 K10 ["Mannequin"]
  DIVK R19 R4 K17 [100]
  MUL R18 R19 R6
  GETUPVAL R20 10
  GETTABLEKS R19 R20 K18 ["FALLOFF_CURSOR_ADJUSTMENT"]
  DIV R17 R18 R19
  SETTABLEKS R17 R16 K11 ["Falloff"]
  SETTABLEKS R6 R16 K12 ["Radius"]
  SETTABLEKS R10 R16 K13 ["OnChangeSelectedPositions"]
  GETTABLEKS R17 R8 K19 ["enabled"]
  SETTABLEKS R17 R16 K14 ["Symmetrical"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K1 ["CageEditingTool"]
  GETUPVAL R16 10
  GETTABLEKS R15 R16 K20 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R14 R15 K21 ["CageEditingToolToolbar"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K9 ["createElement"]
  GETUPVAL R17 11
  GETTABLEKS R16 R17 K22 ["Toolbar"]
  DUPTABLE R17 K24 [{"HorizontalItems"}]
  NEWTABLE R18 0 6
  DUPTABLE R19 K32 [{"Type", "Icon", "Tooltip", "TooltipDescription", "Value", "OnClick", "Selected"}]
  LOADK R20 K33 ["Button"]
  SETTABLEKS R20 R19 K25 ["Type"]
  GETTABLEKS R20 R2 K34 ["SymmetryImage"]
  SETTABLEKS R20 R19 K26 ["Icon"]
  LOADK R22 K1 ["CageEditingTool"]
  LOADK R23 K35 ["Symmetry"]
  NAMECALL R20 R1 K36 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K27 ["Tooltip"]
  LOADK R22 K1 ["CageEditingTool"]
  LOADK R23 K37 ["SymmetryDescription"]
  NAMECALL R20 R1 K36 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K28 ["TooltipDescription"]
  GETTABLEKS R20 R8 K19 ["enabled"]
  SETTABLEKS R20 R19 K29 ["Value"]
  GETTABLEKS R20 R8 K38 ["toggle"]
  SETTABLEKS R20 R19 K30 ["OnClick"]
  GETTABLEKS R20 R8 K19 ["enabled"]
  SETTABLEKS R20 R19 K31 ["Selected"]
  DUPTABLE R20 K39 [{"Type"}]
  LOADK R21 K40 ["Separator"]
  SETTABLEKS R21 R20 K25 ["Type"]
  DUPTABLE R21 K44 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "Min", "Max"}]
  LOADK R22 K45 ["Slider"]
  SETTABLEKS R22 R21 K25 ["Type"]
  SETTABLEKS R6 R21 K29 ["Value"]
  SETTABLEKS R7 R21 K41 ["OnChange"]
  LOADK R22 K46 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/radius@2x.png"]
  SETTABLEKS R22 R21 K26 ["Icon"]
  LOADK R24 K1 ["CageEditingTool"]
  LOADK R25 K12 ["Radius"]
  NAMECALL R22 R1 K36 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K27 ["Tooltip"]
  LOADK R22 K47 [0.1]
  SETTABLEKS R22 R21 K42 ["Min"]
  LOADK R22 K48 [0.5]
  SETTABLEKS R22 R21 K43 ["Max"]
  DUPTABLE R22 K51 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "Min", "Max", "InputPrecision", "DisplayFormat"}]
  LOADK R23 K45 ["Slider"]
  SETTABLEKS R23 R22 K25 ["Type"]
  SETTABLEKS R4 R22 K29 ["Value"]
  SETTABLEKS R5 R22 K41 ["OnChange"]
  LOADK R23 K46 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/radius@2x.png"]
  SETTABLEKS R23 R22 K26 ["Icon"]
  LOADK R25 K1 ["CageEditingTool"]
  LOADK R26 K11 ["Falloff"]
  NAMECALL R23 R1 K36 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K27 ["Tooltip"]
  LOADN R23 0
  SETTABLEKS R23 R22 K42 ["Min"]
  LOADN R23 100
  SETTABLEKS R23 R22 K43 ["Max"]
  LOADN R23 0
  SETTABLEKS R23 R22 K49 ["InputPrecision"]
  LOADK R23 K52 ["%d%%"]
  SETTABLEKS R23 R22 K50 ["DisplayFormat"]
  DUPTABLE R23 K39 [{"Type"}]
  LOADK R24 K40 ["Separator"]
  SETTABLEKS R24 R23 K25 ["Type"]
  GETTABLEKS R25 R0 K53 ["additionalToolbarItems"]
  FASTCALL1 TABLE_UNPACK R25 [+2]
  GETIMPORT R24 K55 [unpack]
  CALL R24 1 -1
  SETLIST R18 R19 -1 [1]
  SETTABLEKS R18 R17 K23 ["HorizontalItems"]
  CALL R15 2 1
  SETTABLE R15 R13 R14
  CALL R11 2 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AvatarToolsShared"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K9 ["LuaMeshEditingModule"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["ViewportToolingFramework"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K13 ["Components"]
  GETTABLEKS R9 R10 K14 ["EditingTools"]
  GETTABLEKS R8 R9 K15 ["CageEditingTool"]
  GETTABLEKS R7 R8 K16 ["LuaMeshEditingModuleWrapper"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K17 ["Util"]
  GETTABLEKS R8 R9 K18 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K19 ["Resources"]
  GETTABLEKS R9 R10 K20 ["Theme"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K21 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K13 ["Components"]
  GETTABLEKS R12 R13 K14 ["EditingTools"]
  GETTABLEKS R11 R12 K22 ["useBindFocusOnPositions"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K23 ["Hooks"]
  GETTABLEKS R12 R13 K24 ["useRefWithInitial"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K12 ["Src"]
  GETTABLEKS R14 R15 K23 ["Hooks"]
  GETTABLEKS R13 R14 K25 ["useToggleState"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R3 K26 ["Tools"]
  GETTABLEKS R14 R15 K27 ["BrushTool"]
  CALL R13 1 1
  GETTABLEKS R14 R2 K28 ["ContextServices"]
  GETTABLEKS R15 R14 K29 ["Localization"]
  GETTABLEKS R17 R1 K30 ["Contexts"]
  GETTABLEKS R16 R17 K31 ["LuaMeshEditingModuleContext"]
  GETTABLEKS R17 R14 K32 ["Stylizer"]
  DUPCLOSURE R18 K33 [PROTO_0]
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R18 1
