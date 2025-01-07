PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["plotToAbs"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 1
  MOVE R5 R0
  GETIMPORT R6 K3 [Path2DControlPoint.new]
  GETIMPORT R7 K6 [UDim2.fromOffset]
  GETTABLEKS R8 R3 K7 ["X"]
  GETTABLEKS R9 R3 K8 ["Y"]
  CALL R7 2 -1
  CALL R6 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K11 [table.insert]
  CALL R4 -1 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R0 0 0
  GETUPVAL R1 0
  JUMPIF R1 [+1]
  RETURN R0 1
  NEWTABLE R1 0 0
  GETIMPORT R2 K2 [Vector2.new]
  LOADN R3 176
  LOADN R4 176
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["PlotAbsoluteSize"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["plotToAbs"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R6 R1
  GETIMPORT R7 K6 [Path2DControlPoint.new]
  GETIMPORT R8 K9 [UDim2.fromOffset]
  GETTABLEKS R9 R4 K10 ["X"]
  GETTABLEKS R10 R4 K11 ["Y"]
  CALL R8 2 -1
  CALL R7 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K14 [table.insert]
  CALL R5 -1 0
  GETIMPORT R2 K2 [Vector2.new]
  LOADN R3 30
  LOADN R4 30
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["PlotAbsoluteSize"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["plotToAbs"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R6 R1
  GETIMPORT R7 K6 [Path2DControlPoint.new]
  GETIMPORT R8 K9 [UDim2.fromOffset]
  GETTABLEKS R9 R4 K10 ["X"]
  GETTABLEKS R10 R4 K11 ["Y"]
  CALL R8 2 -1
  CALL R7 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K14 [table.insert]
  CALL R5 -1 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K15 ["createElement"]
  GETUPVAL R3 4
  DUPTABLE R4 K18 [{"ControlPoints", "Tag"}]
  SETTABLEKS R1 R4 K16 ["ControlPoints"]
  LOADK R5 K19 ["GridCurve"]
  SETTABLEKS R5 R4 K17 ["Tag"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K20 ["Diagonal"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K21 ["ActiveControl"]
  JUMPIFNOTEQKS R2 K22 ["Threshold"] [+32]
  LOADK R3 K23 ["Control_"]
  LOADK R4 K22 ["Threshold"]
  CONCAT R2 R3 R4
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K15 ["createElement"]
  GETUPVAL R4 5
  DUPTABLE R5 K27 [{"Orientation", "Position", "PlotAbsoluteSize", "Thickness", "Tag"}]
  LOADK R6 K28 ["Horizontal"]
  SETTABLEKS R6 R5 K24 ["Orientation"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K29 ["DataHook"]
  GETTABLEKS R6 R7 K30 ["threshold"]
  SETTABLEKS R6 R5 K25 ["Position"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["PlotAbsoluteSize"]
  SETTABLEKS R6 R5 K3 ["PlotAbsoluteSize"]
  LOADN R6 1
  SETTABLEKS R6 R5 K26 ["Thickness"]
  LOADK R6 K31 ["ControlLine"]
  SETTABLEKS R6 R5 K17 ["Tag"]
  CALL R3 2 1
  SETTABLE R3 R0 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K21 ["ActiveControl"]
  JUMPIFNOTEQKS R2 K32 ["Ratio"] [+88]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K29 ["DataHook"]
  GETTABLEKS R2 R3 K30 ["threshold"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K29 ["DataHook"]
  GETTABLEKS R3 R4 K33 ["ratio"]
  NEWTABLE R4 0 0
  GETIMPORT R5 K2 [Vector2.new]
  MOVE R6 R2
  MOVE R7 R2
  CALL R5 2 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["PlotAbsoluteSize"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["plotToAbs"]
  MOVE R8 R5
  MOVE R9 R6
  CALL R7 2 1
  MOVE R9 R4
  GETIMPORT R10 K6 [Path2DControlPoint.new]
  GETIMPORT R11 K9 [UDim2.fromOffset]
  GETTABLEKS R12 R7 K10 ["X"]
  GETTABLEKS R13 R7 K11 ["Y"]
  CALL R11 2 -1
  CALL R10 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K14 [table.insert]
  CALL R8 -1 0
  GETIMPORT R5 K2 [Vector2.new]
  LOADN R6 30
  SUBRK R9 R34 K2 [Vector2.new]
  DIV R8 R9 R3
  ADD R7 R2 R8
  CALL R5 2 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["PlotAbsoluteSize"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["plotToAbs"]
  MOVE R8 R5
  MOVE R9 R6
  CALL R7 2 1
  MOVE R9 R4
  GETIMPORT R10 K6 [Path2DControlPoint.new]
  GETIMPORT R11 K9 [UDim2.fromOffset]
  GETTABLEKS R12 R7 K10 ["X"]
  GETTABLEKS R13 R7 K11 ["Y"]
  CALL R11 2 -1
  CALL R10 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K14 [table.insert]
  CALL R8 -1 0
  LOADK R6 K23 ["Control_"]
  LOADK R7 K32 ["Ratio"]
  CONCAT R5 R6 R7
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K15 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K18 [{"ControlPoints", "Tag"}]
  SETTABLEKS R4 R8 K16 ["ControlPoints"]
  LOADK R9 K35 ["GuideCurve"]
  SETTABLEKS R9 R8 K17 ["Tag"]
  CALL R6 2 1
  SETTABLE R6 R0 R5
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K21 ["ActiveControl"]
  JUMPIFNOTEQKS R2 K36 ["MakeupGain"] [+32]
  LOADK R3 K23 ["Control_"]
  LOADK R4 K36 ["MakeupGain"]
  CONCAT R2 R3 R4
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K15 ["createElement"]
  GETUPVAL R4 5
  DUPTABLE R5 K27 [{"Orientation", "Position", "PlotAbsoluteSize", "Thickness", "Tag"}]
  LOADK R6 K28 ["Horizontal"]
  SETTABLEKS R6 R5 K24 ["Orientation"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K29 ["DataHook"]
  GETTABLEKS R6 R7 K37 ["makeupGain"]
  SETTABLEKS R6 R5 K25 ["Position"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["PlotAbsoluteSize"]
  SETTABLEKS R6 R5 K3 ["PlotAbsoluteSize"]
  LOADN R6 1
  SETTABLEKS R6 R5 K26 ["Thickness"]
  LOADK R6 K31 ["ControlLine"]
  SETTABLEKS R6 R5 K17 ["Tag"]
  CALL R3 2 1
  SETTABLE R3 R0 R2
  RETURN R0 1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["DataHook"]
  GETTABLEKS R2 R3 K1 ["bypass"]
  NOT R1 R2
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NEWTABLE R4 0 3
  GETTABLEKS R5 R0 K0 ["DataHook"]
  GETTABLEKS R6 R0 K2 ["ActiveControl"]
  GETTABLEKS R7 R0 K3 ["PlotAbsoluteSize"]
  SETLIST R4 R5 3 [1]
  CALL R2 2 1
  MOVE R3 R1
  JUMPIFNOT R3 [+34]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 5
  DUPTABLE R5 K10 [{"Active", "ZIndex", "Position", "Size", "BackgroundTransparency"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K5 ["Active"]
  LOADN R6 3
  SETTABLEKS R6 R5 K6 ["ZIndex"]
  GETIMPORT R6 K13 [UDim2.new]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K7 ["Position"]
  GETIMPORT R6 K13 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K8 ["Size"]
  LOADN R6 1
  SETTABLEKS R6 R5 K9 ["BackgroundTransparency"]
  MOVE R6 R2
  CALL R3 3 1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["AudioCompressorEditor"]
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
  GETTABLEKS R8 R1 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R0 K15 ["GridLine"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R0 K16 ["Path2DWrapper"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R1 K13 ["Src"]
  GETTABLEKS R11 R12 K17 ["Util"]
  GETTABLEKS R10 R11 K18 ["PlotUtil"]
  CALL R9 1 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R9
  DUPCLOSURE R11 K20 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R11 1
