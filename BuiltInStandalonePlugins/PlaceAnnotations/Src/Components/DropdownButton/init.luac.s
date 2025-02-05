PROTO_0:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 1
  LOADNIL R2
  NAMECALL R0 R0 K0 ["SetFocusedElement"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["GetFocusedElement"]
  CALL R2 1 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["FocusedElementChangedSignal"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnSelect"]
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R0 2
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 3
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 4
  LOADNIL R2
  NAMECALL R0 R0 K1 ["SetFocusedElement"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  CALL R0 0 0
  GETUPVAL R0 1
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 2
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 3
  LOADNIL R2
  NAMECALL R0 R0 K0 ["SetFocusedElement"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+10]
  GETUPVAL R0 1
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R0 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["current"]
  NAMECALL R0 R0 K1 ["SetFocusedElement"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K2 ["use"]
  CALL R2 1 1
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 1
  GETUPVAL R3 3
  NAMECALL R3 R3 K2 ["use"]
  CALL R3 1 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K4 ["useState"]
  GETTABLEKS R6 R1 K5 ["Disabled"]
  NOT R5 R6
  CALL R4 1 2
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K4 ["useState"]
  LOADB R7 0
  CALL R6 1 2
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K4 ["useState"]
  LOADB R9 0
  CALL R8 1 2
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K6 ["useRef"]
  LOADNIL R11
  CALL R10 1 1
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K4 ["useState"]
  GETIMPORT R12 K9 [Vector2.zero]
  CALL R11 1 2
  GETUPVAL R13 5
  GETTABLEKS R15 R10 K10 ["current"]
  JUMPIFNOT R15 [+21]
  GETIMPORT R14 K13 [UDim2.fromOffset]
  GETTABLEKS R19 R10 K10 ["current"]
  GETTABLEKS R18 R19 K15 ["AbsolutePosition"]
  GETTABLEKS R17 R18 K16 ["X"]
  GETTABLEKS R18 R11 K16 ["X"]
  SUB R16 R17 R18
  ADDK R15 R16 K14 [16]
  GETTABLEKS R19 R10 K10 ["current"]
  GETTABLEKS R18 R19 K15 ["AbsolutePosition"]
  GETTABLEKS R17 R18 K17 ["Y"]
  ADDK R16 R17 K14 [16]
  CALL R14 2 1
  JUMP [+5]
  GETIMPORT R14 K19 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  CALL R14 2 1
  GETTABLEKS R15 R11 K16 ["X"]
  GETTABLEKS R16 R11 K17 ["Y"]
  CALL R13 3 1
  GETUPVAL R14 6
  MOVE R15 R6
  NEWCLOSURE R16 P0
  CAPTURE VAL R9
  CAPTURE VAL R3
  CALL R14 2 0
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K20 ["useEffect"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R3
  CAPTURE VAL R5
  NEWTABLE R16 0 0
  CALL R14 2 0
  NEWTABLE R14 0 0
  GETTABLEKS R15 R1 K21 ["DropdownItems"]
  LOADNIL R16
  LOADNIL R17
  FORGPREP R15
  FASTCALL1 TYPE R19 [+3]
  MOVE R21 R19
  GETIMPORT R20 K23 [type]
  CALL R20 1 1
  JUMPIFNOTEQKS R20 K24 ["string"] [+37]
  GETTABLEKS R21 R1 K25 ["OnSelect"]
  FASTCALL2K ASSERT R21 K26 [+4]
  LOADK R22 K26 ["String items must have an OnSelect fn defined."]
  GETIMPORT R20 K28 [assert]
  CALL R20 2 0
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K29 ["createElement"]
  LOADK R21 K30 ["TextButton"]
  NEWTABLE R22 4 0
  SETTABLEKS R19 R22 K31 ["Text"]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K32 ["Event"]
  GETTABLEKS R23 R24 K33 ["Activated"]
  NEWCLOSURE R24 P2
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLE R24 R22 R23
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K34 ["Tag"]
  LOADK R24 K35 ["Component-DropdownItem"]
  SETTABLE R24 R22 R23
  CALL R20 2 1
  SETTABLE R20 R14 R18
  JUMP [+22]
  GETTABLEKS R21 R19 K36 ["props"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K32 ["Event"]
  GETTABLEKS R22 R23 K33 ["Activated"]
  GETTABLE R20 R21 R22
  GETTABLEKS R21 R19 K36 ["props"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K32 ["Event"]
  GETTABLEKS R22 R23 K33 ["Activated"]
  NEWCLOSURE R23 P3
  CAPTURE VAL R20
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLE R23 R21 R22
  SETTABLE R19 R14 R18
  FORGLOOP R15 2 [-66]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K29 ["createElement"]
  LOADK R16 K37 ["ImageButton"]
  NEWTABLE R17 4 0
  SETTABLEKS R10 R17 K38 ["ref"]
  MOVE R18 R4
  JUMPIFNOT R18 [+3]
  GETTABLEKS R19 R1 K5 ["Disabled"]
  NOT R18 R19
  SETTABLEKS R18 R17 K39 ["Interactable"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K32 ["Event"]
  GETTABLEKS R18 R19 K33 ["Activated"]
  NEWCLOSURE R19 P4
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R10
  SETTABLE R19 R17 R18
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K34 ["Tag"]
  GETUPVAL R19 7
  LOADK R20 K40 ["Component-DropdownButton"]
  GETTABLEKS R21 R1 K41 ["ImageTag"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K34 ["Tag"]
  GETTABLE R22 R1 R23
  GETTABLEKS R24 R1 K5 ["Disabled"]
  JUMPIFNOT R24 [+2]
  LOADK R23 K5 ["Disabled"]
  JUMP [+1]
  LOADNIL R23
  CALL R19 4 1
  SETTABLE R19 R17 R18
  DUPTABLE R18 K43 [{"Dropdown"}]
  JUMPIFNOT R8 [+53]
  GETUPVAL R20 8
  GETTABLEKS R19 R20 K44 ["createPortal"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K29 ["createElement"]
  LOADK R21 K45 ["CanvasGroup"]
  NEWTABLE R22 8 0
  SETTABLEKS R13 R22 K46 ["Position"]
  GETTABLEKS R23 R1 K47 ["Size"]
  SETTABLEKS R23 R22 K47 ["Size"]
  GETTABLEKS R23 R1 K48 ["AutomaticSize"]
  SETTABLEKS R23 R22 K48 ["AutomaticSize"]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K32 ["Event"]
  GETTABLEKS R23 R24 K49 ["MouseEnter"]
  NEWCLOSURE R24 P5
  CAPTURE VAL R7
  SETTABLE R24 R22 R23
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K32 ["Event"]
  GETTABLEKS R23 R24 K50 ["MouseLeave"]
  NEWCLOSURE R24 P6
  CAPTURE VAL R7
  SETTABLE R24 R22 R23
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K51 ["Change"]
  GETTABLEKS R23 R24 K52 ["AbsoluteSize"]
  NEWCLOSURE R24 P7
  CAPTURE VAL R12
  SETTABLE R24 R22 R23
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K34 ["Tag"]
  LOADK R24 K53 ["Component-Dropdown X-Column"]
  SETTABLE R24 R22 R23
  MOVE R23 R14
  CALL R20 3 1
  MOVE R21 R2
  CALL R19 2 1
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K42 ["Dropdown"]
  CALL R15 3 -1
  RETURN R15 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactRoblox"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Cryo"]
  CALL R4 1 1
  GETTABLEKS R6 R3 K11 ["Styling"]
  GETTABLEKS R5 R6 K12 ["joinTags"]
  GETTABLEKS R6 R3 K13 ["ContextServices"]
  GETTABLEKS R7 R6 K14 ["Focus"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K16 ["Hooks"]
  GETTABLEKS R9 R10 K17 ["useFocusLost"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Hooks"]
  GETTABLEKS R10 R11 K18 ["useViewportPosition"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K19 ["Contexts"]
  GETTABLEKS R11 R12 K20 ["InputListenerContext"]
  CALL R10 1 1
  DUPTABLE R11 K25 [{"Size", "AutomaticSize", "ImageTag", "Disabled"}]
  GETIMPORT R12 K28 [UDim2.fromOffset]
  LOADN R13 128
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["Size"]
  GETIMPORT R12 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K22 ["AutomaticSize"]
  LOADK R12 K32 ["MoreIcon"]
  SETTABLEKS R12 R11 K23 ["ImageTag"]
  LOADB R12 0
  SETTABLEKS R12 R11 K24 ["Disabled"]
  DUPCLOSURE R12 K33 [PROTO_9]
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R12 1
