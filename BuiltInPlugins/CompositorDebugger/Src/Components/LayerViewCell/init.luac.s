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
  RETURN R0 0

PROTO_2:
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

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["CellProps"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K14 [{"AnchorPoint", "Size", "Position", "GetAutocompleteItems", "Item", "LayoutOrder", "OnChanged", "OnDoubleClick", "OnPressed", "Schema", "Value"}]
  GETIMPORT R5 K17 [Vector2.new]
  LOADN R6 0
  LOADK R7 K18 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["AnchorPoint"]
  GETIMPORT R5 K20 [UDim2.new]
  LOADN R6 1
  LOADN R7 250
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  GETIMPORT R5 K20 [UDim2.new]
  LOADN R6 0
  LOADN R7 0
  LOADK R8 K18 [0.5]
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K5 ["Position"]
  GETTABLEKS R5 R1 K6 ["GetAutocompleteItems"]
  SETTABLEKS R5 R4 K6 ["GetAutocompleteItems"]
  GETTABLEKS R5 R0 K7 ["Item"]
  SETTABLEKS R5 R4 K7 ["Item"]
  LOADN R5 3
  SETTABLEKS R5 R4 K8 ["LayoutOrder"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K21 ["onChanged"]
  SETTABLEKS R5 R4 K9 ["OnChanged"]
  GETTABLEKS R5 R0 K10 ["OnDoubleClick"]
  SETTABLEKS R5 R4 K10 ["OnDoubleClick"]
  GETTABLEKS R5 R0 K11 ["OnPressed"]
  SETTABLEKS R5 R4 K11 ["OnPressed"]
  GETTABLEKS R5 R0 K12 ["Schema"]
  SETTABLEKS R5 R4 K12 ["Schema"]
  GETTABLEKS R5 R0 K13 ["Value"]
  SETTABLEKS R5 R4 K13 ["Value"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
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

PROTO_10:
  DUPTABLE R1 K1 [{"ForceRefresh"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["ForceRefresh"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onToggle"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K5 ["textRef"]
  DUPCLOSURE R1 K6 [PROTO_1]
  SETTABLEKS R1 R0 K7 ["fetchCellContentsWidthIfOverflow"]
  DUPCLOSURE R1 K8 [PROTO_2]
  SETTABLEKS R1 R0 K9 ["onAbsoluteSizeChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onTextInputFocused"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["onTextInputFocusLost"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["onPressed"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onDoubleClick"]
  DUPCLOSURE R1 K14 [PROTO_7]
  SETTABLEKS R1 R0 K15 ["getTextFromProps"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K16 ["getPropertyCell"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K17 ["onChanged"]
  RETURN R0 0

PROTO_11:
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

PROTO_12:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"ForceRefresh"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["state"]
  GETTABLEKS R4 R5 K0 ["ForceRefresh"]
  ADDK R3 R4 K2 [1]
  SETTABLEKS R3 R2 K0 ["ForceRefresh"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETIMPORT R3 K1 [settings]
  CALL R3 0 1
  GETTABLEKS R2 R3 K2 ["Studio"]
  GETTABLEKS R1 R2 K3 ["ThemeChanged"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K4 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["onThemeChanged"]
  RETURN R0 0

PROTO_14:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["onThemeChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  JUMPIFNOT R0 [+2]
  NOT R2 R1
  JUMPIF R2 [+2]
  NOT R3 R0
  AND R2 R3 R1
  RETURN R2 1

PROTO_17:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R5 R3 K2 ["ForceRefresh"]
  GETTABLEKS R6 R2 K2 ["ForceRefresh"]
  JUMPIFNOTEQ R5 R6 [+7]
  GETTABLEKS R5 R4 K3 ["StyleModifier"]
  GETTABLEKS R6 R1 K3 ["StyleModifier"]
  JUMPIFEQ R5 R6 [+3]
  LOADB R5 1
  RETURN R5 1
  GETTABLEKS R5 R4 K4 ["CellProps"]
  GETTABLEKS R6 R1 K4 ["CellProps"]
  GETTABLEKS R7 R4 K5 ["Row"]
  GETTABLEKS R8 R1 K5 ["Row"]
  GETTABLEKS R9 R4 K6 ["Columns"]
  GETTABLEKS R10 R1 K6 ["Columns"]
  DUPCLOSURE R11 K7 [PROTO_16]
  JUMPIFNOT R5 [+2]
  NOT R12 R6
  JUMPIF R12 [+2]
  NOT R13 R5
  AND R12 R13 R6
  JUMPIF R12 [+12]
  JUMPIFNOT R7 [+2]
  NOT R12 R8
  JUMPIF R12 [+2]
  NOT R13 R7
  AND R12 R13 R8
  JUMPIF R12 [+6]
  JUMPIFNOT R9 [+2]
  NOT R12 R10
  JUMPIF R12 [+2]
  NOT R13 R9
  AND R12 R13 R10
  JUMPIFNOT R12 [+2]
  LOADB R12 1
  RETURN R12 1
  JUMPIFNOT R5 [+66]
  JUMPIFNOT R6 [+65]
  JUMPIFNOT R9 [+64]
  JUMPIFNOT R10 [+63]
  GETTABLEKS R14 R4 K8 ["ColumnIndex"]
  GETTABLE R12 R9 R14
  GETTABLEKS R14 R1 K8 ["ColumnIndex"]
  GETTABLE R13 R10 R14
  GETTABLEKS R14 R12 K9 ["Key"]
  GETTABLEKS R15 R13 K9 ["Key"]
  GETTABLEKS R18 R7 K10 ["item"]
  GETTABLE R16 R18 R14
  GETTABLEKS R18 R8 K10 ["item"]
  GETTABLE R17 R18 R15
  GETTABLEKS R19 R5 K11 ["Expansion"]
  GETTABLEKS R20 R5 K12 ["GetItemId"]
  GETTABLEKS R21 R7 K10 ["item"]
  CALL R20 1 1
  GETTABLE R18 R19 R20
  GETTABLEKS R20 R6 K11 ["Expansion"]
  GETTABLEKS R21 R6 K12 ["GetItemId"]
  GETTABLEKS R22 R8 K10 ["item"]
  CALL R21 1 1
  GETTABLE R19 R20 R21
  JUMPIFEQ R18 R19 [+3]
  LOADB R18 1
  RETURN R18 1
  JUMPIFEQ R16 R17 [+26]
  FASTCALL1 TYPEOF R16 [+3]
  MOVE R19 R16
  GETIMPORT R18 K14 [typeof]
  CALL R18 1 1
  JUMPIFNOTEQKS R18 K15 ["table"] [+17]
  LOADB R18 1
  GETTABLEKS R19 R16 K16 ["Value"]
  GETTABLEKS R20 R17 K16 ["Value"]
  JUMPIFNOTEQ R19 R20 [+9]
  GETTABLEKS R19 R16 K17 ["Actions"]
  GETTABLEKS R20 R17 K17 ["Actions"]
  JUMPIFNOTEQ R19 R20 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  RETURN R18 1
  LOADB R18 1
  RETURN R18 1
  LOADB R12 0
  RETURN R12 1

PROTO_18:
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

PROTO_19:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
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
  GETUPVAL R9 0
  LOADK R11 K14 ["ActionIconSize"]
  NAMECALL R9 R9 K15 ["GetAttribute"]
  CALL R9 2 1
  GETUPVAL R10 0
  LOADK R12 K16 ["CellSpacing"]
  NAMECALL R10 R10 K15 ["GetAttribute"]
  CALL R10 2 1
  LOADNIL R11
  LOADB R12 0
  FASTCALL1 TYPEOF R8 [+3]
  MOVE R14 R8
  GETIMPORT R13 K18 [typeof]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K19 ["table"] [+13]
  GETTABLEKS R14 R8 K20 ["Value"]
  FASTCALL1 TOSTRING R14 [+2]
  GETIMPORT R13 K22 [tostring]
  CALL R13 1 1
  MOVE R11 R13
  GETTABLEKS R13 R8 K23 ["Schema"]
  JUMPIFNOT R13 [+8]
  LOADB R12 1
  JUMP [+6]
  FASTCALL1 TOSTRING R8 [+3]
  MOVE R14 R8
  GETIMPORT R13 K22 [tostring]
  CALL R13 1 1
  MOVE R11 R13
  GETTABLEKS R14 R1 K24 ["Tooltip"]
  OR R13 R14 R11
  LOADB R14 0
  JUMPIFEQKNIL R13 [+12]
  LOADB R14 0
  JUMPIFEQKS R13 K25 [""] [+9]
  GETTABLEKS R15 R0 K26 ["state"]
  GETTABLEKS R14 R15 K27 ["textOverflows"]
  JUMPIFNOT R14 [+3]
  GETTABLEKS R15 R7 K28 ["DisableTooltip"]
  NOT R14 R15
  GETUPVAL R15 1
  GETTABLEKS R16 R1 K29 ["Style"]
  GETTABLEKS R17 R7 K30 ["CellStyle"]
  CALL R15 2 1
  GETTABLEKS R18 R1 K32 ["RowIndex"]
  MODK R17 R18 K31 [2]
  JUMPIFNOTEQKN R17 K10 [1] [+4]
  GETTABLEKS R16 R15 K33 ["BackgroundOdd"]
  JUMPIF R16 [+2]
  GETTABLEKS R16 R15 K34 ["BackgroundEven"]
  GETTABLEKS R18 R1 K35 ["Emphasis"]
  JUMPIFNOT R18 [+3]
  GETTABLEKS R17 R15 K33 ["BackgroundOdd"]
  JUMP [+2]
  GETTABLEKS R17 R15 K34 ["BackgroundEven"]
  GETTABLEKS R18 R1 K36 ["HighlightCell"]
  JUMPIFNOT R18 [+24]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K37 ["Hover"]
  GETTABLE R18 R15 R19
  JUMPIFNOT R18 [+19]
  GETTABLEKS R20 R1 K32 ["RowIndex"]
  MODK R19 R20 K31 [2]
  JUMPIFNOTEQKN R19 K10 [1] [+8]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K37 ["Hover"]
  GETTABLE R19 R15 R20
  GETTABLEKS R18 R19 K33 ["BackgroundOdd"]
  JUMPIF R18 [+6]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K37 ["Hover"]
  GETTABLE R19 R15 R20
  GETTABLEKS R18 R19 K34 ["BackgroundEven"]
  MOVE R17 R18
  GETTABLEKS R19 R7 K38 ["Expansion"]
  GETTABLEKS R20 R7 K39 ["GetItemId"]
  GETTABLEKS R21 R6 K13 ["item"]
  CALL R20 1 1
  GETTABLE R18 R19 R20
  GETTABLEKS R20 R15 K40 ["Arrow"]
  GETTABLEKS R19 R20 K41 ["Size"]
  GETTABLEKS R21 R6 K42 ["depth"]
  GETUPVAL R22 0
  LOADK R24 K43 ["Indent"]
  NAMECALL R22 R22 K15 ["GetAttribute"]
  CALL R22 2 1
  MUL R20 R21 R22
  GETTABLEKS R22 R1 K3 ["ColumnIndex"]
  JUMPIFEQKN R22 K10 [1] [+2]
  LOADB R21 0 +1
  LOADB R21 1
  MOVE R22 R21
  JUMPIFNOT R22 [+2]
  GETTABLEKS R22 R6 K44 ["hasChildren"]
  JUMPIFNOT R21 [+2]
  MOVE R23 R20
  JUMP [+1]
  LOADN R23 0
  LOADNIL R24
  FASTCALL1 TYPEOF R8 [+3]
  MOVE R26 R8
  GETIMPORT R25 K18 [typeof]
  CALL R25 1 1
  JUMPIFNOTEQKS R25 K19 ["table"] [+113]
  GETTABLEKS R25 R8 K45 ["Actions"]
  JUMPIFNOT R25 [+109]
  ADD R23 R23 R10
  NEWTABLE R24 0 0
  GETIMPORT R25 K47 [ipairs]
  GETTABLEKS R26 R8 K45 ["Actions"]
  CALL R25 1 3
  FORGPREP_INEXT R25
  GETTABLEKS R30 R29 K48 ["Id"]
  GETUPVAL R33 3
  GETTABLEKS R32 R33 K49 ["LAYERVIEW_ACTIONS"]
  GETTABLEKS R31 R32 K50 ["NoOp"]
  JUMPIFNOTEQ R30 R31 [+20]
  LOADK R31 K51 ["Action "]
  MOVE R32 R28
  CONCAT R30 R31 R32
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K52 ["createElement"]
  GETUPVAL R32 5
  NEWTABLE R33 2 0
  SETTABLEKS R28 R33 K53 ["LayoutOrder"]
  GETUPVAL R35 4
  GETTABLEKS R34 R35 K54 ["Tag"]
  LOADK R35 K55 ["ActionIcon"]
  SETTABLE R35 R33 R34
  CALL R31 2 1
  SETTABLE R31 R24 R30
  JUMP [+68]
  GETTABLEKS R30 R29 K48 ["Id"]
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K52 ["createElement"]
  GETUPVAL R32 6
  NEWTABLE R33 8 0
  LOADK R34 K56 ["Round"]
  SETTABLEKS R34 R33 K29 ["Style"]
  GETIMPORT R34 K59 [UDim2.fromOffset]
  MOVE R35 R9
  MOVE R36 R9
  CALL R34 2 1
  SETTABLEKS R34 R33 K41 ["Size"]
  SETTABLEKS R28 R33 K53 ["LayoutOrder"]
  NEWCLOSURE R34 P0
  CAPTURE VAL R7
  CAPTURE VAL R29
  CAPTURE VAL R6
  CAPTURE VAL R1
  SETTABLEKS R34 R33 K60 ["OnClick"]
  GETUPVAL R35 4
  GETTABLEKS R34 R35 K54 ["Tag"]
  LOADK R35 K55 ["ActionIcon"]
  SETTABLE R35 R33 R34
  DUPTABLE R34 K62 [{"Icon", "Tooltip"}]
  GETUPVAL R36 4
  GETTABLEKS R35 R36 K52 ["createElement"]
  GETUPVAL R36 7
  DUPTABLE R37 K64 [{"Image"}]
  GETTABLEKS R38 R29 K61 ["Icon"]
  SETTABLEKS R38 R37 K63 ["Image"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K61 ["Icon"]
  GETTABLEKS R36 R29 K24 ["Tooltip"]
  JUMPIFNOT R36 [+15]
  GETUPVAL R36 4
  GETTABLEKS R35 R36 K52 ["createElement"]
  GETUPVAL R36 8
  DUPTABLE R37 K66 [{"Text"}]
  LOADK R40 K67 ["Tooltips"]
  GETTABLEKS R41 R29 K24 ["Tooltip"]
  NAMECALL R38 R2 K68 ["getText"]
  CALL R38 3 1
  SETTABLEKS R38 R37 K65 ["Text"]
  CALL R35 2 1
  JUMP [+1]
  LOADNIL R35
  SETTABLEKS R35 R34 K24 ["Tooltip"]
  CALL R31 3 1
  SETTABLE R31 R24 R30
  ADD R30 R9 R10
  ADD R23 R23 R30
  FORGLOOP R25 2 [inext] [-99]
  LOADN R25 0
  JUMPIFNOT R22 [+4]
  GETTABLEKS R27 R15 K16 ["CellSpacing"]
  ADD R26 R27 R19
  ADD R25 R25 R26
  GETIMPORT R26 K69 [UDim2.new]
  LOADN R27 1
  MINUS R28 R25
  LOADN R29 1
  LOADN R30 0
  CALL R26 4 1
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K52 ["createElement"]
  GETUPVAL R28 5
  NEWTABLE R29 4 0
  LOADK R30 K70 ["Box"]
  SETTABLEKS R30 R29 K29 ["Style"]
  GETIMPORT R30 K69 [UDim2.new]
  GETTABLEKS R31 R5 K71 ["Scale"]
  GETTABLEKS R32 R5 K72 ["Offset"]
  LOADN R33 1
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K41 ["Size"]
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K73 ["Change"]
  GETTABLEKS R30 R31 K74 ["AbsoluteSize"]
  GETTABLEKS R31 R0 K75 ["onAbsoluteSizeChanged"]
  SETTABLE R31 R29 R30
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K54 ["Tag"]
  GETUPVAL R31 9
  LOADK R32 K76 ["LayerViewCell"]
  GETTABLEKS R34 R6 K42 ["depth"]
  JUMPIFNOTEQKN R34 K77 [0] [+3]
  LOADK R33 K78 ["Section"]
  JUMP [+1]
  LOADNIL R33
  CALL R31 2 1
  SETTABLE R31 R29 R30
  DUPTABLE R30 K81 [{"Left", "Right"}]
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K52 ["createElement"]
  GETUPVAL R32 5
  NEWTABLE R33 4 0
  GETTABLEKS R34 R1 K3 ["ColumnIndex"]
  SETTABLEKS R34 R33 K53 ["LayoutOrder"]
  GETIMPORT R34 K69 [UDim2.new]
  LOADN R35 1
  MINUS R36 R23
  LOADN R37 1
  LOADN R38 0
  CALL R34 4 1
  SETTABLEKS R34 R33 K41 ["Size"]
  JUMPIFNOT R21 [+6]
  GETIMPORT R34 K59 [UDim2.fromOffset]
  MOVE R35 R20
  LOADN R36 0
  CALL R34 2 1
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K82 ["Position"]
  GETUPVAL R35 4
  GETTABLEKS R34 R35 K54 ["Tag"]
  LOADK R35 K83 ["X-RowS X-Middle"]
  SETTABLE R35 R33 R34
  DUPTABLE R34 K85 [{"Toggle", "Text"}]
  JUMPIFNOT R22 [+73]
  GETUPVAL R36 4
  GETTABLEKS R35 R36 K52 ["createElement"]
  GETUPVAL R36 5
  DUPTABLE R37 K87 [{"AutomaticSize", "LayoutOrder"}]
  GETIMPORT R38 K90 [Enum.AutomaticSize.XY]
  SETTABLEKS R38 R37 K86 ["AutomaticSize"]
  LOADN R38 1
  SETTABLEKS R38 R37 K53 ["LayoutOrder"]
  DUPTABLE R38 K91 [{"Icon"}]
  GETUPVAL R40 4
  GETTABLEKS R39 R40 K52 ["createElement"]
  LOADK R40 K92 ["ImageButton"]
  NEWTABLE R41 8 0
  GETIMPORT R42 K59 [UDim2.fromOffset]
  MOVE R43 R19
  MOVE R44 R19
  CALL R42 2 1
  SETTABLEKS R42 R41 K41 ["Size"]
  LOADN R42 1
  SETTABLEKS R42 R41 K93 ["BackgroundTransparency"]
  GETTABLEKS R43 R15 K40 ["Arrow"]
  GETTABLEKS R42 R43 K63 ["Image"]
  SETTABLEKS R42 R41 K63 ["Image"]
  GETTABLEKS R43 R15 K40 ["Arrow"]
  GETTABLEKS R42 R43 K94 ["Color"]
  SETTABLEKS R42 R41 K95 ["ImageColor3"]
  GETIMPORT R42 K97 [Vector2.new]
  MOVE R43 R19
  MOVE R44 R19
  CALL R42 2 1
  SETTABLEKS R42 R41 K98 ["ImageRectSize"]
  JUMPIFNOT R18 [+5]
  GETTABLEKS R43 R15 K40 ["Arrow"]
  GETTABLEKS R42 R43 K99 ["ExpandedOffset"]
  JUMP [+4]
  GETTABLEKS R43 R15 K40 ["Arrow"]
  GETTABLEKS R42 R43 K100 ["CollapsedOffset"]
  SETTABLEKS R42 R41 K101 ["ImageRectOffset"]
  GETUPVAL R44 4
  GETTABLEKS R43 R44 K102 ["Event"]
  GETTABLEKS R42 R43 K103 ["Activated"]
  GETTABLEKS R43 R0 K104 ["onToggle"]
  SETTABLE R43 R41 R42
  CALL R39 2 1
  SETTABLEKS R39 R38 K61 ["Icon"]
  CALL R35 3 1
  JUMP [+1]
  LOADNIL R35
  SETTABLEKS R35 R34 K84 ["Toggle"]
  JUMPIFNOT R12 [+26]
  GETTABLEKS R36 R8 K105 ["Disabled"]
  JUMPIF R36 [+23]
  GETTABLEKS R35 R0 K106 ["getPropertyCell"]
  DUPTABLE R36 K109 [{"OnDoubleClick", "OnPressed", "Schema", "Size", "Value"}]
  GETTABLEKS R37 R0 K110 ["onDoubleClick"]
  SETTABLEKS R37 R36 K107 ["OnDoubleClick"]
  GETTABLEKS R37 R0 K111 ["onPressed"]
  SETTABLEKS R37 R36 K108 ["OnPressed"]
  GETTABLEKS R37 R8 K23 ["Schema"]
  SETTABLEKS R37 R36 K23 ["Schema"]
  SETTABLEKS R26 R36 K41 ["Size"]
  GETTABLEKS R37 R8 K20 ["Value"]
  SETTABLEKS R37 R36 K20 ["Value"]
  CALL R35 1 1
  JUMP [+28]
  GETUPVAL R36 4
  GETTABLEKS R35 R36 K52 ["createElement"]
  GETUPVAL R36 10
  DUPTABLE R37 K114 [{"LayoutOrder", "Size", "Position", "Text", "TextXAlignment", "ref"}]
  LOADN R38 3
  SETTABLEKS R38 R37 K53 ["LayoutOrder"]
  SETTABLEKS R26 R37 K41 ["Size"]
  GETIMPORT R38 K59 [UDim2.fromOffset]
  LOADN R39 5
  LOADN R40 0
  CALL R38 2 1
  SETTABLEKS R38 R37 K82 ["Position"]
  SETTABLEKS R11 R37 K65 ["Text"]
  GETIMPORT R38 K115 [Enum.TextXAlignment.Left]
  SETTABLEKS R38 R37 K112 ["TextXAlignment"]
  GETTABLEKS R38 R0 K116 ["textRef"]
  SETTABLEKS R38 R37 K113 ["ref"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K65 ["Text"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K79 ["Left"]
  JUMPIFNOT R24 [+34]
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K52 ["createElement"]
  GETUPVAL R32 5
  NEWTABLE R33 4 0
  GETIMPORT R34 K97 [Vector2.new]
  LOADN R35 1
  LOADK R36 K117 [0.5]
  CALL R34 2 1
  SETTABLEKS R34 R33 K118 ["AnchorPoint"]
  GETIMPORT R34 K90 [Enum.AutomaticSize.XY]
  SETTABLEKS R34 R33 K86 ["AutomaticSize"]
  GETIMPORT R34 K69 [UDim2.new]
  LOADN R35 1
  LOADN R36 253
  LOADK R37 K117 [0.5]
  LOADN R38 0
  CALL R34 4 1
  SETTABLEKS R34 R33 K82 ["Position"]
  GETUPVAL R35 4
  GETTABLEKS R34 R35 K54 ["Tag"]
  LOADK R35 K119 ["X-RowS"]
  SETTABLE R35 R33 R34
  MOVE R34 R24
  CALL R31 3 1
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K80 ["Right"]
  CALL R27 3 -1
  RETURN R27 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Analytics"]
  GETTABLEKS R7 R4 K13 ["Localization"]
  GETTABLEKS R8 R1 K14 ["join"]
  GETTABLEKS R9 R2 K15 ["Styling"]
  GETTABLEKS R10 R9 K16 ["joinTags"]
  GETTABLEKS R11 R2 K17 ["UI"]
  GETTABLEKS R12 R11 K18 ["Button"]
  GETTABLEKS R13 R11 K19 ["Image"]
  GETTABLEKS R14 R11 K20 ["Pane"]
  GETTABLEKS R15 R11 K21 ["PropertyCell"]
  GETTABLEKS R16 R11 K22 ["Tooltip"]
  GETTABLEKS R17 R11 K23 ["TextLabel"]
  GETTABLEKS R18 R11 K24 ["DEPRECATED_TextInput"]
  GETTABLEKS R20 R2 K25 ["Util"]
  GETTABLEKS R19 R20 K26 ["StyleModifier"]
  GETTABLEKS R21 R0 K27 ["Src"]
  GETTABLEKS R20 R21 K25 ["Util"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R20 K28 ["Constants"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETIMPORT R24 K1 [script]
  GETTABLEKS R23 R24 K29 ["styles"]
  CALL R22 1 1
  GETTABLEKS R23 R3 K30 ["PureComponent"]
  LOADK R25 K31 ["LayerViewCell"]
  NAMECALL R23 R23 K32 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K33 [PROTO_10]
  CAPTURE VAL R3
  CAPTURE VAL R15
  SETTABLEKS R24 R23 K34 ["init"]
  DUPCLOSURE R24 K35 [PROTO_11]
  SETTABLEKS R24 R23 K36 ["didUpdate"]
  DUPCLOSURE R24 K37 [PROTO_14]
  SETTABLEKS R24 R23 K38 ["didMount"]
  DUPCLOSURE R24 K39 [PROTO_15]
  SETTABLEKS R24 R23 K40 ["willUnmount"]
  DUPCLOSURE R24 K41 [PROTO_17]
  SETTABLEKS R24 R23 K42 ["shouldComponentUpdate"]
  DUPCLOSURE R24 K43 [PROTO_19]
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R17
  SETTABLEKS R24 R23 K44 ["render"]
  MOVE R24 R5
  DUPTABLE R25 K45 [{"Analytics", "Localization"}]
  SETTABLEKS R6 R25 K12 ["Analytics"]
  SETTABLEKS R7 R25 K13 ["Localization"]
  CALL R24 1 1
  MOVE R25 R23
  CALL R24 1 1
  MOVE R23 R24
  RETURN R23 1
