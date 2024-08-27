PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["getThemeName"]
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R2 K1 [settings]
  CALL R2 0 1
  GETTABLEKS R1 R2 K2 ["Studio"]
  GETTABLEKS R0 R1 K3 ["ThemeChanged"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  LOADNIL R0
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R1 1 0
  GETIMPORT R1 K4 [task.delay]
  LOADK R2 K5 [0.1]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U2
  CALL R1 2 0
  NEWCLOSURE R1 P2
  CAPTURE REF R0
  CLOSEUPVALS R0
  RETURN R1 1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["keyCode"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K1 ["Thumbstick"] [+42]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"Position", "keyCode", "inputState", "clickInputState", "relativeSocketSize", "relativeStickSize"}]
  GETTABLEKS R4 R0 K3 ["Position"]
  SETTABLEKS R4 R3 K3 ["Position"]
  GETTABLEKS R4 R0 K4 ["keyCode"]
  SETTABLEKS R4 R3 K4 ["keyCode"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["activeInputs"]
  GETTABLEKS R6 R0 K4 ["keyCode"]
  GETTABLE R4 R5 R6
  SETTABLEKS R4 R3 K5 ["inputState"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["activeInputs"]
  GETUPVAL R7 3
  GETTABLEKS R8 R0 K4 ["keyCode"]
  GETTABLE R6 R7 R8
  GETTABLE R4 R5 R6
  SETTABLEKS R4 R3 K6 ["clickInputState"]
  GETTABLEKS R4 R0 K7 ["relativeSocketSize"]
  SETTABLEKS R4 R3 K7 ["relativeSocketSize"]
  GETTABLEKS R4 R0 K8 ["relativeStickSize"]
  SETTABLEKS R4 R3 K8 ["relativeStickSize"]
  CALL R1 2 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K11 ["Button"] [+28]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R2 4
  DUPTABLE R3 K13 [{"Position", "Size", "keyCode", "inputState"}]
  GETTABLEKS R4 R0 K3 ["Position"]
  SETTABLEKS R4 R3 K3 ["Position"]
  GETTABLEKS R4 R0 K12 ["Size"]
  SETTABLEKS R4 R3 K12 ["Size"]
  GETTABLEKS R4 R0 K4 ["keyCode"]
  SETTABLEKS R4 R3 K4 ["keyCode"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["activeInputs"]
  GETTABLEKS R6 R0 K4 ["keyCode"]
  GETTABLE R4 R5 R6
  SETTABLEKS R4 R3 K5 ["inputState"]
  CALL R1 2 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K14 ["Trigger"] [+28]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R2 4
  DUPTABLE R3 K13 [{"Position", "Size", "keyCode", "inputState"}]
  GETTABLEKS R4 R0 K3 ["Position"]
  SETTABLEKS R4 R3 K3 ["Position"]
  GETTABLEKS R4 R0 K12 ["Size"]
  SETTABLEKS R4 R3 K12 ["Size"]
  GETTABLEKS R4 R0 K4 ["keyCode"]
  SETTABLEKS R4 R3 K4 ["keyCode"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["activeInputs"]
  GETTABLEKS R6 R0 K4 ["keyCode"]
  GETTABLE R4 R5 R6
  SETTABLEKS R4 R3 K5 ["inputState"]
  CALL R1 2 -1
  RETURN R1 -1
  LOADNIL R1
  RETURN R1 1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["arrowDestination"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K1 ["CrossLayoutMappings"] [+44]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K12 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "Position", "arrowDestination", "arrowBendPoint", "side"}]
  GETTABLEKS R4 R0 K3 ["upKeyName"]
  SETTABLEKS R4 R3 K3 ["upKeyName"]
  GETTABLEKS R4 R0 K4 ["downKeyName"]
  SETTABLEKS R4 R3 K4 ["downKeyName"]
  GETTABLEKS R4 R0 K5 ["leftKeyName"]
  SETTABLEKS R4 R3 K5 ["leftKeyName"]
  GETTABLEKS R4 R0 K6 ["rightKeyName"]
  SETTABLEKS R4 R3 K6 ["rightKeyName"]
  GETTABLEKS R4 R0 K7 ["centerKeyName"]
  SETTABLEKS R4 R3 K7 ["centerKeyName"]
  GETTABLEKS R4 R0 K8 ["Position"]
  SETTABLEKS R4 R3 K8 ["Position"]
  GETTABLEKS R4 R0 K9 ["arrowDestination"]
  SETTABLEKS R4 R3 K9 ["arrowDestination"]
  GETTABLEKS R4 R0 K10 ["arrowBendPoint"]
  SETTABLEKS R4 R3 K10 ["arrowBendPoint"]
  GETTABLEKS R4 R0 K11 ["side"]
  SETTABLEKS R4 R3 K11 ["side"]
  CALL R1 2 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K13 ["ButtonMapping"] [+32]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K16 [{"Position", "keyName", "side", "arrowStart", "arrowDestination", "arrowBendPoint"}]
  GETTABLEKS R4 R0 K8 ["Position"]
  SETTABLEKS R4 R3 K8 ["Position"]
  GETTABLEKS R4 R0 K14 ["keyName"]
  SETTABLEKS R4 R3 K14 ["keyName"]
  GETTABLEKS R4 R0 K11 ["side"]
  SETTABLEKS R4 R3 K11 ["side"]
  GETTABLEKS R4 R0 K8 ["Position"]
  SETTABLEKS R4 R3 K15 ["arrowStart"]
  GETTABLEKS R4 R0 K9 ["arrowDestination"]
  SETTABLEKS R4 R3 K9 ["arrowDestination"]
  GETTABLEKS R4 R0 K10 ["arrowBendPoint"]
  SETTABLEKS R4 R3 K10 ["arrowBendPoint"]
  CALL R1 2 -1
  RETURN R1 -1
  LOADNIL R1
  RETURN R1 1

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["useState"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["getThemeName"]
  CALL R3 0 -1
  CALL R2 -1 2
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["useState"]
  LOADB R5 0
  CALL R4 1 2
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["useEffect"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  NEWTABLE R8 0 2
  MOVE R9 R3
  MOVE R10 R5
  SETLIST R8 R9 2 [1]
  CALL R6 2 0
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K5 ["GAMEPAD_ID_TO_TYPE"]
  GETTABLEKS R8 R1 K6 ["selectedGamepadId"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 5
  GETTABLE R7 R8 R6
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K8 ["Frame"]
  NEWTABLE R10 2 0
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K9 ["Tag"]
  LOADK R12 K10 ["Component-DeviceBlueprint Width-Scaling CX-Invisible"]
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R1 K11 ["LayoutOrder"]
  SETTABLEKS R11 R10 K11 ["LayoutOrder"]
  DUPTABLE R11 K13 [{"ControllerLayout"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K8 ["Frame"]
  NEWTABLE R14 1 0
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K9 ["Tag"]
  GETUPVAL R16 6
  LOADK R17 K14 ["Width-Scaling"]
  GETTABLEKS R19 R1 K15 ["displayMappings"]
  JUMPIFNOT R19 [+2]
  LOADK R18 K16 ["Mappings-Visible"]
  JUMP [+1]
  LOADNIL R18
  CALL R16 2 1
  SETTABLE R16 R14 R15
  DUPTABLE R15 K20 [{"GamepadBlueprint", "GamepadControls", "LabelsOverlay"}]
  LOADB R16 0
  JUMPIFEQKNIL R7 [+34]
  MOVE R16 R4
  JUMPIFNOT R16 [+31]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K7 ["createElement"]
  LOADK R17 K21 ["ImageLabel"]
  NEWTABLE R18 4 0
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K9 ["Tag"]
  LOADK R20 K22 ["Width-Scaling CX-Invisible"]
  SETTABLE R20 R18 R19
  JUMPIFNOTEQKS R2 K23 ["Dark"] [+6]
  GETTABLEKS R20 R7 K24 ["DeviceImage"]
  GETTABLEKS R19 R20 K25 ["srcDark"]
  JUMP [+4]
  GETTABLEKS R20 R7 K24 ["DeviceImage"]
  GETTABLEKS R19 R20 K26 ["srcLight"]
  SETTABLEKS R19 R18 K27 ["Image"]
  GETUPVAL R19 7
  NAMECALL R19 R19 K28 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K11 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K17 ["GamepadBlueprint"]
  LOADB R16 0
  JUMPIFEQKNIL R7 [+46]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K7 ["createElement"]
  LOADK R17 K8 ["Frame"]
  NEWTABLE R18 4 0
  LOADN R19 1
  SETTABLEKS R19 R18 K29 ["BackgroundTransparency"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K9 ["Tag"]
  LOADK R20 K14 ["Width-Scaling"]
  SETTABLE R20 R18 R19
  GETUPVAL R19 7
  NAMECALL R19 R19 K28 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K11 ["LayoutOrder"]
  GETUPVAL R20 8
  GETTABLEKS R19 R20 K30 ["map"]
  GETUPVAL R21 8
  GETTABLEKS R20 R21 K31 ["filter"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K0 ["Dictionary"]
  GETTABLEKS R21 R22 K1 ["join"]
  NEWTABLE R22 0 0
  MOVE R23 R7
  CALL R21 2 1
  DUPCLOSURE R22 K32 [PROTO_5]
  CALL R20 2 1
  NEWCLOSURE R21 P2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CALL R19 2 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K18 ["GamepadControls"]
  GETTABLEKS R17 R1 K15 ["displayMappings"]
  JUMPIFNOT R17 [+51]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K7 ["createElement"]
  LOADK R17 K8 ["Frame"]
  NEWTABLE R18 4 0
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K9 ["Tag"]
  LOADK R20 K14 ["Width-Scaling"]
  SETTABLE R20 R18 R19
  LOADN R19 1
  SETTABLEKS R19 R18 K29 ["BackgroundTransparency"]
  GETUPVAL R19 7
  NAMECALL R19 R19 K28 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K11 ["LayoutOrder"]
  LOADB R19 0
  SETTABLEKS R19 R18 K33 ["Interactable"]
  NEWTABLE R19 0 1
  GETUPVAL R21 8
  GETTABLEKS R20 R21 K30 ["map"]
  GETUPVAL R22 8
  GETTABLEKS R21 R22 K31 ["filter"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K0 ["Dictionary"]
  GETTABLEKS R22 R23 K1 ["join"]
  NEWTABLE R23 0 0
  MOVE R24 R7
  CALL R22 2 1
  DUPCLOSURE R23 K34 [PROTO_7]
  CALL R21 2 1
  DUPCLOSURE R22 K35 [PROTO_8]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K19 ["LabelsOverlay"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K12 ["ControllerLayout"]
  CALL R8 3 -1
  RETURN R8 -1

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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Resources"]
  GETTABLEKS R5 R2 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["LayoutOrderIterator"]
  GETTABLEKS R5 R4 K13 ["new"]
  CALL R5 0 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K14 ["Components"]
  GETTABLEKS R8 R9 K15 ["ControlsWidgets"]
  GETTABLEKS R7 R8 K16 ["Button"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K15 ["ControlsWidgets"]
  GETTABLEKS R8 R9 K17 ["Thumbstick"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K14 ["Components"]
  GETTABLEKS R10 R11 K18 ["MappingsWidgets"]
  GETTABLEKS R9 R10 K19 ["CrossLayoutMappings"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K14 ["Components"]
  GETTABLEKS R11 R12 K18 ["MappingsWidgets"]
  GETTABLEKS R10 R11 K20 ["ButtonMapping"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K11 ["Util"]
  GETTABLEKS R11 R12 K21 ["Constants"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K22 ["THUMBSTICK_KEYCODE_TO_THUMBSTICK_CLICK"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R0 K6 ["Packages"]
  GETTABLEKS R13 R14 K23 ["Dash"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R0 K6 ["Packages"]
  GETTABLEKS R14 R15 K24 ["Cryo"]
  CALL R13 1 1
  GETTABLEKS R15 R2 K25 ["Style"]
  GETTABLEKS R14 R15 K26 ["ThemeSwitcher"]
  GETTABLEKS R16 R2 K27 ["Styling"]
  GETTABLEKS R15 R16 K28 ["joinTags"]
  DUPTABLE R16 K30 [{"activeInputs"}]
  NEWTABLE R17 0 0
  SETTABLEKS R17 R16 K29 ["activeInputs"]
  NEWTABLE R17 4 0
  GETIMPORT R18 K34 [Enum.GamepadType.Unknown]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R21 R3 K35 ["DeviceControlData"]
  GETTABLEKS R20 R21 K36 ["Generic"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  GETIMPORT R18 K38 [Enum.GamepadType.PS4]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R21 R3 K35 ["DeviceControlData"]
  GETTABLEKS R20 R21 K39 ["Playstation4"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  GETIMPORT R18 K41 [Enum.GamepadType.PS5]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R21 R3 K35 ["DeviceControlData"]
  GETTABLEKS R20 R21 K42 ["Playstation5"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  GETIMPORT R18 K44 [Enum.GamepadType.XboxOne]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R21 R3 K35 ["DeviceControlData"]
  GETTABLEKS R20 R21 K45 ["XBox"]
  CALL R19 1 1
  SETTABLE R19 R17 R18
  DUPCLOSURE R18 K46 [PROTO_9]
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R9
  GETTABLEKS R19 R1 K47 ["memo"]
  MOVE R20 R18
  CALL R19 1 -1
  RETURN R19 -1
