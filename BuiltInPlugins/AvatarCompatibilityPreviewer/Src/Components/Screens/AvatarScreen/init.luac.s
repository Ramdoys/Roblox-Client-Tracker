PROTO_0:
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  GETTABLEN R2 R3 1
  GETTABLEKS R1 R2 K0 ["Key"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["WorldModel"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K0 ["WorldModel"]
  CALL R1 1 0
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 3
  GETTABLEKS R2 R0 K0 ["WorldModel"]
  GETTABLEKS R3 R0 K1 ["Dummy"]
  GETTABLEKS R4 R0 K2 ["UpdateHumanoidDescription"]
  CALL R1 3 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["Key"]
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETIMPORT R0 K2 [table.find]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["tabs"]
  GETUPVAL R2 1
  CALL R0 2 1
  JUMPIFEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["tabs"]
  GETTABLEN R0 R1 1
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 3
  GETUPVAL R5 4
  GETTABLE R4 R5 R0
  GETTABLEN R3 R4 1
  GETTABLEKS R2 R3 K4 ["Key"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["tabs"]
  JUMP [+1]
  LOADNIL R3
  CALL R1 2 2
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["Selecting palette that doesn't exist"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R3 1 0
  GETUPVAL R3 4
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+10]
  GETIMPORT R3 K6 [table.find]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["tabs"]
  MOVE R5 R2
  CALL R3 2 1
  JUMPIFEQKNIL R3 [+2]
  RETURN R0 0
  GETUPVAL R3 5
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETIMPORT R8 K6 [table.find]
  GETTABLEKS R9 R7 K0 ["tabs"]
  MOVE R10 R2
  CALL R8 2 1
  JUMPIFEQKNIL R8 [+7]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K7 ["setStage"]
  MOVE R9 R6
  CALL R8 1 0
  RETURN R0 0
  FORGLOOP R3 2 [-15]
  GETIMPORT R3 K9 [error]
  LOADK R5 K10 ["Invalid stage for %* (in %*)"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 3 1
  MOVE R4 R5
  CALL R3 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R5 2
  GETTABLE R4 R5 R0
  GETTABLEN R3 R4 1
  GETTABLEKS R2 R3 K0 ["Key"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["removeAllEquippedItems"]
  CALL R0 0 0
  RETURN R0 0

PROTO_8:
  ADDK R1 R0 K0 [1]
  RETURN R1 1

PROTO_9:
  GETUPVAL R0 0
  DUPCLOSURE R1 K0 [PROTO_8]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  LOADK R3 K0 ["AvatarScreen"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R2 0
  LOADK R4 K2 ["StageSelector"]
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["useContext"]
  GETUPVAL R4 2
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["useContext"]
  GETUPVAL R5 3
  CALL R4 1 1
  GETUPVAL R6 4
  GETTABLEKS R7 R4 K4 ["stage"]
  GETTABLE R5 R6 R7
  GETTABLEKS R7 R0 K5 ["Avatar"]
  GETTABLEKS R6 R7 K6 ["WorldModel"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["useState"]
  GETTABLEKS R9 R5 K8 ["tabs"]
  GETTABLEN R8 R9 1
  CALL R7 1 2
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  FASTCALL2K ASSERT R10 K9 [+4]
  LOADK R11 K9 ["Current stage didn't have a tab"]
  GETIMPORT R9 K11 [assert]
  CALL R9 2 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["useState"]
  GETUPVAL R13 5
  GETTABLE R12 R13 R7
  GETTABLEN R11 R12 1
  GETTABLEKS R10 R11 K12 ["Key"]
  CALL R9 1 2
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K13 ["find"]
  GETUPVAL R13 5
  GETTABLE R12 R13 R7
  NEWCLOSURE R13 P0
  CAPTURE VAL R9
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K14 ["useEffect"]
  NEWCLOSURE R13 P1
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE UPVAL U5
  NEWTABLE R14 0 1
  MOVE R15 R5
  SETLIST R14 R15 1 [1]
  CALL R12 2 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K15 ["useCallback"]
  NEWCLOSURE R13 P2
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  NEWTABLE R14 0 2
  GETTABLEKS R15 R4 K16 ["setStage"]
  GETUPVAL R17 8
  CALL R17 0 1
  JUMPIFNOT R17 [+3]
  GETTABLEKS R16 R5 K8 ["tabs"]
  JUMP [+1]
  LOADNIL R16
  SETLIST R14 R15 2 [1]
  CALL R12 2 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K7 ["useState"]
  NEWTABLE R14 0 0
  CALL R13 1 2
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["useState"]
  LOADN R16 0
  CALL R15 1 2
  GETUPVAL R17 9
  GETTABLEKS R18 R0 K5 ["Avatar"]
  NEWTABLE R19 0 1
  MOVE R20 R15
  SETLIST R19 R20 1 [1]
  CALL R17 2 1
  GETUPVAL R18 10
  GETTABLEKS R19 R0 K5 ["Avatar"]
  MOVE R20 R17
  CALL R18 2 1
  GETUPVAL R19 11
  MOVE R20 R18
  MOVE R21 R6
  CALL R19 2 0
  GETUPVAL R19 12
  CALL R19 0 1
  JUMPIFNOT R19 [+3]
  GETUPVAL R19 13
  MOVE R20 R18
  CALL R19 1 0
  GETUPVAL R19 14
  MOVE R20 R18
  CALL R19 1 0
  GETUPVAL R19 15
  MOVE R20 R18
  GETTABLEKS R21 R4 K17 ["isTextured"]
  CALL R19 2 0
  GETUPVAL R19 16
  MOVE R20 R18
  CALL R19 1 0
  GETUPVAL R19 17
  CALL R19 0 1
  JUMPIFNOT R19 [+3]
  GETUPVAL R19 18
  MOVE R20 R18
  CALL R19 1 0
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K18 ["useRef"]
  GETUPVAL R21 19
  GETTABLEKS R20 R21 K19 ["new"]
  CALL R20 0 -1
  CALL R19 -1 1
  GETTABLEKS R22 R19 K20 ["current"]
  JUMPIFNOTEQKNIL R22 [+2]
  LOADB R21 0 +1
  LOADB R21 1
  GETUPVAL R23 20
  GETTABLEKS R22 R23 K21 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R21 R22 [+3]
  GETIMPORT R20 K11 [assert]
  CALL R20 2 0
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K15 ["useCallback"]
  NEWCLOSURE R21 P3
  CAPTURE VAL R19
  NEWTABLE R22 0 0
  CALL R20 2 1
  GETUPVAL R21 21
  CALL R21 0 1
  GETUPVAL R23 22
  GETTABLEKS R22 R23 K19 ["new"]
  CALL R22 0 1
  NEWTABLE R23 4 0
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K22 ["createElement"]
  GETUPVAL R25 23
  NEWTABLE R26 0 0
  DUPTABLE R27 K25 [{"StageSelect", "Contents"}]
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K22 ["createElement"]
  GETUPVAL R29 24
  DUPTABLE R30 K29 [{"SelectedStage", "SetStage", "Avatar", "PreviewDummy"}]
  GETTABLEKS R31 R4 K4 ["stage"]
  SETTABLEKS R31 R30 K26 ["SelectedStage"]
  GETTABLEKS R31 R4 K16 ["setStage"]
  SETTABLEKS R31 R30 K27 ["SetStage"]
  GETTABLEKS R31 R0 K5 ["Avatar"]
  SETTABLEKS R31 R30 K5 ["Avatar"]
  GETUPVAL R32 25
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  MOVE R31 R18
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K28 ["PreviewDummy"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K23 ["StageSelect"]
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K22 ["createElement"]
  GETUPVAL R29 23
  DUPTABLE R30 K32 [{"Position", "Size"}]
  GETIMPORT R31 K35 [UDim2.fromOffset]
  GETTABLEKS R32 R2 K36 ["Width"]
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K30 ["Position"]
  GETIMPORT R31 K37 [UDim2.new]
  LOADN R32 1
  GETTABLEKS R34 R2 K36 ["Width"]
  MINUS R33 R34
  LOADN R34 1
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K31 ["Size"]
  DUPTABLE R31 K39 [{"Tabs", "Contents"}]
  GETUPVAL R33 1
  GETTABLEKS R32 R33 K22 ["createElement"]
  GETUPVAL R33 23
  DUPTABLE R34 K41 [{"Position", "Size", "Layout"}]
  GETIMPORT R35 K35 [UDim2.fromOffset]
  LOADN R36 0
  GETTABLEKS R38 R1 K38 ["Tabs"]
  GETTABLEKS R37 R38 K42 ["VerticalOffset"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K30 ["Position"]
  GETIMPORT R35 K37 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 0
  GETTABLEKS R40 R1 K38 ["Tabs"]
  GETTABLEKS R39 R40 K43 ["Height"]
  CALL R35 4 1
  SETTABLEKS R35 R34 K31 ["Size"]
  GETIMPORT R35 K47 [Enum.FillDirection.Vertical]
  SETTABLEKS R35 R34 K40 ["Layout"]
  DUPTABLE R35 K50 [{"TabBar", "AssetPalettes"}]
  GETUPVAL R37 1
  GETTABLEKS R36 R37 K22 ["createElement"]
  GETUPVAL R37 26
  DUPTABLE R38 K54 [{"LayoutOrder", "Tabs", "SelectedTab", "SetSelectedTab"}]
  NAMECALL R39 R22 K55 ["getNextOrder"]
  CALL R39 1 1
  SETTABLEKS R39 R38 K51 ["LayoutOrder"]
  GETTABLEKS R39 R5 K8 ["tabs"]
  SETTABLEKS R39 R38 K38 ["Tabs"]
  SETTABLEKS R7 R38 K52 ["SelectedTab"]
  NEWCLOSURE R39 P4
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE UPVAL U5
  SETTABLEKS R39 R38 K53 ["SetSelectedTab"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K48 ["TabBar"]
  GETUPVAL R37 1
  GETTABLEKS R36 R37 K22 ["createElement"]
  GETUPVAL R37 27
  DUPTABLE R38 K59 [{"LayoutOrder", "SelectedTab", "SelectedPalette", "SetSelectedPalette", "ScrollingFrameProps"}]
  GETUPVAL R40 28
  CALL R40 0 1
  JUMPIFNOT R40 [+4]
  NAMECALL R39 R22 K55 ["getNextOrder"]
  CALL R39 1 1
  JUMP [+1]
  LOADNIL R39
  SETTABLEKS R39 R38 K51 ["LayoutOrder"]
  SETTABLEKS R7 R38 K52 ["SelectedTab"]
  SETTABLEKS R9 R38 K56 ["SelectedPalette"]
  SETTABLEKS R10 R38 K57 ["SetSelectedPalette"]
  GETUPVAL R40 28
  CALL R40 0 1
  JUMPIFNOT R40 [+2]
  LOADNIL R39
  JUMP [+6]
  DUPTABLE R39 K60 [{"LayoutOrder"}]
  NAMECALL R40 R22 K55 ["getNextOrder"]
  CALL R40 1 1
  SETTABLEKS R40 R39 K51 ["LayoutOrder"]
  SETTABLEKS R39 R38 K58 ["ScrollingFrameProps"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K49 ["AssetPalettes"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K38 ["Tabs"]
  GETUPVAL R33 1
  GETTABLEKS R32 R33 K22 ["createElement"]
  GETUPVAL R33 23
  DUPTABLE R34 K62 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R35 K64 [Vector2.new]
  LOADN R36 0
  LOADN R37 1
  CALL R35 2 1
  SETTABLEKS R35 R34 K61 ["AnchorPoint"]
  GETIMPORT R35 K66 [UDim2.fromScale]
  LOADN R36 0
  LOADN R37 1
  CALL R35 2 1
  SETTABLEKS R35 R34 K30 ["Position"]
  GETIMPORT R35 K37 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 1
  GETTABLEKS R41 R1 K38 ["Tabs"]
  GETTABLEKS R40 R41 K43 ["Height"]
  MINUS R39 R40
  CALL R35 4 1
  SETTABLEKS R35 R34 K31 ["Size"]
  DUPTABLE R35 K69 [{"CatalogContainer", "Preview"}]
  MOVE R36 R11
  JUMPIFNOT R36 [+101]
  GETUPVAL R37 1
  GETTABLEKS R36 R37 K22 ["createElement"]
  GETUPVAL R37 23
  DUPTABLE R38 K72 [{"AutomaticSize", "BackgroundColor3", "Size"}]
  GETIMPORT R39 K74 [Enum.AutomaticSize.Y]
  SETTABLEKS R39 R38 K70 ["AutomaticSize"]
  GETTABLEKS R40 R1 K49 ["AssetPalettes"]
  GETTABLEKS R39 R40 K75 ["BackgroundColor"]
  SETTABLEKS R39 R38 K71 ["BackgroundColor3"]
  GETIMPORT R39 K37 [UDim2.new]
  LOADN R40 0
  GETTABLEKS R42 R1 K49 ["AssetPalettes"]
  GETTABLEKS R41 R42 K36 ["Width"]
  LOADN R42 1
  LOADN R43 0
  CALL R39 4 1
  SETTABLEKS R39 R38 K31 ["Size"]
  DUPTABLE R39 K77 [{"CatalogContainer", "Separator"}]
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K22 ["createElement"]
  GETUPVAL R41 23
  DUPTABLE R42 K78 [{"Size"}]
  GETIMPORT R43 K37 [UDim2.new]
  LOADN R44 1
  GETTABLEKS R47 R1 K49 ["AssetPalettes"]
  GETTABLEKS R46 R47 K79 ["SeparatorWidth"]
  MINUS R45 R46
  LOADN R46 1
  LOADN R47 0
  CALL R43 4 1
  SETTABLEKS R43 R42 K31 ["Size"]
  DUPTABLE R43 K81 [{"Catalog"}]
  GETUPVAL R45 1
  GETTABLEKS R44 R45 K22 ["createElement"]
  GETUPVAL R45 29
  DUPTABLE R46 K83 [{"Palette"}]
  SETTABLEKS R11 R46 K82 ["Palette"]
  CALL R44 2 1
  SETTABLEKS R44 R43 K80 ["Catalog"]
  CALL R40 3 1
  SETTABLEKS R40 R39 K67 ["CatalogContainer"]
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K22 ["createElement"]
  GETUPVAL R41 23
  DUPTABLE R42 K84 [{"AnchorPoint", "BackgroundColor3", "Position", "Size"}]
  GETIMPORT R43 K64 [Vector2.new]
  LOADN R44 1
  LOADN R45 0
  CALL R43 2 1
  SETTABLEKS R43 R42 K61 ["AnchorPoint"]
  GETTABLEKS R44 R1 K49 ["AssetPalettes"]
  GETTABLEKS R43 R44 K85 ["SeparatorColor"]
  SETTABLEKS R43 R42 K71 ["BackgroundColor3"]
  GETIMPORT R43 K66 [UDim2.fromScale]
  LOADN R44 1
  LOADN R45 0
  CALL R43 2 1
  SETTABLEKS R43 R42 K30 ["Position"]
  GETIMPORT R43 K37 [UDim2.new]
  LOADN R44 0
  GETTABLEKS R46 R1 K49 ["AssetPalettes"]
  GETTABLEKS R45 R46 K79 ["SeparatorWidth"]
  LOADN R46 1
  LOADN R47 0
  CALL R43 4 1
  SETTABLEKS R43 R42 K31 ["Size"]
  CALL R40 2 1
  SETTABLEKS R40 R39 K76 ["Separator"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K67 ["CatalogContainer"]
  GETUPVAL R37 1
  GETTABLEKS R36 R37 K22 ["createElement"]
  GETUPVAL R37 23
  DUPTABLE R38 K62 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R39 K64 [Vector2.new]
  LOADN R40 1
  LOADN R41 0
  CALL R39 2 1
  SETTABLEKS R39 R38 K61 ["AnchorPoint"]
  GETIMPORT R39 K66 [UDim2.fromScale]
  LOADN R40 1
  LOADN R41 0
  CALL R39 2 1
  SETTABLEKS R39 R38 K30 ["Position"]
  GETIMPORT R39 K37 [UDim2.new]
  LOADN R40 1
  JUMPIFNOT R11 [+6]
  GETTABLEKS R43 R1 K49 ["AssetPalettes"]
  GETTABLEKS R42 R43 K36 ["Width"]
  MINUS R41 R42
  JUMP [+1]
  LOADN R41 0
  LOADN R42 1
  LOADN R43 0
  CALL R39 4 1
  SETTABLEKS R39 R38 K31 ["Size"]
  DUPTABLE R39 K92 [{"DummyPreview", "ResizeNotification", "AvatarSizingHint", "UGCValidationNotice", "ChedkRender", "ContextualSurveyDialogButton"}]
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K22 ["createElement"]
  GETUPVAL R41 30
  DUPTABLE R42 K96 [{"Dummy", "Avatar", "RevertToDefault", "ResetCameraSignal"}]
  SETTABLEKS R18 R42 K93 ["Dummy"]
  GETTABLEKS R43 R0 K5 ["Avatar"]
  SETTABLEKS R43 R42 K5 ["Avatar"]
  NEWCLOSURE R43 P5
  CAPTURE VAL R6
  CAPTURE VAL R3
  SETTABLEKS R43 R42 K94 ["RevertToDefault"]
  GETTABLEKS R43 R19 K20 ["current"]
  SETTABLEKS R43 R42 K95 ["ResetCameraSignal"]
  CALL R40 2 1
  SETTABLEKS R40 R39 K86 ["DummyPreview"]
  GETUPVAL R41 31
  CALL R41 0 1
  JUMPIFNOT R41 [+11]
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K22 ["createElement"]
  GETUPVAL R41 32
  DUPTABLE R42 K97 [{"Avatar"}]
  GETTABLEKS R43 R0 K5 ["Avatar"]
  SETTABLEKS R43 R42 K5 ["Avatar"]
  CALL R40 2 1
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K87 ["ResizeNotification"]
  GETUPVAL R41 31
  CALL R41 0 1
  JUMPIFNOT R41 [+14]
  GETTABLEKS R41 R0 K98 ["IsSelected"]
  JUMPIFNOT R41 [+11]
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K22 ["createElement"]
  GETUPVAL R41 33
  DUPTABLE R42 K97 [{"Avatar"}]
  GETTABLEKS R43 R0 K5 ["Avatar"]
  SETTABLEKS R43 R42 K5 ["Avatar"]
  CALL R40 2 1
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K88 ["AvatarSizingHint"]
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K22 ["createElement"]
  GETUPVAL R41 34
  DUPTABLE R42 K97 [{"Avatar"}]
  GETTABLEKS R43 R0 K5 ["Avatar"]
  SETTABLEKS R43 R42 K5 ["Avatar"]
  CALL R40 2 1
  SETTABLEKS R40 R39 K89 ["UGCValidationNotice"]
  GETTABLEKS R41 R4 K4 ["stage"]
  JUMPIFNOTEQKS R41 K99 ["CheckBody"] [+20]
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K22 ["createElement"]
  GETUPVAL R43 4
  GETTABLEKS R42 R43 K99 ["CheckBody"]
  GETTABLEKS R41 R42 K100 ["render"]
  DUPTABLE R42 K101 [{"Avatar", "Dummy", "SelectedTab"}]
  GETTABLEKS R43 R0 K5 ["Avatar"]
  SETTABLEKS R43 R42 K5 ["Avatar"]
  SETTABLEKS R18 R42 K93 ["Dummy"]
  SETTABLEKS R7 R42 K52 ["SelectedTab"]
  CALL R40 2 1
  JUMP [+33]
  GETTABLEKS R41 R4 K4 ["stage"]
  JUMPIFNOTEQKS R41 K102 ["CheckFace"] [+20]
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K22 ["createElement"]
  GETUPVAL R43 4
  GETTABLEKS R42 R43 K102 ["CheckFace"]
  GETTABLEKS R41 R42 K100 ["render"]
  DUPTABLE R42 K101 [{"Avatar", "Dummy", "SelectedTab"}]
  GETTABLEKS R43 R0 K5 ["Avatar"]
  SETTABLEKS R43 R42 K5 ["Avatar"]
  SETTABLEKS R18 R42 K93 ["Dummy"]
  SETTABLEKS R7 R42 K52 ["SelectedTab"]
  CALL R40 2 1
  JUMP [+10]
  GETIMPORT R40 K104 [error]
  LOADK R42 K105 ["Unknown stage %*"]
  GETTABLEKS R44 R4 K4 ["stage"]
  NAMECALL R42 R42 K106 ["format"]
  CALL R42 2 1
  MOVE R41 R42
  CALL R40 1 1
  SETTABLEKS R40 R39 K90 ["ChedkRender"]
  GETUPVAL R40 35
  CALL R40 0 1
  JUMPIFNOT R40 [+10]
  GETUPVAL R41 1
  GETTABLEKS R40 R41 K22 ["createElement"]
  GETUPVAL R41 36
  DUPTABLE R42 K97 [{"Avatar"}]
  GETTABLEKS R43 R0 K5 ["Avatar"]
  SETTABLEKS R43 R42 K5 ["Avatar"]
  CALL R40 2 1
  SETTABLEKS R40 R39 K91 ["ContextualSurveyDialogButton"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K68 ["Preview"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K24 ["Contents"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K24 ["Contents"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K0 ["AvatarScreen"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K22 ["createElement"]
  GETUPVAL R25 37
  DUPTABLE R26 K108 [{"WorldModel", "Dummy", "UpdateHumanoidDescription"}]
  SETTABLEKS R6 R26 K6 ["WorldModel"]
  SETTABLEKS R18 R26 K93 ["Dummy"]
  NEWCLOSURE R27 P6
  CAPTURE VAL R16
  SETTABLEKS R27 R26 K107 ["UpdateHumanoidDescription"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K109 ["InitialImport"]
  GETUPVAL R26 20
  GETTABLEKS R25 R26 K110 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R24 R25 K111 ["EditingToolbar"]
  GETUPVAL R25 17
  CALL R25 0 1
  JUMPIFNOT R25 [+8]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K22 ["createElement"]
  GETUPVAL R26 38
  DUPTABLE R27 K113 [{"worldModel"}]
  SETTABLEKS R6 R27 K112 ["worldModel"]
  CALL R25 2 1
  SETTABLE R25 R23 R24
  GETUPVAL R24 39
  CALL R24 0 1
  JUMPIFNOT R24 [+37]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K22 ["createElement"]
  GETUPVAL R25 40
  DUPTABLE R26 K115 [{"providers"}]
  NEWTABLE R27 0 2
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K22 ["createElement"]
  GETUPVAL R30 41
  GETTABLEKS R29 R30 K116 ["Provider"]
  DUPTABLE R30 K120 [{"openPalette", "resetCamera", "stage", "selectedAvatar"}]
  SETTABLEKS R12 R30 K117 ["openPalette"]
  SETTABLEKS R20 R30 K118 ["resetCamera"]
  SETTABLEKS R5 R30 K4 ["stage"]
  SETTABLEKS R6 R30 K119 ["selectedAvatar"]
  CALL R28 2 1
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K22 ["createElement"]
  GETUPVAL R31 42
  GETTABLEKS R30 R31 K116 ["Provider"]
  CALL R29 1 -1
  SETLIST R27 R28 -1 [1]
  SETTABLEKS R27 R26 K114 ["providers"]
  MOVE R27 R23
  CALL R24 3 -1
  RETURN R24 -1
  GETUPVAL R24 35
  CALL R24 0 1
  JUMPIFNOT R24 [+74]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K22 ["createElement"]
  GETUPVAL R25 40
  DUPTABLE R26 K115 [{"providers"}]
  NEWTABLE R27 0 2
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K22 ["createElement"]
  GETUPVAL R30 43
  GETTABLEKS R29 R30 K116 ["Provider"]
  DUPTABLE R30 K122 [{"openPalette", "value"}]
  LOADN R31 3
  SETTABLEKS R31 R30 K117 ["openPalette"]
  DUPTABLE R31 K128 [{"openPalette", "focusedAttachments", "setFocusedAttachments", "dummyPreviewLocked", "incrementDummyPreviewLock", "decrementDummyPreviewLock", "resetCamera", "stage"}]
  SETTABLEKS R12 R31 K117 ["openPalette"]
  GETUPVAL R33 17
  CALL R33 0 1
  JUMPIFNOT R33 [+2]
  MOVE R32 R13
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K123 ["focusedAttachments"]
  GETUPVAL R33 17
  CALL R33 0 1
  JUMPIFNOT R33 [+2]
  MOVE R32 R14
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K124 ["setFocusedAttachments"]
  GETTABLEKS R33 R21 K129 ["amount"]
  LOADN R34 0
  JUMPIFLT R34 R33 [+2]
  LOADB R32 0 +1
  LOADB R32 1
  SETTABLEKS R32 R31 K125 ["dummyPreviewLocked"]
  GETTABLEKS R32 R21 K130 ["increment"]
  SETTABLEKS R32 R31 K126 ["incrementDummyPreviewLock"]
  GETTABLEKS R32 R21 K131 ["decrement"]
  SETTABLEKS R32 R31 K127 ["decrementDummyPreviewLock"]
  SETTABLEKS R20 R31 K118 ["resetCamera"]
  SETTABLEKS R5 R31 K4 ["stage"]
  SETTABLEKS R31 R30 K121 ["value"]
  CALL R28 2 1
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K22 ["createElement"]
  GETUPVAL R31 42
  GETTABLEKS R30 R31 K116 ["Provider"]
  CALL R29 1 -1
  SETLIST R27 R28 -1 [1]
  SETTABLEKS R27 R26 K114 ["providers"]
  MOVE R27 R23
  CALL R24 3 -1
  RETURN R24 -1
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K22 ["createElement"]
  GETUPVAL R25 44
  DUPTABLE R26 K115 [{"providers"}]
  NEWTABLE R27 0 2
  DUPTABLE R28 K133 [{"provider", "value"}]
  GETUPVAL R30 43
  GETTABLEKS R29 R30 K116 ["Provider"]
  SETTABLEKS R29 R28 K132 ["provider"]
  DUPTABLE R29 K134 [{"openPalette", "resetCamera", "stage", "dummyPreviewLocked", "incrementDummyPreviewLock", "decrementDummyPreviewLock"}]
  SETTABLEKS R12 R29 K117 ["openPalette"]
  SETTABLEKS R20 R29 K118 ["resetCamera"]
  SETTABLEKS R5 R29 K4 ["stage"]
  GETTABLEKS R31 R21 K129 ["amount"]
  LOADN R32 0
  JUMPIFLT R32 R31 [+2]
  LOADB R30 0 +1
  LOADB R30 1
  SETTABLEKS R30 R29 K125 ["dummyPreviewLocked"]
  GETTABLEKS R30 R21 K130 ["increment"]
  SETTABLEKS R30 R29 K126 ["incrementDummyPreviewLock"]
  GETTABLEKS R30 R21 K131 ["decrement"]
  SETTABLEKS R30 R29 K127 ["decrementDummyPreviewLock"]
  SETTABLEKS R29 R28 K121 ["value"]
  DUPTABLE R29 K135 [{"provider"}]
  GETUPVAL R31 42
  GETTABLEKS R30 R31 K116 ["Provider"]
  SETTABLEKS R30 R29 K132 ["provider"]
  SETLIST R27 R28 2 [1]
  SETTABLEKS R27 R26 K114 ["providers"]
  MOVE R27 R23
  CALL R24 3 -1
  RETURN R24 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Components"]
  GETTABLEKS R2 R3 K8 ["AssetPalettes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K9 ["AvatarScreenContext"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Components"]
  GETTABLEKS R5 R6 K10 ["Sizing"]
  GETTABLEKS R4 R5 K11 ["AvatarSizingHint"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Components"]
  GETTABLEKS R5 R6 K12 ["Catalog"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K13 ["Resources"]
  GETTABLEKS R6 R7 K14 ["CatalogItems"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K7 ["Components"]
  GETTABLEKS R8 R9 K17 ["ContextStack"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K7 ["Components"]
  GETTABLEKS R9 R10 K18 ["ContextStack_DEPRECATED"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K19 ["ContextualSurveyDialogButton"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K15 ["Util"]
  GETTABLEKS R11 R12 K20 ["DEPRECATED_AvatarScreenContext"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K21 ["Packages"]
  GETTABLEKS R12 R13 K22 ["Dash"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K6 ["Src"]
  GETTABLEKS R14 R15 K7 ["Components"]
  GETTABLEKS R13 R14 K23 ["DisambiguationMenuContext"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K6 ["Src"]
  GETTABLEKS R15 R16 K7 ["Components"]
  GETTABLEKS R14 R15 K24 ["EditingTools"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K15 ["Util"]
  GETTABLEKS R15 R16 K25 ["EquipmentStateContext"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R0 K21 ["Packages"]
  GETTABLEKS R16 R17 K26 ["Framework"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K6 ["Src"]
  GETTABLEKS R18 R19 K7 ["Components"]
  GETTABLEKS R17 R18 K27 ["PrimaryDummyPreview"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R19 R0 K21 ["Packages"]
  GETTABLEKS R18 R19 K28 ["React"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K7 ["Components"]
  GETTABLEKS R20 R21 K29 ["ResizeNotice"]
  GETTABLEKS R19 R20 K29 ["ResizeNotice"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K15 ["Util"]
  GETTABLEKS R20 R21 K30 ["SimpleSerializedStateContext"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K6 ["Src"]
  GETTABLEKS R22 R23 K7 ["Components"]
  GETTABLEKS R21 R22 K31 ["StageSelector"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETIMPORT R23 K1 [script]
  GETTABLEKS R22 R23 K32 ["Stages"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K6 ["Src"]
  GETTABLEKS R24 R25 K7 ["Components"]
  GETTABLEKS R23 R24 K33 ["TabBar"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K6 ["Src"]
  GETTABLEKS R25 R26 K13 ["Resources"]
  GETTABLEKS R24 R25 K34 ["Theme"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R26 R0 K6 ["Src"]
  GETTABLEKS R25 R26 K35 ["Types"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K6 ["Src"]
  GETTABLEKS R27 R28 K7 ["Components"]
  GETTABLEKS R26 R27 K36 ["UGCValidationNotice"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R29 R0 K6 ["Src"]
  GETTABLEKS R28 R29 K37 ["Flags"]
  GETTABLEKS R27 R28 K38 ["getFFlagAvatarPreviewerAutoSetup"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K6 ["Src"]
  GETTABLEKS R29 R30 K37 ["Flags"]
  GETTABLEKS R28 R29 K39 ["getFFlagAvatarPreviewerCheckFaceItems"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R31 R0 K6 ["Src"]
  GETTABLEKS R30 R31 K37 ["Flags"]
  GETTABLEKS R29 R30 K40 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R28 1 1
  GETIMPORT R29 K5 [require]
  GETTABLEKS R32 R0 K6 ["Src"]
  GETTABLEKS R31 R32 K37 ["Flags"]
  GETTABLEKS R30 R31 K41 ["getFFlagAvatarPreviewerGearAccessories"]
  CALL R29 1 1
  GETIMPORT R30 K5 [require]
  GETTABLEKS R33 R0 K6 ["Src"]
  GETTABLEKS R32 R33 K37 ["Flags"]
  GETTABLEKS R31 R32 K42 ["getFFlagAvatarPreviewerPickTabsMenu"]
  CALL R30 1 1
  GETIMPORT R31 K5 [require]
  GETTABLEKS R34 R0 K6 ["Src"]
  GETTABLEKS R33 R34 K37 ["Flags"]
  GETTABLEKS R32 R33 K43 ["getFFlagAvatarPreviewerSkinToneAlphaDetection"]
  CALL R31 1 1
  GETIMPORT R32 K5 [require]
  GETTABLEKS R35 R0 K6 ["Src"]
  GETTABLEKS R34 R35 K37 ["Flags"]
  GETTABLEKS R33 R34 K44 ["getFFlagAvatarPreviewerTestWithAssets"]
  CALL R32 1 1
  GETIMPORT R33 K5 [require]
  GETTABLEKS R36 R0 K6 ["Src"]
  GETTABLEKS R35 R36 K37 ["Flags"]
  GETTABLEKS R34 R35 K45 ["getFFlagAvatarPreviewerUseAnyModel"]
  CALL R33 1 1
  GETIMPORT R34 K5 [require]
  GETTABLEKS R37 R0 K6 ["Src"]
  GETTABLEKS R36 R37 K15 ["Util"]
  GETTABLEKS R35 R36 K46 ["getPaletteFromKey"]
  CALL R34 1 1
  GETIMPORT R35 K5 [require]
  GETTABLEKS R38 R0 K6 ["Src"]
  GETTABLEKS R37 R38 K47 ["Hooks"]
  GETTABLEKS R36 R37 K48 ["useAccessoryWelding"]
  CALL R35 1 1
  GETIMPORT R36 K5 [require]
  GETTABLEKS R39 R0 K6 ["Src"]
  GETTABLEKS R38 R39 K47 ["Hooks"]
  GETTABLEKS R37 R38 K49 ["useBodyPartsFromBase"]
  CALL R36 1 1
  GETIMPORT R37 K5 [require]
  GETTABLEKS R40 R0 K6 ["Src"]
  GETTABLEKS R39 R40 K47 ["Hooks"]
  GETTABLEKS R38 R39 K50 ["useClothingFromInstances"]
  CALL R37 1 1
  GETIMPORT R38 K5 [require]
  GETTABLEKS R41 R0 K6 ["Src"]
  GETTABLEKS R40 R41 K47 ["Hooks"]
  GETTABLEKS R39 R40 K51 ["useCopyPropertyChanges"]
  CALL R38 1 1
  GETIMPORT R39 K5 [require]
  GETTABLEKS R42 R0 K6 ["Src"]
  GETTABLEKS R41 R42 K47 ["Hooks"]
  GETTABLEKS R40 R41 K52 ["useDummyFromHumanoidDescription"]
  CALL R39 1 1
  GETIMPORT R40 K5 [require]
  GETTABLEKS R43 R0 K6 ["Src"]
  GETTABLEKS R42 R43 K47 ["Hooks"]
  GETTABLEKS R41 R42 K53 ["useIncrementedState"]
  CALL R40 1 1
  GETIMPORT R41 K5 [require]
  GETTABLEKS R44 R0 K6 ["Src"]
  GETTABLEKS R43 R44 K47 ["Hooks"]
  GETTABLEKS R42 R43 K54 ["useInitialImportController"]
  CALL R41 1 1
  GETIMPORT R42 K5 [require]
  GETTABLEKS R45 R0 K6 ["Src"]
  GETTABLEKS R44 R45 K47 ["Hooks"]
  GETTABLEKS R43 R44 K55 ["useMoveAccessoriesAlongsideAttachments"]
  CALL R42 1 1
  GETIMPORT R43 K5 [require]
  GETTABLEKS R46 R0 K6 ["Src"]
  GETTABLEKS R45 R46 K47 ["Hooks"]
  GETTABLEKS R44 R45 K56 ["usePreviewHumanoidDescription"]
  CALL R43 1 1
  GETIMPORT R44 K5 [require]
  GETTABLEKS R47 R0 K6 ["Src"]
  GETTABLEKS R46 R47 K47 ["Hooks"]
  GETTABLEKS R45 R46 K57 ["useSynchronizeGearAccessories"]
  CALL R44 1 1
  GETIMPORT R45 K5 [require]
  GETTABLEKS R48 R0 K6 ["Src"]
  GETTABLEKS R47 R48 K47 ["Hooks"]
  GETTABLEKS R46 R47 K58 ["useTrackNewChildrenController"]
  CALL R45 1 1
  GETIMPORT R46 K5 [require]
  GETTABLEKS R49 R0 K6 ["Src"]
  GETTABLEKS R48 R49 K47 ["Hooks"]
  GETTABLEKS R47 R48 K59 ["useUntexturedController"]
  CALL R46 1 1
  GETTABLEKS R47 R15 K60 ["UI"]
  GETTABLEKS R48 R47 K61 ["Pane"]
  GETTABLEKS R50 R15 K15 ["Util"]
  GETTABLEKS R49 R50 K62 ["LayoutOrderIterator"]
  GETTABLEKS R51 R15 K15 ["Util"]
  GETTABLEKS R50 R51 K63 ["Signal"]
  GETTABLEKS R52 R15 K64 ["ContextServices"]
  GETTABLEKS R51 R52 K65 ["Stylizer"]
  DUPCLOSURE R52 K66 [PROTO_0]
  CAPTURE VAL R5
  DUPCLOSURE R53 K67 [PROTO_1]
  CAPTURE VAL R41
  CAPTURE VAL R45
  CAPTURE VAL R28
  CAPTURE VAL R38
  DUPCLOSURE R54 K68 [PROTO_10]
  CAPTURE VAL R51
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R34
  CAPTURE VAL R27
  CAPTURE VAL R43
  CAPTURE VAL R39
  CAPTURE VAL R36
  CAPTURE VAL R29
  CAPTURE VAL R44
  CAPTURE VAL R37
  CAPTURE VAL R46
  CAPTURE VAL R35
  CAPTURE VAL R28
  CAPTURE VAL R42
  CAPTURE VAL R50
  CAPTURE VAL R6
  CAPTURE VAL R40
  CAPTURE VAL R49
  CAPTURE VAL R48
  CAPTURE VAL R20
  CAPTURE VAL R32
  CAPTURE VAL R22
  CAPTURE VAL R1
  CAPTURE VAL R30
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R33
  CAPTURE VAL R18
  CAPTURE VAL R3
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R9
  CAPTURE VAL R53
  CAPTURE VAL R13
  CAPTURE VAL R31
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R8
  RETURN R54 1
