PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["KeyCode"]
  GETUPVAL R4 3
  GETIMPORT R5 K3 [Vector3.zero]
  NAMECALL R0 R0 K4 ["SendGamepadEvent"]
  CALL R0 5 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["KeyCode"]
  GETUPVAL R4 3
  GETIMPORT R5 K3 [Vector3.zero]
  NAMECALL R0 R0 K4 ["SendGamepadEvent"]
  CALL R0 5 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 0
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["Mappings"]
  GETTABLEKS R4 R0 K2 ["KeyCode"]
  GETTABLE R2 R3 R4
  GETTABLEKS R3 R1 K3 ["gamepadId"]
  GETUPVAL R4 2
  MOVE R5 R2
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  LOADK R6 K5 ["TextButton"]
  NEWTABLE R7 8 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["Tag"]
  LOADK R9 K7 ["Widget-Button"]
  SETTABLE R9 R7 R8
  GETTABLEKS R9 R0 K8 ["Text"]
  LOADK R10 K9 ["<"]
  MOVE R11 R4
  LOADK R12 K10 [">"]
  CONCAT R8 R9 R12
  SETTABLEKS R8 R7 K8 ["Text"]
  GETTABLEKS R8 R0 K11 ["Position"]
  SETTABLEKS R8 R7 K11 ["Position"]
  GETTABLEKS R8 R0 K12 ["Size"]
  SETTABLEKS R8 R7 K12 ["Size"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K13 ["Event"]
  GETTABLEKS R8 R9 K14 ["Activated"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLE R9 R7 R8
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["MockableProxyPluginComponents"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K11 ["StudioDeviceEmulator"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K13 ["MappingsContext"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K14 ["enumToDisplayKeyCode"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K15 ["VECTOR_PRESSED"]
  GETTABLEKS R7 R3 K16 ["VECTOR_RELEASED"]
  DUPCLOSURE R8 K17 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R8 1
