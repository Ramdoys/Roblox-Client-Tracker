PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["CellProps"]
  GETTABLEKS R1 R0 K2 ["OnToggle"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Row"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["textOverflows"]
  JUMPIFNOT R0 [+25]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["CellProps"]
  GETTABLEKS R0 R1 K4 ["CellStyle"]
  GETTABLEKS R3 R0 K5 ["CellPadding"]
  GETTABLEKS R2 R3 K6 ["Left"]
  GETTABLEKS R3 R0 K7 ["Indent"]
  ADD R1 R2 R3
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["textRef"]
  GETTABLEKS R5 R6 K9 ["current"]
  GETTABLEKS R4 R5 K10 ["AbsoluteSize"]
  GETTABLEKS R3 R4 K11 ["X"]
  ADD R2 R3 R1
  RETURN R2 1
  LOADN R0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["textRef"]
  NAMECALL R1 R1 K1 ["getValue"]
  CALL R1 1 1
  JUMPIFNOT R1 [+16]
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"textOverflows"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["textRef"]
  NAMECALL R6 R6 K1 ["getValue"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K4 ["TextFits"]
  NOT R4 R5
  SETTABLEKS R4 R3 K2 ["textOverflows"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["props"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["textRef"]
  GETTABLEKS R2 R3 K7 ["current"]
  JUMPIFNOT R2 [+14]
  GETTABLEKS R2 R1 K8 ["SetCellContentsWidth"]
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R1 K8 ["SetCellContentsWidth"]
  GETTABLEKS R3 R1 K9 ["ColumnIndex"]
  GETTABLEKS R4 R1 K10 ["RowIndex"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["fetchCellContentsWidthIfOverflow"]
  CALL R5 0 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["CellProps"]
  GETTABLEKS R2 R3 K2 ["OnFocused"]
  JUMPIFNOT R2 [+7]
  MOVE R3 R2
  MOVE R4 R0
  GETTABLEKS R5 R1 K3 ["Row"]
  GETTABLEKS R6 R1 K4 ["ColumnIndex"]
  CALL R3 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R4 R2 K1 ["CellProps"]
  GETTABLEKS R3 R4 K2 ["OnFocusLost"]
  JUMPIFNOT R3 [+8]
  MOVE R4 R3
  MOVE R5 R0
  MOVE R6 R1
  GETTABLEKS R7 R2 K3 ["Row"]
  GETTABLEKS R8 R2 K4 ["ColumnIndex"]
  CALL R4 4 0
  RETURN R0 0

PROTO_5:
  PREPVARARGS 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellPressed"]
  JUMPIFNOT R1 [+14]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellPressed"]
  GETTABLEKS R4 R0 K3 ["Row"]
  GETTABLEKS R3 R4 K4 ["item"]
  GETTABLEKS R2 R3 K5 ["path"]
  GETTABLEKS R3 R0 K6 ["ColumnIndex"]
  GETVARARGS R4 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  PREPVARARGS 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellDoubleClick"]
  JUMPIFNOT R1 [+14]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellDoubleClick"]
  GETTABLEKS R4 R0 K3 ["Row"]
  GETTABLEKS R3 R4 K4 ["item"]
  GETTABLEKS R2 R3 K5 ["path"]
  GETTABLEKS R3 R0 K6 ["ColumnIndex"]
  GETVARARGS R4 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["CellProps"]
  GETTABLEKS R4 R3 K1 ["TextInputCols"]
  GETTABLEKS R5 R0 K2 ["Row"]
  MOVE R6 R4
  JUMPIFNOT R6 [+10]
  GETTABLEKS R7 R0 K3 ["ColumnIndex"]
  GETTABLE R6 R4 R7
  JUMPIFNOT R6 [+6]
  GETTABLEKS R7 R5 K4 ["depth"]
  JUMPIFEQKN R7 K5 [0] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  JUMPIFNOT R6 [+33]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K14 [{"AutomaticSize", "LayoutOrder", "OnFocused", "OnFocusLost", "Size", "Text", "ref"}]
  GETIMPORT R10 K17 [Enum.AutomaticSize.XY]
  SETTABLEKS R10 R9 K7 ["AutomaticSize"]
  LOADN R10 3
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K18 ["onTextInputFocused"]
  SETTABLEKS R10 R9 K9 ["OnFocused"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K19 ["onTextInputFocusLost"]
  SETTABLEKS R10 R9 K10 ["OnFocusLost"]
  SETTABLEKS R2 R9 K11 ["Size"]
  SETTABLEKS R1 R9 K12 ["Text"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K20 ["textRef"]
  SETTABLEKS R10 R9 K13 ["ref"]
  CALL R7 2 -1
  RETURN R7 -1
  JUMPIFNOT R1 [+23]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K22 [{"LayoutOrder", "Size", "Text", "TextXAlignment", "ref"}]
  LOADN R10 3
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  SETTABLEKS R2 R9 K11 ["Size"]
  SETTABLEKS R1 R9 K12 ["Text"]
  GETIMPORT R10 K24 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K21 ["TextXAlignment"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K20 ["textRef"]
  SETTABLEKS R10 R9 K13 ["ref"]
  CALL R7 2 1
  JUMPIF R7 [+1]
  LOADNIL R7
  RETURN R7 1

PROTO_8:
  GETTABLEKS R2 R0 K0 ["Columns"]
  GETTABLEKS R3 R0 K1 ["ColumnIndex"]
  GETTABLE R1 R2 R3
  GETTABLEKS R2 R1 K2 ["Key"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R1 K3 ["Name"]
  GETTABLEKS R3 R0 K4 ["Row"]
  GETTABLEKS R5 R3 K5 ["item"]
  GETTABLE R4 R5 R2
  RETURN R4 1

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["CellProps"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  NEWTABLE R4 0 0
  DUPTABLE R5 K4 [{"PropertyCell"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K16 [{"AnchorPoint", "Size", "Position", "GetAutocompleteItems", "Item", "LayoutOrder", "OnChanged", "OnDoubleClick", "OnPressed", "Schema", "Value"}]
  GETIMPORT R9 K19 [Vector2.new]
  LOADN R10 0
  LOADK R11 K20 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K5 ["AnchorPoint"]
  GETIMPORT R9 K22 [UDim2.new]
  LOADN R10 1
  LOADN R11 250
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K6 ["Size"]
  GETIMPORT R9 K22 [UDim2.new]
  LOADN R10 0
  LOADN R11 3
  LOADK R12 K20 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K7 ["Position"]
  GETTABLEKS R9 R1 K8 ["GetAutocompleteItems"]
  SETTABLEKS R9 R8 K8 ["GetAutocompleteItems"]
  GETTABLEKS R9 R0 K9 ["Item"]
  SETTABLEKS R9 R8 K9 ["Item"]
  LOADN R9 3
  SETTABLEKS R9 R8 K10 ["LayoutOrder"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K23 ["onChanged"]
  SETTABLEKS R9 R8 K11 ["OnChanged"]
  GETTABLEKS R9 R0 K12 ["OnDoubleClick"]
  SETTABLEKS R9 R8 K12 ["OnDoubleClick"]
  GETTABLEKS R9 R0 K13 ["OnPressed"]
  SETTABLEKS R9 R8 K13 ["OnPressed"]
  GETTABLEKS R9 R0 K14 ["Schema"]
  SETTABLEKS R9 R8 K14 ["Schema"]
  GETTABLEKS R9 R0 K15 ["Value"]
  SETTABLEKS R9 R8 K15 ["Value"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K3 ["PropertyCell"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellEdited"]
  JUMPIFNOT R1 [+23]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCellEdited"]
  MOVE R2 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K3 ["Row"]
  GETTABLEKS R4 R5 K4 ["item"]
  GETTABLEKS R3 R4 K5 ["path"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["ColumnIndex"]
  CALL R1 3 0
  RETURN R0 0

PROTO_11:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onToggle"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["textRef"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["fetchCellContentsWidthIfOverflow"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onAbsoluteSizeChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onTextInputFocused"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onTextInputFocusLost"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onPressed"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onDoubleClick"]
  NEWCLOSURE R1 P7
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K9 ["getTextElement"]
  DUPCLOSURE R1 K10 [PROTO_8]
  SETTABLEKS R1 R0 K11 ["getTextFromProps"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K12 ["getPropertyCell"]
  NEWCLOSURE R1 P10
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onChanged"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["RowIndex"]
  GETTABLEKS R4 R2 K1 ["RowIndex"]
  JUMPIFNOTEQ R3 R4 [+11]
  GETTABLEKS R3 R0 K2 ["getTextFromProps"]
  MOVE R4 R1
  CALL R3 1 1
  GETTABLEKS R4 R0 K2 ["getTextFromProps"]
  MOVE R5 R2
  CALL R4 1 1
  JUMPIFEQ R3 R4 [+14]
  GETTABLEKS R3 R2 K3 ["SetCellContentsWidth"]
  JUMPIFNOT R3 [+10]
  GETTABLEKS R3 R2 K3 ["SetCellContentsWidth"]
  GETTABLEKS R4 R2 K4 ["ColumnIndex"]
  GETTABLEKS R5 R2 K1 ["RowIndex"]
  GETTABLEKS R6 R0 K5 ["fetchCellContentsWidthIfOverflow"]
  CALL R6 0 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnCellAction"]
  JUMPIFNOT R0 [+15]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnCellAction"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Id"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["item"]
  GETTABLEKS R2 R3 K3 ["path"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["ColumnIndex"]
  CALL R0 3 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R4 R1 K2 ["Columns"]
  GETTABLEKS R5 R1 K3 ["ColumnIndex"]
  GETTABLE R3 R4 R5
  GETTABLEKS R4 R3 K4 ["Key"]
  JUMPIF R4 [+2]
  GETTABLEKS R4 R3 K5 ["Name"]
  GETTABLEKS R5 R1 K6 ["Width"]
  JUMPIF R5 [+8]
  GETIMPORT R5 K9 [UDim.new]
  GETTABLEKS R8 R1 K2 ["Columns"]
  LENGTH R7 R8
  DIVRK R6 R10 K7 ["UDim"]
  LOADN R7 0
  CALL R5 2 1
  GETTABLEKS R6 R1 K11 ["Row"]
  GETTABLEKS R7 R1 K12 ["CellProps"]
  GETTABLEKS R9 R6 K13 ["item"]
  GETTABLE R8 R9 R4
  LOADNIL R9
  LOADNIL R10
  LOADB R11 0
  FASTCALL1 TYPEOF R8 [+3]
  MOVE R13 R8
  GETIMPORT R12 K15 [typeof]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K16 ["table"] [+15]
  GETTABLEKS R13 R8 K17 ["Value"]
  FASTCALL1 TOSTRING R13 [+2]
  GETIMPORT R12 K19 [tostring]
  CALL R12 1 1
  MOVE R9 R12
  GETTABLEKS R10 R8 K20 ["LeftIcon"]
  GETTABLEKS R12 R8 K21 ["Schema"]
  JUMPIFNOT R12 [+8]
  LOADB R11 1
  JUMP [+6]
  FASTCALL1 TOSTRING R8 [+3]
  MOVE R13 R8
  GETIMPORT R12 K19 [tostring]
  CALL R12 1 1
  MOVE R9 R12
  GETTABLEKS R13 R1 K22 ["Tooltip"]
  OR R12 R13 R9
  LOADB R13 0
  JUMPIFEQKNIL R12 [+12]
  LOADB R13 0
  JUMPIFEQKS R12 K23 [""] [+9]
  GETTABLEKS R14 R0 K24 ["state"]
  GETTABLEKS R13 R14 K25 ["textOverflows"]
  JUMPIFNOT R13 [+3]
  GETTABLEKS R14 R7 K26 ["DisableTooltip"]
  NOT R13 R14
  GETUPVAL R14 0
  GETTABLEKS R15 R1 K27 ["Style"]
  GETTABLEKS R16 R7 K28 ["CellStyle"]
  CALL R14 2 1
  GETTABLEKS R17 R1 K30 ["RowIndex"]
  MODK R16 R17 K29 [2]
  JUMPIFNOTEQKN R16 K10 [1] [+4]
  GETTABLEKS R15 R14 K31 ["BackgroundOdd"]
  JUMPIF R15 [+2]
  GETTABLEKS R15 R14 K32 ["BackgroundEven"]
  GETTABLEKS R17 R1 K33 ["Emphasis"]
  JUMPIFNOT R17 [+3]
  GETTABLEKS R16 R14 K31 ["BackgroundOdd"]
  JUMP [+2]
  GETTABLEKS R16 R14 K32 ["BackgroundEven"]
  GETTABLEKS R17 R1 K34 ["HighlightCell"]
  JUMPIFNOT R17 [+24]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K35 ["Hover"]
  GETTABLE R17 R14 R18
  JUMPIFNOT R17 [+19]
  GETTABLEKS R19 R1 K30 ["RowIndex"]
  MODK R18 R19 K29 [2]
  JUMPIFNOTEQKN R18 K10 [1] [+8]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K35 ["Hover"]
  GETTABLE R18 R14 R19
  GETTABLEKS R17 R18 K31 ["BackgroundOdd"]
  JUMPIF R17 [+6]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K35 ["Hover"]
  GETTABLE R18 R14 R19
  GETTABLEKS R17 R18 K32 ["BackgroundEven"]
  MOVE R16 R17
  GETTABLEKS R18 R7 K36 ["Expansion"]
  GETTABLEKS R19 R7 K37 ["GetItemId"]
  GETTABLEKS R20 R6 K13 ["item"]
  CALL R19 1 1
  GETTABLE R17 R18 R19
  GETTABLEKS R19 R14 K38 ["Arrow"]
  GETTABLEKS R18 R19 K39 ["Size"]
  GETTABLEKS R20 R6 K40 ["depth"]
  GETTABLEKS R21 R14 K41 ["Indent"]
  MUL R19 R20 R21
  GETTABLEKS R21 R1 K3 ["ColumnIndex"]
  JUMPIFEQKN R21 K10 [1] [+2]
  LOADB R20 0 +1
  LOADB R20 1
  JUMPIFNOT R11 [+3]
  GETTABLEKS R21 R14 K42 ["SchemaCellPadding"]
  JUMP [+2]
  GETTABLEKS R21 R14 K43 ["CellPadding"]
  JUMPIFNOT R20 [+21]
  DUPTABLE R22 K48 [{"Top", "Left", "Right", "Bottom"}]
  GETTABLEKS R23 R21 K44 ["Top"]
  SETTABLEKS R23 R22 K44 ["Top"]
  GETTABLEKS R25 R14 K43 ["CellPadding"]
  GETTABLEKS R24 R25 K45 ["Left"]
  ADD R23 R24 R19
  SETTABLEKS R23 R22 K45 ["Left"]
  GETTABLEKS R23 R21 K46 ["Right"]
  SETTABLEKS R23 R22 K46 ["Right"]
  GETTABLEKS R23 R21 K47 ["Bottom"]
  SETTABLEKS R23 R22 K47 ["Bottom"]
  JUMPIF R22 [+1]
  MOVE R22 R21
  MOVE R23 R20
  JUMPIFNOT R23 [+2]
  GETTABLEKS R23 R6 K49 ["hasChildren"]
  LOADN R24 0
  LOADNIL R25
  FASTCALL1 TYPEOF R8 [+3]
  MOVE R27 R8
  GETIMPORT R26 K15 [typeof]
  CALL R26 1 1
  JUMPIFNOTEQKS R26 K16 ["table"] [+102]
  GETTABLEKS R26 R8 K50 ["Actions"]
  JUMPIFNOT R26 [+98]
  GETTABLEKS R26 R14 K51 ["CellSpacing"]
  ADD R24 R24 R26
  NEWTABLE R25 0 0
  GETIMPORT R26 K53 [ipairs]
  GETTABLEKS R27 R8 K50 ["Actions"]
  CALL R26 1 3
  FORGPREP_INEXT R26
  GETTABLEKS R31 R30 K54 ["Id"]
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K55 ["LAYERVIEW_ACTIONS"]
  GETTABLEKS R32 R33 K56 ["NoOp"]
  JUMPIFNOTEQ R31 R32 [+23]
  LOADK R32 K57 ["Action "]
  MOVE R33 R29
  CONCAT R31 R32 R33
  GETUPVAL R33 3
  GETTABLEKS R32 R33 K58 ["createElement"]
  GETUPVAL R33 4
  DUPTABLE R34 K61 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
  GETTABLEKS R36 R30 K62 ["Icon"]
  GETTABLEKS R35 R36 K39 ["Size"]
  SETTABLEKS R35 R34 K39 ["Size"]
  SETTABLEKS R29 R34 K59 ["LayoutOrder"]
  LOADN R35 1
  SETTABLEKS R35 R34 K60 ["BackgroundTransparency"]
  CALL R32 2 1
  SETTABLE R32 R25 R31
  JUMP [+42]
  GETTABLEKS R31 R30 K54 ["Id"]
  GETUPVAL R33 3
  GETTABLEKS R32 R33 K58 ["createElement"]
  LOADK R33 K63 ["ImageButton"]
  NEWTABLE R34 8 0
  GETTABLEKS R36 R30 K62 ["Icon"]
  GETTABLEKS R35 R36 K39 ["Size"]
  SETTABLEKS R35 R34 K39 ["Size"]
  SETTABLEKS R29 R34 K59 ["LayoutOrder"]
  LOADN R35 1
  SETTABLEKS R35 R34 K60 ["BackgroundTransparency"]
  GETTABLEKS R36 R30 K62 ["Icon"]
  GETTABLEKS R35 R36 K64 ["Image"]
  SETTABLEKS R35 R34 K64 ["Image"]
  GETTABLEKS R35 R14 K65 ["Text"]
  SETTABLEKS R35 R34 K66 ["ImageColor3"]
  GETUPVAL R37 3
  GETTABLEKS R36 R37 K67 ["Event"]
  GETTABLEKS R35 R36 K68 ["Activated"]
  NEWCLOSURE R36 P0
  CAPTURE VAL R7
  CAPTURE VAL R30
  CAPTURE VAL R6
  CAPTURE VAL R1
  SETTABLE R36 R34 R35
  CALL R32 2 1
  SETTABLE R32 R25 R31
  GETTABLEKS R35 R30 K62 ["Icon"]
  GETTABLEKS R34 R35 K39 ["Size"]
  GETTABLEKS R33 R34 K69 ["X"]
  GETTABLEKS R32 R33 K70 ["Offset"]
  GETTABLEKS R33 R14 K51 ["CellSpacing"]
  ADD R31 R32 R33
  ADD R24 R24 R31
  FORGLOOP R26 2 [inext] [-86]
  LOADN R26 0
  JUMPIFNOT R10 [+10]
  GETTABLEKS R28 R14 K51 ["CellSpacing"]
  GETTABLEKS R31 R10 K39 ["Size"]
  GETTABLEKS R30 R31 K69 ["X"]
  GETTABLEKS R29 R30 K70 ["Offset"]
  ADD R27 R28 R29
  ADD R26 R26 R27
  JUMPIFNOT R23 [+4]
  GETTABLEKS R28 R14 K51 ["CellSpacing"]
  ADD R27 R28 R18
  ADD R26 R26 R27
  GETIMPORT R27 K72 [UDim2.new]
  LOADN R28 1
  MINUS R29 R26
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K58 ["createElement"]
  GETUPVAL R29 4
  NEWTABLE R30 8 0
  LOADK R31 K73 ["Box"]
  SETTABLEKS R31 R30 K27 ["Style"]
  SETTABLEKS R16 R30 K74 ["BackgroundColor3"]
  LOADN R31 1
  SETTABLEKS R31 R30 K75 ["BorderSizePixel"]
  GETTABLEKS R31 R14 K76 ["Border"]
  SETTABLEKS R31 R30 K77 ["BorderColor3"]
  GETIMPORT R31 K72 [UDim2.new]
  GETTABLEKS R32 R5 K78 ["Scale"]
  GETTABLEKS R33 R5 K70 ["Offset"]
  LOADN R34 1
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K39 ["Size"]
  GETUPVAL R33 3
  GETTABLEKS R32 R33 K79 ["Change"]
  GETTABLEKS R31 R32 K80 ["AbsoluteSize"]
  GETTABLEKS R32 R0 K81 ["onAbsoluteSizeChanged"]
  SETTABLE R32 R30 R31
  LOADB R31 1
  SETTABLEKS R31 R30 K82 ["ClipsDescendants"]
  DUPTABLE R31 K83 [{"Tooltip", "Left", "Right"}]
  MOVE R32 R13
  JUMPIFNOT R32 [+18]
  GETUPVAL R33 3
  GETTABLEKS R32 R33 K58 ["createElement"]
  GETUPVAL R33 5
  DUPTABLE R34 K86 [{"MaxWidth", "Text", "TextXAlignment"}]
  GETTABLEKS R36 R14 K22 ["Tooltip"]
  GETTABLEKS R35 R36 K84 ["MaxWidth"]
  SETTABLEKS R35 R34 K84 ["MaxWidth"]
  SETTABLEKS R12 R34 K65 ["Text"]
  GETIMPORT R35 K88 [Enum.TextXAlignment.Left]
  SETTABLEKS R35 R34 K85 ["TextXAlignment"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K22 ["Tooltip"]
  GETUPVAL R33 3
  GETTABLEKS R32 R33 K58 ["createElement"]
  GETUPVAL R33 4
  DUPTABLE R34 K94 [{"Layout", "LayoutOrder", "Padding", "Spacing", "HorizontalAlignment", "VerticalAlignment", "Size"}]
  GETIMPORT R35 K97 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K89 ["Layout"]
  GETTABLEKS R35 R1 K3 ["ColumnIndex"]
  SETTABLEKS R35 R34 K59 ["LayoutOrder"]
  SETTABLEKS R22 R34 K90 ["Padding"]
  GETTABLEKS R35 R14 K51 ["CellSpacing"]
  SETTABLEKS R35 R34 K91 ["Spacing"]
  GETIMPORT R35 K98 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R35 R34 K92 ["HorizontalAlignment"]
  GETIMPORT R35 K100 [Enum.VerticalAlignment.Center]
  SETTABLEKS R35 R34 K93 ["VerticalAlignment"]
  GETIMPORT R35 K72 [UDim2.new]
  LOADN R36 1
  MINUS R37 R24
  LOADN R38 1
  LOADN R39 0
  CALL R35 4 1
  SETTABLEKS R35 R34 K39 ["Size"]
  DUPTABLE R35 K102 [{"Toggle", "LeftIcon", "Text"}]
  JUMPIFNOT R23 [+73]
  GETUPVAL R37 3
  GETTABLEKS R36 R37 K58 ["createElement"]
  GETUPVAL R37 4
  DUPTABLE R38 K104 [{"AutomaticSize", "LayoutOrder"}]
  GETIMPORT R39 K106 [Enum.AutomaticSize.XY]
  SETTABLEKS R39 R38 K103 ["AutomaticSize"]
  LOADN R39 1
  SETTABLEKS R39 R38 K59 ["LayoutOrder"]
  DUPTABLE R39 K107 [{"Icon"}]
  GETUPVAL R41 3
  GETTABLEKS R40 R41 K58 ["createElement"]
  LOADK R41 K63 ["ImageButton"]
  NEWTABLE R42 8 0
  GETIMPORT R43 K109 [UDim2.fromOffset]
  MOVE R44 R18
  MOVE R45 R18
  CALL R43 2 1
  SETTABLEKS R43 R42 K39 ["Size"]
  LOADN R43 1
  SETTABLEKS R43 R42 K60 ["BackgroundTransparency"]
  GETTABLEKS R44 R14 K38 ["Arrow"]
  GETTABLEKS R43 R44 K64 ["Image"]
  SETTABLEKS R43 R42 K64 ["Image"]
  GETTABLEKS R44 R14 K38 ["Arrow"]
  GETTABLEKS R43 R44 K110 ["Color"]
  SETTABLEKS R43 R42 K66 ["ImageColor3"]
  GETIMPORT R43 K112 [Vector2.new]
  MOVE R44 R18
  MOVE R45 R18
  CALL R43 2 1
  SETTABLEKS R43 R42 K113 ["ImageRectSize"]
  JUMPIFNOT R17 [+5]
  GETTABLEKS R44 R14 K38 ["Arrow"]
  GETTABLEKS R43 R44 K114 ["ExpandedOffset"]
  JUMP [+4]
  GETTABLEKS R44 R14 K38 ["Arrow"]
  GETTABLEKS R43 R44 K115 ["CollapsedOffset"]
  SETTABLEKS R43 R42 K116 ["ImageRectOffset"]
  GETUPVAL R45 3
  GETTABLEKS R44 R45 K67 ["Event"]
  GETTABLEKS R43 R44 K68 ["Activated"]
  GETTABLEKS R44 R0 K117 ["onToggle"]
  SETTABLE R44 R42 R43
  CALL R40 2 1
  SETTABLEKS R40 R39 K62 ["Icon"]
  CALL R36 3 1
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K101 ["Toggle"]
  JUMPIFNOT R10 [+13]
  GETUPVAL R37 3
  GETTABLEKS R36 R37 K58 ["createElement"]
  GETUPVAL R37 6
  GETUPVAL R38 0
  DUPTABLE R39 K118 [{"LayoutOrder"}]
  LOADN R40 2
  SETTABLEKS R40 R39 K59 ["LayoutOrder"]
  MOVE R40 R10
  CALL R38 2 -1
  CALL R36 -1 1
  JUMPIF R36 [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K20 ["LeftIcon"]
  JUMPIFNOT R11 [+26]
  GETTABLEKS R37 R8 K119 ["Disabled"]
  JUMPIF R37 [+23]
  GETTABLEKS R36 R0 K120 ["getPropertyCell"]
  DUPTABLE R37 K123 [{"OnDoubleClick", "OnPressed", "Schema", "Size", "Value"}]
  GETTABLEKS R38 R0 K124 ["onDoubleClick"]
  SETTABLEKS R38 R37 K121 ["OnDoubleClick"]
  GETTABLEKS R38 R0 K125 ["onPressed"]
  SETTABLEKS R38 R37 K122 ["OnPressed"]
  GETTABLEKS R38 R8 K21 ["Schema"]
  SETTABLEKS R38 R37 K21 ["Schema"]
  SETTABLEKS R27 R37 K39 ["Size"]
  GETTABLEKS R38 R8 K17 ["Value"]
  SETTABLEKS R38 R37 K17 ["Value"]
  CALL R36 1 1
  JUMP [+6]
  GETTABLEKS R36 R0 K126 ["getTextElement"]
  MOVE R37 R1
  MOVE R38 R9
  MOVE R39 R27
  CALL R36 3 1
  SETTABLEKS R36 R35 K65 ["Text"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K45 ["Left"]
  JUMPIFNOT R25 [+40]
  GETUPVAL R33 3
  GETTABLEKS R32 R33 K58 ["createElement"]
  GETUPVAL R33 4
  DUPTABLE R34 K129 [{"AnchorPoint", "AutomaticSize", "Layout", "VerticalAlignment", "Position", "Spacing"}]
  GETIMPORT R35 K112 [Vector2.new]
  LOADN R36 1
  LOADK R37 K130 [0.5]
  CALL R35 2 1
  SETTABLEKS R35 R34 K127 ["AnchorPoint"]
  GETIMPORT R35 K106 [Enum.AutomaticSize.XY]
  SETTABLEKS R35 R34 K103 ["AutomaticSize"]
  GETIMPORT R35 K97 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K89 ["Layout"]
  GETIMPORT R35 K100 [Enum.VerticalAlignment.Center]
  SETTABLEKS R35 R34 K93 ["VerticalAlignment"]
  GETIMPORT R35 K72 [UDim2.new]
  LOADN R36 1
  LOADN R37 253
  LOADK R38 K130 [0.5]
  LOADN R39 0
  CALL R35 4 1
  SETTABLEKS R35 R34 K128 ["Position"]
  GETTABLEKS R35 R14 K51 ["CellSpacing"]
  SETTABLEKS R35 R34 K91 ["Spacing"]
  MOVE R35 R25
  CALL R32 3 1
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K46 ["Right"]
  CALL R28 3 -1
  RETURN R28 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
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
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R2 K11 ["Dash"]
  GETTABLEKS R6 R5 K12 ["join"]
  GETTABLEKS R8 R2 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["Stylizer"]
  GETTABLEKS R8 R2 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["Image"]
  GETTABLEKS R10 R8 K17 ["Pane"]
  GETTABLEKS R11 R8 K18 ["PropertyCell"]
  GETTABLEKS R12 R8 K19 ["Tooltip"]
  GETTABLEKS R13 R8 K20 ["TextLabel"]
  GETTABLEKS R14 R8 K21 ["DEPRECATED_TextInput"]
  GETTABLEKS R16 R2 K22 ["Util"]
  GETTABLEKS R15 R16 K23 ["StyleModifier"]
  GETTABLEKS R17 R0 K24 ["Src"]
  GETTABLEKS R16 R17 K22 ["Util"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R16 K25 ["Constants"]
  CALL R17 1 1
  GETTABLEKS R18 R1 K26 ["PureComponent"]
  LOADK R20 K27 ["LayerViewCell"]
  NAMECALL R18 R18 K28 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K29 [PROTO_11]
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R19 R18 K30 ["init"]
  DUPCLOSURE R19 K31 [PROTO_12]
  SETTABLEKS R19 R18 K32 ["didUpdate"]
  DUPCLOSURE R19 K33 [PROTO_14]
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R19 R18 K34 ["render"]
  MOVE R19 R4
  DUPTABLE R20 K35 [{"Stylizer"}]
  SETTABLEKS R7 R20 K14 ["Stylizer"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  RETURN R18 1
