PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Data"]
  JUMPIFEQ R0 R1 [+10]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["OnChanged"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["OnChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reset"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Data"]
  CALL R0 1 0
  NEWTABLE R0 0 0
  SETUPVAL R0 2
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETIMPORT R2 K2 [Vector2.one]
  CALL R1 1 2
  GETUPVAL R3 1
  LOADNIL R4
  CALL R3 1 1
  GETUPVAL R4 2
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  GETTABLEKS R7 R0 K3 ["OnChanged"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R5 3
  GETTABLEKS R6 R0 K4 ["Data"]
  MOVE R7 R4
  CALL R5 2 1
  GETUPVAL R6 4
  NEWCLOSURE R7 P1
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  NEWTABLE R8 0 1
  GETTABLEKS R9 R0 K4 ["Data"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 0
  GETUPVAL R6 2
  NEWCLOSURE R7 P2
  CAPTURE VAL R2
  NEWTABLE R8 0 0
  CALL R6 2 1
  GETUPVAL R7 0
  LOADK R8 K5 [""]
  CALL R7 1 2
  GETTABLEKS R9 R0 K6 ["Enabled"]
  JUMPIFNOT R9 [+231]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K7 ["createElement"]
  GETUPVAL R10 7
  NEWTABLE R11 2 0
  GETIMPORT R12 K10 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K11 ["Size"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K12 ["Tag"]
  LOADK R13 K13 ["X-Pad X-ColumnM X-FitY"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K17 [{"UISizeConstraint", "TopControls", "MainPanel"}]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K14 ["UISizeConstraint"]
  DUPTABLE R15 K20 [{"MinSize", "MaxSize"}]
  GETUPVAL R16 8
  SETTABLEKS R16 R15 K18 ["MinSize"]
  GETUPVAL R16 9
  SETTABLEKS R16 R15 K19 ["MaxSize"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["UISizeConstraint"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K7 ["createElement"]
  GETUPVAL R14 10
  DUPTABLE R15 K24 [{"DataHook", "DisplaySettings", "SetDisplaySettings"}]
  SETTABLEKS R5 R15 K21 ["DataHook"]
  GETTABLEKS R16 R0 K22 ["DisplaySettings"]
  SETTABLEKS R16 R15 K22 ["DisplaySettings"]
  GETTABLEKS R16 R0 K23 ["SetDisplaySettings"]
  SETTABLEKS R16 R15 K23 ["SetDisplaySettings"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["TopControls"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K7 ["createElement"]
  GETUPVAL R14 7
  NEWTABLE R15 4 0
  GETIMPORT R16 K26 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADN R20 181
  CALL R16 4 1
  SETTABLEKS R16 R15 K11 ["Size"]
  LOADN R16 2
  SETTABLEKS R16 R15 K27 ["LayoutOrder"]
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K12 ["Tag"]
  LOADK R17 K28 ["X-Pad X-RowM"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K31 [{"Canvas", "MainControlsPanel"}]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K32 [{"Size", "LayoutOrder"}]
  GETIMPORT R20 K10 [UDim2.fromScale]
  LOADK R21 K33 [0.75]
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K11 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K27 ["LayoutOrder"]
  DUPTABLE R20 K35 [{"PlotCanvas"}]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K7 ["createElement"]
  GETUPVAL R22 7
  NEWTABLE R23 8 0
  GETIMPORT R24 K26 [UDim2.new]
  LOADN R25 0
  LOADN R26 25
  LOADN R27 0
  LOADN R28 25
  CALL R24 4 1
  SETTABLEKS R24 R23 K36 ["Position"]
  GETIMPORT R24 K26 [UDim2.new]
  LOADN R25 1
  LOADN R26 206
  LOADN R27 1
  LOADN R28 206
  CALL R24 4 1
  SETTABLEKS R24 R23 K11 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K37 ["BackgroundTransparency"]
  SETTABLEKS R3 R23 K38 ["ForwardRef"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K39 ["Change"]
  GETTABLEKS R24 R25 K40 ["AbsoluteSize"]
  SETTABLE R6 R23 R24
  DUPTABLE R24 K45 [{"Grid", "MeteringLine", "Curve", "Handles"}]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K7 ["createElement"]
  GETUPVAL R26 11
  DUPTABLE R27 K47 [{"PlotAbsoluteSize"}]
  SETTABLEKS R1 R27 K46 ["PlotAbsoluteSize"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K41 ["Grid"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K7 ["createElement"]
  GETUPVAL R26 12
  DUPTABLE R27 K50 [{"InstanceType", "DisplaySettings", "PlotAbsoluteSize", "ForceRefresh"}]
  GETTABLEKS R28 R5 K51 ["instanceType"]
  SETTABLEKS R28 R27 K48 ["InstanceType"]
  GETTABLEKS R28 R0 K22 ["DisplaySettings"]
  SETTABLEKS R28 R27 K22 ["DisplaySettings"]
  SETTABLEKS R1 R27 K46 ["PlotAbsoluteSize"]
  GETUPVAL R28 5
  SETTABLEKS R28 R27 K49 ["ForceRefresh"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K42 ["MeteringLine"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K7 ["createElement"]
  GETUPVAL R26 13
  DUPTABLE R27 K52 [{"Enabled", "DataHook", "PlotAbsoluteSize"}]
  GETTABLEKS R29 R0 K22 ["DisplaySettings"]
  GETTABLEKS R28 R29 K53 ["ShowEnvelope"]
  SETTABLEKS R28 R27 K6 ["Enabled"]
  SETTABLEKS R5 R27 K21 ["DataHook"]
  SETTABLEKS R1 R27 K46 ["PlotAbsoluteSize"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K43 ["Curve"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K7 ["createElement"]
  GETUPVAL R26 14
  DUPTABLE R27 K55 [{"DataHook", "ActiveControl", "PlotAbsoluteSize"}]
  SETTABLEKS R5 R27 K21 ["DataHook"]
  SETTABLEKS R7 R27 K54 ["ActiveControl"]
  SETTABLEKS R1 R27 K46 ["PlotAbsoluteSize"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K44 ["Handles"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K34 ["PlotCanvas"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K29 ["Canvas"]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K32 [{"Size", "LayoutOrder"}]
  GETIMPORT R20 K10 [UDim2.fromScale]
  LOADK R21 K56 [0.25]
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K11 ["Size"]
  LOADN R20 2
  SETTABLEKS R20 R19 K27 ["LayoutOrder"]
  DUPTABLE R20 K58 [{"MainControls"}]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K7 ["createElement"]
  GETUPVAL R22 15
  DUPTABLE R23 K60 [{"DataHook", "SetActiveControl"}]
  SETTABLEKS R5 R23 K21 ["DataHook"]
  SETTABLEKS R8 R23 K59 ["SetActiveControl"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K57 ["MainControls"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K30 ["MainControlsPanel"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K16 ["MainPanel"]
  CALL R9 3 1
  RETURN R9 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R3 K3 ["AudioCompressorEditor"]
  NAMECALL R1 R0 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useCallback"]
  GETTABLEKS R4 R2 K10 ["useEffect"]
  GETTABLEKS R5 R2 K11 ["useRef"]
  GETTABLEKS R6 R2 K12 ["useState"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R1 K7 ["Packages"]
  GETTABLEKS R8 R9 K13 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R9 R7 K14 ["UI"]
  GETTABLEKS R8 R9 K15 ["Pane"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R1 K16 ["Src"]
  GETTABLEKS R10 R11 K17 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R0 K18 ["useDataHook"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R0 K19 ["CompressorCurve"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R13 R0 K20 ["CompressorHandles"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R14 R0 K21 ["Grid"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R15 R0 K22 ["MainControls"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R16 R0 K23 ["MeteringLine"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R17 R0 K24 ["TopControls"]
  CALL R16 1 1
  GETIMPORT R17 K27 [Vector2.new]
  LOADN R18 28
  LOADN R19 44
  CALL R17 2 1
  GETIMPORT R18 K27 [Vector2.new]
  LOADN R19 208
  LOADN R20 208
  CALL R18 2 1
  NEWTABLE R19 0 0
  NEWCLOSURE R20 P0
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE REF R19
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R14
  CLOSEUPVALS R19
  RETURN R20 1
