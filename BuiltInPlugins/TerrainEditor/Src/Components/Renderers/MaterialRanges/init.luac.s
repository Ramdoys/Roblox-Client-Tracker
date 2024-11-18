PROTO_0:
  GETTABLEKS R3 R0 K0 ["Priority"]
  GETTABLEKS R4 R1 K0 ["Priority"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Value"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K1 ["MaterialIndex"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["MaterialIndex"]
  JUMPIFEQ R1 R2 [+6]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["MaterialIndex"]
  SETTABLEKS R1 R0 K1 ["MaterialIndex"]
  GETIMPORT R1 K4 [table.sort]
  GETTABLEKS R2 R0 K5 ["MaterialList"]
  DUPCLOSURE R3 K6 [PROTO_0]
  CALL R1 2 0
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLE R8 R0 R6
  JUMPIFNOT R8 [+12]
  GETTABLE R9 R0 R6
  FASTCALL1 TYPEOF R9 [+2]
  GETIMPORT R8 K1 [typeof]
  CALL R8 1 1
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R10 R7
  GETIMPORT R9 K1 [typeof]
  CALL R9 1 1
  JUMPIFEQ R8 R9 [+3]
  SETTABLE R7 R2 R6
  JUMP [+17]
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K1 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K2 ["table"] [+7]
  GETUPVAL R8 0
  GETTABLE R9 R0 R6
  MOVE R10 R7
  CALL R8 2 1
  SETTABLE R8 R2 R6
  JUMP [+4]
  GETTABLE R8 R0 R6
  JUMPIFEQ R7 R8 [+2]
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-34]
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLE R8 R1 R6
  JUMPIF R8 [+2]
  LOADB R8 0
  SETTABLE R8 R2 R6
  FORGLOOP R3 2 [-5]
  GETIMPORT R3 K4 [next]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFNOTEQKNIL R3 [+3]
  LOADNIL R3
  RETURN R3 1
  RETURN R2 1

PROTO_3:
  DUPCLOSURE R2 K0 [PROTO_2]
  CAPTURE VAL R2
  MOVE R3 R2
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  JUMPIF R3 [+4]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["None"]
  RETURN R4 1
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  JUMPIFEQKS R7 K2 ["MaterialIndex"] [+5]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["Multiple"]
  RETURN R9 1
  FORGLOOP R4 2 [-7]
  GETIMPORT R4 K5 [next]
  MOVE R5 R3
  CALL R4 1 1
  JUMPIFEQKNIL R4 [+5]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["MaterialIndex"]
  RETURN R4 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["None"]
  RETURN R4 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Get"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R0 3 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+19]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETTABLEKS R0 R1 K1 ["AbsoluteSize"]
  GETTABLEKS R1 R0 K2 ["Y"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["MinHeight"]
  JUMPIFNOTLT R1 R2 [+5]
  GETUPVAL R1 2
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 2
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 1
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["Value"]
  CALL R0 2 2
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K1 ["None"]
  JUMPIFEQ R1 R2 [+6]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["OnChanged"]
  GETUPVAL R3 2
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["Priority"]
  GETTABLEKS R4 R1 K0 ["Priority"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Set"]
  MOVE R2 R0
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R1 3 1
  GETIMPORT R2 K3 [table.sort]
  GETTABLEKS R3 R1 K4 ["MaterialList"]
  DUPCLOSURE R4 K5 [PROTO_8]
  CALL R2 2 0
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 4
  GETUPVAL R3 1
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K6 ["Multiple"]
  JUMPIFNOTEQ R2 R3 [+6]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K7 ["OnChanged"]
  MOVE R4 R1
  CALL R3 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Value"]
  CALL R1 1 2
  GETUPVAL R3 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K0 ["Value"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 0
  GETTABLEKS R3 R0 K1 ["Schema"]
  GETTABLEKS R4 R3 K2 ["Height"]
  GETUPVAL R5 3
  NAMECALL R5 R5 K3 ["use"]
  CALL R5 1 1
  NAMECALL R6 R5 K4 ["getRoot"]
  CALL R6 1 1
  GETUPVAL R7 0
  LOADB R8 0
  CALL R7 1 2
  GETUPVAL R9 4
  NAMECALL R9 R9 K3 ["use"]
  CALL R9 1 1
  GETUPVAL R10 5
  LOADK R12 K5 ["MaterialRangesRenderer"]
  NAMECALL R10 R10 K3 ["use"]
  CALL R10 2 1
  GETUPVAL R11 5
  LOADK R13 K6 ["MaterialRenderer"]
  NAMECALL R11 R11 K3 ["use"]
  CALL R11 2 1
  GETUPVAL R12 6
  DUPCLOSURE R13 K7 [PROTO_3]
  CAPTURE UPVAL U7
  CALL R12 1 1
  GETUPVAL R13 8
  NEWCLOSURE R14 P2
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R11
  NEWTABLE R15 0 1
  MOVE R16 R1
  SETLIST R15 R16 1 [1]
  CALL R13 2 1
  GETUPVAL R14 0
  LOADB R15 0
  CALL R14 1 2
  GETUPVAL R16 10
  CALL R16 0 1
  GETUPVAL R17 6
  NEWCLOSURE R18 P3
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R15
  NEWTABLE R19 0 0
  CALL R17 2 1
  GETUPVAL R18 0
  NEWTABLE R19 0 0
  CALL R18 1 2
  GETUPVAL R21 11
  GETTABLEKS R20 R21 K8 ["createElement"]
  GETUPVAL R21 12
  DUPTABLE R22 K10 [{"Size"}]
  GETIMPORT R23 K13 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 32
  CALL R23 4 1
  SETTABLEKS R23 R22 K9 ["Size"]
  DUPTABLE R23 K16 [{"Button", "Portal"}]
  GETUPVAL R25 11
  GETTABLEKS R24 R25 K8 ["createElement"]
  GETUPVAL R25 13
  DUPTABLE R26 K21 [{"Disabled", "OnClick", "Size", "Text", "TextXAlignment"}]
  GETTABLEKS R27 R0 K17 ["Disabled"]
  SETTABLEKS R27 R26 K17 ["Disabled"]
  NEWCLOSURE R27 P4
  CAPTURE VAL R8
  SETTABLEKS R27 R26 K18 ["OnClick"]
  GETIMPORT R27 K23 [UDim2.fromScale]
  LOADN R28 1
  LOADN R29 1
  CALL R27 2 1
  SETTABLEKS R27 R26 K9 ["Size"]
  GETUPVAL R30 14
  GETTABLEKS R29 R30 K24 ["ElevationSettings"]
  LOADK R30 K25 ["Edit"]
  NAMECALL R27 R9 K26 ["getText"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K19 ["Text"]
  GETIMPORT R27 K29 [Enum.TextXAlignment.Center]
  SETTABLEKS R27 R26 K20 ["TextXAlignment"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K14 ["Button"]
  JUMPIFNOT R7 [+273]
  JUMPIFNOT R6 [+272]
  GETUPVAL R25 15
  GETTABLEKS R24 R25 K30 ["createPortal"]
  DUPTABLE R25 K33 [{"Dismiss", "Image", "Edit"}]
  GETUPVAL R27 11
  GETTABLEKS R26 R27 K8 ["createElement"]
  LOADK R27 K34 ["TextButton"]
  NEWTABLE R28 8 0
  LOADB R29 0
  SETTABLEKS R29 R28 K35 ["AutoButtonColor"]
  GETTABLEKS R29 R10 K36 ["BackgroundColor"]
  SETTABLEKS R29 R28 K36 ["BackgroundColor"]
  LOADK R29 K37 [0.2]
  SETTABLEKS R29 R28 K38 ["BackgroundTransparency"]
  GETIMPORT R29 K40 [UDim2.fromOffset]
  LOADN R30 0
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K41 ["Position"]
  SETTABLEKS R16 R28 K42 ["ref"]
  GETIMPORT R29 K23 [UDim2.fromScale]
  LOADN R30 1
  LOADN R31 1
  CALL R29 2 1
  SETTABLEKS R29 R28 K9 ["Size"]
  GETUPVAL R31 11
  GETTABLEKS R30 R31 K43 ["Event"]
  GETTABLEKS R29 R30 K44 ["Activated"]
  NEWCLOSURE R30 P5
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLE R30 R28 R29
  GETUPVAL R31 11
  GETTABLEKS R30 R31 K45 ["Change"]
  GETTABLEKS R29 R30 K46 ["AbsoluteSize"]
  SETTABLE R17 R28 R29
  CALL R26 2 1
  SETTABLEKS R26 R25 K31 ["Dismiss"]
  GETUPVAL R27 11
  GETTABLEKS R26 R27 K8 ["createElement"]
  LOADK R27 K47 ["ImageLabel"]
  GETTABLEKS R28 R10 K48 ["CloseButton"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K32 ["Image"]
  GETUPVAL R27 11
  GETTABLEKS R26 R27 K8 ["createElement"]
  LOADK R27 K34 ["TextButton"]
  NEWTABLE R28 8 0
  JUMPIFNOT R14 [+2]
  LOADNIL R29
  JUMP [+2]
  GETIMPORT R29 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R29 R28 K49 ["AutomaticSize"]
  LOADB R29 0
  SETTABLEKS R29 R28 K35 ["AutoButtonColor"]
  GETTABLEKS R30 R10 K52 ["Dialog"]
  GETTABLEKS R29 R30 K53 ["AnchorPoint"]
  SETTABLEKS R29 R28 K53 ["AnchorPoint"]
  GETTABLEKS R30 R10 K52 ["Dialog"]
  GETTABLEKS R29 R30 K41 ["Position"]
  SETTABLEKS R29 R28 K41 ["Position"]
  JUMPIFNOT R14 [+5]
  GETTABLEKS R30 R10 K52 ["Dialog"]
  GETTABLEKS R29 R30 K54 ["FillSize"]
  JUMP [+4]
  GETTABLEKS R30 R10 K52 ["Dialog"]
  GETTABLEKS R29 R30 K9 ["Size"]
  SETTABLEKS R29 R28 K9 ["Size"]
  GETUPVAL R31 11
  GETTABLEKS R30 R31 K45 ["Change"]
  GETTABLEKS R29 R30 K46 ["AbsoluteSize"]
  SETTABLE R17 R28 R29
  DUPTABLE R29 K56 [{"Contents"}]
  GETUPVAL R31 11
  GETTABLEKS R30 R31 K8 ["createElement"]
  GETUPVAL R31 12
  DUPTABLE R32 K61 [{"AutomaticSize", "BackgroundColor", "HorizontalAlignment", "Layout", "Padding", "Size", "Spacing"}]
  JUMPIFNOT R14 [+2]
  LOADNIL R33
  JUMP [+2]
  GETIMPORT R33 K51 [Enum.AutomaticSize.Y]
  SETTABLEKS R33 R32 K49 ["AutomaticSize"]
  GETTABLEKS R34 R10 K52 ["Dialog"]
  GETTABLEKS R33 R34 K36 ["BackgroundColor"]
  SETTABLEKS R33 R32 K36 ["BackgroundColor"]
  GETIMPORT R33 K63 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R33 R32 K57 ["HorizontalAlignment"]
  GETIMPORT R33 K66 [Enum.FillDirection.Vertical]
  SETTABLEKS R33 R32 K58 ["Layout"]
  GETTABLEKS R33 R10 K59 ["Padding"]
  SETTABLEKS R33 R32 K59 ["Padding"]
  JUMPIFNOT R14 [+6]
  GETIMPORT R33 K23 [UDim2.fromScale]
  LOADN R34 1
  LOADN R35 1
  CALL R33 2 1
  JUMP [+5]
  GETIMPORT R33 K23 [UDim2.fromScale]
  LOADN R34 1
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K9 ["Size"]
  GETTABLEKS R33 R10 K59 ["Padding"]
  SETTABLEKS R33 R32 K60 ["Spacing"]
  DUPTABLE R33 K68 [{"Form", "Button"}]
  GETUPVAL R35 11
  GETTABLEKS R34 R35 K8 ["createElement"]
  GETUPVAL R35 16
  DUPTABLE R36 K78 [{"Expansion", "ExpandByDefault", "Items", "LabelHeight", "LayoutOrder", "OnChange", "OnExpansionChange", "Renderers", "Size", "UseScrollingFrame"}]
  SETTABLEKS R18 R36 K69 ["Expansion"]
  LOADB R37 1
  SETTABLEKS R37 R36 K70 ["ExpandByDefault"]
  SETTABLEKS R13 R36 K71 ["Items"]
  LOADN R37 20
  SETTABLEKS R37 R36 K72 ["LabelHeight"]
  LOADN R37 1
  SETTABLEKS R37 R36 K73 ["LayoutOrder"]
  NEWCLOSURE R37 P6
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  SETTABLEKS R37 R36 K74 ["OnChange"]
  SETTABLEKS R19 R36 K75 ["OnExpansionChange"]
  DUPTABLE R37 K82 [{"Elevation", "Material", "Slope"}]
  GETUPVAL R38 17
  SETTABLEKS R38 R37 K79 ["Elevation"]
  GETUPVAL R38 18
  SETTABLEKS R38 R37 K80 ["Material"]
  GETUPVAL R38 19
  SETTABLEKS R38 R37 K81 ["Slope"]
  SETTABLEKS R37 R36 K76 ["Renderers"]
  JUMPIFNOT R14 [+16]
  GETIMPORT R37 K13 [UDim2.new]
  LOADN R38 1
  LOADN R39 0
  LOADN R40 1
  GETTABLEKS R45 R10 K83 ["Reset"]
  GETTABLEKS R44 R45 K9 ["Size"]
  GETTABLEKS R43 R44 K50 ["Y"]
  GETTABLEKS R42 R43 K84 ["Offset"]
  MINUS R41 R42
  CALL R37 4 1
  JUMP [+5]
  GETIMPORT R37 K23 [UDim2.fromScale]
  LOADN R38 1
  LOADN R39 0
  CALL R37 2 1
  SETTABLEKS R37 R36 K9 ["Size"]
  SETTABLEKS R14 R36 K77 ["UseScrollingFrame"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K67 ["Form"]
  GETUPVAL R35 11
  GETTABLEKS R34 R35 K8 ["createElement"]
  GETUPVAL R35 13
  DUPTABLE R36 K86 [{"LayoutOrder", "LeftIcon", "OnClick", "Size", "Text"}]
  LOADN R37 2
  SETTABLEKS R37 R36 K73 ["LayoutOrder"]
  GETTABLEKS R38 R10 K83 ["Reset"]
  GETTABLEKS R37 R38 K87 ["Icon"]
  SETTABLEKS R37 R36 K85 ["LeftIcon"]
  GETTABLEKS R37 R3 K88 ["OnReset"]
  SETTABLEKS R37 R36 K18 ["OnClick"]
  GETTABLEKS R38 R10 K83 ["Reset"]
  GETTABLEKS R37 R38 K9 ["Size"]
  SETTABLEKS R37 R36 K9 ["Size"]
  LOADK R37 K83 ["Reset"]
  SETTABLEKS R37 R36 K19 ["Text"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K14 ["Button"]
  CALL R30 3 1
  SETTABLEKS R30 R29 K55 ["Contents"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K25 ["Edit"]
  MOVE R26 R6
  CALL R24 2 1
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K15 ["Portal"]
  CALL R20 3 -1
  RETURN R20 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ReactRoblox"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K10 ["ContextServices"]
  GETTABLEKS R4 R5 K11 ["Localization"]
  GETTABLEKS R6 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R6 K12 ["Stylizer"]
  GETTABLEKS R7 R1 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["deepCopy"]
  GETTABLEKS R7 R2 K15 ["useCallback"]
  GETTABLEKS R8 R2 K16 ["useEffect"]
  GETTABLEKS R9 R2 K17 ["useMemo"]
  GETTABLEKS R10 R2 K18 ["useRef"]
  GETTABLEKS R11 R2 K19 ["useState"]
  GETTABLEKS R13 R1 K20 ["UI"]
  GETTABLEKS R12 R13 K21 ["Form"]
  GETTABLEKS R14 R1 K20 ["UI"]
  GETTABLEKS R13 R14 K22 ["IconButton"]
  GETTABLEKS R15 R1 K20 ["UI"]
  GETTABLEKS R14 R15 K23 ["Pane"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K24 ["Src"]
  GETTABLEKS R18 R19 K25 ["Components"]
  GETTABLEKS R17 R18 K26 ["Renderers"]
  GETTABLEKS R16 R17 K27 ["Material"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K28 ["Elevation"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETIMPORT R19 K1 [script]
  GETTABLEKS R18 R19 K29 ["Slope"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K24 ["Src"]
  GETTABLEKS R20 R21 K30 ["Controllers"]
  GETTABLEKS R19 R20 K31 ["PluginController"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K24 ["Src"]
  GETTABLEKS R21 R22 K13 ["Util"]
  GETTABLEKS R20 R21 K32 ["MaterialPresetSettingsHelper"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R0 K24 ["Src"]
  GETTABLEKS R21 R22 K33 ["Types"]
  CALL R20 1 1
  GETTABLEKS R21 R20 K34 ["Category"]
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K24 ["Src"]
  GETTABLEKS R24 R25 K35 ["Resources"]
  GETTABLEKS R23 R24 K36 ["Theme"]
  CALL R22 1 1
  DUPTABLE R23 K40 [{"MaterialIndex", "Multiple", "None"}]
  LOADK R24 K37 ["MaterialIndex"]
  SETTABLEKS R24 R23 K37 ["MaterialIndex"]
  LOADK R24 K38 ["Multiple"]
  SETTABLEKS R24 R23 K38 ["Multiple"]
  LOADK R24 K39 ["None"]
  SETTABLEKS R24 R23 K39 ["None"]
  DUPCLOSURE R24 K41 [PROTO_10]
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R18
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R23
  CAPTURE VAL R9
  CAPTURE VAL R19
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R17
  RETURN R24 1
