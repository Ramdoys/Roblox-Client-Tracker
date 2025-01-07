PROTO_0:
  FASTCALL1 MATH_LOG R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K3 [math.log]
  CALL R2 1 1
  DIVK R1 R2 K0 [2.30258509299405]
  RETURN R1 1

PROTO_1:
  LOADN R2 10
  FASTCALL2 MATH_POW R2 R0 [+4]
  MOVE R3 R0
  GETIMPORT R1 K2 [math.pow]
  CALL R1 2 1
  RETURN R1 1

PROTO_2:
  FASTCALL1 MATH_LOG R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K3 [math.log]
  CALL R2 1 1
  DIVK R1 R2 K0 [2.30258509299405]
  RETURN R1 1

PROTO_3:
  LOADN R2 10
  FASTCALL2 MATH_POW R2 R0 [+4]
  MOVE R3 R0
  GETIMPORT R1 K2 [math.pow]
  CALL R1 2 1
  RETURN R1 1

PROTO_4:
  ADDK R2 R0 K0 [0.1]
  FASTCALL1 MATH_LOG R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K4 [math.log]
  CALL R3 1 1
  DIVK R1 R3 K1 [2.30258509299405]
  RETURN R1 1

PROTO_5:
  LOADN R3 10
  FASTCALL2 MATH_POW R3 R0 [+4]
  MOVE R4 R0
  GETIMPORT R2 K3 [math.pow]
  CALL R2 2 1
  SUBK R1 R2 K0 [0.1]
  RETURN R1 1

PROTO_6:
  ADDK R2 R0 K0 [1]
  FASTCALL1 MATH_LOG R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K4 [math.log]
  CALL R3 1 1
  DIVK R1 R3 K1 [2.30258509299405]
  RETURN R1 1

PROTO_7:
  LOADN R3 10
  FASTCALL2 MATH_POW R3 R0 [+4]
  MOVE R4 R0
  GETIMPORT R2 K3 [math.pow]
  CALL R2 2 1
  SUBK R1 R2 K0 [1]
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["SetActiveControl"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["SetActiveControl"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NEWTABLE R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["SetActiveControl"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["DataHook"]
  GETTABLEKS R4 R0 K0 ["DataHook"]
  GETTABLEKS R3 R4 K1 ["instanceType"]
  JUMPIFEQKS R3 K2 ["AudioCompressor"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Context"]
  GETTABLEKS R4 R5 K4 ["Consumer"]
  CALL R3 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Localization"]
  GETTABLEKS R5 R6 K6 ["Key"]
  GETTABLE R4 R3 R5
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  GETUPVAL R6 2
  LOADK R8 K7 ["Threshold"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE VAL R8
  NEWTABLE R8 0 1
  GETTABLEKS R9 R0 K8 ["SetActiveControl"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  GETUPVAL R7 2
  LOADK R9 K9 ["Ratio"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  CAPTURE VAL R9
  NEWTABLE R9 0 1
  GETTABLEKS R10 R0 K8 ["SetActiveControl"]
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R8 2
  LOADK R10 K10 ["Attack"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  CAPTURE VAL R10
  NEWTABLE R10 0 1
  GETTABLEKS R11 R0 K8 ["SetActiveControl"]
  SETLIST R10 R11 1 [1]
  CALL R8 2 1
  GETUPVAL R9 2
  LOADK R11 K11 ["Release"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R0
  CAPTURE VAL R11
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K8 ["SetActiveControl"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  GETUPVAL R10 2
  LOADK R12 K12 ["MakeupGain"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R0
  CAPTURE VAL R12
  NEWTABLE R12 0 1
  GETTABLEKS R13 R0 K8 ["SetActiveControl"]
  SETLIST R12 R13 1 [1]
  CALL R10 2 1
  GETUPVAL R11 2
  LOADK R13 K13 [""]
  NEWCLOSURE R12 P1
  CAPTURE VAL R0
  CAPTURE VAL R13
  NEWTABLE R13 0 1
  GETTABLEKS R14 R0 K8 ["SetActiveControl"]
  SETLIST R13 R14 1 [1]
  CALL R11 2 1
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K14 ["createElement"]
  GETUPVAL R13 4
  NEWTABLE R14 2 0
  GETIMPORT R15 K17 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K18 ["Size"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K19 ["Tag"]
  LOADK R16 K20 ["X-ColumnM"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K26 [{"ThresholdKnob", "RatioKnob", "AttackKnob", "ReleaseKnob", "MakeupGainKnob"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K37 [{"Label", "Value", "Min", "Max", "Precision", "Size", "DragRange", "LayoutOrder", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
  LOADK R21 K27 ["Label"]
  JUMPIFNOT R2 [+2]
  LOADK R22 K7 ["Threshold"]
  JUMP [+1]
  LOADK R22 K38 ["MaxLevel"]
  NAMECALL R19 R4 K39 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K27 ["Label"]
  GETTABLEKS R19 R1 K40 ["threshold"]
  SETTABLEKS R19 R18 K28 ["Value"]
  JUMPIFNOT R2 [+2]
  LOADN R19 196
  JUMP [+1]
  LOADN R19 244
  SETTABLEKS R19 R18 K29 ["Min"]
  LOADN R19 0
  SETTABLEKS R19 R18 K30 ["Max"]
  LOADN R19 1
  SETTABLEKS R19 R18 K31 ["Precision"]
  LOADN R19 25
  SETTABLEKS R19 R18 K18 ["Size"]
  LOADN R19 100
  SETTABLEKS R19 R18 K32 ["DragRange"]
  GETUPVAL R19 6
  NAMECALL R19 R19 K41 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K33 ["LayoutOrder"]
  SETTABLEKS R6 R18 K34 ["OnInputBegan"]
  GETTABLEKS R19 R1 K42 ["setThreshold"]
  SETTABLEKS R19 R18 K35 ["OnInputChanged"]
  SETTABLEKS R11 R18 K36 ["OnInputEnded"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K21 ["ThresholdKnob"]
  MOVE R16 R2
  JUMPIFNOT R16 [+49]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K45 [{"Label", "Value", "Min", "Max", "CurveFunction", "InverseCurveFunction", "Size", "DragRange", "LayoutOrder", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
  LOADK R21 K27 ["Label"]
  LOADK R22 K9 ["Ratio"]
  NAMECALL R19 R4 K39 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K27 ["Label"]
  GETTABLEKS R19 R1 K46 ["ratio"]
  SETTABLEKS R19 R18 K28 ["Value"]
  LOADN R19 1
  SETTABLEKS R19 R18 K29 ["Min"]
  LOADN R19 40
  SETTABLEKS R19 R18 K30 ["Max"]
  GETUPVAL R19 7
  SETTABLEKS R19 R18 K43 ["CurveFunction"]
  GETUPVAL R19 8
  SETTABLEKS R19 R18 K44 ["InverseCurveFunction"]
  LOADN R19 25
  SETTABLEKS R19 R18 K18 ["Size"]
  LOADN R19 100
  SETTABLEKS R19 R18 K32 ["DragRange"]
  GETUPVAL R19 6
  NAMECALL R19 R19 K41 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K33 ["LayoutOrder"]
  SETTABLEKS R7 R18 K34 ["OnInputBegan"]
  GETTABLEKS R19 R1 K47 ["setRatio"]
  SETTABLEKS R19 R18 K35 ["OnInputChanged"]
  SETTABLEKS R11 R18 K36 ["OnInputEnded"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K22 ["RatioKnob"]
  MOVE R16 R2
  JUMPIFNOT R16 [+52]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K48 [{"Label", "Value", "Min", "Max", "Precision", "CurveFunction", "InverseCurveFunction", "Size", "DragRange", "LayoutOrder", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
  LOADK R21 K27 ["Label"]
  LOADK R22 K10 ["Attack"]
  NAMECALL R19 R4 K39 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K27 ["Label"]
  GETTABLEKS R19 R1 K49 ["attack"]
  SETTABLEKS R19 R18 K28 ["Value"]
  LOADK R19 K50 [0.0001]
  SETTABLEKS R19 R18 K29 ["Min"]
  LOADK R19 K51 [0.5]
  SETTABLEKS R19 R18 K30 ["Max"]
  LOADN R19 3
  SETTABLEKS R19 R18 K31 ["Precision"]
  GETUPVAL R19 9
  SETTABLEKS R19 R18 K43 ["CurveFunction"]
  GETUPVAL R19 10
  SETTABLEKS R19 R18 K44 ["InverseCurveFunction"]
  LOADN R19 25
  SETTABLEKS R19 R18 K18 ["Size"]
  LOADN R19 100
  SETTABLEKS R19 R18 K32 ["DragRange"]
  GETUPVAL R19 6
  NAMECALL R19 R19 K41 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K33 ["LayoutOrder"]
  SETTABLEKS R8 R18 K34 ["OnInputBegan"]
  GETTABLEKS R19 R1 K52 ["setAttack"]
  SETTABLEKS R19 R18 K35 ["OnInputChanged"]
  SETTABLEKS R11 R18 K36 ["OnInputEnded"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K23 ["AttackKnob"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K48 [{"Label", "Value", "Min", "Max", "Precision", "CurveFunction", "InverseCurveFunction", "Size", "DragRange", "LayoutOrder", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
  LOADK R21 K27 ["Label"]
  LOADK R22 K11 ["Release"]
  NAMECALL R19 R4 K39 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K27 ["Label"]
  GETTABLEKS R19 R1 K53 ["release"]
  SETTABLEKS R19 R18 K28 ["Value"]
  JUMPIFNOT R2 [+2]
  LOADK R19 K54 [0.01]
  JUMP [+1]
  LOADK R19 K55 [0.001]
  SETTABLEKS R19 R18 K29 ["Min"]
  JUMPIFNOT R2 [+2]
  LOADN R19 5
  JUMP [+1]
  LOADN R19 1
  SETTABLEKS R19 R18 K30 ["Max"]
  LOADN R19 3
  SETTABLEKS R19 R18 K31 ["Precision"]
  GETUPVAL R19 11
  SETTABLEKS R19 R18 K43 ["CurveFunction"]
  GETUPVAL R19 12
  SETTABLEKS R19 R18 K44 ["InverseCurveFunction"]
  LOADN R19 25
  SETTABLEKS R19 R18 K18 ["Size"]
  LOADN R19 100
  SETTABLEKS R19 R18 K32 ["DragRange"]
  GETUPVAL R19 6
  NAMECALL R19 R19 K41 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K33 ["LayoutOrder"]
  SETTABLEKS R9 R18 K34 ["OnInputBegan"]
  GETTABLEKS R19 R1 K56 ["setRelease"]
  SETTABLEKS R19 R18 K35 ["OnInputChanged"]
  SETTABLEKS R11 R18 K36 ["OnInputEnded"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K24 ["ReleaseKnob"]
  MOVE R16 R2
  JUMPIFNOT R16 [+43]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K57 [{"Label", "Value", "Min", "Max", "Size", "DragRange", "LayoutOrder", "OnInputBegan", "OnInputChanged", "OnInputEnded"}]
  LOADK R21 K27 ["Label"]
  LOADK R22 K12 ["MakeupGain"]
  NAMECALL R19 R4 K39 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K27 ["Label"]
  GETTABLEKS R19 R1 K58 ["makeupGain"]
  SETTABLEKS R19 R18 K28 ["Value"]
  LOADN R19 226
  SETTABLEKS R19 R18 K29 ["Min"]
  LOADN R19 30
  SETTABLEKS R19 R18 K30 ["Max"]
  LOADN R19 25
  SETTABLEKS R19 R18 K18 ["Size"]
  LOADN R19 100
  SETTABLEKS R19 R18 K32 ["DragRange"]
  GETUPVAL R19 6
  NAMECALL R19 R19 K41 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K33 ["LayoutOrder"]
  SETTABLEKS R10 R18 K34 ["OnInputBegan"]
  GETTABLEKS R19 R1 K59 ["setMakeupGain"]
  SETTABLEKS R19 R18 K35 ["OnInputChanged"]
  SETTABLEKS R11 R18 K36 ["OnInputEnded"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["MakeupGainKnob"]
  CALL R12 3 -1
  RETURN R12 -1

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
  GETTABLEKS R4 R2 K10 ["useContext"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R1 K7 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K12 ["ContextServices"]
  GETTABLEKS R8 R5 K13 ["UI"]
  GETTABLEKS R7 R8 K14 ["Pane"]
  GETTABLEKS R9 R5 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["LayoutOrderIterator"]
  GETTABLEKS R9 R8 K17 ["new"]
  CALL R9 0 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R0 K18 ["Knob"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R1 K19 ["Src"]
  GETTABLEKS R12 R13 K20 ["Types"]
  CALL R11 1 1
  DUPCLOSURE R12 K21 [PROTO_0]
  DUPCLOSURE R13 K22 [PROTO_1]
  DUPCLOSURE R14 K23 [PROTO_2]
  DUPCLOSURE R15 K24 [PROTO_3]
  DUPCLOSURE R16 K25 [PROTO_4]
  DUPCLOSURE R17 K26 [PROTO_5]
  DUPCLOSURE R18 K27 [PROTO_6]
  DUPCLOSURE R19 K28 [PROTO_7]
  DUPCLOSURE R20 K29 [PROTO_10]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R19
  RETURN R20 1
