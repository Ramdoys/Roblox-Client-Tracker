PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetChildren"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetChildren"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ChildAdded"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["ChildRemoved"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  GETUPVAL R2 2
  LOADK R4 K3 ["UpdateAnnotation"]
  GETUPVAL R5 3
  NAMECALL R2 R2 K4 ["OnInvoke"]
  CALL R2 3 1
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1

PROTO_4:
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K0 ["Activate"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["beginAddAnnotation"]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setVisibility"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  GETUPVAL R0 3
  GETUPVAL R2 2
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K0 ["Activate"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["beginAddAnnotation"]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setVisibility"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  GETUPVAL R0 3
  GETUPVAL R2 2
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["loadResolvedAnnotations"]
  GETUPVAL R1 1
  LOADN R2 25
  CALL R0 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K0 ["Activate"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["beginAddAnnotation"]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["get"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["useState"]
  GETUPVAL R4 3
  NAMECALL R4 R4 K3 ["GetChildren"]
  CALL R4 1 -1
  CALL R3 -1 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["useState"]
  LOADB R6 0
  CALL R5 1 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["useState"]
  LOADB R8 0
  CALL R7 1 2
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["useReducer"]
  GETUPVAL R10 4
  LOADN R11 0
  CALL R9 2 2
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K5 ["useEffect"]
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R10
  NEWTABLE R13 0 0
  CALL R11 2 0
  NEWTABLE R11 0 0
  GETIMPORT R12 K7 [ipairs]
  MOVE R13 R3
  CALL R12 1 3
  FORGPREP_INEXT R12
  JUMPIF R5 [+3]
  GETTABLEKS R17 R16 K8 ["Resolved"]
  JUMPIFNOT R17 [+4]
  JUMPIFNOT R5 [+18]
  GETTABLEKS R17 R16 K8 ["Resolved"]
  JUMPIFNOT R17 [+15]
  MOVE R18 R11
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K9 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K12 [{"LayoutOrder", "Annotation"}]
  SETTABLEKS R15 R21 K10 ["LayoutOrder"]
  SETTABLEKS R16 R21 K11 ["Annotation"]
  CALL R19 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R17 K15 [table.insert]
  CALL R17 -1 0
  FORGLOOP R12 2 [inext] [-24]
  LENGTH R13 R11
  JUMPIFEQKN R13 K16 [0] [+2]
  LOADB R12 0 +1
  LOADB R12 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K17 ["Frame"]
  NEWTABLE R15 1 0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K18 ["Tag"]
  LOADK R17 K19 ["Component-AnnotationListView X-Fill X-Column X-Center"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K23 [{"Header", "AnnotationList", "EmptyState"}]
  LENGTH R18 R3
  LOADN R19 0
  JUMPIFNOTLT R19 R18 [+431]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K9 ["createElement"]
  LOADK R18 K17 ["Frame"]
  DUPTABLE R19 K24 [{"LayoutOrder"}]
  LOADN R20 0
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  DUPTABLE R20 K28 [{"AddButton", "SettingsWrapper", "ButtonGroup"}]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K29 ["fflagAnnotationsUseNewAnnotationIcons"]
  JUMPIFNOT R22 [+2]
  LOADNIL R21
  JUMP [+28]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K9 ["createElement"]
  LOADK R22 K30 ["TextButton"]
  NEWTABLE R23 2 0
  LOADK R25 K31 ["+ %*"]
  LOADK R29 K32 ["AddAnnotation"]
  LOADK R30 K33 ["Button"]
  NAMECALL R27 R2 K34 ["getText"]
  CALL R27 3 1
  NAMECALL R25 R25 K35 ["format"]
  CALL R25 2 1
  MOVE R24 R25
  SETTABLEKS R24 R23 K36 ["Text"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K37 ["Event"]
  GETTABLEKS R24 R25 K38 ["Activated"]
  NEWCLOSURE R25 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  SETTABLE R25 R23 R24
  CALL R21 2 1
  SETTABLEKS R21 R20 K25 ["AddButton"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K29 ["fflagAnnotationsUseNewAnnotationIcons"]
  JUMPIFNOT R22 [+2]
  LOADNIL R21
  JUMP [+166]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K9 ["createElement"]
  LOADK R22 K17 ["Frame"]
  NEWTABLE R23 0 0
  DUPTABLE R24 K40 [{"Settings"}]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K9 ["createElement"]
  GETUPVAL R26 8
  NEWTABLE R27 4 0
  GETIMPORT R28 K44 [Enum.AutomaticSize.XY]
  SETTABLEKS R28 R27 K42 ["AutomaticSize"]
  DUPTABLE R28 K47 [{"ShowResolved", "HideAnnotations"}]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K9 ["createElement"]
  LOADK R30 K30 ["TextButton"]
  NEWTABLE R31 4 0
  LOADK R32 K48 [""]
  SETTABLEKS R32 R31 K36 ["Text"]
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K37 ["Event"]
  GETTABLEKS R32 R33 K38 ["Activated"]
  NEWCLOSURE R33 P2
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLE R33 R31 R32
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K18 ["Tag"]
  LOADK R33 K49 ["Component-DropdownItem X-RowS X-Middle"]
  SETTABLE R33 R31 R32
  DUPTABLE R32 K51 [{"Checkbox", "Text"}]
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K9 ["createElement"]
  LOADK R34 K52 ["ImageLabel"]
  NEWTABLE R35 2 0
  LOADN R36 1
  SETTABLEKS R36 R35 K53 ["BackgroundTransparency"]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K18 ["Tag"]
  JUMPIFNOT R5 [+2]
  LOADK R37 K54 ["CheckboxOnIcon"]
  JUMP [+1]
  LOADK R37 K55 ["CheckboxOffIcon"]
  SETTABLE R37 R35 R36
  CALL R33 2 1
  SETTABLEKS R33 R32 K50 ["Checkbox"]
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K9 ["createElement"]
  LOADK R34 K56 ["TextLabel"]
  DUPTABLE R35 K57 [{"Text", "BackgroundTransparency"}]
  LOADK R38 K58 ["Dropdown"]
  LOADK R39 K45 ["ShowResolved"]
  NAMECALL R36 R2 K34 ["getText"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K36 ["Text"]
  LOADN R36 1
  SETTABLEKS R36 R35 K53 ["BackgroundTransparency"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K36 ["Text"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K45 ["ShowResolved"]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K9 ["createElement"]
  LOADK R30 K30 ["TextButton"]
  NEWTABLE R31 4 0
  LOADK R32 K48 [""]
  SETTABLEKS R32 R31 K36 ["Text"]
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K37 ["Event"]
  GETTABLEKS R32 R33 K38 ["Activated"]
  NEWCLOSURE R33 P3
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLE R33 R31 R32
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K18 ["Tag"]
  LOADK R33 K49 ["Component-DropdownItem X-RowS X-Middle"]
  SETTABLE R33 R31 R32
  DUPTABLE R32 K51 [{"Checkbox", "Text"}]
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K9 ["createElement"]
  LOADK R34 K52 ["ImageLabel"]
  NEWTABLE R35 2 0
  LOADN R36 1
  SETTABLEKS R36 R35 K53 ["BackgroundTransparency"]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K18 ["Tag"]
  JUMPIFNOT R7 [+2]
  LOADK R37 K54 ["CheckboxOnIcon"]
  JUMP [+1]
  LOADK R37 K55 ["CheckboxOffIcon"]
  SETTABLE R37 R35 R36
  CALL R33 2 1
  SETTABLEKS R33 R32 K50 ["Checkbox"]
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K9 ["createElement"]
  LOADK R34 K56 ["TextLabel"]
  DUPTABLE R35 K57 [{"Text", "BackgroundTransparency"}]
  LOADK R38 K58 ["Dropdown"]
  LOADK R39 K59 ["HideInWorkspace"]
  NAMECALL R36 R2 K34 ["getText"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K36 ["Text"]
  LOADN R36 1
  SETTABLEKS R36 R35 K53 ["BackgroundTransparency"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K36 ["Text"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K46 ["HideAnnotations"]
  SETTABLEKS R28 R27 K60 ["DropdownItems"]
  LOADK R28 K61 ["SettingsIcon"]
  SETTABLEKS R28 R27 K62 ["ImageTag"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K18 ["Tag"]
  LOADK R29 K58 ["Dropdown"]
  SETTABLE R29 R27 R28
  NEWTABLE R28 0 0
  CALL R25 3 1
  SETTABLEKS R25 R24 K39 ["Settings"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K26 ["SettingsWrapper"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K29 ["fflagAnnotationsUseNewAnnotationIcons"]
  JUMPIFNOT R22 [+202]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K9 ["createElement"]
  LOADK R22 K17 ["Frame"]
  DUPTABLE R23 K24 [{"LayoutOrder"}]
  LOADN R24 0
  SETTABLEKS R24 R23 K10 ["LayoutOrder"]
  DUPTABLE R24 K63 [{"AddButton", "SettingsWrapper"}]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K9 ["createElement"]
  LOADK R26 K64 ["ImageButton"]
  NEWTABLE R27 2 0
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K18 ["Tag"]
  LOADK R29 K65 ["AddAnnotationIcon"]
  SETTABLE R29 R27 R28
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K37 ["Event"]
  GETTABLEKS R28 R29 K38 ["Activated"]
  NEWCLOSURE R29 P4
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K25 ["AddButton"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K9 ["createElement"]
  LOADK R26 K17 ["Frame"]
  NEWTABLE R27 0 0
  DUPTABLE R28 K40 [{"Settings"}]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K9 ["createElement"]
  GETUPVAL R30 8
  NEWTABLE R31 4 0
  GETIMPORT R32 K44 [Enum.AutomaticSize.XY]
  SETTABLEKS R32 R31 K42 ["AutomaticSize"]
  DUPTABLE R32 K47 [{"ShowResolved", "HideAnnotations"}]
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K9 ["createElement"]
  LOADK R34 K30 ["TextButton"]
  NEWTABLE R35 4 0
  LOADK R36 K48 [""]
  SETTABLEKS R36 R35 K36 ["Text"]
  GETUPVAL R38 2
  GETTABLEKS R37 R38 K37 ["Event"]
  GETTABLEKS R36 R37 K38 ["Activated"]
  NEWCLOSURE R37 P5
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLE R37 R35 R36
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K18 ["Tag"]
  LOADK R37 K49 ["Component-DropdownItem X-RowS X-Middle"]
  SETTABLE R37 R35 R36
  DUPTABLE R36 K51 [{"Checkbox", "Text"}]
  GETUPVAL R38 2
  GETTABLEKS R37 R38 K9 ["createElement"]
  LOADK R38 K52 ["ImageLabel"]
  NEWTABLE R39 2 0
  LOADN R40 1
  SETTABLEKS R40 R39 K53 ["BackgroundTransparency"]
  GETUPVAL R41 2
  GETTABLEKS R40 R41 K18 ["Tag"]
  JUMPIFNOT R5 [+2]
  LOADK R41 K54 ["CheckboxOnIcon"]
  JUMP [+1]
  LOADK R41 K55 ["CheckboxOffIcon"]
  SETTABLE R41 R39 R40
  CALL R37 2 1
  SETTABLEKS R37 R36 K50 ["Checkbox"]
  GETUPVAL R38 2
  GETTABLEKS R37 R38 K9 ["createElement"]
  LOADK R38 K56 ["TextLabel"]
  DUPTABLE R39 K57 [{"Text", "BackgroundTransparency"}]
  LOADK R42 K58 ["Dropdown"]
  LOADK R43 K45 ["ShowResolved"]
  NAMECALL R40 R2 K34 ["getText"]
  CALL R40 3 1
  SETTABLEKS R40 R39 K36 ["Text"]
  LOADN R40 1
  SETTABLEKS R40 R39 K53 ["BackgroundTransparency"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K36 ["Text"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K45 ["ShowResolved"]
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K9 ["createElement"]
  LOADK R34 K30 ["TextButton"]
  NEWTABLE R35 4 0
  LOADK R36 K48 [""]
  SETTABLEKS R36 R35 K36 ["Text"]
  GETUPVAL R38 2
  GETTABLEKS R37 R38 K37 ["Event"]
  GETTABLEKS R36 R37 K38 ["Activated"]
  NEWCLOSURE R37 P6
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLE R37 R35 R36
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K18 ["Tag"]
  LOADK R37 K49 ["Component-DropdownItem X-RowS X-Middle"]
  SETTABLE R37 R35 R36
  DUPTABLE R36 K51 [{"Checkbox", "Text"}]
  GETUPVAL R38 2
  GETTABLEKS R37 R38 K9 ["createElement"]
  LOADK R38 K52 ["ImageLabel"]
  NEWTABLE R39 2 0
  LOADN R40 1
  SETTABLEKS R40 R39 K53 ["BackgroundTransparency"]
  GETUPVAL R41 2
  GETTABLEKS R40 R41 K18 ["Tag"]
  JUMPIFNOT R7 [+2]
  LOADK R41 K54 ["CheckboxOnIcon"]
  JUMP [+1]
  LOADK R41 K55 ["CheckboxOffIcon"]
  SETTABLE R41 R39 R40
  CALL R37 2 1
  SETTABLEKS R37 R36 K50 ["Checkbox"]
  GETUPVAL R38 2
  GETTABLEKS R37 R38 K9 ["createElement"]
  LOADK R38 K56 ["TextLabel"]
  DUPTABLE R39 K57 [{"Text", "BackgroundTransparency"}]
  LOADK R42 K58 ["Dropdown"]
  LOADK R43 K59 ["HideInWorkspace"]
  NAMECALL R40 R2 K34 ["getText"]
  CALL R40 3 1
  SETTABLEKS R40 R39 K36 ["Text"]
  LOADN R40 1
  SETTABLEKS R40 R39 K53 ["BackgroundTransparency"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K36 ["Text"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K46 ["HideAnnotations"]
  SETTABLEKS R32 R31 K60 ["DropdownItems"]
  LOADK R32 K61 ["SettingsIcon"]
  SETTABLEKS R32 R31 K62 ["ImageTag"]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K18 ["Tag"]
  LOADK R33 K58 ["Dropdown"]
  SETTABLE R33 R31 R32
  NEWTABLE R32 0 0
  CALL R29 3 1
  SETTABLEKS R29 R28 K39 ["Settings"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K26 ["SettingsWrapper"]
  CALL R21 3 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K27 ["ButtonGroup"]
  CALL R17 3 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K20 ["Header"]
  JUMPIF R12 [+48]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K9 ["createElement"]
  LOADK R18 K17 ["Frame"]
  DUPTABLE R19 K24 [{"LayoutOrder"}]
  LOADN R20 2
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  DUPTABLE R20 K67 [{"AnnotationScrollingFrame"}]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K9 ["createElement"]
  GETUPVAL R22 9
  DUPTABLE R23 K69 [{"OnScrollToBottom"}]
  JUMPIFNOT R5 [+4]
  NEWCLOSURE R24 P7
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K68 ["OnScrollToBottom"]
  NEWTABLE R24 1 1
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K9 ["createElement"]
  LOADK R27 K17 ["Frame"]
  DUPTABLE R28 K24 [{"LayoutOrder"}]
  LENGTH R30 R11
  ADDK R29 R30 K70 [1]
  SETTABLEKS R29 R28 K10 ["LayoutOrder"]
  CALL R26 2 1
  SETTABLEKS R26 R24 K71 ["BottomPadding"]
  FASTCALL1 TABLE_UNPACK R11 [+3]
  MOVE R26 R11
  GETIMPORT R25 K73 [table.unpack]
  CALL R25 1 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETTABLEKS R21 R20 K66 ["AnnotationScrollingFrame"]
  CALL R17 3 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K21 ["AnnotationList"]
  LENGTH R18 R11
  JUMPIFNOTEQKN R18 K16 [0] [+186]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K9 ["createElement"]
  LOADK R18 K17 ["Frame"]
  NEWTABLE R19 2 0
  LOADN R20 3
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K18 ["Tag"]
  GETUPVAL R21 10
  LOADK R22 K74 ["X-ColumnM X-Transparent X-Middle X-Center"]
  LENGTH R24 R3
  JUMPIFEQKN R24 K16 [0] [+3]
  LOADK R23 K75 ["HeaderOffset"]
  JUMP [+1]
  LOADNIL R23
  CALL R21 2 1
  SETTABLE R21 R19 R20
  DUPTABLE R20 K80 [{"AnnotationIcon", "NoCommentsYet", "ToBegin", "ToAdd", "AddButton"}]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K9 ["createElement"]
  LOADK R22 K52 ["ImageLabel"]
  NEWTABLE R23 2 0
  LOADN R24 0
  SETTABLEKS R24 R23 K10 ["LayoutOrder"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K18 ["Tag"]
  LOADK R25 K81 ["X-Transparent"]
  SETTABLE R25 R23 R24
  CALL R21 2 1
  SETTABLEKS R21 R20 K76 ["AnnotationIcon"]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K9 ["createElement"]
  LOADK R22 K56 ["TextLabel"]
  NEWTABLE R23 4 0
  LOADN R24 1
  SETTABLEKS R24 R23 K10 ["LayoutOrder"]
  JUMPIF R5 [+6]
  LOADK R26 K82 ["Plugin"]
  LOADK R27 K83 ["NoAnnotations"]
  NAMECALL R24 R2 K34 ["getText"]
  CALL R24 3 1
  JUMP [+5]
  LOADK R26 K82 ["Plugin"]
  LOADK R27 K84 ["NoResolvedAnnotations"]
  NAMECALL R24 R2 K34 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K36 ["Text"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K18 ["Tag"]
  LOADK R25 K81 ["X-Transparent"]
  SETTABLE R25 R23 R24
  CALL R21 2 1
  SETTABLEKS R21 R20 K77 ["NoCommentsYet"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K29 ["fflagAnnotationsUseNewAnnotationIcons"]
  JUMPIFNOT R22 [+2]
  LOADNIL R21
  JUMP [+25]
  JUMPIF R5 [+23]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K9 ["createElement"]
  LOADK R22 K56 ["TextLabel"]
  NEWTABLE R23 4 0
  LOADN R24 2
  SETTABLEKS R24 R23 K10 ["LayoutOrder"]
  LOADK R26 K82 ["Plugin"]
  LOADK R27 K78 ["ToBegin"]
  NAMECALL R24 R2 K34 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K36 ["Text"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K18 ["Tag"]
  LOADK R25 K81 ["X-Transparent"]
  SETTABLE R25 R23 R24
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K78 ["ToBegin"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K29 ["fflagAnnotationsUseNewAnnotationIcons"]
  JUMPIFNOT R22 [+26]
  JUMPIF R5 [+23]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K9 ["createElement"]
  LOADK R22 K56 ["TextLabel"]
  NEWTABLE R23 4 0
  LOADN R24 2
  SETTABLEKS R24 R23 K10 ["LayoutOrder"]
  LOADK R26 K82 ["Plugin"]
  LOADK R27 K79 ["ToAdd"]
  NAMECALL R24 R2 K34 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K36 ["Text"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K18 ["Tag"]
  LOADK R25 K81 ["X-Transparent"]
  SETTABLE R25 R23 R24
  CALL R21 2 1
  JUMP [+3]
  LOADNIL R21
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K79 ["ToAdd"]
  JUMPIF R5 [+42]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K9 ["createElement"]
  LOADK R22 K30 ["TextButton"]
  NEWTABLE R23 4 0
  LOADN R24 3
  SETTABLEKS R24 R23 K10 ["LayoutOrder"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K29 ["fflagAnnotationsUseNewAnnotationIcons"]
  JUMPIFNOT R25 [+6]
  LOADK R26 K32 ["AddAnnotation"]
  LOADK R27 K85 ["AddComment"]
  NAMECALL R24 R2 K34 ["getText"]
  CALL R24 3 1
  JUMP [+10]
  LOADK R25 K31 ["+ %*"]
  LOADK R29 K32 ["AddAnnotation"]
  LOADK R30 K33 ["Button"]
  NAMECALL R27 R2 K34 ["getText"]
  CALL R27 3 1
  NAMECALL R25 R25 K35 ["format"]
  CALL R25 2 1
  MOVE R24 R25
  SETTABLEKS R24 R23 K36 ["Text"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K37 ["Event"]
  GETTABLEKS R24 R25 K38 ["Activated"]
  NEWCLOSURE R25 P8
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  SETTABLE R25 R23 R24
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K25 ["AddButton"]
  CALL R17 3 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K22 ["EmptyState"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Bin"]
  GETTABLEKS R5 R6 K10 ["Common"]
  GETTABLEKS R4 R5 K11 ["defineLuaFlags"]
  CALL R3 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["CrossDMCommunication"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K15 ["Standalone"]
  GETTABLEKS R6 R2 K16 ["Styling"]
  GETTABLEKS R5 R6 K17 ["joinTags"]
  GETTABLEKS R6 R2 K18 ["ContextServices"]
  GETTABLEKS R7 R6 K19 ["Plugin"]
  GETTABLEKS R8 R6 K20 ["Localization"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K21 ["Components"]
  GETTABLEKS R10 R11 K22 ["AnnotationListCard"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K21 ["Components"]
  GETTABLEKS R11 R12 K23 ["SizedScrollingFrame"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K21 ["Components"]
  GETTABLEKS R12 R13 K24 ["DropdownButton"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K12 ["Src"]
  GETTABLEKS R14 R15 K13 ["Util"]
  GETTABLEKS R13 R14 K25 ["rerenderReducer"]
  CALL R12 1 1
  GETIMPORT R13 K27 [game]
  LOADK R15 K28 ["AnnotationsService"]
  NAMECALL R13 R13 K29 ["GetService"]
  CALL R13 2 1
  DUPCLOSURE R14 K30 [PROTO_12]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R5
  RETURN R14 1
