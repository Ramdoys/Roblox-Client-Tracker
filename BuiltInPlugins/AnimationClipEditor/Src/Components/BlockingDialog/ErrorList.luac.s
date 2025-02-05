PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K4 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R4 K7 [UDim2.fromOffset]
  LOADN R5 0
  GETUPVAL R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Size"]
  LOADN R4 1
  SETTABLEKS R4 R3 K3 ["BackgroundTransparency"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R2 K3 ["dialogTheme"]
  GETTABLEKS R5 R1 K4 ["ErrorList"]
  GETTABLEKS R6 R1 K5 ["ErrorKey"]
  NEWTABLE R7 0 0
  GETIMPORT R8 K7 [ipairs]
  MOVE R9 R5
  CALL R8 1 3
  FORGPREP_INEXT R8
  GETTABLEKS R13 R12 K8 ["Data"]
  LOADN R14 1
  JUMPIFNOTLT R14 R11 [+9]
  MOVE R15 R7
  NAMECALL R16 R0 K9 ["makeSeparator"]
  CALL R16 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K12 [table.insert]
  CALL R14 -1 0
  MOVE R15 R7
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K13 ["createElement"]
  LOADK R17 K14 ["TextLabel"]
  DUPTABLE R18 K26 [{"AutomaticSize", "BackgroundTransparency", "TextSize", "TextColor3", "Font", "TextXAlignment", "TextYAlignment", "TextWrapped", "TextTruncate", "RichText", "Text"}]
  GETIMPORT R19 K29 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K15 ["AutomaticSize"]
  LOADN R19 1
  SETTABLEKS R19 R18 K16 ["BackgroundTransparency"]
  GETTABLEKS R19 R4 K30 ["textSize"]
  SETTABLEKS R19 R18 K17 ["TextSize"]
  GETTABLEKS R19 R4 K31 ["textColor"]
  SETTABLEKS R19 R18 K18 ["TextColor3"]
  GETTABLEKS R19 R2 K32 ["font"]
  SETTABLEKS R19 R18 K19 ["Font"]
  GETIMPORT R19 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K20 ["TextXAlignment"]
  GETIMPORT R19 K36 [Enum.TextYAlignment.Top]
  SETTABLEKS R19 R18 K21 ["TextYAlignment"]
  LOADB R19 1
  SETTABLEKS R19 R18 K22 ["TextWrapped"]
  GETIMPORT R19 K38 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R19 R18 K23 ["TextTruncate"]
  LOADB R19 1
  SETTABLEKS R19 R18 K24 ["RichText"]
  LOADK R20 K39 ["<b>"]
  MOVE R25 R6
  GETTABLEKS R26 R12 K40 ["ID"]
  DUPTABLE R27 K42 [{"entries"}]
  LOADK R28 K43 [""]
  SETTABLEKS R28 R27 K41 ["entries"]
  NAMECALL R23 R3 K44 ["getText"]
  CALL R23 4 1
  MOVE R21 R23
  LOADK R22 K45 ["</b>"]
  CONCAT R19 R20 R22
  SETTABLEKS R19 R18 K25 ["Text"]
  CALL R16 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K12 [table.insert]
  CALL R14 -1 0
  JUMPIFNOT R13 [+87]
  NEWTABLE R14 0 0
  GETIMPORT R15 K7 [ipairs]
  MOVE R16 R13
  CALL R15 1 3
  FORGPREP_INEXT R15
  GETTABLEKS R22 R19 K46 ["Name"]
  FASTCALL2 TABLE_INSERT R14 R22 [+4]
  MOVE R21 R14
  GETIMPORT R20 K12 [table.insert]
  CALL R20 2 0
  FORGLOOP R15 2 [inext] [-9]
  GETIMPORT R15 K48 [table.concat]
  MOVE R16 R14
  LOADK R17 K49 [", "]
  CALL R15 2 1
  MOVE R17 R7
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K13 ["createElement"]
  LOADK R19 K14 ["TextLabel"]
  DUPTABLE R20 K52 [{"Size", "Position", "AutomaticSize", "BackgroundTransparency", "TextSize", "TextColor3", "Font", "TextXAlignment", "TextYAlignment", "TextWrapped", "TextTruncate", "Text"}]
  GETIMPORT R21 K55 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 236
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K50 ["Size"]
  GETIMPORT R21 K55 [UDim2.new]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 20
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K51 ["Position"]
  GETIMPORT R21 K57 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K15 ["AutomaticSize"]
  LOADN R21 1
  SETTABLEKS R21 R20 K16 ["BackgroundTransparency"]
  GETTABLEKS R21 R4 K30 ["textSize"]
  SETTABLEKS R21 R20 K17 ["TextSize"]
  GETTABLEKS R21 R4 K31 ["textColor"]
  SETTABLEKS R21 R20 K18 ["TextColor3"]
  GETTABLEKS R21 R2 K32 ["font"]
  SETTABLEKS R21 R20 K19 ["Font"]
  GETIMPORT R21 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K20 ["TextXAlignment"]
  GETIMPORT R21 K36 [Enum.TextYAlignment.Top]
  SETTABLEKS R21 R20 K21 ["TextYAlignment"]
  LOADB R21 1
  SETTABLEKS R21 R20 K22 ["TextWrapped"]
  GETIMPORT R21 K38 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R21 R20 K23 ["TextTruncate"]
  SETTABLEKS R15 R20 K25 ["Text"]
  CALL R18 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R16 K12 [table.insert]
  CALL R16 -1 0
  FORGLOOP R8 2 [inext] [-166]
  RETURN R7 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R2 K3 ["dialogTheme"]
  GETTABLEKS R5 R1 K4 ["ErrorList"]
  GETTABLEKS R6 R1 K5 ["ErrorKey"]
  NEWTABLE R7 0 0
  LOADN R8 1
  GETIMPORT R9 K7 [ipairs]
  MOVE R10 R5
  CALL R9 1 3
  FORGPREP_INEXT R9
  LOADN R14 1
  JUMPIFNOTLT R14 R8 [+25]
  MOVE R15 R7
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 1
  DUPTABLE R18 K12 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R19 K15 [UDim2.fromOffset]
  LOADN R20 0
  GETUPVAL R21 2
  CALL R19 2 1
  SETTABLEKS R19 R18 K9 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K10 ["BackgroundTransparency"]
  SETTABLEKS R8 R18 K11 ["LayoutOrder"]
  CALL R16 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K18 [table.insert]
  CALL R14 -1 0
  ADDK R8 R8 K19 [1]
  MOVE R15 R7
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 1
  DUPTABLE R18 K26 [{"AutomaticSize", "LayoutOrder", "HorizontalAlignment", "VerticalAlignment", "Layout", "Spacing", "Padding"}]
  GETIMPORT R19 K29 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K20 ["AutomaticSize"]
  SETTABLEKS R8 R18 K11 ["LayoutOrder"]
  GETIMPORT R19 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K21 ["HorizontalAlignment"]
  GETIMPORT R19 K33 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K22 ["VerticalAlignment"]
  GETIMPORT R19 K36 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K23 ["Layout"]
  LOADN R19 2
  SETTABLEKS R19 R18 K24 ["Spacing"]
  DUPTABLE R19 K37 [{"Left"}]
  LOADN R20 2
  SETTABLEKS R20 R19 K30 ["Left"]
  SETTABLEKS R19 R18 K25 ["Padding"]
  DUPTABLE R19 K40 [{"Marker", "Content"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K8 ["createElement"]
  GETUPVAL R21 1
  DUPTABLE R22 K41 [{"LayoutOrder", "Size"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K11 ["LayoutOrder"]
  GETIMPORT R23 K43 [UDim2.new]
  LOADN R24 0
  LOADN R25 18
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K9 ["Size"]
  DUPTABLE R23 K45 [{"Image"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K8 ["createElement"]
  GETUPVAL R25 3
  DUPTABLE R26 K48 [{"Image", "LayoutOrder", "Size", "Position", "AnchorPoint"}]
  GETTABLEKS R28 R13 K49 ["severity"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K50 ["SEVERITY"]
  GETTABLEKS R29 R30 K51 ["Error"]
  JUMPIFNOTLE R29 R28 [+4]
  GETTABLEKS R27 R4 K52 ["errorImage"]
  JUMP [+2]
  GETTABLEKS R27 R4 K53 ["warningImage"]
  SETTABLEKS R27 R26 K44 ["Image"]
  LOADN R27 1
  SETTABLEKS R27 R26 K11 ["LayoutOrder"]
  GETIMPORT R27 K15 [UDim2.fromOffset]
  LOADN R28 12
  LOADN R29 12
  CALL R27 2 1
  SETTABLEKS R27 R26 K9 ["Size"]
  GETIMPORT R27 K43 [UDim2.new]
  LOADK R28 K54 [0.5]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 3
  CALL R27 4 1
  SETTABLEKS R27 R26 K46 ["Position"]
  GETIMPORT R27 K56 [Vector2.new]
  LOADK R28 K54 [0.5]
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K47 ["AnchorPoint"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K44 ["Image"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K38 ["Marker"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K8 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K65 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextTruncate", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R23 K67 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K20 ["AutomaticSize"]
  GETTABLEKS R23 R2 K68 ["font"]
  SETTABLEKS R23 R22 K57 ["Font"]
  LOADN R23 2
  SETTABLEKS R23 R22 K11 ["LayoutOrder"]
  GETIMPORT R23 K43 [UDim2.new]
  LOADN R24 1
  LOADN R25 238
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K9 ["Size"]
  MOVE R25 R6
  GETTABLEKS R26 R13 K69 ["id"]
  DUPTABLE R27 K71 [{"entries"}]
  LOADK R28 K72 [""]
  SETTABLEKS R28 R27 K70 ["entries"]
  NAMECALL R23 R3 K73 ["getText"]
  CALL R23 4 1
  SETTABLEKS R23 R22 K58 ["Text"]
  GETTABLEKS R23 R4 K74 ["textColor"]
  SETTABLEKS R23 R22 K59 ["TextColor"]
  GETTABLEKS R23 R4 K75 ["textSize"]
  SETTABLEKS R23 R22 K60 ["TextSize"]
  GETIMPORT R23 K77 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R23 R22 K61 ["TextTruncate"]
  LOADB R23 1
  SETTABLEKS R23 R22 K62 ["TextWrapped"]
  GETIMPORT R23 K78 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K63 ["TextXAlignment"]
  GETIMPORT R23 K79 [Enum.TextYAlignment.Top]
  SETTABLEKS R23 R22 K64 ["TextYAlignment"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K39 ["Content"]
  CALL R16 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K18 [table.insert]
  CALL R14 -1 0
  ADDK R8 R8 K19 [1]
  GETTABLEKS R14 R13 K80 ["details"]
  LOADNIL R15
  LOADNIL R16
  FORGPREP R14
  MOVE R20 R7
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K8 ["createElement"]
  GETUPVAL R22 1
  DUPTABLE R23 K81 [{"AutomaticSize", "LayoutOrder", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  GETIMPORT R24 K29 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K20 ["AutomaticSize"]
  SETTABLEKS R8 R23 K11 ["LayoutOrder"]
  GETIMPORT R24 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R24 R23 K21 ["HorizontalAlignment"]
  GETIMPORT R24 K33 [Enum.VerticalAlignment.Top]
  SETTABLEKS R24 R23 K22 ["VerticalAlignment"]
  LOADN R24 2
  SETTABLEKS R24 R23 K24 ["Spacing"]
  DUPTABLE R24 K37 [{"Left"}]
  LOADN R25 2
  SETTABLEKS R25 R24 K30 ["Left"]
  SETTABLEKS R24 R23 K25 ["Padding"]
  DUPTABLE R24 K82 [{"Content"}]
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K8 ["createElement"]
  GETUPVAL R26 5
  DUPTABLE R27 K83 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Position", "Text", "TextColor", "TextSize", "TextTruncate", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R28 K67 [Enum.AutomaticSize.Y]
  SETTABLEKS R28 R27 K20 ["AutomaticSize"]
  GETTABLEKS R28 R2 K68 ["font"]
  SETTABLEKS R28 R27 K57 ["Font"]
  LOADN R28 2
  SETTABLEKS R28 R27 K11 ["LayoutOrder"]
  GETIMPORT R28 K43 [UDim2.new]
  LOADN R29 1
  LOADN R30 226
  LOADN R31 0
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K9 ["Size"]
  GETIMPORT R28 K43 [UDim2.new]
  LOADN R29 0
  LOADN R30 30
  LOADN R31 0
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K46 ["Position"]
  GETIMPORT R28 K86 [string.format]
  LOADK R29 K87 ["- %s"]
  MOVE R30 R18
  CALL R28 2 1
  SETTABLEKS R28 R27 K58 ["Text"]
  GETTABLEKS R28 R4 K74 ["textColor"]
  SETTABLEKS R28 R27 K59 ["TextColor"]
  GETTABLEKS R28 R4 K75 ["textSize"]
  SETTABLEKS R28 R27 K60 ["TextSize"]
  GETIMPORT R28 K77 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R28 R27 K61 ["TextTruncate"]
  LOADB R28 1
  SETTABLEKS R28 R27 K62 ["TextWrapped"]
  GETIMPORT R28 K78 [Enum.TextXAlignment.Left]
  SETTABLEKS R28 R27 K63 ["TextXAlignment"]
  GETIMPORT R28 K79 [Enum.TextYAlignment.Top]
  SETTABLEKS R28 R27 K64 ["TextYAlignment"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K39 ["Content"]
  CALL R21 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R19 K18 [table.insert]
  CALL R19 -1 0
  ADDK R8 R8 K19 [1]
  FORGLOOP R14 2 [-104]
  FORGLOOP R9 2 [inext] [-312]
  RETURN R7 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R2 K3 ["dialogTheme"]
  GETTABLEKS R5 R1 K4 ["HeaderKey"]
  GETTABLEKS R6 R1 K5 ["ErrorKey"]
  GETUPVAL R8 0
  CALL R8 0 1
  JUMPIF R8 [+4]
  NAMECALL R7 R0 K6 ["makeErrorElements"]
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  GETUPVAL R9 0
  CALL R9 0 1
  JUMPIFNOT R9 [+4]
  NAMECALL R8 R0 K7 ["makeMessageElements"]
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K9 ["Frame"]
  DUPTABLE R11 K12 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R12 K15 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K10 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  DUPTABLE R12 K19 [{"Layout", "Header", "Body"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K20 ["UIListLayout"]
  DUPTABLE R15 K24 [{"SortOrder", "FillDirection", "Padding"}]
  GETIMPORT R16 K27 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K21 ["SortOrder"]
  GETIMPORT R16 K29 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K22 ["FillDirection"]
  GETIMPORT R16 K31 [UDim.new]
  LOADN R17 0
  LOADN R18 10
  CALL R16 2 1
  SETTABLEKS R16 R15 K23 ["Padding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K16 ["Layout"]
  GETUPVAL R14 0
  CALL R14 0 1
  JUMPIF R14 [+99]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K9 ["Frame"]
  DUPTABLE R15 K32 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K26 ["LayoutOrder"]
  GETIMPORT R16 K15 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 21
  CALL R16 4 1
  SETTABLEKS R16 R15 K10 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  DUPTABLE R16 K35 [{"Icon", "Text"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K8 ["createElement"]
  LOADK R18 K36 ["ImageLabel"]
  DUPTABLE R19 K38 [{"Size", "BackgroundTransparency", "Image"}]
  GETIMPORT R20 K15 [UDim2.new]
  LOADN R21 0
  LOADN R22 21
  LOADN R23 0
  LOADN R24 21
  CALL R20 4 1
  SETTABLEKS R20 R19 K10 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  GETTABLEKS R20 R4 K39 ["errorImage"]
  SETTABLEKS R20 R19 K37 ["Image"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["Icon"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K8 ["createElement"]
  LOADK R18 K40 ["TextLabel"]
  DUPTABLE R19 K46 [{"Size", "Position", "BackgroundTransparency", "TextSize", "TextColor3", "Font", "TextXAlignment", "Text"}]
  GETIMPORT R20 K15 [UDim2.new]
  LOADN R21 1
  LOADN R22 235
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K10 ["Size"]
  GETIMPORT R20 K15 [UDim2.new]
  LOADN R21 0
  LOADN R22 31
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K41 ["Position"]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  GETTABLEKS R20 R4 K47 ["textSize"]
  SETTABLEKS R20 R19 K42 ["TextSize"]
  GETTABLEKS R20 R4 K48 ["textColor"]
  SETTABLEKS R20 R19 K43 ["TextColor3"]
  GETTABLEKS R20 R4 K49 ["headerFont"]
  SETTABLEKS R20 R19 K44 ["Font"]
  GETIMPORT R20 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K45 ["TextXAlignment"]
  MOVE R22 R6
  LOADK R23 K17 ["Header"]
  NAMECALL R20 R3 K52 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K34 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K34 ["Text"]
  CALL R13 3 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K17 ["Header"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K53 [{"LayoutOrder", "Size"}]
  LOADN R16 2
  SETTABLEKS R16 R15 K26 ["LayoutOrder"]
  GETIMPORT R16 K15 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  GETUPVAL R21 0
  CALL R21 0 1
  JUMPIFNOT R21 [+2]
  LOADN R20 246
  JUMP [+1]
  LOADN R20 225
  CALL R16 4 1
  SETTABLEKS R16 R15 K10 ["Size"]
  GETUPVAL R17 0
  CALL R17 0 1
  JUMPIF R17 [+2]
  MOVE R16 R7
  JUMP [+23]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K57 [{"AutomaticSize", "HorizontalAlignment", "VerticalAlignment", "Layout"}]
  GETIMPORT R19 K59 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K54 ["AutomaticSize"]
  GETIMPORT R19 K60 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K55 ["HorizontalAlignment"]
  GETIMPORT R19 K62 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K56 ["VerticalAlignment"]
  GETIMPORT R19 K29 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K16 ["Layout"]
  MOVE R19 R8
  CALL R16 3 1
  CALL R13 3 1
  SETTABLEKS R13 R12 K18 ["Body"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["ScrollingFrame"]
  GETTABLEKS R5 R3 K11 ["List"]
  GETTABLEKS R6 R3 K12 ["Pane"]
  GETTABLEKS R7 R3 K13 ["Image"]
  GETTABLEKS R8 R3 K14 ["TextLabel"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Util"]
  GETTABLEKS R10 R11 K17 ["Constants"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K18 ["ContextServices"]
  GETTABLEKS R11 R10 K19 ["withContext"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R0 K20 ["LuaFlags"]
  GETTABLEKS R13 R14 K21 ["GetFFlagRigValidation"]
  CALL R12 1 1
  MOVE R14 R12
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADN R13 10
  JUMP [+1]
  LOADN R13 5
  GETTABLEKS R14 R1 K22 ["PureComponent"]
  LOADK R16 K23 ["ErrorList"]
  NAMECALL R14 R14 K24 ["extend"]
  CALL R14 2 1
  MOVE R15 R12
  CALL R15 0 1
  JUMPIF R15 [+9]
  DUPCLOSURE R15 K25 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R13
  SETTABLEKS R15 R14 K26 ["makeSeparator"]
  DUPCLOSURE R15 K27 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R15 R14 K28 ["makeErrorElements"]
  DUPCLOSURE R15 K29 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R15 R14 K30 ["makeMessageElements"]
  DUPCLOSURE R15 K31 [PROTO_3]
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R15 R14 K32 ["render"]
  MOVE R15 R11
  DUPTABLE R16 K35 [{"Stylizer", "Localization"}]
  GETTABLEKS R17 R10 K33 ["Stylizer"]
  SETTABLEKS R17 R16 K33 ["Stylizer"]
  GETTABLEKS R17 R10 K34 ["Localization"]
  SETTABLEKS R17 R16 K34 ["Localization"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  RETURN R14 1
