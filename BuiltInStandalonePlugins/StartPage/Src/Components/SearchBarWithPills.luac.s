PROTO_0:
  GETTABLEKS R3 R0 K0 ["IsPlaceholder"]
  NOT R2 R3
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["Cell cannot be a placeholder here"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["Id"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R1 R0 K5 ["RootPlaceId"]
  JUMPIFNOT R1 [+17]
  GETUPVAL R1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K6 ["GetUserId"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K4 ["Id"]
  GETTABLEKS R4 R0 K5 ["RootPlaceId"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["showVerifyAge"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["showAgeRestricted"]
  CALL R1 5 0
  RETURN R0 0
  GETTABLEKS R1 R0 K9 ["FilePath"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 3
  GETTABLEKS R3 R0 K9 ["FilePath"]
  LOADB R4 0
  NAMECALL R1 R1 K10 ["openLocalFile"]
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 3
  GETUPVAL R4 4
  MOVE R5 R0
  DUPTABLE R6 K2 [{"OnClick"}]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  SETTABLEKS R7 R6 K1 ["OnClick"]
  CALL R4 2 1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R1 0
  LOADK R2 K0 ["PointingHand"]
  CALL R1 1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["createElement"]
  LOADK R4 K2 ["ImageButton"]
  NEWTABLE R5 8 0
  GETIMPORT R6 K5 [UDim2.new]
  LOADN R7 0
  LOADN R8 25
  LOADN R9 0
  LOADN R10 30
  CALL R6 4 1
  SETTABLEKS R6 R5 K6 ["Size"]
  GETTABLEKS R6 R0 K7 ["LayoutOrder"]
  SETTABLEKS R6 R5 K7 ["LayoutOrder"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["Event"]
  GETTABLEKS R6 R7 K9 ["Activated"]
  GETTABLEKS R7 R0 K10 ["OnActivated"]
  SETTABLE R7 R5 R6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["Event"]
  GETTABLEKS R6 R7 K11 ["MouseEnter"]
  SETTABLE R1 R5 R6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["Event"]
  GETTABLEKS R6 R7 K12 ["MouseLeave"]
  SETTABLE R2 R5 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K13 ["Tag"]
  LOADK R7 K14 ["X-Transparent X-Middle X-Center"]
  SETTABLE R7 R5 R6
  NEWTABLE R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  LOADK R8 K15 ["ImageLabel"]
  NEWTABLE R9 1 0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K13 ["Tag"]
  LOADK R11 K16 ["X-Transparent StartPage-CancelIcon"]
  SETTABLE R11 R9 R10
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETTABLEKS R0 R1 K1 ["CaptureFocus"]
  JUMPIFNOT R0 [+17]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["IsFocused"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  NAMECALL R0 R0 K1 ["CaptureFocus"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  NAMECALL R0 R0 K3 ["ReleaseFocus"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFocused"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFocused"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFocusLost"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFocusLost"]
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnTextChanged"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnTextChanged"]
  GETTABLEKS R2 R0 K1 ["Text"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETUPVAL R3 2
  LOADNIL R4
  CALL R3 1 1
  GETUPVAL R4 3
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  NEWTABLE R6 0 0
  CALL R4 2 0
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K2 ["createElement"]
  LOADK R5 K3 ["Frame"]
  NEWTABLE R6 4 0
  GETTABLEKS R7 R0 K4 ["Position"]
  SETTABLEKS R7 R6 K4 ["Position"]
  GETTABLEKS R7 R0 K5 ["Size"]
  SETTABLEKS R7 R6 K5 ["Size"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K6 ["Tag"]
  LOADK R8 K7 ["StartPage-NoBackground"]
  SETTABLE R8 R6 R7
  NEWTABLE R7 0 2
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K2 ["createElement"]
  LOADK R9 K3 ["Frame"]
  NEWTABLE R10 2 0
  GETIMPORT R11 K9 [UDim2.new]
  LOADN R12 0
  LOADN R13 30
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K4 ["Position"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K6 ["Tag"]
  LOADK R12 K10 ["StartPage-NoBackground X-Fill X-Middle X-Row"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K14 [{"MagnifyingGlass", "EmptySpace", "TextInputArea"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K2 ["createElement"]
  GETUPVAL R13 5
  NEWTABLE R14 2 0
  NAMECALL R15 R2 K15 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K16 ["LayoutOrder"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K6 ["Tag"]
  LOADK R16 K17 ["StartPage-SearchIcon"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K11 ["MagnifyingGlass"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K2 ["createElement"]
  LOADK R13 K3 ["Frame"]
  NEWTABLE R14 4 0
  GETIMPORT R15 K9 [UDim2.new]
  LOADN R16 0
  LOADN R17 12
  LOADN R18 0
  LOADN R19 1
  CALL R15 4 1
  SETTABLEKS R15 R14 K5 ["Size"]
  NAMECALL R15 R2 K15 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K16 ["LayoutOrder"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K6 ["Tag"]
  LOADK R16 K7 ["StartPage-NoBackground"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K12 ["EmptySpace"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K2 ["createElement"]
  LOADK R13 K18 ["TextBox"]
  NEWTABLE R14 16 0
  GETTABLEKS R15 R0 K19 ["Text"]
  SETTABLEKS R15 R14 K19 ["Text"]
  LOADK R17 K20 ["Plugin"]
  LOADK R18 K21 ["SearchType"]
  DUPTABLE R19 K23 [{"type"}]
  GETTABLEKS R20 R0 K24 ["Type"]
  SETTABLEKS R20 R19 K22 ["type"]
  NAMECALL R15 R1 K25 ["getText"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K26 ["PlaceholderText"]
  LOADB R15 1
  SETTABLEKS R15 R14 K27 ["ClearTextOnFocus"]
  GETIMPORT R15 K9 [UDim2.new]
  LOADN R16 1
  LOADN R17 56
  LOADN R18 0
  LOADN R19 30
  CALL R15 4 1
  SETTABLEKS R15 R14 K5 ["Size"]
  SETTABLEKS R3 R14 K28 ["ref"]
  GETIMPORT R15 K32 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R15 R14 K30 ["TextTruncate"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K33 ["Event"]
  GETTABLEKS R15 R16 K34 ["Focused"]
  NEWCLOSURE R16 P1
  CAPTURE VAL R0
  SETTABLE R16 R14 R15
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K33 ["Event"]
  GETTABLEKS R15 R16 K35 ["FocusLost"]
  NEWCLOSURE R16 P2
  CAPTURE VAL R0
  SETTABLE R16 R14 R15
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K36 ["Change"]
  GETTABLEKS R15 R16 K19 ["Text"]
  NEWCLOSURE R16 P3
  CAPTURE VAL R0
  SETTABLE R16 R14 R15
  NAMECALL R15 R2 K15 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K16 ["LayoutOrder"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K6 ["Tag"]
  LOADK R16 K37 ["StartPage-SearchBar StartPage-TextSize StartPage-DisabledTextColor"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["TextInputArea"]
  CALL R8 3 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K2 ["createElement"]
  LOADK R10 K3 ["Frame"]
  NEWTABLE R11 1 0
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K6 ["Tag"]
  LOADK R13 K38 ["X-Fill X-Right X-Middle StartPage-NoBackground"]
  SETTABLE R13 R11 R12
  NEWTABLE R12 0 1
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K2 ["createElement"]
  LOADK R14 K3 ["Frame"]
  NEWTABLE R15 1 0
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K6 ["Tag"]
  LOADK R17 K39 ["X-Fit X-RowM X-Pad X-Middle StartPage-NoBackground"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K42 [{"Pill", "CancelButton"}]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K2 ["createElement"]
  GETUPVAL R18 6
  DUPTABLE R19 K43 [{"LayoutOrder", "Text"}]
  NAMECALL R20 R2 K15 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K16 ["LayoutOrder"]
  LOADK R22 K20 ["Plugin"]
  LOADK R23 K44 ["TypePill"]
  DUPTABLE R24 K23 [{"type"}]
  GETTABLEKS R25 R0 K24 ["Type"]
  SETTABLEKS R25 R24 K22 ["type"]
  NAMECALL R20 R1 K25 ["getText"]
  CALL R20 4 1
  SETTABLEKS R20 R19 K19 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K40 ["Pill"]
  GETTABLEKS R18 R0 K19 ["Text"]
  JUMPIFEQKS R18 K45 [""] [+20]
  GETTABLEKS R18 R0 K46 ["ShouldShowCancel"]
  JUMPIFNOT R18 [+16]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K2 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K48 [{"LayoutOrder", "OnActivated"}]
  NAMECALL R20 R2 K15 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K16 ["LayoutOrder"]
  GETTABLEKS R20 R0 K49 ["OnCancelled"]
  SETTABLEKS R20 R19 K47 ["OnActivated"]
  CALL R17 2 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K41 ["CancelButton"]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["Query"]
  CALL R1 1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["InitialContentHasLoaded"]
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETUPVAL R3 2
  LOADN R4 6
  CALL R3 1 2
  GETUPVAL R5 2
  LOADNIL R6
  CALL R5 1 2
  GETUPVAL R7 3
  LOADK R8 K2 ["PointingHand"]
  CALL R7 1 2
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K4 ["Frame"]
  NEWTABLE R11 4 0
  GETTABLEKS R12 R0 K5 ["Size"]
  SETTABLEKS R12 R11 K5 ["Size"]
  GETTABLEKS R12 R0 K6 ["Position"]
  SETTABLEKS R12 R11 K6 ["Position"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K7 ["Tag"]
  LOADK R13 K8 ["StartPage-NoBackground"]
  SETTABLE R13 R11 R12
  NEWTABLE R12 0 1
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K3 ["createElement"]
  LOADK R14 K4 ["Frame"]
  NEWTABLE R15 2 0
  GETIMPORT R16 K10 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETTABLEKS R21 R0 K11 ["Query"]
  JUMPIFEQ R5 R21 [+3]
  LOADN R20 188
  JUMP [+4]
  LOADN R21 160
  LOADN R23 90
  MUL R22 R23 R3
  ADD R20 R21 R22
  CALL R16 4 1
  SETTABLEKS R16 R15 K5 ["Size"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K7 ["Tag"]
  LOADK R17 K12 ["StartPage-RoundedCorner16 StartPage-PageBackground"]
  SETTABLE R17 R15 R16
  NEWTABLE R16 0 1
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K3 ["createElement"]
  LOADK R18 K4 ["Frame"]
  NEWTABLE R19 4 0
  GETIMPORT R20 K10 [UDim2.new]
  LOADN R21 0
  LOADN R22 20
  LOADN R23 0
  LOADN R24 80
  CALL R20 4 1
  SETTABLEKS R20 R19 K6 ["Position"]
  GETIMPORT R20 K10 [UDim2.new]
  LOADN R21 1
  LOADN R22 211
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K5 ["Size"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K7 ["Tag"]
  LOADK R21 K13 ["X-ColumnS StartPage-NoBackground"]
  SETTABLE R21 R19 R20
  DUPTABLE R20 K17 [{"SearchResultTitle", "ResultPreview", "SeeMoreLink"}]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K3 ["createElement"]
  LOADK R22 K4 ["Frame"]
  NEWTABLE R23 4 0
  GETIMPORT R24 K10 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 28
  CALL R24 4 1
  SETTABLEKS R24 R23 K5 ["Size"]
  NAMECALL R24 R2 K18 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K19 ["LayoutOrder"]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K7 ["Tag"]
  LOADK R25 K20 ["X-Middle X-Corner StartPage-Highlight"]
  SETTABLE R25 R23 R24
  NEWTABLE R24 0 1
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K3 ["createElement"]
  LOADK R26 K21 ["TextLabel"]
  NEWTABLE R27 4 0
  LOADK R30 K22 ["Plugin"]
  LOADK R31 K23 ["QuerySearch"]
  DUPTABLE R32 K25 [{"query"}]
  GETTABLEKS R33 R0 K11 ["Query"]
  SETTABLEKS R33 R32 K24 ["query"]
  NAMECALL R28 R1 K26 ["getText"]
  CALL R28 4 1
  SETTABLEKS R28 R27 K27 ["Text"]
  GETIMPORT R28 K31 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R28 R27 K29 ["TextTruncate"]
  GETUPVAL R29 4
  GETTABLEKS R28 R29 K7 ["Tag"]
  LOADK R29 K32 ["X-Fit X-Pad StartPage-Font StartPage-TextSize StartPage-NoBackground StartPage-TextColor"]
  SETTABLE R29 R27 R28
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETTABLEKS R21 R20 K14 ["SearchResultTitle"]
  JUMPIFNOTEQKN R3 K33 [0] [+5]
  GETTABLEKS R22 R0 K11 ["Query"]
  JUMPIFEQ R5 R22 [+108]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K3 ["createElement"]
  LOADK R22 K4 ["Frame"]
  NEWTABLE R23 4 0
  GETIMPORT R24 K10 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  GETTABLEKS R29 R0 K11 ["Query"]
  JUMPIFEQ R5 R29 [+3]
  LOADN R28 28
  JUMP [+2]
  LOADN R29 90
  MUL R28 R29 R3
  CALL R24 4 1
  SETTABLEKS R24 R23 K5 ["Size"]
  NAMECALL R24 R2 K18 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K19 ["LayoutOrder"]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K7 ["Tag"]
  LOADK R25 K8 ["StartPage-NoBackground"]
  SETTABLE R25 R23 R24
  NEWTABLE R24 0 1
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K3 ["createElement"]
  GETTABLEKS R26 R0 K34 ["ResultComponent"]
  DUPTABLE R27 K44 [{"Size", "DisplayComponent", "HasParentLoaded", "MaxCount", "Dropdowns", "InitialContentHasLoaded", "CellComponent", "CellSize", "CellPadding", "BaseQuery"}]
  GETIMPORT R28 K10 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K5 ["Size"]
  GETUPVAL R28 5
  SETTABLEKS R28 R27 K35 ["DisplayComponent"]
  GETTABLEKS R29 R0 K45 ["AreSearchResultsLoading"]
  NOT R28 R29
  SETTABLEKS R28 R27 K36 ["HasParentLoaded"]
  LOADN R28 6
  SETTABLEKS R28 R27 K37 ["MaxCount"]
  GETTABLEKS R28 R0 K38 ["Dropdowns"]
  SETTABLEKS R28 R27 K38 ["Dropdowns"]
  NEWCLOSURE R28 P0
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R0
  SETTABLEKS R28 R27 K39 ["InitialContentHasLoaded"]
  GETUPVAL R28 6
  SETTABLEKS R28 R27 K40 ["CellComponent"]
  GETIMPORT R28 K10 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  LOADN R32 90
  CALL R28 4 1
  SETTABLEKS R28 R27 K41 ["CellSize"]
  GETIMPORT R28 K10 [UDim2.new]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K42 ["CellPadding"]
  GETUPVAL R28 7
  GETTABLEKS R29 R0 K43 ["BaseQuery"]
  DUPTABLE R30 K47 [{"search"}]
  GETTABLEKS R31 R0 K11 ["Query"]
  SETTABLEKS R31 R30 K46 ["search"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K43 ["BaseQuery"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K15 ["ResultPreview"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K3 ["createElement"]
  LOADK R22 K48 ["TextButton"]
  NEWTABLE R23 8 0
  NAMECALL R24 R2 K18 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K19 ["LayoutOrder"]
  LOADK R26 K22 ["Plugin"]
  LOADK R27 K49 ["SeeAllMatchingExperiences"]
  NAMECALL R24 R1 K26 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K27 ["Text"]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K50 ["Event"]
  GETTABLEKS R24 R25 K51 ["Activated"]
  GETTABLEKS R25 R0 K52 ["MoreExperiencesRequested"]
  SETTABLE R25 R23 R24
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K50 ["Event"]
  GETTABLEKS R24 R25 K53 ["MouseEnter"]
  SETTABLE R7 R23 R24
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K50 ["Event"]
  GETTABLEKS R24 R25 K54 ["MouseLeave"]
  SETTABLE R8 R23 R24
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K7 ["Tag"]
  LOADK R25 K55 ["X-Fit X-Pad StartPage-NoBackground StartPage-Font StartPage-LinkTextColor StartPage-TextSize"]
  SETTABLE R25 R23 R24
  CALL R21 2 1
  SETTABLEKS R21 R20 K16 ["SeeMoreLink"]
  CALL R17 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsolutePosition"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  LOADK R1 K0 [""]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 1
  JUMPIFEQKS R0 K0 [""] [+9]
  GETUPVAL R0 2
  LOADK R1 K0 [""]
  CALL R0 1 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["OnSearchRequested"]
  LOADK R1 K0 [""]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R1 K0 [""]
  CALL R0 1 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["OnSearchRequested"]
  LOADK R1 K0 [""]
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  NOT R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnSearchRequested"]
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R0 2
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R0 3
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  LOADK R1 K0 [""]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 2
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 2
  LOADK R1 K0 [""]
  CALL R0 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 0
  LOADB R4 0
  CALL R3 1 2
  GETUPVAL R5 0
  LOADK R6 K0 [""]
  CALL R5 1 2
  GETUPVAL R7 0
  LOADNIL R8
  CALL R7 1 2
  GETUPVAL R9 0
  LOADNIL R10
  CALL R9 1 2
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["createElement"]
  LOADK R12 K2 ["Frame"]
  NEWTABLE R13 8 0
  GETTABLEKS R14 R0 K3 ["Size"]
  SETTABLEKS R14 R13 K3 ["Size"]
  GETTABLEKS R14 R0 K4 ["Position"]
  SETTABLEKS R14 R13 K4 ["Position"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K5 ["Change"]
  GETTABLEKS R14 R15 K6 ["AbsoluteSize"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R8
  SETTABLE R15 R13 R14
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K5 ["Change"]
  GETTABLEKS R14 R15 K7 ["AbsolutePosition"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R10
  SETTABLE R15 R13 R14
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K8 ["Tag"]
  LOADK R15 K9 ["StartPage-NoBackground"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K12 [{"UnfocusedSearchBar", "FocusedContent"}]
  JUMPIF R1 [+56]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["createElement"]
  LOADK R16 K2 ["Frame"]
  NEWTABLE R17 1 0
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K8 ["Tag"]
  LOADK R19 K13 ["X-Fill StartPage-Border StartPage-PageBackground StartPage-RoundedCorner16"]
  SETTABLE R19 R17 R18
  NEWTABLE R18 0 1
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 2
  DUPTABLE R21 K20 [{"Size", "OnFocused", "OnCancelled", "IsFocused", "Text", "Type", "ShouldShowCancel"}]
  GETIMPORT R22 K23 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K3 ["Size"]
  NEWCLOSURE R22 P2
  CAPTURE VAL R6
  CAPTURE VAL R2
  SETTABLEKS R22 R21 K14 ["OnFocused"]
  NEWCLOSURE R22 P3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R0
  SETTABLEKS R22 R21 K15 ["OnCancelled"]
  LOADB R22 0
  SETTABLEKS R22 R21 K16 ["IsFocused"]
  SETTABLEKS R5 R21 K17 ["Text"]
  GETTABLEKS R22 R0 K18 ["Type"]
  SETTABLEKS R22 R21 K18 ["Type"]
  LOADB R22 1
  SETTABLEKS R22 R21 K19 ["ShouldShowCancel"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K10 ["UnfocusedSearchBar"]
  JUMPIFNOT R1 [+226]
  JUMPIFNOT R7 [+225]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["createElement"]
  GETUPVAL R16 3
  LOADNIL R17
  NEWTABLE R18 0 1
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K1 ["createElement"]
  GETUPVAL R20 4
  NEWTABLE R21 2 0
  LOADK R22 K24 [999999]
  SETTABLEKS R22 R21 K25 ["Priority"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K8 ["Tag"]
  LOADK R23 K26 ["X-Fill StartPage-NoBackground"]
  SETTABLE R23 R21 R22
  DUPTABLE R22 K30 [{"DarkShadow", "Dropdown", "FocusedSearchBar"}]
  JUMPIFNOT R5 [+26]
  LENGTH R24 R5
  LOADN R25 0
  JUMPIFNOTLE R25 R24 [+23]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 5
  NEWTABLE R25 4 0
  LOADK R26 K31 [0.4]
  SETTABLEKS R26 R25 K32 ["BackgroundTransparency"]
  NEWCLOSURE R26 P4
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R0
  SETTABLEKS R26 R25 K33 ["OnClick"]
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K8 ["Tag"]
  LOADK R27 K34 ["X-Fill StartPage-StandardDarkBackground"]
  SETTABLE R27 R25 R26
  CALL R23 2 1
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K27 ["DarkShadow"]
  JUMPIFNOT R5 [+69]
  LENGTH R24 R5
  LOADN R25 3
  JUMPIFNOTLE R25 R24 [+66]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K1 ["createElement"]
  GETUPVAL R24 6
  DUPTABLE R25 K42 [{"Size", "Position", "Query", "BaseQuery", "ResultComponent", "AreSearchResultsLoading", "Dropdowns", "InitialContentHasLoaded", "MoreExperiencesRequested"}]
  GETIMPORT R26 K23 [UDim2.new]
  LOADN R27 0
  GETTABLEKS R29 R7 K44 ["X"]
  ADDK R28 R29 K43 [40]
  LOADN R29 0
  LOADN R30 188
  CALL R26 4 1
  SETTABLEKS R26 R25 K3 ["Size"]
  JUMPIFNOT R9 [+12]
  GETIMPORT R26 K23 [UDim2.new]
  LOADN R27 0
  GETTABLEKS R29 R9 K44 ["X"]
  SUBK R28 R29 K45 [20]
  LOADN R29 0
  GETTABLEKS R31 R9 K46 ["Y"]
  SUBK R30 R31 K45 [20]
  CALL R26 4 1
  JUMP [+5]
  GETIMPORT R26 K48 [UDim2.fromScale]
  LOADN R27 0
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K4 ["Position"]
  SETTABLEKS R5 R25 K35 ["Query"]
  GETTABLEKS R26 R0 K36 ["BaseQuery"]
  SETTABLEKS R26 R25 K36 ["BaseQuery"]
  GETTABLEKS R26 R0 K37 ["ResultComponent"]
  SETTABLEKS R26 R25 K37 ["ResultComponent"]
  SETTABLEKS R3 R25 K38 ["AreSearchResultsLoading"]
  NEWTABLE R26 0 0
  SETTABLEKS R26 R25 K39 ["Dropdowns"]
  NEWCLOSURE R26 P5
  CAPTURE VAL R4
  SETTABLEKS R26 R25 K40 ["InitialContentHasLoaded"]
  NEWCLOSURE R26 P6
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R2
  SETTABLEKS R26 R25 K41 ["MoreExperiencesRequested"]
  CALL R23 2 1
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K28 ["Dropdown"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K1 ["createElement"]
  LOADK R24 K2 ["Frame"]
  NEWTABLE R25 4 0
  GETIMPORT R26 K23 [UDim2.new]
  LOADN R27 0
  GETTABLEKS R28 R7 K44 ["X"]
  LOADN R29 0
  GETTABLEKS R30 R7 K46 ["Y"]
  CALL R26 4 1
  SETTABLEKS R26 R25 K3 ["Size"]
  JUMPIFNOT R9 [+10]
  GETIMPORT R26 K23 [UDim2.new]
  LOADN R27 0
  GETTABLEKS R28 R9 K44 ["X"]
  LOADN R29 0
  GETTABLEKS R30 R9 K46 ["Y"]
  CALL R26 4 1
  JUMP [+5]
  GETIMPORT R26 K48 [UDim2.fromScale]
  LOADN R27 0
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K4 ["Position"]
  LOADK R26 K24 [999999]
  SETTABLEKS R26 R25 K49 ["ZIndex"]
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K8 ["Tag"]
  LOADK R27 K50 ["StartPage-Border StartPage-PageBackground StartPage-RoundedCorner16"]
  SETTABLE R27 R25 R26
  NEWTABLE R26 0 1
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K1 ["createElement"]
  GETUPVAL R28 2
  DUPTABLE R29 K53 [{"Size", "OnFocused", "OnFocusLost", "OnTextChanged", "OnCancelled", "IsFocused", "Text", "Type"}]
  GETIMPORT R30 K23 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 1
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K3 ["Size"]
  NEWCLOSURE R30 P7
  CAPTURE VAL R6
  CAPTURE VAL R4
  SETTABLEKS R30 R29 K14 ["OnFocused"]
  NEWCLOSURE R30 P8
  CAPTURE VAL R4
  SETTABLEKS R30 R29 K51 ["OnFocusLost"]
  NEWCLOSURE R30 P9
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R4
  SETTABLEKS R30 R29 K52 ["OnTextChanged"]
  NEWCLOSURE R30 P10
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R30 R29 K15 ["OnCancelled"]
  LOADB R30 1
  SETTABLEKS R30 R29 K16 ["IsFocused"]
  SETTABLEKS R5 R29 K17 ["Text"]
  GETTABLEKS R30 R0 K18 ["Type"]
  SETTABLEKS R30 R29 K18 ["Type"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  SETTABLEKS R23 R22 K29 ["FocusedSearchBar"]
  CALL R19 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K11 ["FocusedContent"]
  CALL R11 3 -1
  RETURN R11 -1

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
  GETTABLEKS R3 R1 K9 ["useRef"]
  GETTABLEKS R4 R1 K10 ["useEffect"]
  GETTABLEKS R5 R1 K11 ["useContext"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["TypedDash"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K15 ["join"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Packages"]
  GETTABLEKS R9 R10 K16 ["Framework"]
  CALL R8 1 1
  GETTABLEKS R10 R8 K13 ["Util"]
  GETTABLEKS R9 R10 K17 ["LayoutOrderIterator"]
  GETTABLEKS R11 R8 K18 ["ContextServices"]
  GETTABLEKS R10 R11 K19 ["Localization"]
  GETTABLEKS R11 R8 K20 ["UI"]
  GETTABLEKS R12 R11 K21 ["Grid"]
  GETTABLEKS R13 R11 K22 ["Pane"]
  GETTABLEKS R14 R11 K23 ["Image"]
  GETTABLEKS R15 R11 K24 ["CaptureFocus"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K12 ["Src"]
  GETTABLEKS R18 R19 K25 ["Components"]
  GETTABLEKS R17 R18 K26 ["CursorScope"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K12 ["Src"]
  GETTABLEKS R19 R20 K25 ["Components"]
  GETTABLEKS R18 R19 K27 ["SearchResultRow"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K12 ["Src"]
  GETTABLEKS R20 R21 K25 ["Components"]
  GETTABLEKS R19 R20 K28 ["Pill"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K12 ["Src"]
  GETTABLEKS R21 R22 K29 ["Hooks"]
  GETTABLEKS R20 R21 K30 ["useCursor"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K12 ["Src"]
  GETTABLEKS R22 R23 K13 ["Util"]
  GETTABLEKS R21 R22 K31 ["Dialogs"]
  CALL R20 1 1
  GETIMPORT R21 K33 [game]
  LOADK R23 K34 ["StartPageService"]
  NAMECALL R21 R21 K35 ["GetService"]
  CALL R21 2 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R24 R0 K12 ["Src"]
  GETTABLEKS R23 R24 K36 ["Types"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K12 ["Src"]
  GETTABLEKS R25 R26 K37 ["Network"]
  GETTABLEKS R24 R25 K38 ["DiscoverCreatorEligibilityAndOpenPlace"]
  CALL R23 1 1
  GETIMPORT R24 K33 [game]
  LOADK R26 K39 ["StudioService"]
  NAMECALL R24 R24 K35 ["GetService"]
  CALL R24 2 1
  DUPCLOSURE R25 K40 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R20
  CAPTURE VAL R1
  CAPTURE VAL R17
  CAPTURE VAL R7
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R21
  DUPCLOSURE R26 K41 [PROTO_2]
  CAPTURE VAL R19
  CAPTURE VAL R1
  DUPCLOSURE R27 K42 [PROTO_7]
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R26
  DUPCLOSURE R28 K43 [PROTO_9]
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R19
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R25
  CAPTURE VAL R7
  DUPCLOSURE R29 K44 [PROTO_21]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R27
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R28
  RETURN R29 1
