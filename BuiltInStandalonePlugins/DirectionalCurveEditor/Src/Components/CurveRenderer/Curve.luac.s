PROTO_0:
  NEWTABLE R3 0 0
  LOADN R4 0
  GETTABLEKS R5 R0 K0 ["keypoints"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["plotToAbsolutePosition"]
  MOVE R11 R9
  MOVE R12 R1
  MOVE R13 R2
  CALL R10 3 1
  MOVE R12 R3
  GETIMPORT R13 K4 [Path2DControlPoint.new]
  GETIMPORT R14 K7 [UDim2.fromOffset]
  GETTABLEKS R15 R10 K8 ["X"]
  GETTABLEKS R16 R10 K9 ["Y"]
  CALL R14 2 -1
  CALL R13 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R11 K12 [table.insert]
  CALL R11 -1 0
  ADDK R4 R4 K13 [1]
  GETTABLEKS R11 R9 K8 ["X"]
  GETTABLEKS R13 R1 K14 ["Max"]
  GETTABLEKS R12 R13 K8 ["X"]
  JUMPIFLT R12 R11 [+3]
  FORGLOOP R5 2 [-32]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K18 [{"ControlPoints", "Tag"}]
  SETTABLEKS R3 R7 K16 ["ControlPoints"]
  LOADK R8 K19 ["CurveLinePath2D"]
  SETTABLEKS R8 R7 K17 ["Tag"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_1:
  NEWTABLE R3 2 0
  GETTABLEKS R5 R0 K0 ["keypoints"]
  LENGTH R4 R5
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+46]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["plotToAbsolutePosition"]
  GETTABLEKS R7 R0 K0 ["keypoints"]
  GETTABLEN R6 R7 1
  MOVE R7 R1
  MOVE R8 R2
  CALL R5 3 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K5 [{"ControlPoints", "Tag"}]
  NEWTABLE R9 0 2
  GETIMPORT R10 K8 [Path2DControlPoint.new]
  GETIMPORT R11 K11 [UDim2.fromOffset]
  LOADN R12 0
  GETTABLEKS R13 R5 K12 ["Y"]
  CALL R11 2 -1
  CALL R10 -1 1
  GETIMPORT R11 K8 [Path2DControlPoint.new]
  GETIMPORT R12 K11 [UDim2.fromOffset]
  GETTABLEKS R13 R5 K13 ["X"]
  GETTABLEKS R14 R5 K12 ["Y"]
  CALL R12 2 -1
  CALL R11 -1 -1
  SETLIST R9 R10 -1 [1]
  SETTABLEKS R9 R8 K3 ["ControlPoints"]
  LOADK R9 K14 ["EndLinePath2D"]
  SETTABLEKS R9 R8 K4 ["Tag"]
  CALL R6 2 1
  SETTABLEKS R6 R3 K15 ["EndLineLeft"]
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+47]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["plotToAbsolutePosition"]
  GETTABLEKS R7 R0 K0 ["keypoints"]
  GETTABLE R6 R7 R4
  MOVE R7 R1
  MOVE R8 R2
  CALL R5 3 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K5 [{"ControlPoints", "Tag"}]
  NEWTABLE R9 0 2
  GETIMPORT R10 K8 [Path2DControlPoint.new]
  GETIMPORT R11 K11 [UDim2.fromOffset]
  GETTABLEKS R12 R5 K13 ["X"]
  GETTABLEKS R13 R5 K12 ["Y"]
  CALL R11 2 -1
  CALL R10 -1 1
  GETIMPORT R11 K8 [Path2DControlPoint.new]
  GETIMPORT R12 K11 [UDim2.fromOffset]
  GETTABLEKS R13 R2 K13 ["X"]
  GETTABLEKS R14 R5 K12 ["Y"]
  CALL R12 2 -1
  CALL R11 -1 -1
  SETLIST R9 R10 -1 [1]
  SETTABLEKS R9 R8 K3 ["ControlPoints"]
  LOADK R9 K14 ["EndLinePath2D"]
  SETTABLEKS R9 R8 K4 ["Tag"]
  CALL R6 2 1
  SETTABLEKS R6 R3 K16 ["EndLineRight"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R0 3 1
  GETUPVAL R1 4
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["Curve"]
  RETURN R0 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["PlotAbsoluteSize"]
  GETTABLEKS R2 R0 K1 ["CurveHook"]
  GETTABLEKS R3 R2 K2 ["plotRect"]
  FASTCALL1 ASSERT R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K4 [assert]
  CALL R4 1 0
  GETUPVAL R4 0
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  NEWTABLE R6 0 3
  MOVE R7 R2
  MOVE R8 R3
  GETTABLEKS R9 R0 K0 ["PlotAbsoluteSize"]
  SETLIST R6 R7 3 [1]
  CALL R4 2 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K8 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R8 K11 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K6 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K7 ["BackgroundTransparency"]
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R3 R2 K9 ["useMemo"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R1 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K11 ["UI"]
  GETTABLEKS R5 R6 K12 ["Pane"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R0 K13 ["Path2DWrapper"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R0 K14 ["PlotRectUtil"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R1 K15 ["Src"]
  GETTABLEKS R9 R10 K16 ["Types"]
  CALL R8 1 1
  DUPCLOSURE R9 K17 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  DUPCLOSURE R10 K18 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  DUPCLOSURE R11 K19 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R11 1
