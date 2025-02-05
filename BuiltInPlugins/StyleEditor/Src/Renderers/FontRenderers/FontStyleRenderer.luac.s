PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+3]
  GETIMPORT R2 K3 [Enum.FontWeight.Regular]
  JUMP [+2]
  GETIMPORT R2 K5 [Enum.FontWeight.Bold]
  SETTABLEKS R2 R1 K6 ["Weight"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K7 ["OnChanged"]
  GETUPVAL R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+3]
  GETIMPORT R2 K3 [Enum.FontStyle.Normal]
  JUMP [+2]
  GETIMPORT R2 K5 [Enum.FontStyle.Italic]
  SETTABLEKS R2 R1 K6 ["Style"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K7 ["OnChanged"]
  GETUPVAL R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["Value"]
  GETTABLEKS R3 R1 K1 ["Style"]
  GETIMPORT R4 K5 [Enum.FontStyle.Italic]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R3 R1 K6 ["Bold"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 1
  NEWTABLE R6 1 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["Tag"]
  LOADK R8 K9 ["X-Middle X-PadS X-RowM"]
  SETTABLE R8 R6 R7
  DUPTABLE R7 K10 [{"Bold", "Italic"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 1
  NEWTABLE R10 1 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["Tag"]
  JUMPIFNOT R3 [+5]
  GETUPVAL R12 2
  LOADK R13 K11 ["FontStyle X-Corner X-Stroke"]
  LOADK R14 K12 ["Selected"]
  CALL R12 2 1
  JUMP [+1]
  LOADK R12 K11 ["FontStyle X-Corner X-Stroke"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K14 [{"BoldButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K15 ["TextButton"]
  NEWTABLE R14 2 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K16 ["Event"]
  GETTABLEKS R15 R16 K17 ["Activated"]
  NEWCLOSURE R16 P0
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLE R16 R14 R15
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["Tag"]
  JUMPIFNOT R3 [+5]
  GETUPVAL R16 2
  LOADK R17 K18 ["FontStyle ItemTextSize X-Fill"]
  LOADK R18 K12 ["Selected"]
  CALL R16 2 1
  JUMP [+1]
  LOADK R16 K18 ["FontStyle ItemTextSize X-Fill"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["BoldButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["Bold"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 1
  NEWTABLE R10 1 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["Tag"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R12 2
  LOADK R13 K11 ["FontStyle X-Corner X-Stroke"]
  LOADK R14 K12 ["Selected"]
  CALL R12 2 1
  JUMP [+1]
  LOADK R12 K11 ["FontStyle X-Corner X-Stroke"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K20 [{"ItalicButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K15 ["TextButton"]
  NEWTABLE R14 2 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K16 ["Event"]
  GETTABLEKS R15 R16 K17 ["Activated"]
  NEWCLOSURE R16 P1
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLE R16 R14 R15
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["Tag"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R16 2
  LOADK R17 K18 ["FontStyle ItemTextSize X-Fill"]
  LOADK R18 K12 ["Selected"]
  CALL R16 2 1
  JUMP [+1]
  LOADK R16 K18 ["FontStyle ItemTextSize X-Fill"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["ItalicButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K4 ["Italic"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  DUPTABLE R1 K1 [{"Fonts"}]
  GETTABLEKS R3 R0 K2 ["Asset"]
  GETTABLEKS R2 R3 K0 ["Fonts"]
  SETTABLEKS R2 R1 K0 ["Fonts"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["RoactRodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K9 ["Styling"]
  GETTABLEKS R4 R5 K10 ["joinTags"]
  GETTABLEKS R6 R3 K11 ["UI"]
  GETTABLEKS R5 R6 K12 ["Pane"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K14 ["Renderers"]
  GETTABLEKS R7 R8 K15 ["RendererTypes"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K16 ["Types"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K17 ["Reducers"]
  GETTABLEKS R9 R10 K18 ["RootReducer"]
  CALL R8 1 1
  DUPCLOSURE R9 K19 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  GETTABLEKS R10 R1 K20 ["connect"]
  DUPCLOSURE R11 K21 [PROTO_3]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 -1
  RETURN R10 -1
