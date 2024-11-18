PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["select"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["update"]
  MOVE R2 R0
  LOADB R3 0
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getSelectedKeypoint"]
  CALL R0 0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["update"]
  MOVE R2 R0
  LOADB R3 1
  CALL R1 2 0
  GETUPVAL R1 1
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["UserInputType"]
  GETIMPORT R2 K4 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R1 R2 [+39]
  GETIMPORT R1 K7 [Vector2.new]
  GETTABLEKS R3 R0 K8 ["Position"]
  GETTABLEKS R2 R3 K9 ["X"]
  GETTABLEKS R4 R0 K8 ["Position"]
  GETTABLEKS R3 R4 K10 ["Y"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K11 ["mouseToPlotPolar"]
  MOVE R3 R1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  CALL R2 2 1
  GETIMPORT R3 K13 [print]
  MOVE R4 R2
  CALL R3 1 0
  GETTABLEKS R3 R2 K10 ["Y"]
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+2]
  RETURN R0 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K14 ["add"]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFNOT R3 [+3]
  GETUPVAL R4 3
  LOADB R5 1
  CALL R4 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["remove"]
  CALL R0 0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["select"]
  LOADN R1 255
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  NEWTABLE R0 0 0
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K0 ["keypoints"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  LOADK R7 K1 ["Keypoint_"]
  MOVE R8 R4
  CONCAT R6 R7 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["selectedIndex"]
  JUMPIFEQ R4 R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  MOVE R9 R6
  LOADK R10 K3 ["_L"]
  CONCAT R8 R9 R10
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K16 [{"Position", "IsRight", "PlotAbsoluteSize", "PlotRef", "IsSelected", "IsDragging", "OnHoverStart", "OnDragStart", "OnMoved", "OnDragEnd", "OnRightClick"}]
  SETTABLEKS R5 R11 K5 ["Position"]
  LOADB R12 0
  SETTABLEKS R12 R11 K6 ["IsRight"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K7 ["PlotAbsoluteSize"]
  SETTABLEKS R12 R11 K7 ["PlotAbsoluteSize"]
  GETUPVAL R12 4
  SETTABLEKS R12 R11 K8 ["PlotRef"]
  SETTABLEKS R7 R11 K9 ["IsSelected"]
  GETUPVAL R13 5
  AND R12 R13 R7
  SETTABLEKS R12 R11 K10 ["IsDragging"]
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U6
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K11 ["OnHoverStart"]
  GETUPVAL R12 7
  SETTABLEKS R12 R11 K12 ["OnDragStart"]
  GETUPVAL R12 8
  SETTABLEKS R12 R11 K13 ["OnMoved"]
  GETUPVAL R12 9
  SETTABLEKS R12 R11 K14 ["OnDragEnd"]
  GETUPVAL R12 10
  SETTABLEKS R12 R11 K15 ["OnRightClick"]
  CALL R9 2 1
  SETTABLE R9 R0 R8
  MOVE R9 R6
  LOADK R10 K17 ["_R"]
  CONCAT R8 R9 R10
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K16 [{"Position", "IsRight", "PlotAbsoluteSize", "PlotRef", "IsSelected", "IsDragging", "OnHoverStart", "OnDragStart", "OnMoved", "OnDragEnd", "OnRightClick"}]
  SETTABLEKS R5 R11 K5 ["Position"]
  LOADB R12 1
  SETTABLEKS R12 R11 K6 ["IsRight"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K7 ["PlotAbsoluteSize"]
  SETTABLEKS R12 R11 K7 ["PlotAbsoluteSize"]
  GETUPVAL R12 4
  SETTABLEKS R12 R11 K8 ["PlotRef"]
  SETTABLEKS R7 R11 K9 ["IsSelected"]
  GETUPVAL R13 5
  AND R12 R13 R7
  SETTABLEKS R12 R11 K10 ["IsDragging"]
  NEWCLOSURE R12 P1
  CAPTURE UPVAL U6
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K11 ["OnHoverStart"]
  GETUPVAL R12 7
  SETTABLEKS R12 R11 K12 ["OnDragStart"]
  GETUPVAL R12 8
  SETTABLEKS R12 R11 K13 ["OnMoved"]
  GETUPVAL R12 9
  SETTABLEKS R12 R11 K14 ["OnDragEnd"]
  GETUPVAL R12 10
  SETTABLEKS R12 R11 K15 ["OnRightClick"]
  CALL R9 2 1
  SETTABLE R9 R0 R8
  FORGLOOP R1 2 [-103]
  RETURN R0 1

PROTO_9:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+4]
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["CurveHook"]
  GETTABLEKS R2 R0 K1 ["PlotRef"]
  GETTABLEKS R3 R1 K2 ["plotRect"]
  GETUPVAL R4 0
  LOADB R5 0
  CALL R4 1 2
  GETUPVAL R6 1
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CAPTURE VAL R1
  NEWTABLE R8 0 2
  MOVE R9 R1
  MOVE R10 R4
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  GETUPVAL R7 1
  NEWCLOSURE R8 P1
  CAPTURE VAL R5
  NEWTABLE R9 0 1
  MOVE R10 R5
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R8 1
  NEWCLOSURE R9 P2
  CAPTURE VAL R1
  NEWTABLE R10 0 3
  MOVE R11 R2
  MOVE R12 R3
  MOVE R13 R1
  SETLIST R10 R11 3 [1]
  CALL R8 2 1
  GETUPVAL R9 1
  NEWCLOSURE R10 P3
  CAPTURE VAL R1
  CAPTURE VAL R5
  NEWTABLE R11 0 2
  MOVE R12 R0
  MOVE R13 R1
  SETLIST R11 R12 2 [1]
  CALL R9 2 1
  GETUPVAL R10 1
  NEWCLOSURE R11 P4
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R5
  NEWTABLE R12 0 3
  MOVE R13 R2
  MOVE R14 R3
  MOVE R15 R1
  SETLIST R12 R13 3 [1]
  CALL R10 2 1
  GETUPVAL R11 1
  NEWCLOSURE R12 P5
  CAPTURE VAL R5
  CAPTURE VAL R1
  NEWTABLE R13 0 2
  MOVE R14 R0
  MOVE R15 R1
  SETLIST R13 R14 2 [1]
  CALL R11 2 1
  GETUPVAL R12 3
  NEWCLOSURE R13 P6
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  NEWTABLE R14 0 3
  MOVE R15 R1
  MOVE R16 R3
  MOVE R17 R4
  SETLIST R14 R15 3 [1]
  CALL R12 2 1
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K3 ["createElement"]
  GETUPVAL R14 6
  NEWTABLE R15 4 0
  GETIMPORT R16 K6 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K7 ["Size"]
  LOADN R16 10
  SETTABLEKS R16 R15 K8 ["ZIndex"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K9 ["Event"]
  GETTABLEKS R16 R17 K10 ["InputBegan"]
  NEWCLOSURE R17 P7
  CAPTURE VAL R10
  SETTABLE R17 R15 R16
  MOVE R16 R12
  CALL R13 3 -1
  RETURN R13 -1

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
  GETTABLEKS R8 R6 K13 ["UI"]
  GETTABLEKS R7 R8 K14 ["Pane"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R0 K15 ["PolarControlPoint"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R13 R1 K16 ["Src"]
  GETTABLEKS R12 R13 K17 ["Components"]
  GETTABLEKS R11 R12 K18 ["CurveRenderer"]
  GETTABLEKS R10 R11 K19 ["PlotRectUtil"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R1 K16 ["Src"]
  GETTABLEKS R11 R12 K20 ["Types"]
  CALL R10 1 1
  DUPCLOSURE R11 K21 [PROTO_10]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R7
  RETURN R11 1
