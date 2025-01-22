PROTO_0:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R2 R3 [+16]
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["UserInputType"]
  GETIMPORT R3 K5 [Enum.UserInputType.MouseButton2]
  JUMPIFEQ R2 R3 [+9]
  GETTABLEKS R2 R0 K0 ["UserInputType"]
  GETIMPORT R3 K7 [Enum.UserInputType.MouseMovement]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  LOADB R2 1
  GETTABLEKS R3 R0 K0 ["UserInputType"]
  GETIMPORT R4 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R3 R4 [+16]
  LOADB R2 1
  GETTABLEKS R3 R0 K0 ["UserInputType"]
  GETIMPORT R4 K5 [Enum.UserInputType.MouseButton2]
  JUMPIFEQ R3 R4 [+9]
  GETTABLEKS R3 R0 K0 ["UserInputType"]
  GETIMPORT R4 K7 [Enum.UserInputType.MouseMovement]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+3]
  GETUPVAL R2 0
  LOADB R3 1
  CALL R2 1 0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K8 ["Fire"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  LOADB R2 1
  GETTABLEKS R3 R0 K0 ["UserInputType"]
  GETIMPORT R4 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R3 R4 [+16]
  LOADB R2 1
  GETTABLEKS R3 R0 K0 ["UserInputType"]
  GETIMPORT R4 K5 [Enum.UserInputType.MouseButton2]
  JUMPIFEQ R3 R4 [+9]
  GETTABLEKS R3 R0 K0 ["UserInputType"]
  GETIMPORT R4 K7 [Enum.UserInputType.MouseMovement]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+3]
  GETUPVAL R2 0
  LOADB R3 1
  CALL R2 1 0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K8 ["Fire"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["Fire"]
  CALL R2 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Observable"]
  GETTABLEKS R1 R2 K1 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["useState"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Signal"]
  GETTABLEKS R4 R5 K3 ["new"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["useState"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["Signal"]
  GETTABLEKS R5 R6 K3 ["new"]
  CALL R4 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["useState"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["Signal"]
  GETTABLEKS R6 R7 K3 ["new"]
  CALL R5 1 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["useEventConnection"]
  GETTABLEKS R8 R0 K5 ["dockWidget"]
  GETTABLEKS R7 R8 K6 ["InputBegan"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R2
  CAPTURE VAL R3
  NEWTABLE R9 0 1
  MOVE R10 R3
  SETLIST R9 R10 1 [1]
  CALL R6 3 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["useEventConnection"]
  GETTABLEKS R8 R0 K5 ["dockWidget"]
  GETTABLEKS R7 R8 K7 ["InputChanged"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R2
  CAPTURE VAL R4
  NEWTABLE R9 0 1
  MOVE R10 R4
  SETLIST R9 R10 1 [1]
  CALL R6 3 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["useEventConnection"]
  GETTABLEKS R8 R0 K5 ["dockWidget"]
  GETTABLEKS R7 R8 K8 ["InputEnded"]
  NEWCLOSURE R8 P2
  CAPTURE VAL R5
  NEWTABLE R9 0 1
  MOVE R10 R5
  SETLIST R9 R10 1 [1]
  CALL R6 3 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["useEventConnection"]
  GETTABLEKS R8 R0 K5 ["dockWidget"]
  GETTABLEKS R7 R8 K9 ["MouseLeave"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R2
  NEWTABLE R9 0 0
  CALL R6 3 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K10 ["useListenToGuest"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R2
  NEWTABLE R8 0 0
  CALL R6 2 0
  GETUPVAL R6 4
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["Components"]
  GETTABLEKS R8 R9 K12 ["Contexts"]
  GETTABLEKS R7 R8 K13 ["WindowInputContextProvider"]
  DUPTABLE R8 K18 [{"windowHoveredObservable", "inputBeganSignal", "inputChangedSignal", "inputEndedSignal"}]
  SETTABLEKS R1 R8 K14 ["windowHoveredObservable"]
  SETTABLEKS R3 R8 K15 ["inputBeganSignal"]
  SETTABLEKS R4 R8 K16 ["inputChangedSignal"]
  SETTABLEKS R5 R8 K17 ["inputEndedSignal"]
  GETTABLEKS R9 R0 K19 ["children"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["fire"]
  CALL R0 0 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["MouseEnterStudioViewport"]
  DUPCLOSURE R2 K1 [PROTO_7]
  CAPTURE UPVAL U1
  NAMECALL R0 R0 K2 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MouseService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["ExplorerPlugin"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Explorer"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K10 ["Packages"]
  GETTABLEKS R5 R6 K13 ["ReactUtils"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["SharedFeatures"]
  GETTABLEKS R6 R7 K16 ["createPluginRpcMethod"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K17 ["createElement"]
  NEWTABLE R7 2 0
  MOVE R8 R5
  LOADK R9 K18 ["ViewportHovered"]
  CALL R8 1 1
  DUPCLOSURE R9 K19 [PROTO_0]
  DUPCLOSURE R10 K20 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R10 R7 K21 ["Provider"]
  DUPCLOSURE R10 K22 [PROTO_9]
  CAPTURE VAL R0
  CAPTURE VAL R8
  SETTABLEKS R10 R7 K23 ["connectGuest"]
  RETURN R7 1
