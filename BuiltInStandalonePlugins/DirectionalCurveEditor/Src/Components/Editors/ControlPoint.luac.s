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
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["OnMoved"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K4 [Vector2.new]
  GETTABLEKS R3 R0 K5 ["Position"]
  GETTABLEKS R2 R3 K6 ["X"]
  GETTABLEKS R4 R0 K5 ["Position"]
  GETTABLEKS R3 R4 K7 ["Y"]
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K8 ["mouseCoordsToPlotPosition"]
  MOVE R3 R1
  GETUPVAL R4 3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["current"]
  CALL R2 3 1
  GETIMPORT R3 K4 [Vector2.new]
  GETTABLEKS R5 R2 K6 ["X"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K9 ["Min"]
  GETTABLEKS R6 R7 K6 ["X"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K10 ["Max"]
  GETTABLEKS R7 R8 K6 ["X"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K13 [math.clamp]
  CALL R4 3 1
  GETTABLEKS R6 R2 K7 ["Y"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K9 ["Min"]
  GETTABLEKS R7 R8 K7 ["Y"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K10 ["Max"]
  GETTABLEKS R8 R9 K7 ["Y"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K13 [math.clamp]
  CALL R5 3 1
  CALL R3 2 1
  MOVE R2 R3
  JUMPIFNOT R2 [+9]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["OnMoved"]
  JUMPIFNOT R3 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["OnMoved"]
  MOVE R4 R2
  CALL R3 1 0
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
  GETTABLEKS R3 R0 K0 ["PlotRect"]
  GETTABLEKS R4 R0 K1 ["PlotRef"]
  GETUPVAL R5 1
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NEWTABLE R7 0 2
  GETTABLEKS R8 R0 K2 ["Position"]
  GETTABLEKS R9 R0 K0 ["PlotRect"]
  SETLIST R7 R8 2 [1]
  CALL R5 2 1
  GETUPVAL R6 1
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R5
  NEWTABLE R8 0 1
  MOVE R9 R5
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  GETUPVAL R7 3
  NEWCLOSURE R8 P2
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R9 0 1
  GETTABLEKS R10 R0 K3 ["OnHoverStart"]
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R8 3
  NEWCLOSURE R9 P3
  CAPTURE VAL R2
  NEWTABLE R10 0 0
  CALL R8 2 1
  GETUPVAL R9 3
  NEWCLOSURE R10 P4
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K4 ["OnMoved"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  GETUPVAL R10 3
  NEWCLOSURE R11 P5
  CAPTURE VAL R0
  NEWTABLE R12 0 1
  GETTABLEKS R13 R0 K5 ["OnDragEnd"]
  SETLIST R12 R13 1 [1]
  CALL R10 2 1
  GETUPVAL R11 3
  NEWCLOSURE R12 P6
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  NEWTABLE R13 0 2
  GETTABLEKS R14 R0 K6 ["OnDragStart"]
  GETTABLEKS R15 R0 K7 ["OnRightClick"]
  SETLIST R13 R14 2 [1]
  CALL R11 2 1
  LOADK R12 K8 [""]
  GETTABLEKS R13 R0 K9 ["IsDragging"]
  JUMPIFNOT R13 [+2]
  LOADK R12 K10 ["Pressed"]
  JUMP [+7]
  JUMPIFNOT R1 [+2]
  LOADK R12 K11 ["Hovered"]
  JUMP [+4]
  GETTABLEKS R13 R0 K12 ["IsSelected"]
  JUMPIFNOT R13 [+1]
  LOADK R12 K13 ["Selected"]
  JUMPIF R6 [+3]
  GETTABLEKS R13 R0 K9 ["IsDragging"]
  JUMPIFNOT R13 [+61]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K14 ["createElement"]
  LOADK R14 K15 ["TextButton"]
  NEWTABLE R15 4 0
  GETIMPORT R16 K18 [UDim2.fromScale]
  GETTABLEKS R17 R5 K19 ["X"]
  GETTABLEKS R18 R5 K20 ["Y"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K2 ["Position"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K21 ["Tag"]
  GETUPVAL R17 6
  LOADK R18 K22 ["SequenceKeypoint"]
  MOVE R19 R12
  CALL R17 2 1
  SETTABLE R17 R15 R16
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K23 ["Event"]
  GETTABLEKS R16 R17 K24 ["InputBegan"]
  SETTABLE R11 R15 R16
  DUPTABLE R16 K27 [{"HoverArea", "DragListener"}]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K14 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K31 [{"Cursor", "MouseEnter", "MouseLeave"}]
  GETUPVAL R20 8
  SETTABLEKS R20 R19 K28 ["Cursor"]
  SETTABLEKS R7 R19 K29 ["MouseEnter"]
  SETTABLEKS R8 R19 K30 ["MouseLeave"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K25 ["HoverArea"]
  GETTABLEKS R17 R0 K9 ["IsDragging"]
  JUMPIFNOT R17 [+10]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K14 ["createElement"]
  GETUPVAL R18 9
  DUPTABLE R19 K34 [{"OnDragMoved", "OnDragEnded"}]
  SETTABLEKS R9 R19 K32 ["OnDragMoved"]
  SETTABLEKS R10 R19 K33 ["OnDragEnded"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K26 ["DragListener"]
  CALL R13 3 1
  RETURN R13 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["DirectionalCurveEditor"]
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
  GETTABLEKS R17 R1 K20 ["Src"]
  GETTABLEKS R16 R17 K25 ["Components"]
  GETTABLEKS R15 R16 K26 ["CurveRenderer"]
  GETTABLEKS R14 R15 K27 ["PlotRectUtil"]
  CALL R13 1 1
  DUPCLOSURE R14 K28 [PROTO_7]
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
