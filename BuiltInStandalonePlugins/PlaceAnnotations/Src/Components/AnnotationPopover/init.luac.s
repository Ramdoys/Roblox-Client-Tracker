PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Annotation"]
  NAMECALL R1 R1 K1 ["GetChildren"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Annotation"]
  NAMECALL R1 R1 K1 ["GetChildren"]
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
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Annotation"]
  NAMECALL R1 R1 K1 ["GetChildren"]
  CALL R1 1 -1
  CALL R0 -1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Annotation"]
  GETTABLEKS R0 R1 K2 ["ChildAdded"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R0 R0 K3 ["Connect"]
  CALL R0 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Annotation"]
  GETTABLEKS R1 R2 K4 ["ChildRemoved"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

PROTO_4:
  LOADK R4 K0 ["Annotation"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  LOADK R4 K0 ["Annotation"]
  NAMECALL R2 R1 K1 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R3 R0 K2 ["CreationTimeUnix"]
  GETTABLEKS R4 R1 K2 ["CreationTimeUnix"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["deleteAnnotation"]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["Annotation"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  LOADK R3 K0 ["Dropdown"]
  LOADK R4 K1 ["ZoomTo"]
  NAMECALL R1 R1 K2 ["getText"]
  CALL R1 3 1
  JUMPIFNOTEQ R0 R1 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["zoomTo"]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["Annotation"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setAnnotationResolved"]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["Annotation"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["Annotation"]
  GETTABLEKS R4 R5 K2 ["Resolved"]
  NOT R3 R4
  CALL R0 3 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K3 ["OnCancel"]
  CALL R0 0 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Text"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  LOADK R1 K0 [""]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  LOADK R2 K0 [""]
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["OnReply"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  NAMECALL R2 R2 K1 ["get"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["useState"]
  GETTABLEKS R4 R0 K3 ["Annotation"]
  NAMECALL R4 R4 K4 ["GetChildren"]
  CALL R4 1 -1
  CALL R3 -1 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["useState"]
  LOADK R6 K5 [""]
  CALL R5 1 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["useState"]
  LOADB R8 0
  CALL R7 1 2
  MOVE R9 R5
  JUMPIFNOT R9 [+4]
  JUMPIFNOTEQKS R5 K5 [""] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K6 ["useEffect"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R4
  CAPTURE VAL R0
  NEWTABLE R12 0 1
  GETTABLEKS R13 R0 K3 ["Annotation"]
  SETLIST R12 R13 1 [1]
  CALL R10 2 0
  NEWTABLE R10 0 0
  GETIMPORT R11 K9 [table.sort]
  MOVE R12 R3
  DUPCLOSURE R13 K10 [PROTO_4]
  CALL R11 2 0
  GETIMPORT R11 K12 [ipairs]
  MOVE R12 R3
  CALL R11 1 3
  FORGPREP_INEXT R11
  LOADK R18 K3 ["Annotation"]
  NAMECALL R16 R15 K13 ["IsA"]
  CALL R16 2 1
  JUMPIFNOT R16 [+13]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K16 [{"LayoutOrder", "Annotation"}]
  SETTABLEKS R14 R18 K15 ["LayoutOrder"]
  SETTABLEKS R15 R18 K3 ["Annotation"]
  CALL R16 2 1
  SETTABLE R16 R10 R14
  FORGLOOP R11 2 [inext] [-17]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K14 ["createElement"]
  GETUPVAL R12 4
  NEWTABLE R13 4 0
  LOADN R14 94
  SETTABLEKS R14 R13 K17 ["Width"]
  GETTABLEKS R14 R0 K18 ["Position"]
  SETTABLEKS R14 R13 K18 ["Position"]
  GETTABLEKS R14 R0 K19 ["OnCancel"]
  SETTABLEKS R14 R13 K20 ["OnFocusLost"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K21 ["Tag"]
  LOADK R15 K22 ["Component-AnnotationPopover"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K27 [{"Header", "ContentWrapper", "ReplyBox", "Footer"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K14 ["createElement"]
  LOADK R16 K28 ["Frame"]
  NEWTABLE R17 0 0
  DUPTABLE R18 K31 [{"Navigation", "Divider"}]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K14 ["createElement"]
  LOADK R20 K28 ["Frame"]
  DUPTABLE R21 K32 [{"LayoutOrder"}]
  LOADN R22 0
  SETTABLEKS R22 R21 K15 ["LayoutOrder"]
  DUPTABLE R22 K37 [{"BackIcon", "NextIcon", "MoreIcon", "ResolveButton"}]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K14 ["createElement"]
  LOADK R24 K38 ["ImageButton"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K33 ["BackIcon"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K14 ["createElement"]
  LOADK R24 K38 ["ImageButton"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K34 ["NextIcon"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K14 ["createElement"]
  GETUPVAL R24 5
  DUPTABLE R25 K41 [{"DropdownItems", "OnSelect"}]
  NEWTABLE R26 0 2
  LOADK R29 K42 ["Dropdown"]
  LOADK R30 K43 ["ZoomTo"]
  NAMECALL R27 R1 K44 ["getText"]
  CALL R27 3 1
  GETTABLEKS R30 R0 K3 ["Annotation"]
  GETTABLEKS R29 R30 K45 ["AuthorId"]
  GETUPVAL R30 6
  NAMECALL R30 R30 K46 ["GetUserId"]
  CALL R30 1 1
  JUMPIFNOTEQ R29 R30 [+31]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K14 ["createElement"]
  LOADK R29 K47 ["TextButton"]
  NEWTABLE R30 4 0
  LOADK R33 K42 ["Dropdown"]
  LOADK R34 K48 ["Delete"]
  NAMECALL R31 R1 K44 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K49 ["Text"]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K50 ["Event"]
  GETTABLEKS R31 R32 K51 ["Activated"]
  NEWCLOSURE R32 P2
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLE R32 R30 R31
  GETUPVAL R32 2
  GETTABLEKS R31 R32 K21 ["Tag"]
  LOADK R32 K52 ["Component-DropdownItem Delete"]
  SETTABLE R32 R30 R31
  CALL R28 2 1
  JUMP [+1]
  LOADNIL R28
  SETLIST R26 R27 2 [1]
  SETTABLEKS R26 R25 K39 ["DropdownItems"]
  NEWCLOSURE R26 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R26 R25 K40 ["OnSelect"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K35 ["MoreIcon"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K14 ["createElement"]
  GETUPVAL R24 8
  DUPTABLE R25 K55 [{"Resolved", "OnClick"}]
  GETTABLEKS R27 R0 K3 ["Annotation"]
  GETTABLEKS R26 R27 K53 ["Resolved"]
  SETTABLEKS R26 R25 K53 ["Resolved"]
  NEWCLOSURE R26 P4
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R26 R25 K54 ["OnClick"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K36 ["ResolveButton"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K29 ["Navigation"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K14 ["createElement"]
  LOADK R20 K28 ["Frame"]
  NEWTABLE R21 2 0
  LOADN R22 1
  SETTABLEKS R22 R21 K15 ["LayoutOrder"]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K21 ["Tag"]
  LOADK R23 K56 ["Component-Divider"]
  SETTABLE R23 R21 R22
  CALL R19 2 1
  SETTABLEKS R19 R18 K30 ["Divider"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K23 ["Header"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K14 ["createElement"]
  GETUPVAL R16 9
  DUPTABLE R17 K58 [{"LayoutOrder", "MaxY"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K15 ["LayoutOrder"]
  LOADN R18 250
  SETTABLEKS R18 R17 K57 ["MaxY"]
  NEWTABLE R18 1 1
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K14 ["createElement"]
  GETUPVAL R21 3
  DUPTABLE R22 K16 [{"LayoutOrder", "Annotation"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K15 ["LayoutOrder"]
  GETTABLEKS R23 R0 K3 ["Annotation"]
  SETTABLEKS R23 R22 K3 ["Annotation"]
  CALL R20 2 1
  SETTABLEKS R20 R18 K59 ["Comment"]
  FASTCALL1 TABLE_UNPACK R10 [+3]
  MOVE R20 R10
  GETIMPORT R19 K61 [table.unpack]
  CALL R19 1 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  SETTABLEKS R15 R14 K24 ["ContentWrapper"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K14 ["createElement"]
  LOADK R16 K28 ["Frame"]
  NEWTABLE R17 8 0
  LOADN R18 2
  SETTABLEKS R18 R17 K15 ["LayoutOrder"]
  LOADN R18 1
  SETTABLEKS R18 R17 K62 ["BackgroundTransparency"]
  GETIMPORT R18 K66 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K64 ["AutomaticSize"]
  GETIMPORT R18 K69 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K70 ["Size"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K21 ["Tag"]
  LOADK R19 K71 ["X-RowM"]
  SETTABLE R19 R17 R18
  DUPTABLE R18 K74 [{"Avatar", "TextInput"}]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K14 ["createElement"]
  LOADK R20 K75 ["ImageLabel"]
  NEWTABLE R21 4 0
  LOADK R23 K76 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
  GETUPVAL R25 6
  NAMECALL R25 R25 K46 ["GetUserId"]
  CALL R25 1 1
  NAMECALL R23 R23 K77 ["format"]
  CALL R23 2 1
  MOVE R22 R23
  SETTABLEKS R22 R21 K78 ["Image"]
  LOADN R22 0
  SETTABLEKS R22 R21 K15 ["LayoutOrder"]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K21 ["Tag"]
  LOADK R23 K79 ["Component-Avatar"]
  SETTABLE R23 R21 R22
  CALL R19 2 1
  SETTABLEKS R19 R18 K72 ["Avatar"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K14 ["createElement"]
  LOADK R20 K80 ["TextBox"]
  NEWTABLE R21 8 0
  LOADN R22 1
  SETTABLEKS R22 R21 K15 ["LayoutOrder"]
  LOADK R24 K81 ["Reply"]
  LOADK R25 K82 ["Placeholder"]
  NAMECALL R22 R1 K44 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K83 ["PlaceholderText"]
  GETIMPORT R22 K85 [UDim2.new]
  LOADN R23 1
  LOADN R24 216
  LOADN R25 0
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K70 ["Size"]
  SETTABLEKS R5 R21 K49 ["Text"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K86 ["Change"]
  GETTABLEKS R22 R23 K49 ["Text"]
  NEWCLOSURE R23 P5
  CAPTURE VAL R6
  SETTABLE R23 R21 R22
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K50 ["Event"]
  GETTABLEKS R22 R23 K87 ["Focused"]
  NEWCLOSURE R23 P6
  CAPTURE VAL R8
  SETTABLE R23 R21 R22
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K50 ["Event"]
  GETTABLEKS R22 R23 K88 ["FocusLost"]
  NEWCLOSURE R23 P7
  CAPTURE VAL R8
  SETTABLE R23 R21 R22
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K21 ["Tag"]
  LOADK R23 K89 ["Component-TextInput"]
  SETTABLE R23 R21 R22
  CALL R19 2 1
  SETTABLEKS R19 R18 K73 ["TextInput"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K25 ["ReplyBox"]
  JUMPIF R7 [+2]
  MOVE R15 R9
  JUMPIFNOT R15 [+20]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K14 ["createElement"]
  GETUPVAL R16 10
  DUPTABLE R17 K91 [{"LayoutOrder", "Text", "OnCancel", "OnSubmit"}]
  LOADN R18 3
  SETTABLEKS R18 R17 K15 ["LayoutOrder"]
  SETTABLEKS R5 R17 K49 ["Text"]
  NEWCLOSURE R18 P8
  CAPTURE VAL R6
  SETTABLEKS R18 R17 K19 ["OnCancel"]
  NEWCLOSURE R18 P9
  CAPTURE VAL R6
  CAPTURE VAL R0
  SETTABLEKS R18 R17 K90 ["OnSubmit"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["Footer"]
  CALL R11 3 -1
  RETURN R11 -1

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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["CrossDMCommunication"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["Edit"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K13 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K14 ["ContextServices"]
  GETTABLEKS R6 R5 K15 ["Plugin"]
  GETTABLEKS R7 R5 K16 ["Localization"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K17 ["Components"]
  GETTABLEKS R9 R10 K18 ["PopoverBase"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K17 ["Components"]
  GETTABLEKS R10 R11 K19 ["AnnotationContents"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K17 ["Components"]
  GETTABLEKS R11 R12 K20 ["CancelSubmitFooter"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K9 ["Src"]
  GETTABLEKS R13 R14 K17 ["Components"]
  GETTABLEKS R12 R13 K21 ["SizedScrollingFrame"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K17 ["Components"]
  GETTABLEKS R13 R14 K22 ["DropdownButton"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K17 ["Components"]
  GETTABLEKS R14 R15 K23 ["ResolveButton"]
  CALL R13 1 1
  GETIMPORT R14 K25 [game]
  LOADK R16 K26 ["StudioService"]
  NAMECALL R14 R14 K27 ["GetService"]
  CALL R14 2 1
  DUPCLOSURE R15 K28 [PROTO_13]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R10
  RETURN R15 1
