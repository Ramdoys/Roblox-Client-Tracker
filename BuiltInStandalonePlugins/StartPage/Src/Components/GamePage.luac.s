PROTO_0:
  GETTABLEKS R1 R0 K0 ["DropdownLabel"]
  RETURN R1 1

PROTO_1:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  MOVE R2 R0
  DUPCLOSURE R3 K0 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["LuaStartPageHasAlertBeenClosed3"]
  NAMECALL R0 R0 K1 ["GetSetting"]
  CALL R0 2 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["IsAlertVisible"]
  JUMPIFNOT R1 [+1]
  NOT R1 R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["LuaStartPageIsOnGridView"]
  NAMECALL R0 R0 K1 ["GetSetting"]
  CALL R0 2 1
  LOADB R1 1
  JUMPIFEQKNIL R0 [+2]
  MOVE R1 R0
  RETURN R1 1

PROTO_4:
  GETUPVAL R1 0
  JUMPIFEQ R0 R1 [+9]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 2
  JUMPIF R1 [+3]
  GETUPVAL R1 3
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADK R2 K0 ["LuaStartPageHasAlertBeenClosed3"]
  LOADB R3 1
  NAMECALL R0 R0 K1 ["SetSetting"]
  CALL R0 3 0
  GETUPVAL R0 1
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["openLink"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  JUMPIFEQ R0 R1 [+47]
  GETUPVAL R1 1
  GETUPVAL R3 2
  DUPTABLE R4 K5 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
  LOADK R5 K6 ["navigation"]
  SETTABLEKS R5 R4 K0 ["telemetryType"]
  LOADK R5 K7 ["tab"]
  SETTABLEKS R5 R4 K1 ["telemetrySubtype"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["PageName"]
  SETTABLEKS R5 R4 K2 ["context"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K9 ["Tabs"]
  GETUPVAL R8 0
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K10 ["Key"]
  SETTABLEKS R5 R4 K3 ["from"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K9 ["Tabs"]
  GETTABLE R6 R7 R0
  GETTABLEKS R5 R6 K10 ["Key"]
  SETTABLEKS R5 R4 K4 ["to"]
  NAMECALL R1 R1 K11 ["log"]
  CALL R1 3 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K12 ["restartAnimation"]
  CALL R1 0 0
  GETUPVAL R1 5
  JUMPIF R1 [+3]
  GETUPVAL R1 6
  LOADB R2 0
  CALL R1 1 0
  GETUPVAL R1 7
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+13]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["restartAnimation"]
  CALL R2 0 0
  GETUPVAL R2 2
  JUMPIF R2 [+3]
  GETUPVAL R2 3
  LOADB R3 0
  CALL R2 1 0
  GETUPVAL R2 4
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  LOADK R2 K0 ["LuaStartPageIsOnGridView"]
  GETUPVAL R4 1
  NOT R3 R4
  NAMECALL R0 R0 K1 ["SetSetting"]
  CALL R0 3 0
  GETUPVAL R0 2
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+13]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["restartAnimation"]
  CALL R2 0 0
  GETUPVAL R2 2
  JUMPIF R2 [+3]
  GETUPVAL R2 3
  LOADB R3 0
  CALL R2 1 0
  GETUPVAL R2 4
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  LOADK R2 K0 ["LuaStartPageIsOnGridView"]
  GETUPVAL R4 1
  NOT R3 R4
  NAMECALL R0 R0 K1 ["SetSetting"]
  CALL R0 3 0
  GETUPVAL R0 2
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  DUPTABLE R5 K2 [{"Title"}]
  GETUPVAL R7 3
  JUMPIFEQKS R7 K3 [""] [+8]
  GETUPVAL R6 4
  LOADK R8 K4 ["Plugin"]
  LOADK R9 K5 ["NoSearchResultsToDisplay"]
  NAMECALL R6 R6 K6 ["getText"]
  CALL R6 3 1
  JUMP [+7]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K7 ["Tabs"]
  GETUPVAL R9 6
  GETTABLE R7 R8 R9
  GETTABLEKS R6 R7 K8 ["FailedTitle"]
  SETTABLEKS R6 R5 K1 ["Title"]
  CALL R3 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R1 0
  JUMPIF R1 [+3]
  GETUPVAL R1 1
  LOADB R2 0
  CALL R1 1 0
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Plugin"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R3 2
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 1 1
  GETUPVAL R4 3
  LOADN R5 1
  CALL R4 1 2
  GETUPVAL R6 3
  NEWTABLE R7 0 0
  CALL R6 1 2
  GETUPVAL R8 3
  LOADK R9 K3 [""]
  CALL R8 1 2
  GETUPVAL R10 3
  NEWCLOSURE R11 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R10 1 2
  LOADNIL R12
  LOADNIL R13
  GETUPVAL R14 4
  JUMPIF R14 [+5]
  GETUPVAL R14 3
  LOADB R15 0
  CALL R14 1 2
  MOVE R12 R14
  MOVE R13 R15
  GETUPVAL R14 3
  NEWCLOSURE R15 P1
  CAPTURE VAL R1
  CALL R14 1 2
  GETUPVAL R16 5
  LOADK R17 K4 ["PointingHand"]
  CALL R16 1 2
  GETTABLEKS R20 R0 K5 ["Tabs"]
  GETTABLE R19 R20 R4
  GETTABLEKS R18 R19 K6 ["Dropdowns"]
  GETUPVAL R19 3
  JUMPIFNOT R18 [+6]
  GETTABLEKS R21 R18 K7 ["DefaultSortIndex"]
  JUMPIFNOT R21 [+3]
  GETTABLEKS R20 R18 K7 ["DefaultSortIndex"]
  JUMP [+1]
  LOADN R20 1
  CALL R19 1 2
  GETUPVAL R21 3
  LOADN R22 1
  CALL R21 1 2
  LOADNIL R23
  LOADNIL R24
  JUMPIFNOT R18 [+23]
  JUMPIFNOT R14 [+11]
  GETTABLEKS R25 R18 K8 ["SortDropdown"]
  JUMPIF R25 [+2]
  LOADNIL R23
  JUMP [+7]
  GETUPVAL R26 6
  MOVE R27 R25
  DUPCLOSURE R28 K9 [PROTO_0]
  CALL R26 2 1
  MOVE R23 R26
  JUMP [+1]
  LOADNIL R23
  GETTABLEKS R25 R18 K10 ["GroupDropdown"]
  JUMPIF R25 [+2]
  LOADNIL R24
  JUMP [+5]
  GETUPVAL R26 6
  MOVE R27 R25
  DUPCLOSURE R28 K9 [PROTO_0]
  CALL R26 2 1
  MOVE R24 R26
  NEWTABLE R25 1 0
  JUMPIFNOT R18 [+30]
  GETTABLEKS R26 R18 K8 ["SortDropdown"]
  JUMPIFNOT R26 [+9]
  GETUPVAL R26 7
  MOVE R27 R25
  GETTABLEKS R30 R18 K8 ["SortDropdown"]
  GETTABLE R29 R30 R19
  GETTABLEKS R28 R29 K11 ["Query"]
  CALL R26 2 1
  MOVE R25 R26
  GETTABLEKS R26 R18 K10 ["GroupDropdown"]
  JUMPIFNOT R26 [+15]
  GETTABLEKS R27 R18 K10 ["GroupDropdown"]
  LENGTH R26 R27
  LOADN R27 0
  JUMPIFNOTLT R27 R26 [+10]
  GETUPVAL R26 7
  MOVE R27 R25
  GETTABLEKS R30 R18 K10 ["GroupDropdown"]
  GETTABLE R29 R30 R21
  GETTABLEKS R28 R29 K11 ["Query"]
  CALL R26 2 1
  MOVE R25 R26
  JUMPIFNOT R8 [+2]
  SETTABLEKS R8 R25 K12 ["search"]
  JUMPIFNOT R6 [+5]
  GETUPVAL R26 7
  MOVE R27 R25
  MOVE R28 R6
  CALL R26 2 1
  MOVE R25 R26
  GETUPVAL R26 8
  CALL R26 0 1
  GETUPVAL R28 9
  GETTABLEKS R27 R28 K13 ["createElement"]
  LOADK R28 K14 ["Frame"]
  NEWTABLE R29 4 0
  GETUPVAL R31 4
  JUMPIFNOT R31 [+2]
  LOADNIL R30
  JUMP [+2]
  GETTABLEKS R30 R0 K15 ["Size"]
  SETTABLEKS R30 R29 K15 ["Size"]
  GETUPVAL R31 4
  JUMPIFNOT R31 [+2]
  LOADNIL R30
  JUMP [+2]
  GETTABLEKS R30 R0 K16 ["Position"]
  SETTABLEKS R30 R29 K16 ["Position"]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K17 ["Tag"]
  GETUPVAL R32 4
  JUMPIFNOT R32 [+2]
  LOADK R31 K18 ["StartPage-GamePagePadding X-ColumnM X-Left X-Fill X-Transparent"]
  JUMP [+1]
  LOADK R31 K19 ["StartPage-GamePagePadding X-ColumnM X-Left X-Transparent"]
  SETTABLE R31 R29 R30
  DUPTABLE R30 K25 [{"SearchBar", "AlertBanner", "Controls", "Title", "PageComponent"}]
  GETTABLEKS R32 R0 K26 ["HasSearchBar"]
  JUMPIFNOT R32 [+61]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K13 ["createElement"]
  GETUPVAL R32 10
  NEWTABLE R33 16 0
  GETIMPORT R34 K29 [UDim2.new]
  LOADN R35 1
  LOADN R36 226
  LOADN R37 0
  LOADN R38 48
  CALL R34 4 1
  SETTABLEKS R34 R33 K15 ["Size"]
  MOVE R34 R26
  CALL R34 0 1
  SETTABLEKS R34 R33 K30 ["LayoutOrder"]
  LOADK R36 K0 ["Plugin"]
  LOADK R37 K31 ["SearchPlaceholder"]
  NAMECALL R34 R3 K32 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K33 ["PlaceholderText"]
  NEWCLOSURE R34 P3
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE UPVAL U4
  CAPTURE REF R13
  SETTABLEKS R34 R33 K34 ["OnSearchRequested"]
  LOADB R34 1
  SETTABLEKS R34 R33 K35 ["ShowSearchIcon"]
  SETTABLEKS R18 R33 K6 ["Dropdowns"]
  GETTABLEKS R36 R0 K5 ["Tabs"]
  GETTABLE R35 R36 R4
  GETTABLEKS R34 R35 K24 ["PageComponent"]
  SETTABLEKS R34 R33 K36 ["ResultComponent"]
  GETTABLEKS R36 R0 K5 ["Tabs"]
  GETTABLE R35 R36 R4
  GETTABLEKS R34 R35 K23 ["Title"]
  SETTABLEKS R34 R33 K37 ["Type"]
  SETTABLEKS R25 R33 K38 ["BaseQuery"]
  GETUPVAL R35 9
  GETTABLEKS R34 R35 K17 ["Tag"]
  LOADK R35 K39 ["X-Pad"]
  SETTABLE R35 R33 R34
  CALL R31 2 1
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K20 ["SearchBar"]
  GETUPVAL R32 11
  JUMPIFNOT R32 [+48]
  GETUPVAL R32 12
  NAMECALL R32 R32 K40 ["getDaysSinceFirstUserLogin"]
  CALL R32 1 1
  GETUPVAL R33 13
  JUMPIFNOTLE R33 R32 [+42]
  JUMPIFNOT R10 [+40]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K13 ["createElement"]
  GETUPVAL R32 14
  DUPTABLE R33 K44 [{"Title", "Body", "Size", "OnClose", "OnClick"}]
  LOADK R36 K0 ["Plugin"]
  LOADK R37 K45 ["AlertBanner.Title"]
  NAMECALL R34 R3 K32 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K23 ["Title"]
  LOADK R36 K0 ["Plugin"]
  LOADK R37 K46 ["AlertBanner.Body"]
  NAMECALL R34 R3 K32 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K41 ["Body"]
  GETIMPORT R34 K29 [UDim2.new]
  LOADN R35 1
  LOADN R36 226
  LOADN R37 0
  LOADN R38 52
  CALL R34 4 1
  SETTABLEKS R34 R33 K15 ["Size"]
  NEWCLOSURE R34 P4
  CAPTURE VAL R1
  CAPTURE VAL R11
  SETTABLEKS R34 R33 K42 ["OnClose"]
  DUPCLOSURE R34 K47 [PROTO_6]
  CAPTURE UPVAL U12
  CAPTURE UPVAL U15
  SETTABLEKS R34 R33 K43 ["OnClick"]
  CALL R31 2 1
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K21 ["AlertBanner"]
  GETUPVAL R32 16
  JUMPIFNOT R32 [+3]
  GETTABLEKS R32 R0 K48 ["HideTabs"]
  JUMPIF R32 [+254]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K13 ["createElement"]
  LOADK R32 K14 ["Frame"]
  NEWTABLE R33 2 0
  MOVE R34 R26
  CALL R34 0 1
  SETTABLEKS R34 R33 K30 ["LayoutOrder"]
  GETUPVAL R35 9
  GETTABLEKS R34 R35 K17 ["Tag"]
  LOADK R35 K49 ["X-FitY X-Transparent"]
  SETTABLE R35 R33 R34
  DUPTABLE R34 K52 [{"Pills", "DropdownControls"}]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K13 ["createElement"]
  GETUPVAL R36 17
  DUPTABLE R37 K55 [{"Tabs", "DefaultSelectedTab", "OnTabSelected"}]
  GETTABLEKS R38 R0 K5 ["Tabs"]
  SETTABLEKS R38 R37 K5 ["Tabs"]
  GETTABLEKS R40 R0 K5 ["Tabs"]
  GETTABLEN R39 R40 1
  GETTABLEKS R38 R39 K56 ["Key"]
  SETTABLEKS R38 R37 K53 ["DefaultSelectedTab"]
  NEWCLOSURE R38 P6
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE UPVAL U18
  CAPTURE VAL R0
  CAPTURE UPVAL U19
  CAPTURE UPVAL U4
  CAPTURE REF R13
  CAPTURE VAL R5
  SETTABLEKS R38 R37 K54 ["OnTabSelected"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K50 ["Pills"]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K13 ["createElement"]
  LOADK R36 K14 ["Frame"]
  NEWTABLE R37 2 0
  GETIMPORT R38 K29 [UDim2.new]
  LOADN R39 1
  LOADN R40 226
  LOADN R41 0
  LOADN R42 32
  CALL R38 4 1
  SETTABLEKS R38 R37 K15 ["Size"]
  GETUPVAL R39 9
  GETTABLEKS R38 R39 K17 ["Tag"]
  LOADK R39 K57 ["X-RowS X-Right X-Transparent"]
  SETTABLE R39 R37 R38
  DUPTABLE R38 K59 [{"GroupDropdown", "ToggleView", "SortDropdown"}]
  JUMPIFNOT R24 [+53]
  GETUPVAL R40 4
  JUMPIF R40 [+1]
  JUMPIFNOT R12 [+50]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K13 ["createElement"]
  GETUPVAL R40 20
  DUPTABLE R41 K65 [{"LayoutOrder", "PlaceholderText", "Size", "SelectedIndex", "Items", "Variant", "TextTruncate", "OnItemActivated"}]
  MOVE R42 R26
  CALL R42 0 1
  SETTABLEKS R42 R41 K30 ["LayoutOrder"]
  LOADK R44 K0 ["Plugin"]
  LOADK R45 K66 ["GroupDropdown.Placeholder"]
  NAMECALL R42 R3 K32 ["getText"]
  CALL R42 3 1
  SETTABLEKS R42 R41 K33 ["PlaceholderText"]
  GETIMPORT R42 K29 [UDim2.new]
  LOADN R43 0
  LOADN R44 186
  LOADN R45 0
  LOADN R46 32
  CALL R42 4 1
  SETTABLEKS R42 R41 K15 ["Size"]
  SETTABLEKS R21 R41 K60 ["SelectedIndex"]
  SETTABLEKS R24 R41 K61 ["Items"]
  LOADK R42 K67 ["modern"]
  SETTABLEKS R42 R41 K62 ["Variant"]
  GETUPVAL R43 21
  JUMPIFNOT R43 [+3]
  GETIMPORT R42 K70 [Enum.TextTruncate.AtEnd]
  JUMP [+1]
  LOADNIL R42
  SETTABLEKS R42 R41 K63 ["TextTruncate"]
  NEWCLOSURE R42 P7
  CAPTURE VAL R21
  CAPTURE UPVAL U19
  CAPTURE UPVAL U4
  CAPTURE REF R13
  CAPTURE VAL R22
  SETTABLEKS R42 R41 K64 ["OnItemActivated"]
  CALL R39 2 1
  JUMP [+1]
  LOADNIL R39
  SETTABLEKS R39 R38 K10 ["GroupDropdown"]
  GETTABLEKS R40 R0 K71 ["CanSwapBetweenViews"]
  JUMPIFNOT R40 [+70]
  GETUPVAL R40 4
  JUMPIF R40 [+1]
  JUMPIFNOT R12 [+67]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K13 ["createElement"]
  LOADK R40 K72 ["ImageButton"]
  NEWTABLE R41 8 0
  MOVE R42 R26
  CALL R42 0 1
  SETTABLEKS R42 R41 K30 ["LayoutOrder"]
  GETIMPORT R42 K29 [UDim2.new]
  LOADN R43 0
  LOADN R44 30
  LOADN R45 0
  LOADN R46 32
  CALL R42 4 1
  SETTABLEKS R42 R41 K15 ["Size"]
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K73 ["Event"]
  GETTABLEKS R42 R43 K74 ["Activated"]
  NEWCLOSURE R43 P8
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R15
  SETTABLE R43 R41 R42
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K73 ["Event"]
  GETTABLEKS R42 R43 K75 ["MouseEnter"]
  SETTABLE R16 R41 R42
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K73 ["Event"]
  GETTABLEKS R42 R43 K76 ["MouseLeave"]
  SETTABLE R17 R41 R42
  GETUPVAL R43 9
  GETTABLEKS R42 R43 K17 ["Tag"]
  LOADK R43 K77 ["X-Middle X-Center X-Corner StartPage-PageBackground"]
  SETTABLE R43 R41 R42
  NEWTABLE R42 0 1
  GETUPVAL R44 9
  GETTABLEKS R43 R44 K13 ["createElement"]
  GETUPVAL R44 22
  NEWTABLE R45 1 0
  GETUPVAL R47 9
  GETTABLEKS R46 R47 K17 ["Tag"]
  JUMPIFNOT R14 [+2]
  LOADK R47 K78 ["StartPage-ListIcon"]
  JUMP [+1]
  LOADK R47 K79 ["StartPage-GridIcon"]
  SETTABLE R47 R45 R46
  CALL R43 2 -1
  SETLIST R42 R43 -1 [1]
  CALL R39 3 1
  JUMP [+1]
  LOADNIL R39
  SETTABLEKS R39 R38 K58 ["ToggleView"]
  JUMPIFNOT R23 [+45]
  GETUPVAL R40 4
  JUMPIF R40 [+1]
  JUMPIFNOT R12 [+42]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K13 ["createElement"]
  GETUPVAL R40 20
  DUPTABLE R41 K80 [{"LayoutOrder", "PlaceholderText", "Size", "SelectedIndex", "Items", "Variant", "OnItemActivated"}]
  MOVE R42 R26
  CALL R42 0 1
  SETTABLEKS R42 R41 K30 ["LayoutOrder"]
  LOADK R44 K0 ["Plugin"]
  LOADK R45 K81 ["SortDropdown.Placeholder"]
  NAMECALL R42 R3 K32 ["getText"]
  CALL R42 3 1
  SETTABLEKS R42 R41 K33 ["PlaceholderText"]
  GETIMPORT R42 K29 [UDim2.new]
  LOADN R43 0
  LOADN R44 186
  LOADN R45 0
  LOADN R46 32
  CALL R42 4 1
  SETTABLEKS R42 R41 K15 ["Size"]
  SETTABLEKS R19 R41 K60 ["SelectedIndex"]
  SETTABLEKS R23 R41 K61 ["Items"]
  LOADK R42 K67 ["modern"]
  SETTABLEKS R42 R41 K62 ["Variant"]
  NEWCLOSURE R42 P9
  CAPTURE VAL R19
  CAPTURE UPVAL U19
  CAPTURE UPVAL U4
  CAPTURE REF R13
  CAPTURE VAL R20
  SETTABLEKS R42 R41 K64 ["OnItemActivated"]
  CALL R39 2 1
  JUMP [+1]
  LOADNIL R39
  SETTABLEKS R39 R38 K8 ["SortDropdown"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K51 ["DropdownControls"]
  CALL R31 3 1
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K22 ["Controls"]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K13 ["createElement"]
  LOADK R32 K14 ["Frame"]
  NEWTABLE R33 4 0
  MOVE R34 R26
  CALL R34 0 1
  SETTABLEKS R34 R33 K30 ["LayoutOrder"]
  GETUPVAL R35 16
  JUMPIFNOT R35 [+8]
  GETIMPORT R34 K29 [UDim2.new]
  LOADN R35 1
  LOADN R36 226
  LOADN R37 0
  LOADN R38 45
  CALL R34 4 1
  JUMP [+7]
  GETIMPORT R34 K29 [UDim2.new]
  LOADN R35 0
  LOADN R36 44
  LOADN R37 0
  LOADN R38 45
  CALL R34 4 1
  SETTABLEKS R34 R33 K15 ["Size"]
  GETUPVAL R35 9
  GETTABLEKS R34 R35 K17 ["Tag"]
  LOADK R35 K82 ["X-Transparent"]
  SETTABLE R35 R33 R34
  DUPTABLE R34 K85 [{"Label", "Toggle"}]
  GETUPVAL R36 4
  JUMPIF R36 [+1]
  JUMPIFNOT R12 [+28]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K13 ["createElement"]
  LOADK R36 K86 ["TextLabel"]
  NEWTABLE R37 2 0
  JUMPIFEQKS R8 K3 [""] [+7]
  LOADK R40 K0 ["Plugin"]
  LOADK R41 K87 ["SearchResults"]
  NAMECALL R38 R3 K32 ["getText"]
  CALL R38 3 1
  JUMP [+5]
  GETTABLEKS R40 R0 K5 ["Tabs"]
  GETTABLE R39 R40 R4
  GETTABLEKS R38 R39 K23 ["Title"]
  SETTABLEKS R38 R37 K88 ["Text"]
  GETUPVAL R39 9
  GETTABLEKS R38 R39 K17 ["Tag"]
  LOADK R39 K89 ["X-Fit StartPage-TextColor StartPage-TextSizeL StartPage-FontBold X-Transparent"]
  SETTABLE R39 R37 R38
  CALL R35 2 1
  JUMP [+17]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K13 ["createElement"]
  GETUPVAL R37 19
  GETTABLEKS R36 R37 K90 ["Component"]
  DUPTABLE R37 K91 [{"Size"}]
  GETIMPORT R38 K29 [UDim2.new]
  LOADN R39 1
  LOADN R40 0
  LOADN R41 1
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K15 ["Size"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K83 ["Label"]
  GETUPVAL R36 16
  JUMPIFNOT R36 [+85]
  GETUPVAL R36 4
  JUMPIFNOT R36 [+83]
  GETTABLEKS R36 R0 K71 ["CanSwapBetweenViews"]
  JUMPIFNOT R36 [+80]
  GETTABLEKS R36 R0 K48 ["HideTabs"]
  JUMPIFNOT R36 [+77]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K13 ["createElement"]
  LOADK R36 K72 ["ImageButton"]
  NEWTABLE R37 8 0
  GETIMPORT R38 K29 [UDim2.new]
  LOADN R39 0
  LOADN R40 30
  LOADN R41 0
  LOADN R42 32
  CALL R38 4 1
  SETTABLEKS R38 R37 K15 ["Size"]
  GETIMPORT R38 K93 [Vector2.new]
  LOADN R39 1
  LOADK R40 K94 [0.5]
  CALL R38 2 1
  SETTABLEKS R38 R37 K95 ["AnchorPoint"]
  GETIMPORT R38 K97 [UDim2.fromScale]
  LOADN R39 1
  LOADK R40 K94 [0.5]
  CALL R38 2 1
  SETTABLEKS R38 R37 K16 ["Position"]
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K73 ["Event"]
  GETTABLEKS R38 R39 K74 ["Activated"]
  NEWCLOSURE R39 P10
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R15
  SETTABLE R39 R37 R38
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K73 ["Event"]
  GETTABLEKS R38 R39 K75 ["MouseEnter"]
  SETTABLE R16 R37 R38
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K73 ["Event"]
  GETTABLEKS R38 R39 K76 ["MouseLeave"]
  SETTABLE R17 R37 R38
  GETUPVAL R39 9
  GETTABLEKS R38 R39 K17 ["Tag"]
  LOADK R39 K77 ["X-Middle X-Center X-Corner StartPage-PageBackground"]
  SETTABLE R39 R37 R38
  NEWTABLE R38 0 1
  GETUPVAL R40 9
  GETTABLEKS R39 R40 K13 ["createElement"]
  GETUPVAL R40 22
  NEWTABLE R41 1 0
  GETUPVAL R43 9
  GETTABLEKS R42 R43 K17 ["Tag"]
  JUMPIFNOT R14 [+2]
  LOADK R43 K78 ["StartPage-ListIcon"]
  JUMP [+1]
  LOADK R43 K79 ["StartPage-GridIcon"]
  SETTABLE R43 R41 R42
  CALL R39 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 1
  JUMP [+1]
  LOADNIL R35
  SETTABLEKS R35 R34 K84 ["Toggle"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K23 ["Title"]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K13 ["createElement"]
  LOADK R32 K14 ["Frame"]
  NEWTABLE R33 4 0
  MOVE R34 R26
  CALL R34 0 1
  SETTABLEKS R34 R33 K30 ["LayoutOrder"]
  GETIMPORT R34 K29 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 1
  GETTABLEKS R39 R0 K26 ["HasSearchBar"]
  JUMPIFNOT R39 [+2]
  LOADN R38 96
  JUMP [+1]
  LOADN R38 156
  CALL R34 4 1
  SETTABLEKS R34 R33 K15 ["Size"]
  GETUPVAL R35 9
  GETTABLEKS R34 R35 K17 ["Tag"]
  LOADK R35 K82 ["X-Transparent"]
  SETTABLE R35 R33 R34
  NEWTABLE R34 0 1
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K13 ["createElement"]
  GETTABLEKS R38 R0 K5 ["Tabs"]
  GETTABLE R37 R38 R4
  GETTABLEKS R36 R37 K24 ["PageComponent"]
  DUPTABLE R37 K106 [{"Size", "Position", "DisplayComponent", "Dropdowns", "NoContentDisplayComponent", "CanDisplayComponentAdjustQuery", "DisplayComponentHasAdjustedQuery", "HasParentLoaded", "InitialContentHasLoaded", "CellSize", "CellPadding", "BaseQuery"}]
  GETIMPORT R38 K29 [UDim2.new]
  LOADN R39 1
  LOADN R40 0
  LOADN R41 1
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K15 ["Size"]
  GETIMPORT R38 K29 [UDim2.new]
  LOADN R39 0
  LOADN R40 240
  LOADN R41 0
  LOADN R42 240
  CALL R38 4 1
  SETTABLEKS R38 R37 K16 ["Position"]
  JUMPIFNOT R14 [+2]
  GETUPVAL R38 23
  JUMP [+1]
  GETUPVAL R38 24
  SETTABLEKS R38 R37 K98 ["DisplayComponent"]
  SETTABLEKS R18 R37 K6 ["Dropdowns"]
  NEWCLOSURE R38 P11
  CAPTURE UPVAL U9
  CAPTURE UPVAL U25
  CAPTURE UPVAL U7
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R38 R37 K99 ["NoContentDisplayComponent"]
  NOT R38 R14
  JUMPIFNOT R38 [+4]
  MOVE R38 R18
  JUMPIFNOT R38 [+2]
  GETTABLEKS R38 R18 K8 ["SortDropdown"]
  SETTABLEKS R38 R37 K100 ["CanDisplayComponentAdjustQuery"]
  JUMPIF R14 [+5]
  NEWCLOSURE R38 P12
  CAPTURE UPVAL U4
  CAPTURE REF R13
  CAPTURE VAL R7
  JUMP [+1]
  LOADNIL R38
  SETTABLEKS R38 R37 K101 ["DisplayComponentHasAdjustedQuery"]
  GETUPVAL R39 4
  JUMPIFNOT R39 [+2]
  LOADNIL R38
  JUMP [+1]
  MOVE R38 R12
  SETTABLEKS R38 R37 K102 ["HasParentLoaded"]
  GETUPVAL R39 4
  JUMPIFNOT R39 [+2]
  DUPCLOSURE R38 K107 [PROTO_14]
  JUMP [+2]
  NEWCLOSURE R38 P14
  CAPTURE REF R13
  SETTABLEKS R38 R37 K103 ["InitialContentHasLoaded"]
  GETTABLEKS R38 R0 K104 ["CellSize"]
  SETTABLEKS R38 R37 K104 ["CellSize"]
  GETIMPORT R38 K29 [UDim2.new]
  LOADN R39 0
  LOADN R40 16
  LOADN R41 0
  LOADN R42 16
  CALL R38 4 1
  SETTABLEKS R38 R37 K105 ["CellPadding"]
  SETTABLEKS R25 R37 K38 ["BaseQuery"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  SETTABLEKS R31 R30 K24 ["PageComponent"]
  CALL R27 3 -1
  CLOSEUPVALS R13
  RETURN R27 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useState"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Services"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["StartPageManager"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K13 ["SharedFlags"]
  GETTABLEKS R6 R7 K14 ["getFFlagLuaStartPageQuickLoad"]
  CALL R5 1 1
  CALL R5 0 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K13 ["SharedFlags"]
  GETTABLEKS R7 R8 K15 ["getFFlagLuaStartPageAddingRecentsPage"]
  CALL R6 1 1
  CALL R6 0 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K13 ["SharedFlags"]
  GETTABLEKS R8 R9 K16 ["getFFlagLuaStartPageAlertForUsersTextChat"]
  CALL R7 1 1
  CALL R7 0 1
  GETIMPORT R8 K18 [game]
  LOADK R10 K19 ["StartPageTruncateGroupDropdown"]
  LOADB R11 0
  NAMECALL R8 R8 K20 ["DefineFastFlag"]
  CALL R8 3 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K10 ["Util"]
  GETTABLEKS R10 R11 K21 ["TypedDash"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K22 ["map"]
  GETTABLEKS R11 R9 K23 ["join"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R0 K6 ["Packages"]
  GETTABLEKS R13 R14 K24 ["Framework"]
  CALL R12 1 1
  GETTABLEKS R14 R12 K10 ["Util"]
  GETTABLEKS R13 R14 K25 ["counter"]
  GETTABLEKS R15 R12 K26 ["ContextServices"]
  GETTABLEKS R14 R15 K27 ["Localization"]
  GETTABLEKS R15 R12 K28 ["UI"]
  GETTABLEKS R16 R15 K29 ["Grid"]
  GETTABLEKS R17 R15 K30 ["SelectInput"]
  GETTABLEKS R18 R15 K31 ["Image"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K9 ["Src"]
  GETTABLEKS R21 R22 K32 ["Components"]
  GETTABLEKS R20 R21 K33 ["Alert"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R24 R0 K9 ["Src"]
  GETTABLEKS R23 R24 K10 ["Util"]
  GETTABLEKS R22 R23 K34 ["Telemetry"]
  GETTABLEKS R21 R22 K35 ["TelemetryContext"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R25 R0 K9 ["Src"]
  GETTABLEKS R24 R25 K10 ["Util"]
  GETTABLEKS R23 R24 K34 ["Telemetry"]
  GETTABLEKS R22 R23 K36 ["StartPageTelemetryEvent"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K9 ["Src"]
  GETTABLEKS R24 R25 K32 ["Components"]
  GETTABLEKS R23 R24 K37 ["Shimmer"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K9 ["Src"]
  GETTABLEKS R25 R26 K32 ["Components"]
  GETTABLEKS R24 R25 K38 ["PillTabs"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K9 ["Src"]
  GETTABLEKS R26 R27 K32 ["Components"]
  GETTABLEKS R25 R26 K39 ["ExperiencesTable"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K9 ["Src"]
  GETTABLEKS R27 R28 K32 ["Components"]
  GETTABLEKS R26 R27 K40 ["SearchBarWithPills"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R29 R0 K9 ["Src"]
  GETTABLEKS R28 R29 K32 ["Components"]
  GETTABLEKS R27 R28 K41 ["NoResultsFoundPage"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K9 ["Src"]
  GETTABLEKS R29 R30 K42 ["Hooks"]
  GETTABLEKS R28 R29 K43 ["useCursor"]
  CALL R27 1 1
  GETTABLEKS R28 R12 K26 ["ContextServices"]
  GETIMPORT R29 K5 [require]
  GETTABLEKS R31 R0 K9 ["Src"]
  GETTABLEKS R30 R31 K44 ["Types"]
  CALL R29 1 1
  GETIMPORT R30 K5 [require]
  GETTABLEKS R33 R0 K9 ["Src"]
  GETTABLEKS R32 R33 K13 ["SharedFlags"]
  GETTABLEKS R31 R32 K45 ["getFIntNewUserThreshold"]
  CALL R30 1 1
  CALL R30 0 1
  GETIMPORT R31 K5 [require]
  GETTABLEKS R34 R0 K9 ["Src"]
  GETTABLEKS R33 R34 K13 ["SharedFlags"]
  GETTABLEKS R32 R33 K46 ["getFStringLuaStartPageBannerLink"]
  CALL R31 1 1
  CALL R31 0 1
  DUPCLOSURE R32 K47 [PROTO_1]
  CAPTURE VAL R10
  DUPCLOSURE R33 K48 [PROTO_16]
  CAPTURE VAL R28
  CAPTURE VAL R20
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R27
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R25
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R30
  CAPTURE VAL R19
  CAPTURE VAL R31
  CAPTURE VAL R6
  CAPTURE VAL R23
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R17
  CAPTURE VAL R8
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R24
  CAPTURE VAL R26
  RETURN R33 1
