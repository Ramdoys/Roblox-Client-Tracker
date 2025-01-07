PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["plotToAbs"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Position"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["PlotAbsoluteSize"]
  CALL R0 2 1
  LOADN R3 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Offset"]
  MUL R2 R3 R4
  GETIMPORT R4 K6 [Vector2.new]
  LOADK R5 K7 [0.5]
  LOADK R6 K7 [0.5]
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["AnchorPoint"]
  SUB R3 R4 R5
  MUL R1 R2 R3
  GETIMPORT R2 K11 [UDim2.fromOffset]
  GETTABLEKS R4 R0 K12 ["X"]
  GETTABLEKS R5 R1 K12 ["X"]
  ADD R3 R4 R5
  GETTABLEKS R5 R0 K13 ["Y"]
  GETTABLEKS R6 R1 K13 ["Y"]
  ADD R4 R5 R6
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["AnchorPoint"]
  GETTABLEKS R0 R1 K1 ["X"]
  LOADK R1 K2 [0.4]
  JUMPIFNOTLE R0 R1 [+4]
  GETIMPORT R0 K6 [Enum.TextXAlignment.Left]
  RETURN R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["AnchorPoint"]
  GETTABLEKS R0 R1 K1 ["X"]
  LOADK R1 K7 [0.6]
  JUMPIFNOTLE R1 R0 [+4]
  GETIMPORT R0 K9 [Enum.TextXAlignment.Right]
  RETURN R0 1
  GETIMPORT R0 K11 [Enum.TextXAlignment.Center]
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["AnchorPoint"]
  GETTABLEKS R0 R1 K1 ["Y"]
  LOADK R1 K2 [0.4]
  JUMPIFNOTLE R0 R1 [+4]
  GETIMPORT R0 K6 [Enum.TextYAlignment.Top]
  RETURN R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["AnchorPoint"]
  GETTABLEKS R0 R1 K1 ["Y"]
  LOADK R1 K7 [0.6]
  JUMPIFNOTLE R1 R0 [+4]
  GETIMPORT R0 K9 [Enum.TextYAlignment.Bottom]
  RETURN R0 1
  GETIMPORT R0 K11 [Enum.TextYAlignment.Center]
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NEWTABLE R3 0 4
  GETTABLEKS R4 R0 K0 ["Position"]
  GETTABLEKS R5 R0 K1 ["AnchorPoint"]
  GETTABLEKS R6 R0 K2 ["Offset"]
  GETTABLEKS R7 R0 K3 ["PlotAbsoluteSize"]
  SETLIST R3 R4 4 [1]
  CALL R1 2 1
  GETUPVAL R2 0
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K1 ["AnchorPoint"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R3 0
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K1 ["AnchorPoint"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["createElement"]
  LOADK R5 K5 ["TextLabel"]
  NEWTABLE R6 8 0
  GETTABLEKS R7 R0 K1 ["AnchorPoint"]
  SETTABLEKS R7 R6 K1 ["AnchorPoint"]
  SETTABLEKS R1 R6 K0 ["Position"]
  GETIMPORT R7 K8 [UDim2.fromOffset]
  LOADN R8 10
  LOADN R9 10
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["Size"]
  GETTABLEKS R7 R0 K10 ["Label"]
  SETTABLEKS R7 R6 K11 ["Text"]
  SETTABLEKS R2 R6 K12 ["TextXAlignment"]
  SETTABLEKS R3 R6 K13 ["TextYAlignment"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["Tag"]
  GETUPVAL R8 3
  LOADK R9 K15 ["GridLabel"]
  GETTABLEKS R10 R0 K14 ["Tag"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioCompressorEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["joinTags"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["useMemo"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["PlotUtil"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R6 1
