PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["plotToViewPosition"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Position"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["PlotRect"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["rectContains"]
  GETUPVAL R1 1
  GETIMPORT R2 K3 [Rect.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 1
  LOADN R6 1
  CALL R2 4 1
  LOADK R3 K4 [0.001]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["OnHoverStart"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["OnHoverStart"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["OnHoverEnd"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["OnHoverEnd"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnMoved"]
  JUMPIFNOT R1 [+16]
  GETIMPORT R1 K3 [Vector2.new]
  GETTABLEKS R3 R0 K4 ["Position"]
  GETTABLEKS R2 R3 K5 ["X"]
  GETTABLEKS R4 R0 K4 ["Position"]
  GETTABLEKS R3 R4 K6 ["Y"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnMoved"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnDragEnd"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnDragEnd"]
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["OnDragStart"]
  JUMPIFNOT R2 [+19]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["OnDragStart"]
  CALL R2 0 0
  RETURN R0 0
  GETTABLEKS R2 R1 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseButton2]
  JUMPIFNOTEQ R2 R3 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["OnRightClick"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["OnRightClick"]
  CALL R2 0 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NEWTABLE R5 0 2
  GETTABLEKS R6 R0 K0 ["Position"]
  GETTABLEKS R7 R0 K1 ["PlotRect"]
  SETLIST R5 R6 2 [1]
  CALL R3 2 1
  GETUPVAL R4 1
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R5 3
  NEWCLOSURE R6 P2
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R7 0 2
  GETTABLEKS R8 R0 K2 ["OnHoverStart"]
  MOVE R9 R2
  SETLIST R7 R8 2 [1]
  CALL R5 2 1
  GETUPVAL R6 3
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R8 0 2
  GETTABLEKS R9 R0 K3 ["OnHoverEnd"]
  MOVE R10 R2
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  GETUPVAL R7 3
  NEWCLOSURE R8 P4
  CAPTURE VAL R0
  NEWTABLE R9 0 1
  GETTABLEKS R10 R0 K4 ["OnMoved"]
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R8 3
  NEWCLOSURE R9 P5
  CAPTURE VAL R0
  NEWTABLE R10 0 1
  GETTABLEKS R11 R0 K5 ["OnDragEnd"]
  SETLIST R10 R11 1 [1]
  CALL R8 2 1
  GETUPVAL R9 3
  NEWCLOSURE R10 P6
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  NEWTABLE R11 0 2
  GETTABLEKS R12 R0 K6 ["OnDragStart"]
  GETTABLEKS R13 R0 K7 ["OnRightClick"]
  SETLIST R11 R12 2 [1]
  CALL R9 2 1
  LOADK R10 K8 [""]
  GETTABLEKS R11 R0 K9 ["IsDragging"]
  JUMPIFNOT R11 [+2]
  LOADK R10 K10 ["Pressed"]
  JUMP [+10]
  GETTABLEKS R11 R0 K11 ["Selected"]
  JUMPIFNOT R11 [+3]
  JUMPIFNOT R1 [+2]
  LOADK R10 K12 ["Hovered"]
  JUMP [+4]
  GETTABLEKS R11 R0 K11 ["Selected"]
  JUMPIFNOT R11 [+1]
  LOADK R10 K11 ["Selected"]
  JUMPIF R4 [+3]
  GETTABLEKS R11 R0 K9 ["IsDragging"]
  JUMPIFNOT R11 [+84]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K13 ["createElement"]
  LOADK R12 K14 ["ImageButton"]
  NEWTABLE R13 4 0
  GETIMPORT R14 K17 [UDim2.fromScale]
  GETTABLEKS R15 R3 K18 ["X"]
  GETTABLEKS R16 R3 K19 ["Y"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K0 ["Position"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K20 ["Tag"]
  GETUPVAL R15 6
  LOADK R16 K21 ["CurvePointOuter"]
  MOVE R17 R10
  CALL R15 2 1
  SETTABLE R15 R13 R14
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K22 ["Event"]
  GETTABLEKS R14 R15 K23 ["InputBegan"]
  SETTABLE R9 R13 R14
  DUPTABLE R14 K27 [{"HoverArea", "DragListener", "Inner"}]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K13 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K31 [{"Cursor", "MouseEnter", "MouseLeave"}]
  GETUPVAL R18 8
  SETTABLEKS R18 R17 K28 ["Cursor"]
  SETTABLEKS R5 R17 K29 ["MouseEnter"]
  SETTABLEKS R6 R17 K30 ["MouseLeave"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["HoverArea"]
  GETTABLEKS R15 R0 K9 ["IsDragging"]
  JUMPIFNOT R15 [+10]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K13 ["createElement"]
  GETUPVAL R16 9
  DUPTABLE R17 K34 [{"OnDragMoved", "OnDragEnded"}]
  SETTABLEKS R7 R17 K32 ["OnDragMoved"]
  SETTABLEKS R8 R17 K33 ["OnDragEnded"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["DragListener"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K13 ["createElement"]
  LOADK R16 K14 ["ImageButton"]
  NEWTABLE R17 2 0
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K20 ["Tag"]
  GETUPVAL R19 6
  LOADK R20 K35 ["CurvePoint"]
  MOVE R21 R10
  CALL R19 2 1
  SETTABLE R19 R17 R18
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K22 ["Event"]
  GETTABLEKS R18 R19 K23 ["InputBegan"]
  SETTABLE R9 R17 R18
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["Inner"]
  CALL R11 3 1
  RETURN R11 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["AttenuationCurveEditor"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useCallback"]
  GETTABLEKS R4 R2 K10 ["useMemo"]
  GETTABLEKS R5 R2 K11 ["useState"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R1 K7 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K13 ["Styling"]
  GETTABLEKS R7 R8 K14 ["joinTags"]
  GETTABLEKS R9 R6 K15 ["UI"]
  GETTABLEKS R8 R9 K16 ["DragListener"]
  GETTABLEKS R10 R6 K15 ["UI"]
  GETTABLEKS R9 R10 K17 ["HoverArea"]
  GETTABLEKS R11 R6 K18 ["Util"]
  GETTABLEKS R10 R11 K19 ["isInputMainPress"]
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R1 K20 ["Src"]
  GETTABLEKS R13 R14 K21 ["Resources"]
  GETTABLEKS R12 R13 K22 ["PluginStyles"]
  CALL R11 1 1
  LOADK R14 K23 ["CursorOpenedHand"]
  NAMECALL R12 R11 K24 ["GetAttribute"]
  CALL R12 2 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R14 R0 K25 ["PlotRectUtil"]
  CALL R13 1 1
  DUPCLOSURE R14 K26 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R8
  RETURN R14 1
