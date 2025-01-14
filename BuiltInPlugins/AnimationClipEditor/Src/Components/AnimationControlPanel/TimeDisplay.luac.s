PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["AnimationData"]
  JUMPIF R1 [+52]
  JUMPIFNOT R3 [+51]
  GETTABLEKS R4 R2 K2 ["TimelineUnit"]
  GETTABLEKS R5 R2 K3 ["EndTick"]
  GETTABLEKS R6 R2 K4 ["UpdateEditingLength"]
  GETTABLEKS R7 R2 K5 ["StepAnimation"]
  GETTABLEKS R8 R2 K6 ["FrameRate"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K8 ["parseTime"]
  GETTABLEKS R11 R0 K9 ["Text"]
  MOVE R12 R8
  MOVE R13 R4
  CALL R10 3 1
  ORK R9 R10 K7 [0]
  LOADN R12 0
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K10 ["TICK_FREQUENCY"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K11 ["MAX_ANIMATION_LENGTH"]
  MUL R13 R14 R15
  FASTCALL3 MATH_CLAMP R9 R12 R13
  MOVE R11 R9
  GETIMPORT R10 K14 [math.clamp]
  CALL R10 3 1
  MOVE R9 R10
  JUMPIFNOTLT R5 R9 [+4]
  MOVE R10 R6
  MOVE R11 R9
  CALL R10 1 0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K15 ["formatTime"]
  MOVE R11 R9
  MOVE R12 R8
  MOVE R13 R4
  CALL R10 3 1
  SETTABLEKS R10 R0 K9 ["Text"]
  MOVE R10 R7
  MOVE R11 R9
  CALL R10 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["AnimationData"]
  JUMPIF R1 [+53]
  JUMPIFNOT R3 [+52]
  GETTABLEKS R4 R2 K2 ["ShowAsTime"]
  GETTABLEKS R5 R2 K3 ["FrameRate"]
  GETTABLEKS R6 R2 K4 ["UpdateEditingLength"]
  GETTABLEKS R8 R3 K5 ["Metadata"]
  GETTABLEKS R7 R8 K6 ["EndTick"]
  GETTABLEKS R8 R2 K7 ["TimelineUnit"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K9 ["parseTime"]
  GETTABLEKS R11 R0 K10 ["Text"]
  MOVE R12 R5
  MOVE R13 R8
  CALL R10 3 1
  ORK R9 R10 K8 [0]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K11 ["TICK_FREQUENCY"]
  FASTCALL2 MATH_MAX R7 R14 [+4]
  MOVE R13 R7
  GETIMPORT R12 K14 [math.max]
  CALL R12 2 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K15 ["MAX_ANIMATION_LENGTH"]
  FASTCALL3 MATH_CLAMP R9 R12 R13
  MOVE R11 R9
  GETIMPORT R10 K17 [math.clamp]
  CALL R10 3 1
  MOVE R9 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K18 ["formatTime"]
  MOVE R11 R9
  MOVE R12 R5
  MOVE R13 R8
  CALL R10 3 1
  SETTABLEKS R10 R0 K10 ["Text"]
  MOVE R10 R6
  MOVE R11 R9
  CALL R10 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K0 ["setCurrentTime"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K1 ["setEndTime"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["TimelineUnit"]
  GETTABLEKS R4 R1 K3 ["Playhead"]
  GETTABLEKS R5 R1 K4 ["EditingLength"]
  GETTABLEKS R6 R1 K5 ["FrameRate"]
  GETTABLEKS R7 R2 K6 ["textBox"]
  GETTABLEKS R8 R2 K7 ["playbackTheme"]
  GETTABLEKS R9 R1 K8 ["ReadOnly"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["createElement"]
  LOADK R11 K10 ["Frame"]
  DUPTABLE R12 K14 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K11 ["BackgroundTransparency"]
  GETIMPORT R13 K17 [UDim2.new]
  LOADN R14 0
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K18 ["TIME_DISPLAY_WIDTH"]
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K12 ["Size"]
  GETTABLEKS R13 R1 K13 ["LayoutOrder"]
  SETTABLEKS R13 R12 K13 ["LayoutOrder"]
  DUPTABLE R13 K23 [{"Layout", "CurrentFrameBox", "DividerLabel", "EndFrameBox"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  LOADK R15 K24 ["UIListLayout"]
  DUPTABLE R16 K29 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R17 K32 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K25 ["FillDirection"]
  GETIMPORT R17 K34 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K26 ["HorizontalAlignment"]
  GETIMPORT R17 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K27 ["SortOrder"]
  GETIMPORT R17 K37 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K28 ["VerticalAlignment"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["Layout"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K42 [{"Size", "Text", "TextXAlignment", "LayoutOrder", "ClearTextOnFocus", "FocusChanged"}]
  GETIMPORT R17 K17 [UDim2.new]
  LOADN R18 0
  LOADN R19 40
  LOADN R20 1
  LOADN R21 250
  CALL R17 4 1
  SETTABLEKS R17 R16 K12 ["Size"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K43 ["formatTime"]
  MOVE R18 R4
  MOVE R19 R6
  MOVE R20 R3
  CALL R17 3 1
  SETTABLEKS R17 R16 K38 ["Text"]
  GETIMPORT R17 K44 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K39 ["TextXAlignment"]
  LOADN R17 0
  SETTABLEKS R17 R16 K13 ["LayoutOrder"]
  LOADB R17 0
  SETTABLEKS R17 R16 K40 ["ClearTextOnFocus"]
  GETTABLEKS R17 R0 K45 ["setCurrentTime"]
  SETTABLEKS R17 R16 K41 ["FocusChanged"]
  DUPTABLE R17 K47 [{"Tooltip"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K49 [{"TextKey"}]
  LOADK R21 K20 ["CurrentFrameBox"]
  SETTABLEKS R21 R20 K48 ["TextKey"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K46 ["Tooltip"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K20 ["CurrentFrameBox"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  LOADK R15 K50 ["TextLabel"]
  DUPTABLE R16 K54 [{"Text", "TextSize", "Font", "Size", "BackgroundTransparency", "LayoutOrder", "TextColor3"}]
  LOADK R17 K55 ["/"]
  SETTABLEKS R17 R16 K38 ["Text"]
  GETTABLEKS R17 R7 K56 ["textSize"]
  SETTABLEKS R17 R16 K51 ["TextSize"]
  GETTABLEKS R17 R2 K57 ["font"]
  SETTABLEKS R17 R16 K52 ["Font"]
  GETIMPORT R17 K17 [UDim2.new]
  LOADN R18 0
  LOADN R19 12
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K12 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K11 ["BackgroundTransparency"]
  LOADN R17 1
  SETTABLEKS R17 R16 K13 ["LayoutOrder"]
  GETTABLEKS R17 R8 K58 ["iconColor"]
  SETTABLEKS R17 R16 K53 ["TextColor3"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K21 ["DividerLabel"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K59 [{"Size", "Text", "TextXAlignment", "LayoutOrder", "ClearTextOnFocus", "FocusChanged", "ReadOnly"}]
  GETIMPORT R17 K17 [UDim2.new]
  LOADN R18 0
  LOADN R19 40
  LOADN R20 1
  LOADN R21 250
  CALL R17 4 1
  SETTABLEKS R17 R16 K12 ["Size"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K43 ["formatTime"]
  MOVE R18 R5
  MOVE R19 R6
  MOVE R20 R3
  CALL R17 3 1
  SETTABLEKS R17 R16 K38 ["Text"]
  GETIMPORT R17 K44 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K39 ["TextXAlignment"]
  LOADN R17 2
  SETTABLEKS R17 R16 K13 ["LayoutOrder"]
  LOADB R17 0
  SETTABLEKS R17 R16 K40 ["ClearTextOnFocus"]
  GETTABLEKS R17 R0 K60 ["setEndTime"]
  SETTABLEKS R17 R16 K41 ["FocusChanged"]
  SETTABLEKS R9 R16 K8 ["ReadOnly"]
  DUPTABLE R17 K47 [{"Tooltip"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K49 [{"TextKey"}]
  LOADK R21 K22 ["EndFrameBox"]
  SETTABLEKS R21 R20 K48 ["TextKey"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K46 ["Tooltip"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K22 ["EndFrameBox"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["StringUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["withContext"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETTABLEKS R8 R9 K16 ["TextBox"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K17 ["Tooltip"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K18 ["PureComponent"]
  LOADK R11 K19 ["TimeDisplay"]
  NAMECALL R9 R9 K20 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K21 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K22 ["init"]
  DUPCLOSURE R10 K23 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K24 ["render"]
  MOVE R10 R6
  DUPTABLE R11 K26 [{"Stylizer"}]
  GETTABLEKS R12 R5 K25 ["Stylizer"]
  SETTABLEKS R12 R11 K25 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
