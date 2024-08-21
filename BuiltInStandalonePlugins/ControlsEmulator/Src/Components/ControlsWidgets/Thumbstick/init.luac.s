PROTO_0:
  GETTABLEKS R5 R0 K1 ["X"]
  GETTABLEKS R4 R5 K2 ["Offset"]
  POWK R3 R4 K0 [2]
  GETTABLEKS R6 R0 K3 ["Y"]
  GETTABLEKS R5 R6 K2 ["Offset"]
  POWK R4 R5 K0 [2]
  ADD R2 R3 R4
  FASTCALL1 MATH_SQRT R2 [+2]
  GETIMPORT R1 K6 [math.sqrt]
  CALL R1 1 1
  LOADN R3 0
  JUMPIFNOTLT R3 R1 [+11]
  GETTABLEKS R5 R0 K1 ["X"]
  GETTABLEKS R4 R5 K2 ["Offset"]
  DIV R3 R4 R1
  FASTCALL1 MATH_ABS R3 [+2]
  GETIMPORT R2 K8 [math.abs]
  CALL R2 1 1
  JUMP [+1]
  LOADN R2 0
  LOADN R4 0
  JUMPIFNOTLT R4 R1 [+11]
  GETTABLEKS R6 R0 K3 ["Y"]
  GETTABLEKS R5 R6 K2 ["Offset"]
  DIV R4 R5 R1
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K8 [math.abs]
  CALL R3 1 1
  RETURN R2 2
  LOADN R3 0
  RETURN R2 2

PROTO_1:
  GETUPVAL R1 0
  DIVK R0 R1 K0 [2]
  MOVE R1 R0
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["DEFAULT_THUMBSTICK_SIZE_RELATIVE"]
  MUL R2 R3 R4
  RETURN R1 2

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["inputState"]
  JUMPIFNOTEQKNIL R0 [+9]
  GETIMPORT R0 K3 [UDim2.new]
  LOADN R1 0
  LOADN R2 0
  LOADN R3 0
  LOADN R4 0
  CALL R0 4 -1
  RETURN R0 -1
  GETIMPORT R0 K3 [UDim2.new]
  LOADN R1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["inputState"]
  GETTABLEKS R4 R5 K4 ["X"]
  GETUPVAL R5 1
  MUL R3 R4 R5
  GETUPVAL R5 1
  MINUS R4 R5
  GETUPVAL R5 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K7 [math.clamp]
  CALL R2 3 1
  LOADN R3 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["inputState"]
  GETTABLEKS R7 R8 K8 ["Y"]
  MINUS R6 R7
  GETUPVAL R7 1
  MUL R5 R6 R7
  GETUPVAL R7 1
  MINUS R6 R7
  GETUPVAL R7 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K7 [math.clamp]
  CALL R4 3 1
  CALL R0 4 1
  RETURN R0 1

PROTO_3:
  GETUPVAL R4 0
  ADD R3 R0 R4
  GETTABLEKS R8 R3 K1 ["X"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  POWK R6 R7 K0 [2]
  GETTABLEKS R9 R3 K3 ["Y"]
  GETTABLEKS R8 R9 K2 ["Offset"]
  POWK R7 R8 K0 [2]
  ADD R5 R6 R7
  FASTCALL1 MATH_SQRT R5 [+2]
  GETIMPORT R4 K6 [math.sqrt]
  CALL R4 1 1
  LOADN R6 0
  JUMPIFNOTLT R6 R4 [+11]
  GETTABLEKS R8 R3 K1 ["X"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  DIV R6 R7 R4
  FASTCALL1 MATH_ABS R6 [+2]
  GETIMPORT R5 K8 [math.abs]
  CALL R5 1 1
  JUMP [+1]
  LOADN R5 0
  LOADN R7 0
  JUMPIFNOTLT R7 R4 [+11]
  GETTABLEKS R9 R3 K3 ["Y"]
  GETTABLEKS R8 R9 K2 ["Offset"]
  DIV R7 R8 R4
  FASTCALL1 MATH_ABS R7 [+2]
  GETIMPORT R6 K8 [math.abs]
  CALL R6 1 1
  JUMP [+1]
  LOADN R6 0
  MOVE R1 R5
  MOVE R2 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["X"]
  GETTABLEKS R6 R7 K2 ["Offset"]
  GETTABLEKS R8 R0 K1 ["X"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  ADD R5 R6 R7
  GETUPVAL R8 1
  MINUS R7 R8
  MUL R6 R7 R1
  GETUPVAL R8 1
  MUL R7 R8 R1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K10 [math.clamp]
  CALL R4 3 1
  GETUPVAL R5 1
  ADD R3 R4 R5
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["Y"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  GETTABLEKS R9 R0 K3 ["Y"]
  GETTABLEKS R8 R9 K2 ["Offset"]
  ADD R6 R7 R8
  GETUPVAL R9 1
  MINUS R8 R9
  MUL R7 R8 R2
  GETUPVAL R9 1
  MUL R8 R9 R2
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K10 [math.clamp]
  CALL R5 3 1
  GETUPVAL R6 1
  ADD R4 R5 R6
  GETIMPORT R5 K13 [UDim2.new]
  LOADN R6 0
  MOVE R7 R3
  LOADN R8 0
  MOVE R9 R4
  CALL R5 4 -1
  RETURN R5 -1

PROTO_4:
  GETTABLEKS R7 R0 K1 ["X"]
  GETTABLEKS R6 R7 K2 ["Offset"]
  POWK R5 R6 K0 [2]
  GETTABLEKS R8 R0 K3 ["Y"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  POWK R6 R7 K0 [2]
  ADD R4 R5 R6
  FASTCALL1 MATH_SQRT R4 [+2]
  GETIMPORT R3 K6 [math.sqrt]
  CALL R3 1 1
  LOADN R5 0
  JUMPIFNOTLT R5 R3 [+11]
  GETTABLEKS R7 R0 K1 ["X"]
  GETTABLEKS R6 R7 K2 ["Offset"]
  DIV R5 R6 R3
  FASTCALL1 MATH_ABS R5 [+2]
  GETIMPORT R4 K8 [math.abs]
  CALL R4 1 1
  JUMP [+1]
  LOADN R4 0
  LOADN R6 0
  JUMPIFNOTLT R6 R3 [+11]
  GETTABLEKS R8 R0 K3 ["Y"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  DIV R6 R7 R3
  FASTCALL1 MATH_ABS R6 [+2]
  GETIMPORT R5 K8 [math.abs]
  CALL R5 1 1
  JUMP [+1]
  LOADN R5 0
  MOVE R1 R4
  MOVE R2 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["X"]
  GETTABLEKS R5 R6 K2 ["Offset"]
  GETTABLEKS R7 R0 K1 ["X"]
  GETTABLEKS R6 R7 K2 ["Offset"]
  ADD R4 R5 R6
  GETUPVAL R7 1
  MINUS R6 R7
  MUL R5 R6 R1
  GETUPVAL R7 1
  MUL R6 R7 R1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R3 K10 [math.clamp]
  CALL R3 3 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["Y"]
  GETTABLEKS R6 R7 K2 ["Offset"]
  GETTABLEKS R8 R0 K3 ["Y"]
  GETTABLEKS R7 R8 K2 ["Offset"]
  ADD R5 R6 R7
  GETUPVAL R8 1
  MINUS R7 R8
  MUL R6 R7 R2
  GETUPVAL R8 1
  MUL R7 R8 R2
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K10 [math.clamp]
  CALL R4 3 1
  GETUPVAL R7 1
  DIV R6 R3 R7
  LOADN R7 255
  LOADN R8 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K10 [math.clamp]
  CALL R5 3 1
  MINUS R8 R4
  GETUPVAL R9 1
  DIV R7 R8 R9
  LOADN R8 255
  LOADN R9 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R6 K10 [math.clamp]
  CALL R6 3 1
  MOVE R8 R5
  MOVE R9 R6
  LOADN R10 0
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K13 [Vector3.new]
  CALL R7 3 1
  RETURN R7 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K1 ["X"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  JUMPIFNOT R0 [+3]
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["current"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["keyCode"]
  GETUPVAL R4 3
  GETIMPORT R5 K3 [Vector3.zero]
  NAMECALL R0 R0 K4 ["SendGamepadEvent"]
  CALL R0 5 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R1 R2 [+56]
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R1 1
  GETIMPORT R2 K7 [UDim2.new]
  LOADN R3 0
  GETTABLEKS R6 R0 K8 ["Position"]
  GETTABLEKS R5 R6 K9 ["X"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["current"]
  SUB R4 R5 R6
  LOADN R5 0
  GETTABLEKS R8 R0 K8 ["Position"]
  GETTABLEKS R7 R8 K10 ["Y"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["current"]
  SUB R6 R7 R8
  CALL R2 4 1
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K4 ["current"]
  GETUPVAL R2 5
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["current"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["Position"]
  GETUPVAL R1 6
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["current"]
  CALL R1 1 1
  GETIMPORT R2 K12 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K0 ["keyCode"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["VECTOR_PRESSED"]
  GETIMPORT R5 K4 [Vector3.zero]
  NAMECALL R0 R0 K5 ["SendGamepadEvent"]
  CALL R0 5 0
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K0 ["keyCode"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K6 ["VECTOR_RELEASED"]
  GETIMPORT R5 K4 [Vector3.zero]
  NAMECALL R0 R0 K5 ["SendGamepadEvent"]
  CALL R0 5 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["keyCode"]
  GETIMPORT R4 K3 [Vector3.zero]
  GETIMPORT R5 K3 [Vector3.zero]
  NAMECALL R0 R0 K4 ["SendGamepadEvent"]
  CALL R0 5 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R1 R2 [+74]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFEQKNIL R1 [+69]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFEQKNIL R1 [+64]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["current"]
  NAMECALL R1 R1 K5 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["current"]
  NAMECALL R1 R1 K5 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFNOT R1 [+14]
  GETUPVAL R1 2
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["current"]
  GETIMPORT R1 K7 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CALL R1 1 0
  RETURN R0 0
  GETIMPORT R1 K7 [pcall]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CALL R1 1 0
  GETUPVAL R1 8
  GETUPVAL R2 9
  SETTABLEKS R2 R1 K4 ["current"]
  GETUPVAL R2 10
  GETTABLEKS R1 R2 K4 ["current"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R2 10
  GETTABLEKS R1 R2 K4 ["current"]
  GETUPVAL R2 11
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K4 ["current"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["Position"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R2 [+79]
  GETUPVAL R2 1
  JUMPIFEQKNIL R2 [+76]
  GETUPVAL R2 2
  JUMPIFEQKNIL R2 [+73]
  GETTABLEKS R2 R1 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+67]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFEQKNIL R2 [+62]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFEQKNIL R2 [+57]
  GETUPVAL R2 3
  GETTABLEKS R4 R1 K5 ["Position"]
  GETTABLEKS R3 R4 K6 ["X"]
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 4
  GETTABLEKS R4 R1 K5 ["Position"]
  GETTABLEKS R3 R4 K7 ["Y"]
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 5
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 0
  GETUPVAL R3 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  NAMECALL R3 R3 K8 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["current"]
  GETUPVAL R2 13
  GETUPVAL R3 2
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U13
  CAPTURE UPVAL U5
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U14
  CAPTURE UPVAL U12
  CAPTURE UPVAL U15
  CAPTURE UPVAL U6
  CAPTURE UPVAL U16
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  NAMECALL R3 R3 K8 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["current"]
  RETURN R0 0

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  DUPTABLE R2 K3 [{"relativeSocketSize"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["DEFAULT_THUMBSTICK_SOCKET_SIZE_RELATIVE"]
  SETTABLEKS R3 R2 K2 ["relativeSocketSize"]
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["useState"]
  LOADN R3 1
  CALL R2 1 2
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["useMemo"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  NEWTABLE R6 0 1
  MOVE R7 R2
  SETLIST R6 R7 1 [1]
  CALL R4 2 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["useContext"]
  GETUPVAL R8 3
  CALL R7 1 1
  GETTABLEKS R6 R7 K8 ["gamepadId"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["useRef"]
  LOADNIL R8
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K9 ["useRef"]
  LOADNIL R9
  CALL R8 1 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K9 ["useRef"]
  LOADN R10 0
  CALL R9 1 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K9 ["useRef"]
  LOADN R11 0
  CALL R10 1 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K9 ["useRef"]
  LOADB R12 0
  CALL R11 1 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K9 ["useRef"]
  GETUPVAL R13 4
  CALL R12 1 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K9 ["useRef"]
  LOADNIL R14
  CALL R13 1 1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K7 ["useContext"]
  GETUPVAL R15 5
  CALL R14 1 1
  GETTABLEKS R15 R14 K10 ["InputChanged"]
  GETTABLEKS R16 R14 K11 ["InputEnded"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K6 ["useMemo"]
  NEWCLOSURE R18 P1
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWTABLE R19 0 2
  GETTABLEKS R20 R1 K12 ["inputState"]
  MOVE R21 R4
  SETLIST R19 R20 2 [1]
  CALL R17 2 1
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K13 ["useCallback"]
  NEWCLOSURE R19 P2
  CAPTURE VAL R17
  CAPTURE VAL R4
  NEWTABLE R20 0 2
  MOVE R21 R17
  MOVE R22 R4
  SETLIST R20 R21 2 [1]
  CALL R18 2 1
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K13 ["useCallback"]
  NEWCLOSURE R20 P3
  CAPTURE VAL R17
  CAPTURE VAL R4
  CALL R19 1 1
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K13 ["useCallback"]
  NEWCLOSURE R21 P4
  CAPTURE VAL R3
  NEWTABLE R22 0 1
  MOVE R23 R3
  SETLIST R22 R23 1 [1]
  CALL R20 2 1
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K14 ["createElement"]
  LOADK R22 K15 ["Frame"]
  NEWTABLE R23 4 0
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K16 ["Tag"]
  LOADK R25 K17 ["Widget-Thumbstick X-Circle data-testid=Widget-Thumbstick"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R1 K18 ["Position"]
  SETTABLEKS R24 R23 K18 ["Position"]
  GETIMPORT R24 K21 [UDim2.new]
  GETTABLEKS R25 R1 K2 ["relativeSocketSize"]
  LOADN R26 0
  GETTABLEKS R27 R1 K2 ["relativeSocketSize"]
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K22 ["Size"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K23 ["Change"]
  GETTABLEKS R24 R25 K24 ["AbsoluteSize"]
  SETTABLE R20 R23 R24
  DUPTABLE R24 K26 [{"Stick"}]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K14 ["createElement"]
  LOADK R26 K15 ["Frame"]
  NEWTABLE R27 8 0
  GETIMPORT R28 K21 [UDim2.new]
  LOADN R29 0
  MOVE R30 R5
  LOADN R31 0
  MOVE R32 R5
  CALL R28 4 1
  SETTABLEKS R28 R27 K22 ["Size"]
  MOVE R28 R18
  GETTABLEKS R29 R12 K27 ["current"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K18 ["Position"]
  NEWCLOSURE R28 P5
  CAPTURE VAL R13
  SETTABLEKS R28 R27 K28 ["ref"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K16 ["Tag"]
  GETUPVAL R29 6
  LOADK R30 K29 ["Widget-Thumbstick-Stick"]
  LOADK R31 K30 ["X-Circle"]
  LOADK R32 K31 ["data-testid=Widget-Thumbstick-Stick"]
  GETTABLEKS R34 R1 K12 ["inputState"]
  JUMPIFEQKNIL R34 [+3]
  LOADK R33 K32 ["Active"]
  JUMP [+1]
  LOADNIL R33
  GETTABLEKS R35 R1 K33 ["clickInputState"]
  JUMPIFEQKNIL R35 [+3]
  LOADK R34 K32 ["Active"]
  JUMP [+1]
  LOADNIL R34
  CALL R29 5 1
  SETTABLE R29 R27 R28
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K34 ["Event"]
  GETTABLEKS R28 R29 K35 ["InputBegan"]
  NEWCLOSURE R29 P6
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE UPVAL U7
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE UPVAL U8
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K25 ["Stick"]
  CALL R21 3 -1
  RETURN R21 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["RootContainerInputContext"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Util"]
  GETTABLEKS R6 R7 K12 ["MockableProxyPluginComponents"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K13 ["StudioDeviceEmulator"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K15 ["Styling"]
  GETTABLEKS R6 R7 K16 ["joinTags"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K10 ["Packages"]
  GETTABLEKS R8 R9 K17 ["React"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K7 ["Util"]
  GETTABLEKS R9 R10 K18 ["MappingsContext"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K19 ["THUMBSTICK_KEYCODE_TO_THUMBSTICK_CLICK"]
  GETIMPORT R10 K22 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  DUPCLOSURE R11 K23 [PROTO_0]
  DUPCLOSURE R12 K24 [PROTO_13]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R9
  GETTABLEKS R13 R7 K25 ["memo"]
  MOVE R14 R12
  CALL R13 1 -1
  RETURN R13 -1
