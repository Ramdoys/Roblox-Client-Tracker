PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  JUMP [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R4 3
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["join"]
  GETTABLEKS R4 R1 K9 ["Style"]
  GETTABLEKS R6 R4 K10 ["Themes"]
  GETTABLEKS R5 R6 K11 ["StudioTheme"]
  GETTABLEKS R7 R4 K10 ["Themes"]
  GETTABLEKS R6 R7 K12 ["DarkTheme"]
  GETTABLEKS R8 R4 K10 ["Themes"]
  GETTABLEKS R7 R8 K13 ["LightTheme"]
  GETTABLEKS R8 R4 K14 ["StyleKey"]
  GETTABLEKS R10 R1 K15 ["Util"]
  GETTABLEKS R9 R10 K16 ["StyleModifier"]
  GETTABLEKS R11 R4 K10 ["Themes"]
  GETTABLEKS R10 R11 K17 ["BaseTheme"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K18 ["Src"]
  GETTABLEKS R13 R14 K19 ["Resources"]
  GETTABLEKS R12 R13 K20 ["Constants"]
  CALL R11 1 1
  GETTABLEKS R12 R4 K21 ["ComponentSymbols"]
  LOADK R15 K22 ["DraggablePoint"]
  NAMECALL R13 R12 K23 ["add"]
  CALL R13 2 0
  LOADK R15 K24 ["Line"]
  NAMECALL R13 R12 K23 ["add"]
  CALL R13 2 0
  LOADK R15 K25 ["ControlPointVisual"]
  NAMECALL R13 R12 K23 ["add"]
  CALL R13 2 0
  GETIMPORT R13 K28 [string.format]
  LOADK R14 K29 ["rbxasset://studio_svg_textures/Lua/PathEditor/%s/Large/"]
  LOADK R15 K30 ["Light"]
  CALL R13 2 1
  GETIMPORT R14 K28 [string.format]
  LOADK R15 K29 ["rbxasset://studio_svg_textures/Lua/PathEditor/%s/Large/"]
  LOADK R16 K31 ["Dark"]
  CALL R14 2 1
  NEWTABLE R15 8 0
  GETTABLEKS R16 R12 K32 ["Image"]
  GETTABLEKS R17 R2 K8 ["join"]
  GETTABLEKS R19 R12 K32 ["Image"]
  GETTABLE R18 R10 R19
  NEWTABLE R19 2 0
  DUPTABLE R20 K35 [{"Image", "Size", "AnchorPoint"}]
  LOADK R21 K36 ["rbxasset://textures/PathEditor/Control_Point_Selected.png"]
  SETTABLEKS R21 R20 K32 ["Image"]
  GETIMPORT R21 K39 [UDim2.fromOffset]
  LOADN R22 12
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K33 ["Size"]
  GETIMPORT R21 K42 [Vector2.new]
  LOADK R22 K43 [0.5]
  LOADK R23 K43 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K34 ["AnchorPoint"]
  SETTABLEKS R20 R19 K44 ["&ControlPoint"]
  DUPTABLE R20 K46 [{"Image", "Size", "AnchorPoint", "ImageTransparency"}]
  LOADK R21 K47 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R21 R20 K32 ["Image"]
  GETIMPORT R21 K39 [UDim2.fromOffset]
  LOADN R22 12
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K33 ["Size"]
  GETIMPORT R21 K42 [Vector2.new]
  LOADK R22 K43 [0.5]
  LOADK R23 K43 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K34 ["AnchorPoint"]
  LOADK R21 K43 [0.5]
  SETTABLEKS R21 R20 K45 ["ImageTransparency"]
  SETTABLEKS R20 R19 K48 ["&PhantomTangent"]
  CALL R17 2 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K49 ["Button"]
  GETTABLEKS R17 R2 K8 ["join"]
  GETTABLEKS R19 R12 K49 ["Button"]
  GETTABLE R18 R10 R19
  NEWTABLE R19 1 0
  GETTABLEKS R20 R2 K8 ["join"]
  GETTABLEKS R23 R12 K49 ["Button"]
  GETTABLE R22 R10 R23
  GETTABLEKS R21 R22 K50 ["&RoundSubtle"]
  NEWTABLE R22 1 0
  GETTABLEKS R23 R9 K51 ["Disabled"]
  DUPTABLE R24 K54 [{"BackgroundStyle", "TextColor"}]
  GETTABLEKS R25 R2 K8 ["join"]
  GETTABLEKS R27 R12 K55 ["RoundBox"]
  GETTABLE R26 R10 R27
  DUPTABLE R27 K57 [{"Color"}]
  GETTABLEKS R28 R8 K58 ["ActionActivated"]
  SETTABLEKS R28 R27 K56 ["Color"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K52 ["BackgroundStyle"]
  GETTABLEKS R25 R8 K59 ["ActionFocusBorder"]
  SETTABLEKS R25 R24 K53 ["TextColor"]
  SETTABLE R24 R22 R23
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["&ModeButton"]
  CALL R17 2 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K24 ["Line"]
  NEWTABLE R17 8 0
  LOADN R18 1
  SETTABLEKS R18 R17 K61 ["Thickness"]
  GETIMPORT R18 K63 [Color3.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R18 3 1
  SETTABLEKS R18 R17 K56 ["Color"]
  DUPTABLE R18 K65 [{"Color", "ContrastColor"}]
  GETIMPORT R19 K63 [Color3.new]
  LOADN R20 250
  LOADN R21 250
  LOADN R22 250
  CALL R19 3 1
  SETTABLEKS R19 R18 K56 ["Color"]
  GETTABLEKS R19 R8 K59 ["ActionFocusBorder"]
  SETTABLEKS R19 R18 K64 ["ContrastColor"]
  SETTABLEKS R18 R17 K66 ["&Tangent"]
  DUPTABLE R18 K65 [{"Color", "ContrastColor"}]
  GETIMPORT R19 K63 [Color3.new]
  LOADN R20 250
  LOADN R21 250
  LOADN R22 250
  CALL R19 3 1
  SETTABLEKS R19 R18 K56 ["Color"]
  GETTABLEKS R19 R8 K59 ["ActionFocusBorder"]
  SETTABLEKS R19 R18 K64 ["ContrastColor"]
  SETTABLEKS R18 R17 K48 ["&PhantomTangent"]
  DUPTABLE R18 K65 [{"Color", "ContrastColor"}]
  GETIMPORT R19 K63 [Color3.new]
  LOADN R20 250
  LOADN R21 250
  LOADN R22 250
  CALL R19 3 1
  SETTABLEKS R19 R18 K56 ["Color"]
  GETTABLEKS R19 R8 K59 ["ActionFocusBorder"]
  SETTABLEKS R19 R18 K64 ["ContrastColor"]
  SETTABLEKS R18 R17 K67 ["&Visualization"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K22 ["DraggablePoint"]
  NEWTABLE R17 16 0
  GETTABLEKS R18 R11 K68 ["PointSize"]
  SETTABLEKS R18 R17 K68 ["PointSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K69 ["BackgroundTransparency"]
  LOADB R18 0
  SETTABLEKS R18 R17 K70 ["HasControlPointVisual"]
  DUPTABLE R18 K71 [{"AnchorPoint"}]
  GETIMPORT R19 K42 [Vector2.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["AnchorPoint"]
  SETTABLEKS R18 R17 K72 ["&AddPoint"]
  DUPTABLE R18 K75 [{"StrokeWidth", "StrokeColor"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K73 ["StrokeWidth"]
  GETIMPORT R19 K63 [Color3.new]
  LOADN R20 250
  LOADN R21 250
  LOADN R22 250
  CALL R19 3 1
  SETTABLEKS R19 R18 K74 ["StrokeColor"]
  SETTABLEKS R18 R17 K76 ["&RubberBand"]
  NEWTABLE R18 8 0
  LOADB R19 1
  SETTABLEKS R19 R18 K70 ["HasControlPointVisual"]
  LOADN R19 6
  SETTABLEKS R19 R18 K77 ["Padding"]
  GETIMPORT R19 K42 [Vector2.new]
  LOADK R20 K43 [0.5]
  LOADK R21 K43 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["AnchorPoint"]
  LOADK R19 K78 ["rbxasset://textures/PathEditor/Control_Point.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  GETTABLEKS R19 R9 K80 ["Hover"]
  DUPTABLE R20 K81 [{"BackgroundImage"}]
  LOADK R21 K82 ["rbxasset://textures/PathEditor/Control_Point_Hover.png"]
  SETTABLEKS R21 R20 K79 ["BackgroundImage"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K83 ["Selected"]
  DUPTABLE R20 K84 [{"BackgroundImage", "Padding"}]
  LOADK R21 K36 ["rbxasset://textures/PathEditor/Control_Point_Selected.png"]
  SETTABLEKS R21 R20 K79 ["BackgroundImage"]
  LOADN R21 4
  SETTABLEKS R21 R20 K77 ["Padding"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K44 ["&ControlPoint"]
  DUPTABLE R18 K85 [{"HasControlPointVisual", "AnchorPoint", "BackgroundImage", "PointSize"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K70 ["HasControlPointVisual"]
  GETIMPORT R19 K42 [Vector2.new]
  LOADK R20 K43 [0.5]
  LOADK R21 K43 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["AnchorPoint"]
  LOADK R19 K78 ["rbxasset://textures/PathEditor/Control_Point.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  GETIMPORT R19 K42 [Vector2.new]
  LOADN R20 6
  LOADN R21 6
  CALL R19 2 1
  SETTABLEKS R19 R18 K68 ["PointSize"]
  SETTABLEKS R18 R17 K86 ["&PhantomControlPoint"]
  NEWTABLE R18 8 0
  LOADB R19 1
  SETTABLEKS R19 R18 K70 ["HasControlPointVisual"]
  LOADN R19 4
  SETTABLEKS R19 R18 K77 ["Padding"]
  GETIMPORT R19 K42 [Vector2.new]
  LOADK R20 K43 [0.5]
  LOADK R21 K43 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["AnchorPoint"]
  LOADN R19 1
  SETTABLEKS R19 R18 K69 ["BackgroundTransparency"]
  LOADK R19 K47 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  GETTABLEKS R19 R9 K80 ["Hover"]
  DUPTABLE R20 K81 [{"BackgroundImage"}]
  LOADK R21 K87 ["rbxasset://textures/PathEditor/Tangent_Handle_Hover.png"]
  SETTABLEKS R21 R20 K79 ["BackgroundImage"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K83 ["Selected"]
  DUPTABLE R20 K88 [{"Padding", "BackgroundImage"}]
  LOADN R21 2
  SETTABLEKS R21 R20 K77 ["Padding"]
  LOADK R21 K89 ["rbxasset://textures/PathEditor/Tangent_Handle_Selected.png"]
  SETTABLEKS R21 R20 K79 ["BackgroundImage"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K66 ["&Tangent"]
  DUPTABLE R18 K90 [{"HasControlPointVisual", "Padding", "AnchorPoint", "BackgroundImage"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K70 ["HasControlPointVisual"]
  LOADN R19 4
  SETTABLEKS R19 R18 K77 ["Padding"]
  GETIMPORT R19 K42 [Vector2.new]
  LOADK R20 K43 [0.5]
  LOADK R21 K43 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["AnchorPoint"]
  LOADK R19 K47 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  SETTABLEKS R18 R17 K48 ["&PhantomTangent"]
  DUPTABLE R18 K91 [{"HasControlPointVisual", "BackgroundImage", "AnchorPoint", "BackgroundTransparency"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K70 ["HasControlPointVisual"]
  LOADK R19 K47 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  GETIMPORT R19 K42 [Vector2.new]
  LOADK R20 K43 [0.5]
  LOADK R21 K43 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["AnchorPoint"]
  LOADN R19 1
  SETTABLEKS R19 R18 K69 ["BackgroundTransparency"]
  SETTABLEKS R18 R17 K92 ["&HiddenTangent"]
  NEWTABLE R18 8 0
  LOADB R19 1
  SETTABLEKS R19 R18 K70 ["HasControlPointVisual"]
  GETIMPORT R19 K42 [Vector2.new]
  LOADK R20 K43 [0.5]
  LOADK R21 K43 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["AnchorPoint"]
  GETIMPORT R19 K42 [Vector2.new]
  LOADN R20 5
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K68 ["PointSize"]
  LOADK R19 K47 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  GETTABLEKS R19 R9 K83 ["Selected"]
  DUPTABLE R20 K75 [{"StrokeWidth", "StrokeColor"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K73 ["StrokeWidth"]
  GETTABLEKS R21 R8 K59 ["ActionFocusBorder"]
  SETTABLEKS R21 R20 K74 ["StrokeColor"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K93 ["&ScaleHandle"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K25 ["ControlPointVisual"]
  NEWTABLE R17 16 0
  GETIMPORT R18 K39 [UDim2.fromOffset]
  LOADN R19 5
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K68 ["PointSize"]
  GETIMPORT R18 K95 [Color3.fromRGB]
  LOADN R19 250
  LOADN R20 250
  LOADN R21 250
  CALL R18 3 1
  SETTABLEKS R18 R17 K96 ["BackgroundColor3"]
  GETTABLEKS R18 R8 K59 ["ActionFocusBorder"]
  SETTABLEKS R18 R17 K74 ["StrokeColor"]
  LOADK R18 K97 [1.5]
  SETTABLEKS R18 R17 K73 ["StrokeWidth"]
  GETIMPORT R18 K101 [Enum.LineJoinMode.Round]
  SETTABLEKS R18 R17 K99 ["LineJoinMode"]
  DUPTABLE R18 K103 [{"CornerRadius"}]
  GETIMPORT R19 K105 [UDim.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K102 ["CornerRadius"]
  SETTABLEKS R18 R17 K106 ["AddPoint"]
  NEWTABLE R18 4 0
  GETIMPORT R19 K105 [UDim.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K102 ["CornerRadius"]
  GETTABLEKS R19 R9 K80 ["Hover"]
  DUPTABLE R20 K107 [{"PointSize"}]
  GETIMPORT R21 K39 [UDim2.fromOffset]
  LOADN R22 7
  LOADN R23 7
  CALL R21 2 1
  SETTABLEKS R21 R20 K68 ["PointSize"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K83 ["Selected"]
  DUPTABLE R20 K108 [{"PointSize", "BackgroundColor3", "StrokeColor"}]
  GETIMPORT R21 K39 [UDim2.fromOffset]
  LOADN R22 7
  LOADN R23 7
  CALL R21 2 1
  SETTABLEKS R21 R20 K68 ["PointSize"]
  GETTABLEKS R21 R8 K59 ["ActionFocusBorder"]
  SETTABLEKS R21 R20 K96 ["BackgroundColor3"]
  GETIMPORT R21 K95 [Color3.fromRGB]
  LOADN R22 250
  LOADN R23 250
  LOADN R24 250
  CALL R21 3 1
  SETTABLEKS R21 R20 K74 ["StrokeColor"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K109 ["ControlPoint"]
  DUPTABLE R18 K110 [{"CornerRadius", "PointSize", "StrokeWidth"}]
  GETIMPORT R19 K105 [UDim.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K102 ["CornerRadius"]
  GETIMPORT R19 K39 [UDim2.fromOffset]
  LOADN R20 2
  LOADN R21 2
  CALL R19 2 1
  SETTABLEKS R19 R18 K68 ["PointSize"]
  LOADN R19 1
  SETTABLEKS R19 R18 K73 ["StrokeWidth"]
  SETTABLEKS R18 R17 K111 ["PhantomControlPoint"]
  NEWTABLE R18 8 0
  GETIMPORT R19 K113 [Enum.LineJoinMode.Miter]
  SETTABLEKS R19 R18 K99 ["LineJoinMode"]
  GETIMPORT R19 K105 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K102 ["CornerRadius"]
  LOADN R19 45
  SETTABLEKS R19 R18 K114 ["Rotation"]
  GETTABLEKS R19 R9 K80 ["Hover"]
  DUPTABLE R20 K107 [{"PointSize"}]
  GETIMPORT R21 K39 [UDim2.fromOffset]
  LOADN R22 7
  LOADN R23 7
  CALL R21 2 1
  SETTABLEKS R21 R20 K68 ["PointSize"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K83 ["Selected"]
  DUPTABLE R20 K108 [{"PointSize", "BackgroundColor3", "StrokeColor"}]
  GETIMPORT R21 K39 [UDim2.fromOffset]
  LOADN R22 7
  LOADN R23 7
  CALL R21 2 1
  SETTABLEKS R21 R20 K68 ["PointSize"]
  GETTABLEKS R21 R8 K59 ["ActionFocusBorder"]
  SETTABLEKS R21 R20 K96 ["BackgroundColor3"]
  GETIMPORT R21 K95 [Color3.fromRGB]
  LOADN R22 250
  LOADN R23 250
  LOADN R24 250
  CALL R21 3 1
  SETTABLEKS R21 R20 K74 ["StrokeColor"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K115 ["Tangent"]
  DUPTABLE R18 K116 [{"LineJoinMode", "CornerRadius", "Rotation"}]
  GETIMPORT R19 K113 [Enum.LineJoinMode.Miter]
  SETTABLEKS R19 R18 K99 ["LineJoinMode"]
  GETIMPORT R19 K105 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K102 ["CornerRadius"]
  LOADN R19 45
  SETTABLEKS R19 R18 K114 ["Rotation"]
  SETTABLEKS R18 R17 K117 ["PhantomTangent"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K121 [{"AddPointCursor", "AddTangentCursor", "MoveCursor"}]
  GETTABLEKS R17 R8 K118 ["AddPointCursor"]
  SETTABLEKS R17 R16 K118 ["AddPointCursor"]
  GETTABLEKS R17 R8 K119 ["AddTangentCursor"]
  SETTABLEKS R17 R16 K119 ["AddTangentCursor"]
  GETTABLEKS R17 R8 K120 ["MoveCursor"]
  SETTABLEKS R17 R16 K120 ["MoveCursor"]
  SETTABLEKS R16 R15 K122 ["MouseIcons"]
  DUPTABLE R16 K131 [{"DeleteButtonSize", "ModeButtonSize", "DoneButtonSize", "SeparatorSize", "SeparatorPadding", "AddPointImage", "AddTangentImage", "MoveImage"}]
  GETIMPORT R17 K39 [UDim2.fromOffset]
  LOADN R18 100
  LOADN R19 30
  CALL R17 2 1
  SETTABLEKS R17 R16 K123 ["DeleteButtonSize"]
  GETIMPORT R17 K39 [UDim2.fromOffset]
  LOADN R18 30
  LOADN R19 30
  CALL R17 2 1
  SETTABLEKS R17 R16 K124 ["ModeButtonSize"]
  GETIMPORT R17 K39 [UDim2.fromOffset]
  LOADN R18 100
  LOADN R19 30
  CALL R17 2 1
  SETTABLEKS R17 R16 K125 ["DoneButtonSize"]
  GETIMPORT R17 K39 [UDim2.fromOffset]
  LOADN R18 2
  LOADN R19 30
  CALL R17 2 1
  SETTABLEKS R17 R16 K126 ["SeparatorSize"]
  LOADN R17 4
  SETTABLEKS R17 R16 K127 ["SeparatorPadding"]
  GETTABLEKS R17 R8 K106 ["AddPoint"]
  SETTABLEKS R17 R16 K128 ["AddPointImage"]
  GETTABLEKS R17 R8 K132 ["AddTangent"]
  SETTABLEKS R17 R16 K129 ["AddTangentImage"]
  GETTABLEKS R17 R8 K133 ["Move"]
  SETTABLEKS R17 R16 K130 ["MoveImage"]
  SETTABLEKS R16 R15 K134 ["PathToolbar"]
  GETTABLEKS R16 R2 K8 ["join"]
  MOVE R17 R6
  NEWTABLE R18 8 0
  GETTABLEKS R19 R8 K118 ["AddPointCursor"]
  MOVE R21 R14
  LOADK R22 K135 ["Path2DAddPoint.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K119 ["AddTangentCursor"]
  MOVE R21 R14
  LOADK R22 K135 ["Path2DAddPoint.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K120 ["MoveCursor"]
  MOVE R21 R14
  LOADK R22 K136 ["Path2DCursor.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K106 ["AddPoint"]
  MOVE R21 R14
  LOADK R22 K135 ["Path2DAddPoint.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K132 ["AddTangent"]
  MOVE R21 R14
  LOADK R22 K137 ["Path2DAddTangent.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K133 ["Move"]
  MOVE R21 R14
  LOADK R22 K138 ["Path2DMove.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  CALL R16 2 1
  GETTABLEKS R17 R2 K8 ["join"]
  MOVE R18 R7
  NEWTABLE R19 8 0
  GETTABLEKS R20 R8 K118 ["AddPointCursor"]
  MOVE R22 R13
  LOADK R23 K135 ["Path2DAddPoint.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K119 ["AddTangentCursor"]
  MOVE R22 R13
  LOADK R23 K135 ["Path2DAddPoint.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K120 ["MoveCursor"]
  MOVE R22 R13
  LOADK R23 K136 ["Path2DCursor.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K106 ["AddPoint"]
  MOVE R22 R13
  LOADK R23 K135 ["Path2DAddPoint.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K132 ["AddTangent"]
  MOVE R22 R13
  LOADK R23 K137 ["Path2DAddTangent.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K133 ["Move"]
  MOVE R22 R13
  LOADK R23 K138 ["Path2DMove.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  CALL R17 2 1
  DUPCLOSURE R18 K139 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R15
  RETURN R18 1
