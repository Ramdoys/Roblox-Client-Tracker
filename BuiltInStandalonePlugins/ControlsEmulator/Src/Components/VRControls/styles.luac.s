MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["StyleConstants"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K12 [".Component-VRControls"]
  DUPTABLE R6 K14 [{"Size"}]
  GETIMPORT R7 K17 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R3 K18 ["vrControlsHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K13 ["Size"]
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K19 ["::UIListLayout"]
  DUPTABLE R10 K23 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
  GETIMPORT R11 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K20 ["SortOrder"]
  GETIMPORT R11 K28 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K21 ["HorizontalAlignment"]
  GETIMPORT R11 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K22 ["FillDirection"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K31 [">> TextLabel, >> TextButton"]
  DUPTABLE R11 K33 [{"TextColor3"}]
  LOADK R12 K34 ["$TextPrimary"]
  SETTABLEKS R12 R11 K32 ["TextColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K35 [">> #InnerContainer"]
  DUPTABLE R12 K38 [{"Size", "AutomaticSize", "BorderSizePixel"}]
  GETIMPORT R13 K17 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K13 ["Size"]
  GETIMPORT R13 K40 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K36 ["AutomaticSize"]
  LOADN R13 0
  SETTABLEKS R13 R12 K37 ["BorderSizePixel"]
  NEWTABLE R13 0 5
  MOVE R14 R2
  LOADK R15 K41 ["::UISizeConstraint"]
  DUPTABLE R16 K43 [{"MaxSize"}]
  GETIMPORT R17 K45 [Vector2.new]
  LOADN R18 88
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K42 ["MaxSize"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K46 [">> #Separator"]
  DUPTABLE R17 K48 [{"Size", "BorderSizePixel", "BorderColor3"}]
  GETIMPORT R18 K17 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K37 ["BorderSizePixel"]
  LOADK R18 K49 ["$SeparatorColor"]
  SETTABLEKS R18 R17 K47 ["BorderColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K50 [">> #Controls"]
  DUPTABLE R18 K38 [{"Size", "AutomaticSize", "BorderSizePixel"}]
  GETIMPORT R19 K17 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K13 ["Size"]
  GETIMPORT R19 K40 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K36 ["AutomaticSize"]
  LOADN R19 0
  SETTABLEKS R19 R18 K37 ["BorderSizePixel"]
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K51 [">> #Label"]
  DUPTABLE R22 K52 [{"AutomaticSize", "BorderSizePixel"}]
  GETIMPORT R23 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K36 ["AutomaticSize"]
  LOADN R23 0
  SETTABLEKS R23 R22 K37 ["BorderSizePixel"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K55 ["::UIPadding"]
  DUPTABLE R26 K59 [{"PaddingTop", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R27 K61 [UDim.new]
  LOADN R28 0
  LOADN R29 10
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["PaddingTop"]
  GETIMPORT R27 K61 [UDim.new]
  LOADN R28 0
  LOADN R29 3
  CALL R27 2 1
  SETTABLEKS R27 R26 K57 ["PaddingBottom"]
  GETIMPORT R27 K61 [UDim.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K58 ["PaddingLeft"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K62 [">> .Component-Checkbox"]
  DUPTABLE R23 K65 [{"TextXAlignment", "TextYAlignment"}]
  GETIMPORT R24 K66 [Enum.TextXAlignment.Center]
  SETTABLEKS R24 R23 K63 ["TextXAlignment"]
  GETIMPORT R24 K67 [Enum.TextYAlignment.Center]
  SETTABLEKS R24 R23 K64 ["TextYAlignment"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K55 ["::UIPadding"]
  DUPTABLE R27 K68 [{"PaddingLeft", "PaddingBottom"}]
  GETIMPORT R28 K61 [UDim.new]
  LOADN R29 0
  LOADN R30 3
  CALL R28 2 1
  SETTABLEKS R28 R27 K58 ["PaddingLeft"]
  GETIMPORT R28 K61 [UDim.new]
  LOADN R29 0
  LOADN R30 4
  CALL R28 2 1
  SETTABLEKS R28 R27 K57 ["PaddingBottom"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K69 [">> ImageLabel"]
  DUPTABLE R28 K71 [{"Size", "VerticalAlignment"}]
  GETIMPORT R29 K17 [UDim2.new]
  LOADN R30 0
  LOADN R31 12
  LOADN R32 0
  LOADN R33 12
  CALL R29 4 1
  SETTABLEKS R29 R28 K13 ["Size"]
  GETIMPORT R29 K72 [Enum.VerticalAlignment.Center]
  SETTABLEKS R29 R28 K70 ["VerticalAlignment"]
  CALL R26 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K73 [">> #TooltipButton"]
  DUPTABLE R19 K79 [{"Size", "Position", "BorderSizePixel", "TextSize", "TextColor3", "BorderMode", "TextXAlignment", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R20 K17 [UDim2.new]
  LOADN R21 0
  LOADN R22 20
  LOADN R23 0
  LOADN R24 20
  CALL R20 4 1
  SETTABLEKS R20 R19 K13 ["Size"]
  GETIMPORT R20 K17 [UDim2.new]
  LOADN R21 1
  LOADN R22 231
  LOADN R23 0
  LOADN R24 10
  CALL R20 4 1
  SETTABLEKS R20 R19 K74 ["Position"]
  LOADN R20 0
  SETTABLEKS R20 R19 K37 ["BorderSizePixel"]
  LOADN R20 20
  SETTABLEKS R20 R19 K75 ["TextSize"]
  LOADK R20 K34 ["$TextPrimary"]
  SETTABLEKS R20 R19 K32 ["TextColor3"]
  GETIMPORT R20 K81 [Enum.BorderMode.Inset]
  SETTABLEKS R20 R19 K76 ["BorderMode"]
  GETIMPORT R20 K66 [Enum.TextXAlignment.Center]
  SETTABLEKS R20 R19 K63 ["TextXAlignment"]
  LOADK R20 K34 ["$TextPrimary"]
  SETTABLEKS R20 R19 K77 ["BackgroundColor3"]
  LOADN R20 1
  SETTABLEKS R20 R19 K78 ["BackgroundTransparency"]
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K82 ["::UIStroke"]
  DUPTABLE R23 K86 [{"Color", "ApplyStrokeMode", "Thickness"}]
  LOADK R24 K34 ["$TextPrimary"]
  SETTABLEKS R24 R23 K83 ["Color"]
  GETIMPORT R24 K88 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R24 R23 K84 ["ApplyStrokeMode"]
  LOADN R24 1
  SETTABLEKS R24 R23 K85 ["Thickness"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K89 [".FilledIn"]
  DUPTABLE R24 K90 [{"TextColor3", "BackgroundTransparency"}]
  LOADK R25 K91 ["$BlueprintBackgroundColor"]
  SETTABLEKS R25 R24 K32 ["TextColor3"]
  LOADN R25 0
  SETTABLEKS R25 R24 K78 ["BackgroundTransparency"]
  CALL R22 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K92 [">> #Tooltip"]
  DUPTABLE R20 K95 [{"Size", "AutomaticSize", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "TextColor3", "TextSize", "TextXAlignment", "ZIndex"}]
  GETIMPORT R21 K17 [UDim2.new]
  LOADN R22 0
  LOADN R23 84
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K13 ["Size"]
  GETIMPORT R21 K40 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K36 ["AutomaticSize"]
  GETIMPORT R21 K17 [UDim2.new]
  LOADN R22 1
  LOADN R23 251
  LOADN R24 0
  LOADN R25 1
  CALL R21 4 1
  SETTABLEKS R21 R20 K74 ["Position"]
  GETIMPORT R21 K45 [Vector2.new]
  LOADN R22 1
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K93 ["AnchorPoint"]
  LOADK R21 K96 ["$InfoTooltipBackgroundColor"]
  SETTABLEKS R21 R20 K77 ["BackgroundColor3"]
  LOADN R21 1
  SETTABLEKS R21 R20 K37 ["BorderSizePixel"]
  LOADK R21 K34 ["$TextPrimary"]
  SETTABLEKS R21 R20 K47 ["BorderColor3"]
  LOADK R21 K34 ["$TextPrimary"]
  SETTABLEKS R21 R20 K32 ["TextColor3"]
  LOADN R21 14
  SETTABLEKS R21 R20 K75 ["TextSize"]
  GETIMPORT R21 K98 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K63 ["TextXAlignment"]
  GETTABLEKS R22 R3 K99 ["ZIndexData"]
  GETTABLEKS R21 R22 K100 ["VRCONTROLS_TOOLTIP"]
  SETTABLEKS R21 R20 K94 ["ZIndex"]
  NEWTABLE R21 0 6
  MOVE R22 R2
  LOADK R23 K101 ["::UICorner"]
  DUPTABLE R24 K103 [{"CornerRadius"}]
  GETIMPORT R25 K61 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  SETTABLEKS R25 R24 K102 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K82 ["::UIStroke"]
  DUPTABLE R25 K86 [{"Color", "ApplyStrokeMode", "Thickness"}]
  LOADK R26 K34 ["$TextPrimary"]
  SETTABLEKS R26 R25 K83 ["Color"]
  GETIMPORT R26 K88 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R26 R25 K84 ["ApplyStrokeMode"]
  LOADN R26 1
  SETTABLEKS R26 R25 K85 ["Thickness"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K19 ["::UIListLayout"]
  DUPTABLE R26 K105 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding"}]
  GETIMPORT R27 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K20 ["SortOrder"]
  GETIMPORT R27 K106 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R27 R26 K21 ["HorizontalAlignment"]
  GETIMPORT R27 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K22 ["FillDirection"]
  GETIMPORT R27 K61 [UDim.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K104 ["Padding"]
  CALL R24 2 1
  MOVE R25 R2
  LOADK R26 K55 ["::UIPadding"]
  DUPTABLE R27 K108 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  LOADK R28 K109 ["$TooltipPadding"]
  SETTABLEKS R28 R27 K56 ["PaddingTop"]
  LOADK R28 K109 ["$TooltipPadding"]
  SETTABLEKS R28 R27 K57 ["PaddingBottom"]
  LOADK R28 K109 ["$TooltipPadding"]
  SETTABLEKS R28 R27 K58 ["PaddingLeft"]
  GETIMPORT R28 K61 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  SETTABLEKS R28 R27 K107 ["PaddingRight"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K110 [">> TextLabel"]
  DUPTABLE R28 K113 [{"TextColor3", "TextWrapped", "TextXAlignment", "AutomaticSize", "Size", "RichText"}]
  LOADK R29 K34 ["$TextPrimary"]
  SETTABLEKS R29 R28 K32 ["TextColor3"]
  LOADB R29 1
  SETTABLEKS R29 R28 K111 ["TextWrapped"]
  GETIMPORT R29 K98 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K63 ["TextXAlignment"]
  GETIMPORT R29 K40 [Enum.AutomaticSize.Y]
  SETTABLEKS R29 R28 K36 ["AutomaticSize"]
  GETIMPORT R29 K17 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K13 ["Size"]
  LOADB R29 1
  SETTABLEKS R29 R28 K112 ["RichText"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K114 [">> .Component-VRMappingLabel"]
  DUPTABLE R29 K115 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R30 K17 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K13 ["Size"]
  GETIMPORT R30 K40 [Enum.AutomaticSize.Y]
  SETTABLEKS R30 R29 K36 ["AutomaticSize"]
  LOADN R30 1
  SETTABLEKS R30 R29 K78 ["BackgroundTransparency"]
  NEWTABLE R30 0 3
  MOVE R31 R2
  LOADK R32 K19 ["::UIListLayout"]
  DUPTABLE R33 K117 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding", "ItemLineAlignment"}]
  GETIMPORT R34 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R34 R33 K20 ["SortOrder"]
  GETIMPORT R34 K106 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R34 R33 K21 ["HorizontalAlignment"]
  GETIMPORT R34 K119 [Enum.FillDirection.Horizontal]
  SETTABLEKS R34 R33 K22 ["FillDirection"]
  GETIMPORT R34 K61 [UDim.new]
  LOADN R35 0
  LOADN R36 5
  CALL R34 2 1
  SETTABLEKS R34 R33 K104 ["Padding"]
  GETIMPORT R34 K121 [Enum.ItemLineAlignment.Start]
  SETTABLEKS R34 R33 K116 ["ItemLineAlignment"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K122 [">> #LeftText"]
  DUPTABLE R34 K14 [{"Size"}]
  GETIMPORT R35 K17 [UDim2.new]
  LOADK R36 K123 [0.4]
  LOADN R37 0
  LOADN R38 0
  LOADN R39 0
  CALL R35 4 1
  SETTABLEKS R35 R34 K13 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K124 [">> #RightText"]
  DUPTABLE R35 K33 [{"TextColor3"}]
  LOADK R36 K125 ["$TextSecondary"]
  SETTABLEKS R36 R35 K32 ["TextColor3"]
  CALL R33 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
