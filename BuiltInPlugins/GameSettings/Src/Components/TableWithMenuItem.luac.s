PROTO_0:
  NEWTABLE R3 0 0
  LENGTH R6 R1
  ADDK R5 R6 K0 [1]
  DIVRK R4 R0 K5 ["BackgroundTransparency"]
  LOADN R7 0
  LENGTH R5 R1
  LOADN R6 1
  FORNPREP R5
  GETTABLE R8 R1 R7
  LOADNIL R9
  JUMPIFNOTEQKN R7 K1 [0] [+62]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  LOADK R11 K3 ["Frame"]
  DUPTABLE R12 K6 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R13 K9 [UDim2.new]
  LOADN R14 0
  GETTABLEKS R17 R0 K10 ["table"]
  GETTABLEKS R16 R17 K11 ["icon"]
  GETTABLEKS R15 R16 K12 ["height"]
  LOADN R16 0
  GETTABLEKS R19 R0 K10 ["table"]
  GETTABLEKS R18 R19 K11 ["icon"]
  GETTABLEKS R17 R18 K12 ["height"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K4 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K5 ["BackgroundTransparency"]
  DUPTABLE R13 K14 [{"Icon"}]
  SETTABLEKS R2 R13 K13 ["Icon"]
  CALL R10 3 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  LOADK R12 K3 ["Frame"]
  DUPTABLE R13 K16 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  SETTABLEKS R7 R13 K15 ["LayoutOrder"]
  GETIMPORT R14 K9 [UDim2.new]
  MOVE R15 R4
  LOADN R16 0
  LOADN R17 0
  GETTABLEKS R20 R0 K10 ["table"]
  GETTABLEKS R19 R20 K11 ["icon"]
  GETTABLEKS R18 R19 K12 ["height"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K4 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K5 ["BackgroundTransparency"]
  DUPTABLE R14 K14 [{"Icon"}]
  SETTABLEKS R10 R14 K13 ["Icon"]
  CALL R11 3 1
  MOVE R9 R11
  JUMP [+130]
  LENGTH R10 R1
  JUMPIFEQ R7 R10 [+62]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  LOADK R11 K17 ["TextLabel"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K18 ["Dictionary"]
  GETTABLEKS R12 R13 K19 ["join"]
  GETTABLEKS R14 R0 K20 ["fontStyle"]
  GETTABLEKS R13 R14 K21 ["Smaller"]
  DUPTABLE R14 K25 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "TextXAlignment", "TextTruncate"}]
  GETIMPORT R15 K9 [UDim2.new]
  MOVE R16 R4
  LOADN R17 0
  LOADN R18 0
  GETTABLEKS R21 R0 K10 ["table"]
  GETTABLEKS R20 R21 K26 ["item"]
  GETTABLEKS R19 R20 K12 ["height"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K4 ["Size"]
  SETTABLEKS R7 R14 K15 ["LayoutOrder"]
  SETTABLEKS R8 R14 K22 ["Text"]
  LOADN R15 1
  SETTABLEKS R15 R14 K5 ["BackgroundTransparency"]
  GETIMPORT R15 K29 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K23 ["TextXAlignment"]
  GETIMPORT R15 K31 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R15 R14 K24 ["TextTruncate"]
  CALL R12 2 1
  DUPTABLE R13 K33 [{"Tooltip"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K2 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K35 [{"Text", "Enabled"}]
  SETTABLEKS R8 R16 K22 ["Text"]
  LOADB R17 1
  SETTABLEKS R17 R16 K34 ["Enabled"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K32 ["Tooltip"]
  CALL R10 3 1
  MOVE R9 R10
  JUMP [+66]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  LOADK R11 K17 ["TextLabel"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K18 ["Dictionary"]
  GETTABLEKS R12 R13 K19 ["join"]
  GETTABLEKS R14 R0 K20 ["fontStyle"]
  GETTABLEKS R13 R14 K21 ["Smaller"]
  DUPTABLE R14 K25 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "TextXAlignment", "TextTruncate"}]
  GETIMPORT R15 K9 [UDim2.new]
  MOVE R16 R4
  GETTABLEKS R20 R0 K10 ["table"]
  GETTABLEKS R19 R20 K36 ["menu"]
  GETTABLEKS R18 R19 K37 ["buttonSize"]
  MINUS R17 R18
  LOADN R18 0
  GETTABLEKS R21 R0 K10 ["table"]
  GETTABLEKS R20 R21 K26 ["item"]
  GETTABLEKS R19 R20 K12 ["height"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K4 ["Size"]
  SETTABLEKS R7 R14 K15 ["LayoutOrder"]
  SETTABLEKS R8 R14 K22 ["Text"]
  LOADN R15 1
  SETTABLEKS R15 R14 K5 ["BackgroundTransparency"]
  GETIMPORT R15 K29 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K23 ["TextXAlignment"]
  GETIMPORT R15 K31 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R15 R14 K24 ["TextTruncate"]
  CALL R12 2 1
  DUPTABLE R13 K33 [{"Tooltip"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K2 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K35 [{"Text", "Enabled"}]
  SETTABLEKS R8 R16 K22 ["Text"]
  LOADB R17 1
  SETTABLEKS R17 R16 K34 ["Enabled"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K32 ["Tooltip"]
  CALL R10 3 1
  MOVE R9 R10
  SETTABLE R9 R3 R7
  FORNLOOP R5
  RETURN R3 1

PROTO_1:
  NEWTABLE R2 0 0
  LOADN R5 1
  LENGTH R3 R1
  LOADN R4 1
  FORNPREP R3
  GETTABLE R6 R1 R5
  LOADNIL R7
  LENGTH R8 R1
  JUMPIFEQ R5 R8 [+63]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K1 ["TextLabel"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["Dictionary"]
  GETTABLEKS R10 R11 K3 ["join"]
  GETTABLEKS R12 R0 K4 ["fontStyle"]
  GETTABLEKS R11 R12 K5 ["Smaller"]
  DUPTABLE R12 K12 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "TextXAlignment", "TextTruncate"}]
  GETIMPORT R13 K15 [UDim2.new]
  LENGTH R15 R1
  DIVRK R14 R16 K15 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  GETTABLEKS R19 R0 K17 ["table"]
  GETTABLEKS R18 R19 K18 ["item"]
  GETTABLEKS R17 R18 K19 ["height"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K6 ["Size"]
  SETTABLEKS R5 R12 K7 ["LayoutOrder"]
  SETTABLEKS R6 R12 K8 ["Text"]
  LOADN R13 1
  SETTABLEKS R13 R12 K9 ["BackgroundTransparency"]
  GETIMPORT R13 K22 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K10 ["TextXAlignment"]
  GETIMPORT R13 K24 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R13 R12 K11 ["TextTruncate"]
  CALL R10 2 1
  DUPTABLE R11 K26 [{"Tooltip"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K28 [{"Text", "Enabled"}]
  SETTABLEKS R6 R14 K8 ["Text"]
  LOADB R15 1
  SETTABLEKS R15 R14 K27 ["Enabled"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K25 ["Tooltip"]
  CALL R8 3 1
  MOVE R7 R8
  JUMP [+67]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K1 ["TextLabel"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["Dictionary"]
  GETTABLEKS R10 R11 K3 ["join"]
  GETTABLEKS R12 R0 K4 ["fontStyle"]
  GETTABLEKS R11 R12 K5 ["Smaller"]
  DUPTABLE R12 K12 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "TextXAlignment", "TextTruncate"}]
  GETIMPORT R13 K15 [UDim2.new]
  LENGTH R15 R1
  DIVRK R14 R16 K15 [UDim2.new]
  GETTABLEKS R18 R0 K17 ["table"]
  GETTABLEKS R17 R18 K29 ["menu"]
  GETTABLEKS R16 R17 K30 ["buttonSize"]
  MINUS R15 R16
  LOADN R16 0
  GETTABLEKS R19 R0 K17 ["table"]
  GETTABLEKS R18 R19 K18 ["item"]
  GETTABLEKS R17 R18 K19 ["height"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K6 ["Size"]
  SETTABLEKS R5 R12 K7 ["LayoutOrder"]
  SETTABLEKS R6 R12 K8 ["Text"]
  LOADN R13 1
  SETTABLEKS R13 R12 K9 ["BackgroundTransparency"]
  GETIMPORT R13 K22 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K10 ["TextXAlignment"]
  GETIMPORT R13 K24 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R13 R12 K11 ["TextTruncate"]
  CALL R10 2 1
  DUPTABLE R11 K26 [{"Tooltip"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K28 [{"Text", "Enabled"}]
  SETTABLEKS R6 R14 K8 ["Text"]
  LOADB R15 1
  SETTABLEKS R15 R14 K27 ["Enabled"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K25 ["Tooltip"]
  CALL R8 3 1
  MOVE R7 R8
  SETTABLE R7 R2 R5
  FORNLOOP R3
  RETURN R2 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnItemClicked"]
  GETTABLEKS R2 R0 K2 ["Key"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["hideMenu"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showMenu"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showMenu"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"showMenu", "menuItem"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showMenu"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["None"]
  SETTABLEKS R3 R2 K1 ["menuItem"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"menuItem"}]
  SETTABLEKS R0 R3 K0 ["menuItem"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["menuItem"]
  JUMPIFNOTEQ R1 R0 [+11]
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"menuItem"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["None"]
  SETTABLEKS R4 R3 K1 ["menuItem"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K3 [{"showMenu", "isButtonHovered", "menuItem"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["showMenu"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["isButtonHovered"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["menuItem"]
  SETTABLEKS R1 R0 K4 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K6 ["buttonRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onItemClicked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["showMenu"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K8 ["hideMenu"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["onMenuItemEnter"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K10 ["onMenuItemLeave"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onMenuItemEnter"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onMenuItemLeave"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R6 R1 K0 ["Key"]
  GETTABLEKS R7 R1 K1 ["Text"]
  GETTABLEKS R10 R0 K2 ["state"]
  GETTABLEKS R9 R10 K3 ["menuItem"]
  JUMPIFEQ R9 R6 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETUPVAL R9 0
  MOVE R11 R7
  GETTABLEKS R14 R4 K4 ["fontStyle"]
  GETTABLEKS R13 R14 K5 ["Normal"]
  GETTABLEKS R12 R13 K6 ["TextSize"]
  GETTABLEKS R15 R4 K4 ["fontStyle"]
  GETTABLEKS R14 R15 K5 ["Normal"]
  GETTABLEKS R13 R14 K7 ["Font"]
  GETIMPORT R14 K10 [Vector2.new]
  MOVE R15 R5
  LOADK R16 K11 [∞]
  CALL R14 2 -1
  NAMECALL R9 R9 K12 ["GetTextSize"]
  CALL R9 -1 1
  GETTABLEKS R11 R4 K13 ["dropDownEntry"]
  GETTABLEKS R10 R11 K14 ["background"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R11 R4 K13 ["dropDownEntry"]
  GETTABLEKS R10 R11 K15 ["hovered"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K16 ["createElement"]
  LOADK R12 K17 ["ImageButton"]
  NEWTABLE R13 8 0
  GETIMPORT R14 K19 [UDim2.new]
  LOADN R15 0
  MOVE R16 R5
  LOADN R17 0
  GETTABLEKS R19 R9 K20 ["Y"]
  GETTABLEKS R22 R4 K21 ["table"]
  GETTABLEKS R21 R22 K22 ["menu"]
  GETTABLEKS R20 R21 K23 ["buttonPaddingY"]
  ADD R18 R19 R20
  CALL R14 4 1
  SETTABLEKS R14 R13 K24 ["Size"]
  SETTABLEKS R10 R13 K25 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K26 ["BorderSizePixel"]
  SETTABLEKS R2 R13 K27 ["LayoutOrder"]
  LOADB R14 0
  SETTABLEKS R14 R13 K28 ["AutoButtonColor"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K29 ["Event"]
  GETTABLEKS R14 R15 K30 ["Activated"]
  SETTABLE R3 R13 R14
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K29 ["Event"]
  GETTABLEKS R14 R15 K31 ["MouseEnter"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  CAPTURE VAL R6
  SETTABLE R15 R13 R14
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K29 ["Event"]
  GETTABLEKS R14 R15 K32 ["MouseLeave"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R0
  CAPTURE VAL R6
  SETTABLE R15 R13 R14
  NEWTABLE R14 1 1
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K16 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K34 [{"Cursor"}]
  LOADK R18 K35 ["PointingHand"]
  SETTABLEKS R18 R17 K33 ["Cursor"]
  CALL R15 2 1
  SETLIST R14 R15 1 [1]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K16 ["createElement"]
  LOADK R17 K36 ["TextLabel"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K37 ["Dictionary"]
  GETTABLEKS R18 R19 K38 ["join"]
  GETTABLEKS R20 R4 K4 ["fontStyle"]
  GETTABLEKS R19 R20 K39 ["Smaller"]
  DUPTABLE R20 K44 [{"Size", "Position", "AnchorPoint", "Text", "TextXAlignment", "BackgroundTransparency"}]
  GETIMPORT R21 K19 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  GETTABLEKS R25 R9 K20 ["Y"]
  CALL R21 4 1
  SETTABLEKS R21 R20 K24 ["Size"]
  GETIMPORT R21 K19 [UDim2.new]
  LOADN R22 0
  GETTABLEKS R24 R4 K21 ["table"]
  GETTABLEKS R23 R24 K45 ["textPadding"]
  LOADK R24 K46 [0.5]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K40 ["Position"]
  GETIMPORT R21 K10 [Vector2.new]
  LOADN R22 0
  LOADK R23 K46 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K41 ["AnchorPoint"]
  SETTABLEKS R7 R20 K1 ["Text"]
  GETIMPORT R21 K49 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K42 ["TextXAlignment"]
  LOADN R21 1
  SETTABLEKS R21 R20 K43 ["BackgroundTransparency"]
  CALL R18 2 -1
  CALL R16 -1 1
  SETTABLEKS R16 R14 K50 ["Label"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_11:
  GETUPVAL R3 0
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  GETUPVAL R8 1
  GETUPVAL R9 2
  NAMECALL R3 R3 K0 ["renderMenuItem"]
  CALL R3 6 -1
  RETURN R3 -1

PROTO_12:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["RowData"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["Icon"]
  JUMPIFNOT R6 [+6]
  GETUPVAL R7 0
  MOVE R8 R3
  MOVE R9 R4
  MOVE R10 R6
  CALL R7 3 1
  JUMPIF R7 [+4]
  GETUPVAL R7 1
  MOVE R8 R3
  MOVE R9 R4
  CALL R7 2 1
  GETTABLEKS R8 R2 K6 ["showMenu"]
  GETTABLEKS R9 R1 K7 ["MenuItems"]
  LOADN R10 0
  GETIMPORT R11 K9 [ipairs]
  MOVE R12 R9
  CALL R11 1 3
  FORGPREP_INEXT R11
  GETUPVAL R16 2
  GETTABLEKS R18 R15 K10 ["Text"]
  GETTABLEKS R21 R3 K11 ["fontStyle"]
  GETTABLEKS R20 R21 K12 ["Normal"]
  GETTABLEKS R19 R20 K13 ["TextSize"]
  GETTABLEKS R22 R3 K11 ["fontStyle"]
  GETTABLEKS R21 R22 K12 ["Normal"]
  GETTABLEKS R20 R21 K14 ["Font"]
  GETIMPORT R21 K17 [Vector2.new]
  LOADK R22 K18 [∞]
  LOADK R23 K18 [∞]
  CALL R21 2 -1
  NAMECALL R16 R16 K19 ["GetTextSize"]
  CALL R16 -1 1
  GETTABLEKS R18 R16 K20 ["X"]
  GETTABLEKS R21 R3 K21 ["table"]
  GETTABLEKS R20 R21 K22 ["menu"]
  GETTABLEKS R19 R20 K23 ["itemPadding"]
  ADD R17 R18 R19
  FASTCALL2 MATH_MAX R10 R17 [+5]
  MOVE R19 R10
  MOVE R20 R17
  GETIMPORT R18 K26 [math.max]
  CALL R18 2 1
  MOVE R10 R18
  FORGLOOP R11 2 [inext] [-41]
  LENGTH R12 R4
  ADDK R11 R12 K27 [1]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K28 ["createElement"]
  LOADK R13 K29 ["ImageButton"]
  NEWTABLE R14 8 0
  GETIMPORT R15 K31 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R19 R3 K21 ["table"]
  GETTABLEKS R18 R19 K22 ["menu"]
  GETTABLEKS R17 R18 K32 ["buttonSize"]
  LOADN R18 0
  GETTABLEKS R21 R3 K21 ["table"]
  GETTABLEKS R20 R21 K22 ["menu"]
  GETTABLEKS R19 R20 K32 ["buttonSize"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K33 ["Size"]
  LENGTH R16 R4
  ADDK R15 R16 K27 [1]
  SETTABLEKS R15 R14 K4 ["LayoutOrder"]
  LOADN R15 1
  SETTABLEKS R15 R14 K34 ["BackgroundTransparency"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K35 ["Ref"]
  GETTABLEKS R16 R0 K36 ["buttonRef"]
  SETTABLE R16 R14 R15
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K37 ["Event"]
  GETTABLEKS R15 R16 K38 ["Activated"]
  GETTABLEKS R16 R0 K6 ["showMenu"]
  SETTABLE R16 R14 R15
  NEWTABLE R15 4 1
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K28 ["createElement"]
  LOADK R18 K39 ["UIPadding"]
  DUPTABLE R19 K41 [{"PaddingBottom"}]
  GETIMPORT R20 K43 [UDim.new]
  LOADN R21 0
  GETTABLEKS R24 R3 K21 ["table"]
  GETTABLEKS R23 R24 K44 ["item"]
  GETTABLEKS R22 R23 K45 ["padding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K40 ["PaddingBottom"]
  CALL R17 2 1
  SETTABLEKS R17 R15 K46 ["Padding"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K28 ["createElement"]
  GETUPVAL R18 4
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K47 ["Dictionary"]
  GETTABLEKS R19 R20 K48 ["join"]
  GETTABLEKS R21 R3 K11 ["fontStyle"]
  GETTABLEKS R20 R21 K12 ["Normal"]
  DUPTABLE R21 K52 [{"Position", "AnchorPoint", "Text", "Font", "BackgroundTransparency", "width"}]
  GETIMPORT R22 K31 [UDim2.new]
  LOADK R23 K53 [0.5]
  LOADN R24 0
  LOADK R25 K53 [0.5]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K49 ["Position"]
  GETIMPORT R22 K17 [Vector2.new]
  LOADK R23 K53 [0.5]
  LOADK R24 K53 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K50 ["AnchorPoint"]
  LOADK R22 K54 ["..."]
  SETTABLEKS R22 R21 K10 ["Text"]
  GETIMPORT R22 K57 [Enum.Font.SourceSansBold]
  SETTABLEKS R22 R21 K14 ["Font"]
  LOADN R22 1
  SETTABLEKS R22 R21 K34 ["BackgroundTransparency"]
  GETTABLEKS R24 R3 K21 ["table"]
  GETTABLEKS R23 R24 K22 ["menu"]
  GETTABLEKS R22 R23 K32 ["buttonSize"]
  SETTABLEKS R22 R21 K51 ["width"]
  CALL R19 2 -1
  CALL R17 -1 1
  SETTABLEKS R17 R15 K58 ["Dots"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K28 ["createElement"]
  GETUPVAL R18 6
  DUPTABLE R19 K65 [{"Hide", "Items", "OnFocusLost", "OnItemActivated", "OnRenderItem", "Width"}]
  NOT R20 R8
  SETTABLEKS R20 R19 K59 ["Hide"]
  SETTABLEKS R9 R19 K60 ["Items"]
  GETTABLEKS R20 R0 K66 ["hideMenu"]
  SETTABLEKS R20 R19 K61 ["OnFocusLost"]
  GETTABLEKS R20 R0 K67 ["onItemClicked"]
  SETTABLEKS R20 R19 K62 ["OnItemActivated"]
  NEWCLOSURE R20 P0
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE REF R10
  SETTABLEKS R20 R19 K63 ["OnRenderItem"]
  SETTABLEKS R10 R19 K64 ["Width"]
  CALL R17 2 1
  SETTABLEKS R17 R15 K68 ["Menu"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K28 ["createElement"]
  GETUPVAL R17 7
  DUPTABLE R18 K70 [{"Cursor"}]
  LOADK R19 K71 ["PointingHand"]
  SETTABLEKS R19 R18 K69 ["Cursor"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  SETTABLE R12 R7 R11
  JUMPIFNOT R6 [+8]
  GETTABLEKS R14 R3 K21 ["table"]
  GETTABLEKS R13 R14 K73 ["icon"]
  GETTABLEKS R12 R13 K74 ["height"]
  ADDK R11 R12 K72 [10]
  JUMPIF R11 [+6]
  GETTABLEKS R13 R3 K21 ["table"]
  GETTABLEKS R12 R13 K44 ["item"]
  GETTABLEKS R11 R12 K74 ["height"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K28 ["createElement"]
  LOADK R13 K75 ["Frame"]
  DUPTABLE R14 K78 [{"Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R15 K31 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  MOVE R19 R11
  CALL R15 4 1
  SETTABLEKS R15 R14 K33 ["Size"]
  GETTABLEKS R17 R3 K21 ["table"]
  GETTABLEKS R16 R17 K44 ["item"]
  GETTABLEKS R15 R16 K79 ["background"]
  SETTABLEKS R15 R14 K76 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K77 ["BorderSizePixel"]
  SETTABLEKS R5 R14 K4 ["LayoutOrder"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K47 ["Dictionary"]
  GETTABLEKS R15 R16 K48 ["join"]
  DUPTABLE R16 K81 [{"RowLayout", "Padding"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K28 ["createElement"]
  LOADK R18 K82 ["UIListLayout"]
  DUPTABLE R19 K87 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R20 K89 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K83 ["FillDirection"]
  GETIMPORT R20 K91 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K84 ["HorizontalAlignment"]
  GETIMPORT R20 K93 [Enum.VerticalAlignment.Center]
  SETTABLEKS R20 R19 K85 ["VerticalAlignment"]
  GETIMPORT R20 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K86 ["SortOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K80 ["RowLayout"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K28 ["createElement"]
  LOADK R18 K39 ["UIPadding"]
  DUPTABLE R19 K97 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R20 K43 [UDim.new]
  LOADN R21 0
  GETTABLEKS R23 R3 K21 ["table"]
  GETTABLEKS R22 R23 K98 ["textPadding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K95 ["PaddingLeft"]
  GETIMPORT R20 K43 [UDim.new]
  LOADN R21 0
  GETTABLEKS R23 R3 K21 ["table"]
  GETTABLEKS R22 R23 K98 ["textPadding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K96 ["PaddingRight"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K46 ["Padding"]
  MOVE R17 R7
  CALL R15 2 -1
  CALL R12 -1 -1
  CLOSEUPVALS R10
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["HoverArea"]
  GETTABLEKS R8 R6 K13 ["DropdownMenu"]
  GETTABLEKS R9 R3 K14 ["Util"]
  GETTABLEKS R11 R9 K15 ["FitFrame"]
  GETTABLEKS R10 R11 K16 ["FitTextLabel"]
  GETTABLEKS R11 R6 K17 ["Tooltip"]
  GETIMPORT R12 K19 [game]
  LOADK R14 K20 ["TextService"]
  NAMECALL R12 R12 K21 ["GetService"]
  CALL R12 2 1
  GETTABLEKS R13 R1 K22 ["PureComponent"]
  LOADK R15 K23 ["TableWithMenuItem"]
  NAMECALL R13 R13 K24 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K25 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R11
  DUPCLOSURE R15 K26 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R11
  DUPCLOSURE R16 K27 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R16 R13 K28 ["init"]
  DUPCLOSURE R16 K29 [PROTO_10]
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R2
  SETTABLEKS R16 R13 K30 ["renderMenuItem"]
  DUPCLOSURE R16 K31 [PROTO_12]
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R16 R13 K32 ["render"]
  MOVE R16 R5
  DUPTABLE R17 K35 [{"Stylizer", "Mouse"}]
  GETTABLEKS R18 R4 K33 ["Stylizer"]
  SETTABLEKS R18 R17 K33 ["Stylizer"]
  GETTABLEKS R18 R4 K34 ["Mouse"]
  SETTABLEKS R18 R17 K34 ["Mouse"]
  CALL R16 1 1
  MOVE R17 R13
  CALL R16 1 1
  MOVE R13 R16
  RETURN R13 1
