PROTO_0:
  GETTABLEKS R3 R0 K0 ["Time"]
  GETTABLEKS R4 R1 K0 ["Time"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  NAMECALL R1 R0 K0 ["GetKeyframes"]
  CALL R1 1 1
  GETIMPORT R2 K3 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K4 [PROTO_0]
  CALL R2 2 0
  LOADNIL R2
  LOADN R3 0
  GETIMPORT R4 K6 [pairs]
  MOVE R5 R1
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R10 R8 K7 ["Time"]
  SUB R9 R10 R3
  JUMPIFEQKN R9 K8 [0] [+5]
  JUMPIFNOT R2 [+2]
  JUMPIFNOTLT R9 R2 [+2]
  MOVE R2 R9
  GETTABLEKS R3 R8 K7 ["Time"]
  FORGLOOP R4 2 [-12]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["DEFAULT_FRAMERATE"]
  JUMPIFNOT R2 [+9]
  LOADN R5 0
  JUMPIFNOTLT R5 R2 [+7]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["round"]
  DIVRK R6 R11 K2 ["sort"]
  CALL R5 1 1
  MOVE R4 R5
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["FRAMERATES"]
  GETTABLEKS R6 R7 K13 ["FPS_30"]
  MOD R5 R6 R4
  JUMPIFNOTEQKN R5 K8 [0] [+7]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["FRAMERATES"]
  GETTABLEKS R4 R5 K13 ["FPS_30"]
  JUMP [+27]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["FRAMERATES"]
  GETTABLEKS R6 R7 K14 ["FPS_24"]
  MOD R5 R6 R4
  JUMPIFNOTEQKN R5 K8 [0] [+7]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["FRAMERATES"]
  GETTABLEKS R4 R5 K14 ["FPS_24"]
  JUMP [+13]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["FRAMERATES"]
  GETTABLEKS R6 R7 K15 ["FPS_60"]
  MOD R5 R6 R4
  JUMPIFNOTEQKN R5 K8 [0] [+6]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["FRAMERATES"]
  GETTABLEKS R4 R5 K15 ["FPS_60"]
  MOVE R6 R4
  LOADN R7 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["MAX_FRAMERATE"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K19 [math.clamp]
  CALL R5 3 1
  RETURN R5 1

PROTO_2:
  NEWTABLE R2 0 0
  LOADK R5 K0 ["Keyframe"]
  NAMECALL R3 R0 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+5]
  NAMECALL R3 R0 K2 ["GetPoses"]
  CALL R3 1 1
  MOVE R2 R3
  JUMP [+21]
  LOADK R5 K3 ["PoseBase"]
  NAMECALL R3 R0 K1 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+12]
  LOADK R5 K4 ["Folder"]
  NAMECALL R3 R0 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+11]
  GETTABLEKS R3 R0 K5 ["Name"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["FACE_CONTROLS_FOLDER"]
  JUMPIFNOTEQ R3 R4 [+5]
  NAMECALL R3 R0 K7 ["GetChildren"]
  CALL R3 1 1
  MOVE R2 R3
  GETIMPORT R3 K9 [pairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_NEXT R3
  LOADK R10 K3 ["PoseBase"]
  NAMECALL R8 R7 K1 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+3]
  MOVE R8 R1
  MOVE R9 R7
  CALL R8 1 0
  GETUPVAL R8 1
  MOVE R9 R7
  MOVE R10 R1
  CALL R8 2 0
  FORGLOOP R3 2 [-13]
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K1 [pairs]
  NAMECALL R3 R0 K2 ["GetChildren"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  LOADK R9 K3 ["KeyframeMarker"]
  NAMECALL R7 R6 K4 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+3]
  MOVE R7 R1
  MOVE R8 R6
  CALL R7 1 0
  FORGLOOP R2 2 [-9]
  RETURN R0 0

PROTO_4:
  NAMECALL R2 R0 K0 ["GetChildren"]
  CALL R2 1 1
  GETIMPORT R3 K2 [pairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_NEXT R3
  LOADK R10 K3 ["Folder"]
  NAMECALL R8 R7 K4 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+7]
  MOVE R8 R1
  MOVE R9 R7
  CALL R8 1 0
  GETUPVAL R8 0
  MOVE R9 R7
  MOVE R10 R1
  CALL R8 2 0
  FORGLOOP R3 2 [-13]
  RETURN R0 0

PROTO_5:
  NEWTABLE R1 0 0
  MOVE R2 R0
  JUMPIFEQKNIL R2 [+41]
  GETUPVAL R4 0
  GETTABLE R3 R4 R2
  GETUPVAL R5 1
  GETTABLE R4 R5 R2
  GETUPVAL R5 2
  JUMPIFNOT R5 [+2]
  GETUPVAL R6 2
  GETTABLE R5 R6 R2
  JUMPIFNOT R3 [+5]
  GETTABLEKS R6 R3 K0 ["Part0"]
  GETTABLEKS R2 R6 K1 ["Name"]
  JUMP [+18]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R6 R4 K2 ["Parent"]
  GETTABLEKS R2 R6 K1 ["Name"]
  JUMP [+12]
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+17]
  JUMPIFNOT R5 [+16]
  GETTABLEKS R7 R5 K3 ["Attachment0"]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R2 R6 K1 ["Name"]
  JUMP [+1]
  RETURN R1 1
  MOVE R7 R1
  LOADN R8 1
  MOVE R9 R2
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K6 [table.insert]
  CALL R6 3 0
  JUMPBACK [-42]
  RETURN R1 1

PROTO_6:
  NEWTABLE R4 0 0
  LOADNIL R5
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  GETIMPORT R7 K1 [pairs]
  MOVE R8 R0
  CALL R7 1 3
  FORGPREP_NEXT R7
  GETTABLEKS R12 R11 K2 ["Type"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K3 ["TRACK_TYPES"]
  GETTABLEKS R13 R14 K4 ["CFrame"]
  JUMPIFNOTEQ R12 R13 [+6]
  MOVE R12 R6
  MOVE R13 R10
  CALL R12 1 1
  SETTABLE R12 R4 R10
  JUMP [+49]
  GETTABLEKS R12 R11 K2 ["Type"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K3 ["TRACK_TYPES"]
  GETTABLEKS R13 R14 K5 ["Facs"]
  JUMPIFNOTEQ R12 R13 [+41]
  JUMPIFNOTEQKNIL R5 [+24]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K6 ["List"]
  GETTABLEKS R12 R13 K7 ["join"]
  MOVE R13 R6
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["R15_PARTS"]
  GETTABLEKS R14 R15 K9 ["Head"]
  CALL R13 1 1
  NEWTABLE R14 0 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K8 ["R15_PARTS"]
  GETTABLEKS R15 R16 K9 ["Head"]
  SETLIST R14 R15 1 [1]
  CALL R12 2 1
  MOVE R5 R12
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K6 ["List"]
  GETTABLEKS R12 R13 K7 ["join"]
  MOVE R13 R5
  NEWTABLE R14 0 1
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K10 ["FACE_CONTROLS_FOLDER"]
  SETLIST R14 R15 1 [1]
  CALL R12 2 1
  SETTABLE R12 R4 R10
  FORGLOOP R7 2 [-64]
  RETURN R4 1

PROTO_7:
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["Keyframe"]
  CALL R2 1 1
  SETTABLEKS R1 R2 K4 ["Time"]
  SETTABLEKS R0 R2 K5 ["Parent"]
  RETURN R2 1

PROTO_8:
  GETTABLE R5 R4 R1
  JUMPIFNOTEQKNIL R5 [+2]
  RETURN R0 0
  MOVE R6 R0
  GETIMPORT R7 K1 [ipairs]
  MOVE R8 R5
  CALL R7 1 3
  FORGPREP_INEXT R7
  MOVE R14 R11
  NAMECALL R12 R6 K2 ["FindFirstChild"]
  CALL R12 2 1
  JUMPIFNOTEQKNIL R12 [+24]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K3 ["FACE_CONTROLS_FOLDER"]
  JUMPIFNOTEQ R11 R13 [+8]
  GETIMPORT R13 K6 [Instance.new]
  LOADK R14 K7 ["Folder"]
  MOVE R15 R6
  CALL R13 2 1
  MOVE R12 R13
  JUMP [+9]
  GETIMPORT R13 K6 [Instance.new]
  LOADK R14 K8 ["Pose"]
  MOVE R15 R6
  CALL R13 2 1
  MOVE R12 R13
  LOADN R13 0
  SETTABLEKS R13 R12 K9 ["Weight"]
  SETTABLEKS R11 R12 K10 ["Name"]
  MOVE R6 R12
  FORGLOOP R7 2 [inext] [-31]
  MOVE R9 R1
  NAMECALL R7 R6 K2 ["FindFirstChild"]
  CALL R7 2 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["TRACK_TYPES"]
  GETTABLEKS R8 R9 K12 ["Facs"]
  JUMPIFNOTEQ R2 R8 [+14]
  MOVE R8 R7
  JUMPIF R8 [+5]
  GETIMPORT R8 K6 [Instance.new]
  LOADK R9 K13 ["NumberPose"]
  MOVE R10 R6
  CALL R8 2 1
  MOVE R7 R8
  GETTABLEKS R8 R3 K14 ["Value"]
  SETTABLEKS R8 R7 K14 ["Value"]
  JUMP [+19]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["TRACK_TYPES"]
  GETTABLEKS R8 R9 K15 ["CFrame"]
  JUMPIFNOTEQ R2 R8 [+13]
  MOVE R8 R7
  JUMPIF R8 [+5]
  GETIMPORT R8 K6 [Instance.new]
  LOADK R9 K8 ["Pose"]
  MOVE R10 R6
  CALL R8 2 1
  MOVE R7 R8
  GETTABLEKS R8 R3 K14 ["Value"]
  SETTABLEKS R8 R7 K15 ["CFrame"]
  SETTABLEKS R1 R7 K10 ["Name"]
  LOADN R8 1
  SETTABLEKS R8 R7 K9 ["Weight"]
  GETTABLEKS R9 R3 K16 ["EasingStyle"]
  GETTABLEKS R8 R9 K10 ["Name"]
  SETTABLEKS R8 R7 K16 ["EasingStyle"]
  GETTABLEKS R9 R3 K17 ["EasingDirection"]
  GETTABLEKS R8 R9 K10 ["Name"]
  SETTABLEKS R8 R7 K17 ["EasingDirection"]
  RETURN R0 0

PROTO_9:
  GETTABLE R3 R2 R1
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R0 0
  MOVE R4 R0
  GETIMPORT R5 K1 [ipairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_INEXT R5
  MOVE R12 R9
  NAMECALL R10 R4 K2 ["FindFirstChild"]
  CALL R10 2 1
  JUMPIF R10 [+5]
  GETIMPORT R10 K5 [Instance.new]
  LOADK R11 K6 ["Folder"]
  MOVE R12 R4
  CALL R10 2 1
  MOVE R4 R10
  SETTABLEKS R9 R4 K7 ["Name"]
  FORGLOOP R5 2 [inext] [-14]
  RETURN R4 1

PROTO_10:
  JUMPIFNOT R0 [+73]
  LOADNIL R2
  GETIMPORT R3 K1 [ipairs]
  GETTABLEKS R4 R0 K2 ["Keyframes"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R9 R0 K3 ["Data"]
  GETTABLE R8 R9 R7
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["TICK_FREQUENCY"]
  DIV R9 R7 R10
  GETIMPORT R10 K7 [FloatCurveKey.new]
  MOVE R11 R9
  GETTABLEKS R12 R8 K8 ["Value"]
  GETTABLEKS R13 R8 K9 ["InterpolationMode"]
  JUMPIF R13 [+2]
  GETIMPORT R13 K13 [Enum.KeyInterpolationMode.Cubic]
  CALL R10 3 1
  JUMPIFNOT R2 [+18]
  GETTABLEKS R11 R2 K9 ["InterpolationMode"]
  GETIMPORT R12 K13 [Enum.KeyInterpolationMode.Cubic]
  JUMPIFNOTEQ R11 R12 [+13]
  GETTABLEKS R11 R8 K14 ["LeftSlope"]
  JUMPIFNOT R11 [+9]
  GETTABLEKS R12 R8 K14 ["LeftSlope"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["TICK_FREQUENCY"]
  MUL R11 R12 R13
  SETTABLEKS R11 R10 K15 ["LeftTangent"]
  JUMP [+3]
  LOADNIL R11
  SETTABLEKS R11 R10 K15 ["LeftTangent"]
  GETTABLEKS R11 R8 K9 ["InterpolationMode"]
  GETIMPORT R12 K13 [Enum.KeyInterpolationMode.Cubic]
  JUMPIFNOTEQ R11 R12 [+14]
  GETTABLEKS R12 R8 K16 ["RightSlope"]
  JUMPIFNOT R12 [+7]
  GETTABLEKS R12 R8 K16 ["RightSlope"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["TICK_FREQUENCY"]
  MUL R11 R12 R13
  JUMPIF R11 [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K17 ["RightTangent"]
  MOVE R13 R10
  NAMECALL R11 R1 K18 ["InsertKey"]
  CALL R11 2 0
  MOVE R2 R8
  FORGLOOP R3 2 [inext] [-65]
  RETURN R0 0

PROTO_11:
  LOADNIL R2
  GETIMPORT R3 K1 [ipairs]
  GETTABLEKS R4 R0 K2 ["Keyframes"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R9 R0 K3 ["Data"]
  GETTABLE R8 R9 R7
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["TICK_FREQUENCY"]
  DIV R9 R7 R10
  GETIMPORT R10 K7 [RotationCurveKey.new]
  MOVE R11 R9
  GETTABLEKS R12 R8 K8 ["Value"]
  GETTABLEKS R13 R8 K9 ["InterpolationMode"]
  CALL R10 3 1
  JUMPIFNOT R2 [+18]
  GETTABLEKS R11 R2 K9 ["InterpolationMode"]
  GETIMPORT R12 K13 [Enum.KeyInterpolationMode.Cubic]
  JUMPIFNOTEQ R11 R12 [+13]
  GETTABLEKS R11 R8 K14 ["LeftSlope"]
  JUMPIFNOT R11 [+9]
  GETTABLEKS R12 R8 K14 ["LeftSlope"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["TICK_FREQUENCY"]
  MUL R11 R12 R13
  SETTABLEKS R11 R10 K15 ["LeftTangent"]
  JUMP [+3]
  LOADNIL R11
  SETTABLEKS R11 R10 K15 ["LeftTangent"]
  GETTABLEKS R11 R8 K9 ["InterpolationMode"]
  GETIMPORT R12 K13 [Enum.KeyInterpolationMode.Cubic]
  JUMPIFNOTEQ R11 R12 [+14]
  GETTABLEKS R12 R8 K16 ["RightSlope"]
  JUMPIFNOT R12 [+7]
  GETTABLEKS R12 R8 K16 ["RightSlope"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["TICK_FREQUENCY"]
  MUL R11 R12 R13
  JUMPIF R11 [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K17 ["RightTangent"]
  MOVE R13 R10
  NAMECALL R11 R1 K18 ["InsertKey"]
  CALL R11 2 0
  MOVE R2 R8
  FORGLOOP R3 2 [inext] [-62]
  RETURN R0 0

PROTO_12:
  JUMPIFNOT R0 [+47]
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["Vector3Curve"]
  CALL R1 1 1
  GETGLOBAL R2 K4 ["fillFloatCurve"]
  GETTABLEKS R4 R0 K5 ["Components"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["PROPERTY_KEYS"]
  GETTABLEKS R5 R6 K7 ["X"]
  GETTABLE R3 R4 R5
  NAMECALL R4 R1 K7 ["X"]
  CALL R4 1 -1
  CALL R2 -1 0
  GETGLOBAL R2 K4 ["fillFloatCurve"]
  GETTABLEKS R4 R0 K5 ["Components"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["PROPERTY_KEYS"]
  GETTABLEKS R5 R6 K8 ["Y"]
  GETTABLE R3 R4 R5
  NAMECALL R4 R1 K8 ["Y"]
  CALL R4 1 -1
  CALL R2 -1 0
  GETGLOBAL R2 K4 ["fillFloatCurve"]
  GETTABLEKS R4 R0 K5 ["Components"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["PROPERTY_KEYS"]
  GETTABLEKS R5 R6 K9 ["Z"]
  GETTABLE R3 R4 R5
  NAMECALL R4 R1 K9 ["Z"]
  CALL R4 1 -1
  CALL R2 -1 0
  RETURN R1 1
  RETURN R0 0

PROTO_13:
  JUMPIFNOT R0 [+10]
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["RotationCurve"]
  CALL R1 1 1
  GETGLOBAL R2 K4 ["fillQuaternionCurve"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R1 1
  RETURN R0 0

PROTO_14:
  JUMPIFNOT R0 [+51]
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["EulerRotationCurve"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K4 ["EulerAnglesOrder"]
  SETTABLEKS R2 R1 K5 ["RotationOrder"]
  GETGLOBAL R2 K6 ["fillFloatCurve"]
  GETTABLEKS R4 R0 K7 ["Components"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["PROPERTY_KEYS"]
  GETTABLEKS R5 R6 K9 ["X"]
  GETTABLE R3 R4 R5
  NAMECALL R4 R1 K9 ["X"]
  CALL R4 1 -1
  CALL R2 -1 0
  GETGLOBAL R2 K6 ["fillFloatCurve"]
  GETTABLEKS R4 R0 K7 ["Components"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["PROPERTY_KEYS"]
  GETTABLEKS R5 R6 K10 ["Y"]
  GETTABLE R3 R4 R5
  NAMECALL R4 R1 K10 ["Y"]
  CALL R4 1 -1
  CALL R2 -1 0
  GETGLOBAL R2 K6 ["fillFloatCurve"]
  GETTABLEKS R4 R0 K7 ["Components"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["PROPERTY_KEYS"]
  GETTABLEKS R5 R6 K11 ["Z"]
  GETTABLE R3 R4 R5
  NAMECALL R4 R1 K11 ["Z"]
  CALL R4 1 -1
  CALL R2 -1 0
  RETURN R1 1
  RETURN R0 0

PROTO_15:
  JUMPIFNOT R0 [+19]
  GETTABLEKS R1 R0 K0 ["Type"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["TRACK_TYPES"]
  GETTABLEKS R2 R3 K2 ["Quaternion"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETGLOBAL R1 K3 ["makeQuaternionCurve"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1
  GETGLOBAL R1 K4 ["makeEulerCurve"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1
  RETURN R0 0

PROTO_16:
  JUMPIFNOT R0 [+10]
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["FloatCurve"]
  CALL R1 1 1
  GETGLOBAL R2 K4 ["fillFloatCurve"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R1 1
  RETURN R0 0

PROTO_17:
  JUMPIFNOT R0 [+11]
  LOADK R3 K0 ["Humanoid"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K2 ["RigType"]
  GETIMPORT R2 K6 [Enum.HumanoidRigType.R15]
  JUMPIFEQ R1 R2 [+3]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R1 R0 K7 ["Parent"]
  JUMPIFNOT R1 [+5]
  LOADK R4 K8 ["Model"]
  NAMECALL R2 R1 K1 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_18:
  LOADK R5 K0 ["Humanoid"]
  NAMECALL R3 R1 K1 ["FindFirstChildOfClass"]
  CALL R3 2 1
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["isR15Humanoid"]
  MOVE R5 R1
  CALL R4 1 1
  JUMPIF R4 [+29]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIF R4 [+50]
  JUMPIFNOT R3 [+11]
  LOADK R7 K0 ["Humanoid"]
  NAMECALL R5 R3 K3 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+6]
  GETTABLEKS R5 R3 K4 ["RigType"]
  GETIMPORT R6 K8 [Enum.HumanoidRigType.R15]
  JUMPIFEQ R5 R6 [+3]
  LOADB R4 0
  JUMP [+11]
  GETTABLEKS R5 R3 K9 ["Parent"]
  JUMPIFNOT R5 [+5]
  LOADK R8 K10 ["Model"]
  NAMECALL R6 R5 K3 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+2]
  LOADB R4 0
  JUMP [+1]
  LOADB R4 1
  JUMPIFNOT R4 [+24]
  GETIMPORT R4 K13 [Instance.new]
  LOADK R5 K14 ["AnimationRigData"]
  MOVE R6 R2
  CALL R4 2 1
  MOVE R7 R3
  NAMECALL R5 R4 K15 ["LoadFromHumanoid"]
  CALL R5 2 1
  JUMPIF R5 [+4]
  NAMECALL R6 R4 K16 ["Destroy"]
  CALL R6 1 0
  RETURN R0 0
  GETTABLEKS R7 R1 K17 ["Name"]
  LOADK R8 K14 ["AnimationRigData"]
  CONCAT R6 R7 R8
  SETTABLEKS R6 R4 K17 ["Name"]
  GETTABLEKS R6 R0 K18 ["Metadata"]
  SETTABLEKS R4 R6 K19 ["AnimationRig"]
  RETURN R0 0

PROTO_19:
  LOADN R3 0
  LOADN R4 0
  LOADB R5 1
  SETTABLEKS R5 R0 K0 ["IsCurveTrack"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["TRACK_TYPES"]
  GETTABLEKS R5 R6 K2 ["Number"]
  JUMPIFEQ R2 R5 [+22]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["TRACK_TYPES"]
  GETTABLEKS R5 R6 K3 ["Angle"]
  JUMPIFEQ R2 R5 [+15]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["TRACK_TYPES"]
  GETTABLEKS R5 R6 K4 ["Facs"]
  JUMPIFEQ R2 R5 [+8]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["TRACK_TYPES"]
  GETTABLEKS R5 R6 K5 ["Quaternion"]
  JUMPIFNOTEQ R2 R5 [+75]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R0 K6 ["Keyframes"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R0 K7 ["Data"]
  NAMECALL R5 R1 K8 ["GetKeys"]
  CALL R5 1 1
  GETIMPORT R6 K10 [ipairs]
  MOVE R7 R5
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["getNearestTick"]
  GETTABLEKS R13 R10 K12 ["Time"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K13 ["TICK_FREQUENCY"]
  MUL R12 R13 R14
  CALL R11 1 1
  JUMPIFNOTLT R3 R11 [+2]
  MOVE R3 R11
  GETTABLEKS R13 R10 K14 ["LeftTangent"]
  JUMPIFNOT R13 [+7]
  GETTABLEKS R13 R10 K14 ["LeftTangent"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K13 ["TICK_FREQUENCY"]
  DIV R12 R13 R14
  JUMPIF R12 [+1]
  LOADNIL R12
  GETTABLEKS R14 R10 K15 ["RightTangent"]
  JUMPIFNOT R14 [+7]
  GETTABLEKS R14 R10 K15 ["RightTangent"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K13 ["TICK_FREQUENCY"]
  DIV R13 R14 R15
  JUMPIF R13 [+1]
  LOADNIL R13
  DUPTABLE R14 K20 [{"Value", "InterpolationMode", "LeftSlope", "RightSlope"}]
  GETTABLEKS R15 R10 K16 ["Value"]
  SETTABLEKS R15 R14 K16 ["Value"]
  GETTABLEKS R15 R10 K21 ["Interpolation"]
  SETTABLEKS R15 R14 K17 ["InterpolationMode"]
  SETTABLEKS R12 R14 K18 ["LeftSlope"]
  SETTABLEKS R13 R14 K19 ["RightSlope"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K22 ["addKeyframe"]
  MOVE R16 R0
  MOVE R17 R11
  MOVE R18 R14
  CALL R15 3 0
  FORGLOOP R6 2 [inext] [-56]
  RETURN R3 1
  NEWTABLE R5 0 0
  SETTABLEKS R5 R0 K23 ["Components"]
  GETIMPORT R5 K10 [ipairs]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K24 ["COMPONENT_TRACK_TYPES"]
  GETTABLE R8 R9 R2
  GETTABLEKS R6 R8 K25 ["_Order"]
  CALL R5 1 3
  FORGPREP_INEXT R5
  LOADNIL R10
  MOVE R13 R9
  NAMECALL R11 R1 K26 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIFEQKNIL R11 [+47]
  GETTABLEKS R12 R11 K27 ["ClassName"]
  JUMPIFNOTEQKS R12 K28 ["RotationCurve"] [+7]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K1 ["TRACK_TYPES"]
  GETTABLEKS R10 R12 K5 ["Quaternion"]
  JUMP [+15]
  GETTABLEKS R12 R11 K27 ["ClassName"]
  JUMPIFNOTEQKS R12 K29 ["EulerRotationCurve"] [+7]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K1 ["TRACK_TYPES"]
  GETTABLEKS R10 R12 K30 ["EulerAngles"]
  JUMP [+5]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K24 ["COMPONENT_TRACK_TYPES"]
  GETTABLE R12 R13 R2
  GETTABLE R10 R12 R9
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K31 ["track"]
  MOVE R13 R10
  CALL R12 1 1
  LOADB R13 1
  SETTABLEKS R13 R12 K0 ["IsCurveTrack"]
  GETGLOBAL R13 K32 ["readCurve"]
  MOVE R14 R12
  MOVE R15 R11
  MOVE R16 R10
  CALL R13 3 1
  MOVE R4 R13
  GETTABLEKS R13 R0 K23 ["Components"]
  SETTABLE R12 R13 R9
  JUMPIFNOTLT R3 R4 [+2]
  MOVE R3 R4
  FORGLOOP R5 2 [inext] [-54]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["TRACK_TYPES"]
  GETTABLEKS R5 R6 K30 ["EulerAngles"]
  JUMPIFNOTEQ R2 R5 [+5]
  GETTABLEKS R5 R1 K33 ["RotationOrder"]
  SETTABLEKS R5 R0 K34 ["EulerAnglesOrder"]
  RETURN R3 1

PROTO_20:
  LOADN R2 0
  NAMECALL R3 R1 K0 ["GetChildren"]
  CALL R3 1 1
  GETIMPORT R4 K2 [pairs]
  MOVE R5 R3
  CALL R4 1 3
  FORGPREP_NEXT R4
  LOADK R11 K3 ["FloatCurve"]
  NAMECALL R9 R8 K4 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+26]
  GETTABLEKS R9 R8 K5 ["Name"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["addTrack"]
  MOVE R11 R0
  MOVE R12 R9
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K7 ["TRACK_TYPES"]
  GETTABLEKS R13 R14 K8 ["Facs"]
  CALL R10 3 1
  GETGLOBAL R11 K9 ["readCurve"]
  MOVE R12 R10
  MOVE R13 R8
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["TRACK_TYPES"]
  GETTABLEKS R14 R15 K8 ["Facs"]
  CALL R11 3 1
  JUMPIFNOTLT R2 R11 [+2]
  MOVE R2 R11
  FORGLOOP R4 2 [-32]
  RETURN R2 1

PROTO_21:
  GETTABLEKS R1 R0 K0 ["Name"]
  LOADK R5 K1 ["Pose"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["TRACK_TYPES"]
  GETTABLEKS R2 R3 K4 ["CFrame"]
  JUMPIF R2 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["TRACK_TYPES"]
  GETTABLEKS R2 R3 K5 ["Facs"]
  JUMPIFNOTEQKS R1 K6 ["HumanoidRootPart"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+55]
  GETTABLEKS R4 R0 K7 ["Weight"]
  JUMPIFEQKN R4 K8 [0] [+52]
  GETUPVAL R5 1
  GETTABLE R4 R5 R1
  JUMPIFNOTEQKNIL R4 [+15]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["addTrack"]
  GETUPVAL R5 1
  MOVE R6 R1
  MOVE R7 R2
  LOADB R8 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["TRACK_TYPES"]
  GETTABLEKS R9 R10 K10 ["Quaternion"]
  LOADNIL R10
  CALL R4 6 0
  GETUPVAL R5 1
  GETTABLE R4 R5 R1
  DUPTABLE R5 K14 [{"Value", "EasingStyle", "EasingDirection"}]
  LOADK R9 K1 ["Pose"]
  NAMECALL R7 R0 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R0 K4 ["CFrame"]
  JUMPIF R6 [+2]
  GETTABLEKS R6 R0 K11 ["Value"]
  SETTABLEKS R6 R5 K11 ["Value"]
  GETTABLEKS R6 R0 K12 ["EasingStyle"]
  SETTABLEKS R6 R5 K12 ["EasingStyle"]
  GETTABLEKS R6 R0 K13 ["EasingDirection"]
  SETTABLEKS R6 R5 K13 ["EasingDirection"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["addKeyframe"]
  MOVE R7 R4
  GETUPVAL R8 3
  MOVE R9 R5
  CALL R6 3 0
  GETUPVAL R7 4
  ADDK R6 R7 K16 [1]
  SETUPVAL R6 4
  RETURN R0 0

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["addEvent"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Events"]
  GETUPVAL R3 2
  GETTABLEKS R4 R0 K2 ["Name"]
  GETTABLEKS R5 R0 K3 ["Value"]
  CALL R1 4 0
  GETUPVAL R2 3
  ADDK R1 R2 K4 [1]
  SETUPVAL R1 3
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  NAMECALL R2 R0 K0 ["GetKeyframes"]
  CALL R2 1 1
  LOADN R3 0
  LOADNIL R4
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["new"]
  GETTABLEKS R6 R0 K2 ["Name"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["INSTANCE_TYPES"]
  GETTABLEKS R7 R8 K4 ["Rig"]
  GETTABLEKS R8 R0 K5 ["Guid"]
  CALL R5 3 1
  LOADN R6 0
  LOADN R7 0
  GETTABLEKS R10 R5 K6 ["Instances"]
  GETTABLEKS R9 R10 K7 ["Root"]
  GETTABLEKS R8 R9 K8 ["Tracks"]
  GETIMPORT R9 K10 [pairs]
  MOVE R10 R2
  CALL R9 1 3
  FORGPREP_NEXT R9
  GETTABLEKS R14 R13 K11 ["Time"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K12 ["getNearestTick"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K13 ["TICK_FREQUENCY"]
  MUL R16 R14 R17
  CALL R15 1 1
  GETUPVAL R16 4
  MOVE R17 R13
  NEWCLOSURE R18 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R8
  CAPTURE UPVAL U1
  CAPTURE VAL R15
  CAPTURE REF R6
  CALL R16 2 0
  GETUPVAL R16 5
  MOVE R17 R13
  NEWCLOSURE R18 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  CAPTURE VAL R15
  CAPTURE REF R7
  CALL R16 2 0
  JUMPIFNOTLT R3 R14 [+11]
  MOVE R4 R13
  GETTABLEKS R18 R13 K11 ["Time"]
  FASTCALL2 MATH_MAX R3 R18 [+4]
  MOVE R17 R3
  GETIMPORT R16 K16 [math.max]
  CALL R16 2 1
  MOVE R3 R16
  GETTABLEKS R16 R13 K2 ["Name"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K17 ["DEFAULT_KEYFRAME_NAME"]
  JUMPIFEQ R16 R17 [+9]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K18 ["setKeyframeName"]
  MOVE R17 R5
  MOVE R18 R15
  GETTABLEKS R19 R13 K2 ["Name"]
  CALL R16 3 0
  FORGLOOP R9 2 [-55]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K12 ["getNearestTick"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["TICK_FREQUENCY"]
  MUL R10 R3 R11
  CALL R9 1 1
  JUMPIFNOT R4 [+41]
  NAMECALL R11 R4 K19 ["GetChildren"]
  CALL R11 1 1
  LENGTH R10 R11
  JUMPIFNOTEQKN R10 K20 [0] [+36]
  GETIMPORT R10 K10 [pairs]
  MOVE R11 R8
  CALL R10 1 3
  FORGPREP_NEXT R10
  GETTABLEKS R16 R14 K21 ["Keyframes"]
  GETTABLEKS R18 R14 K21 ["Keyframes"]
  LENGTH R17 R18
  GETTABLE R15 R16 R17
  GETTABLEKS R18 R14 K22 ["Data"]
  GETTABLE R17 R18 R15
  GETTABLEKS R16 R17 K23 ["Value"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K24 ["addKeyframe"]
  MOVE R18 R14
  MOVE R19 R9
  DUPTABLE R20 K27 [{"Value", "EasingStyle", "EasingDirection"}]
  SETTABLEKS R16 R20 K23 ["Value"]
  GETIMPORT R21 K31 [Enum.PoseEasingStyle.Linear]
  SETTABLEKS R21 R20 K25 ["EasingStyle"]
  GETIMPORT R21 K34 [Enum.PoseEasingDirection.In]
  SETTABLEKS R21 R20 K26 ["EasingDirection"]
  CALL R17 3 0
  FORGLOOP R10 2 [-29]
  GETTABLEKS R10 R5 K35 ["Metadata"]
  SETTABLEKS R9 R10 K36 ["EndTick"]
  GETTABLEKS R10 R5 K35 ["Metadata"]
  GETTABLEKS R11 R0 K37 ["Priority"]
  SETTABLEKS R11 R10 K37 ["Priority"]
  GETTABLEKS R10 R5 K35 ["Metadata"]
  GETTABLEKS R11 R0 K38 ["Loop"]
  SETTABLEKS R11 R10 K39 ["Looping"]
  GETTABLEKS R10 R5 K35 ["Metadata"]
  GETTABLEKS R11 R0 K2 ["Name"]
  SETTABLEKS R11 R10 K2 ["Name"]
  GETTABLEKS R10 R5 K35 ["Metadata"]
  GETTABLEKS R11 R0 K5 ["Guid"]
  SETTABLEKS R11 R10 K5 ["Guid"]
  LOADK R12 K40 ["AnimationRigData"]
  NAMECALL R10 R0 K41 ["FindFirstChildOfClass"]
  CALL R10 2 1
  JUMPIFNOT R10 [+4]
  GETTABLEKS R11 R5 K35 ["Metadata"]
  SETTABLEKS R10 R11 K42 ["AnimationRig"]
  MOVE R11 R5
  MOVE R12 R1
  LENGTH R13 R2
  MOVE R14 R6
  MOVE R15 R7
  CLOSEUPVALS R6
  RETURN R11 5

PROTO_24:
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["No data table was provided."]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Exporting to KeyframeSequence requires a reference rig."]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K4 ["Metadata"]
  GETTABLEKS R3 R0 K5 ["Events"]
  GETTABLEKS R4 R3 K6 ["NamedKeyframes"]
  GETIMPORT R5 K9 [Instance.new]
  LOADK R6 K10 ["KeyframeSequence"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K11 ["Name"]
  SETTABLEKS R6 R5 K11 ["Name"]
  GETTABLEKS R6 R2 K12 ["Looping"]
  SETTABLEKS R6 R5 K13 ["Loop"]
  GETTABLEKS R6 R2 K14 ["Priority"]
  SETTABLEKS R6 R5 K14 ["Priority"]
  GETTABLEKS R7 R2 K16 ["Guid"]
  ORK R6 R7 K15 [""]
  SETTABLEKS R6 R5 K16 ["Guid"]
  LOADN R6 0
  LOADN R7 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K17 ["getRigInfo"]
  MOVE R9 R1
  CALL R8 1 1
  GETTABLEKS R9 R8 K18 ["Parts"]
  GETTABLEKS R10 R8 K19 ["PartNameToMotor"]
  GETTABLEKS R11 R8 K20 ["PartNameToConstraint"]
  GETTABLEKS R12 R8 K21 ["PartNameToAnimConstraint"]
  GETTABLEKS R13 R8 K22 ["BoneNameToBone"]
  NEWTABLE R14 0 0
  GETTABLEKS R16 R0 K23 ["Instances"]
  GETTABLEKS R15 R16 K24 ["Root"]
  GETTABLEKS R18 R15 K25 ["Type"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K26 ["INSTANCE_TYPES"]
  GETTABLEKS R19 R20 K27 ["Rig"]
  JUMPIFEQ R18 R19 [+2]
  LOADB R17 0 +1
  LOADB R17 1
  FASTCALL2K ASSERT R17 K28 [+4]
  LOADK R18 K28 ["Can only export Rig animations to KeyframeSequence."]
  GETIMPORT R16 K2 [assert]
  CALL R16 2 0
  GETTABLEKS R16 R15 K29 ["Tracks"]
  GETUPVAL R17 2
  MOVE R18 R16
  MOVE R19 R10
  MOVE R20 R13
  MOVE R21 R12
  CALL R17 4 1
  GETIMPORT R18 K31 [pairs]
  MOVE R19 R16
  CALL R18 1 3
  FORGPREP_NEXT R18
  GETIMPORT R23 K31 [pairs]
  GETTABLEKS R24 R22 K32 ["Keyframes"]
  CALL R23 1 3
  FORGPREP_NEXT R23
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K33 ["TICK_FREQUENCY"]
  DIV R28 R27 R29
  GETTABLE R29 R14 R27
  JUMPIF R29 [+10]
  GETIMPORT R30 K9 [Instance.new]
  LOADK R31 K34 ["Keyframe"]
  CALL R30 1 1
  SETTABLEKS R28 R30 K35 ["Time"]
  SETTABLEKS R5 R30 K36 ["Parent"]
  MOVE R29 R30
  SETTABLE R29 R14 R27
  GETTABLEKS R30 R22 K25 ["Type"]
  GETTABLEKS R32 R22 K37 ["Data"]
  GETTABLE R31 R32 R27
  GETUPVAL R32 3
  MOVE R33 R29
  MOVE R34 R21
  MOVE R35 R30
  MOVE R36 R31
  MOVE R37 R17
  CALL R32 5 0
  GETTABLE R32 R4 R27
  JUMPIFNOT R32 [+3]
  GETTABLE R32 R4 R27
  SETTABLEKS R32 R29 K11 ["Name"]
  ADDK R6 R6 K38 [1]
  FORGLOOP R23 2 [-35]
  FORGLOOP R18 2 [-43]
  GETIMPORT R18 K40 [ipairs]
  GETTABLEKS R19 R3 K32 ["Keyframes"]
  CALL R18 1 3
  FORGPREP_INEXT R18
  GETTABLEKS R24 R3 K37 ["Data"]
  GETTABLE R23 R24 R22
  GETIMPORT R24 K31 [pairs]
  MOVE R25 R23
  CALL R24 1 3
  FORGPREP_NEXT R24
  GETUPVAL R31 1
  GETTABLEKS R30 R31 K33 ["TICK_FREQUENCY"]
  DIV R29 R22 R30
  GETTABLE R30 R14 R22
  JUMPIF R30 [+10]
  GETIMPORT R31 K9 [Instance.new]
  LOADK R32 K34 ["Keyframe"]
  CALL R31 1 1
  SETTABLEKS R29 R31 K35 ["Time"]
  SETTABLEKS R5 R31 K36 ["Parent"]
  MOVE R30 R31
  SETTABLE R30 R14 R22
  GETIMPORT R31 K9 [Instance.new]
  LOADK R32 K41 ["KeyframeMarker"]
  MOVE R33 R30
  CALL R31 2 1
  SETTABLEKS R27 R31 K11 ["Name"]
  SETTABLEKS R28 R31 K42 ["Value"]
  ADDK R7 R7 K38 [1]
  FORGLOOP R24 2 [-27]
  FORGLOOP R18 2 [inext] [-37]
  GETUPVAL R18 4
  MOVE R19 R0
  MOVE R20 R1
  MOVE R21 R5
  CALL R18 3 0
  NAMECALL R18 R5 K43 ["GetKeyframes"]
  CALL R18 1 1
  MOVE R19 R5
  LENGTH R20 R18
  MOVE R21 R6
  MOVE R22 R7
  RETURN R19 4

PROTO_25:
  LOADN R1 0
  GETTABLEKS R2 R0 K0 ["Name"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["FACE_CONTROLS_FOLDER"]
  JUMPIFNOTEQ R2 R3 [+8]
  GETGLOBAL R2 K2 ["readFacsCurves"]
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R2 2 1
  MOVE R1 R2
  JUMP [+75]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["PROPERTY_KEYS"]
  GETTABLEKS R4 R5 K4 ["Position"]
  NAMECALL R2 R0 K5 ["FindFirstChild"]
  CALL R2 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["PROPERTY_KEYS"]
  GETTABLEKS R5 R6 K6 ["Rotation"]
  NAMECALL R3 R0 K5 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIF R2 [+1]
  JUMPIFNOT R3 [+57]
  LOADNIL R4
  JUMPIFNOT R3 [+19]
  GETTABLEKS R5 R3 K7 ["ClassName"]
  JUMPIFNOTEQKS R5 K8 ["RotationCurve"] [+7]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["TRACK_TYPES"]
  GETTABLEKS R4 R5 K10 ["Quaternion"]
  JUMP [+9]
  GETTABLEKS R5 R3 K7 ["ClassName"]
  JUMPIFNOTEQKS R5 K11 ["EulerRotationCurve"] [+6]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["TRACK_TYPES"]
  GETTABLEKS R4 R5 K12 ["EulerAngles"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K13 ["addTrack"]
  GETUPVAL R6 1
  GETTABLEKS R7 R0 K0 ["Name"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["TRACK_TYPES"]
  GETTABLEKS R8 R9 K14 ["CFrame"]
  LOADB R9 1
  MOVE R10 R4
  CALL R5 5 1
  GETGLOBAL R6 K15 ["readCurve"]
  MOVE R7 R5
  MOVE R8 R0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["TRACK_TYPES"]
  GETTABLEKS R9 R10 K14 ["CFrame"]
  CALL R6 3 1
  MOVE R1 R6
  GETUPVAL R6 3
  ADDK R6 R6 K16 [1]
  SETUPVAL R6 3
  GETUPVAL R6 4
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K17 ["countKeyframes"]
  MOVE R8 R5
  CALL R7 1 1
  ADD R6 R6 R7
  SETUPVAL R6 4
  GETUPVAL R2 6
  JUMPIFNOTLT R2 R1 [+2]
  SETUPVAL R1 6
  RETURN R0 0

PROTO_26:
  LOADB R2 0
  JUMPIFEQKNIL R0 [+15]
  LOADB R2 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["Instance"] [+7]
  GETTABLEKS R3 R0 K3 ["ClassName"]
  JUMPIFEQKS R3 K4 ["CurveAnimation"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K5 [+4]
  LOADK R3 K5 ["Expected a CurveAnimation for the AnimationData."]
  GETIMPORT R1 K7 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["new"]
  GETTABLEKS R2 R0 K9 ["Name"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["INSTANCE_TYPES"]
  GETTABLEKS R3 R4 K11 ["Rig"]
  GETTABLEKS R4 R0 K12 ["Guid"]
  CALL R1 3 1
  GETTABLEKS R4 R1 K13 ["Instances"]
  GETTABLEKS R3 R4 K14 ["Root"]
  GETTABLEKS R2 R3 K15 ["Tracks"]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  GETUPVAL R7 2
  MOVE R8 R0
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE REF R5
  CAPTURE REF R4
  CAPTURE UPVAL U3
  CAPTURE REF R3
  CALL R7 2 0
  NAMECALL R7 R0 K16 ["GetChildren"]
  CALL R7 1 1
  GETIMPORT R8 K18 [ipairs]
  MOVE R9 R7
  CALL R8 1 3
  FORGPREP_INEXT R8
  LOADK R15 K19 ["MarkerCurve"]
  NAMECALL R13 R12 K20 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+51]
  NAMECALL R13 R12 K21 ["GetMarkers"]
  CALL R13 1 1
  GETIMPORT R14 K18 [ipairs]
  MOVE R15 R13
  CALL R14 1 3
  FORGPREP_INEXT R14
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K22 ["getNearestTick"]
  GETTABLEKS R21 R18 K23 ["Time"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K24 ["TICK_FREQUENCY"]
  MUL R20 R21 R22
  CALL R19 1 1
  JUMPIFNOTLT R3 R19 [+2]
  MOVE R3 R19
  GETTABLEKS R20 R12 K9 ["Name"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K25 ["NAMED_KEYFRAMES_CHANNEL"]
  JUMPIFNOTEQ R20 R21 [+10]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K26 ["setKeyframeName"]
  MOVE R21 R1
  MOVE R22 R19
  GETTABLEKS R23 R18 K27 ["Value"]
  CALL R20 3 0
  JUMP [+12]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K28 ["addEvent"]
  GETTABLEKS R21 R1 K29 ["Events"]
  MOVE R22 R19
  GETTABLEKS R23 R12 K9 ["Name"]
  GETTABLEKS R24 R18 K27 ["Value"]
  CALL R20 4 0
  ADDK R6 R6 K30 [1]
  FORGLOOP R14 2 [inext] [-42]
  FORGLOOP R8 2 [inext] [-57]
  GETTABLEKS R8 R1 K31 ["Metadata"]
  GETTABLEKS R9 R0 K9 ["Name"]
  SETTABLEKS R9 R8 K9 ["Name"]
  GETTABLEKS R9 R0 K32 ["Loop"]
  SETTABLEKS R9 R8 K33 ["Looping"]
  GETTABLEKS R9 R0 K34 ["Priority"]
  SETTABLEKS R9 R8 K34 ["Priority"]
  SETTABLEKS R3 R8 K35 ["EndTick"]
  LOADB R9 1
  SETTABLEKS R9 R8 K36 ["IsChannelAnimation"]
  GETTABLEKS R9 R0 K12 ["Guid"]
  SETTABLEKS R9 R8 K12 ["Guid"]
  LOADK R11 K37 ["AnimationRigData"]
  NAMECALL R9 R0 K38 ["FindFirstChildOfClass"]
  CALL R9 2 1
  JUMPIFNOT R9 [+2]
  SETTABLEKS R9 R8 K39 ["AnimationRig"]
  MOVE R10 R1
  MOVE R11 R4
  MOVE R12 R5
  MOVE R13 R6
  CLOSEUPVALS R3
  RETURN R10 4

PROTO_27:
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["No data table was provided."]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Exporting to CurveAnimation requires a reference rig."]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K4 ["Metadata"]
  GETIMPORT R3 K7 [Instance.new]
  LOADK R4 K8 ["CurveAnimation"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K9 ["Name"]
  SETTABLEKS R4 R3 K9 ["Name"]
  GETTABLEKS R4 R2 K10 ["Looping"]
  SETTABLEKS R4 R3 K11 ["Loop"]
  GETTABLEKS R4 R2 K12 ["Priority"]
  SETTABLEKS R4 R3 K12 ["Priority"]
  GETTABLEKS R5 R2 K14 ["Guid"]
  ORK R4 R5 K13 [""]
  SETTABLEKS R4 R3 K14 ["Guid"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["getRigInfo"]
  MOVE R5 R1
  CALL R4 1 1
  GETTABLEKS R5 R4 K16 ["PartNameToMotor"]
  GETTABLEKS R6 R4 K17 ["PartNameToAnimConstraint"]
  GETTABLEKS R7 R4 K18 ["BoneNameToBone"]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R12 R0 K19 ["Instances"]
  GETTABLEKS R11 R12 K20 ["Root"]
  GETTABLEKS R14 R11 K21 ["Type"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K22 ["INSTANCE_TYPES"]
  GETTABLEKS R15 R16 K23 ["Rig"]
  JUMPIFEQ R14 R15 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  FASTCALL2K ASSERT R13 K24 [+4]
  LOADK R14 K24 ["Can only export Rig animations to CurveAnimation."]
  GETIMPORT R12 K2 [assert]
  CALL R12 2 0
  GETTABLEKS R12 R11 K25 ["Tracks"]
  GETUPVAL R13 2
  MOVE R14 R12
  MOVE R15 R5
  MOVE R16 R7
  MOVE R17 R6
  CALL R13 4 1
  GETIMPORT R14 K27 [pairs]
  MOVE R15 R12
  CALL R14 1 3
  FORGPREP_NEXT R14
  GETUPVAL R19 3
  MOVE R20 R3
  MOVE R21 R17
  MOVE R22 R13
  CALL R19 3 1
  GETTABLEKS R20 R18 K21 ["Type"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K28 ["TRACK_TYPES"]
  GETTABLEKS R21 R22 K29 ["CFrame"]
  JUMPIFNOTEQ R20 R21 [+57]
  MOVE R22 R17
  NAMECALL R20 R19 K30 ["FindFirstChild"]
  CALL R20 2 1
  JUMPIF R20 [+5]
  GETIMPORT R20 K7 [Instance.new]
  LOADK R21 K31 ["Folder"]
  MOVE R22 R19
  CALL R20 2 1
  MOVE R19 R20
  SETTABLEKS R17 R19 K9 ["Name"]
  GETGLOBAL R20 K32 ["makeVector3Curve"]
  GETTABLEKS R22 R18 K33 ["Components"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K34 ["PROPERTY_KEYS"]
  GETTABLEKS R23 R24 K35 ["Position"]
  GETTABLE R21 R22 R23
  CALL R20 1 1
  JUMPIFNOT R20 [+9]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K34 ["PROPERTY_KEYS"]
  GETTABLEKS R21 R22 K35 ["Position"]
  SETTABLEKS R21 R20 K9 ["Name"]
  SETTABLEKS R19 R20 K36 ["Parent"]
  GETGLOBAL R21 K37 ["makeRotationCurve"]
  GETTABLEKS R23 R18 K33 ["Components"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K34 ["PROPERTY_KEYS"]
  GETTABLEKS R24 R25 K38 ["Rotation"]
  GETTABLE R22 R23 R24
  CALL R21 1 1
  JUMPIFNOT R21 [+28]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K34 ["PROPERTY_KEYS"]
  GETTABLEKS R22 R23 K38 ["Rotation"]
  SETTABLEKS R22 R21 K9 ["Name"]
  SETTABLEKS R19 R21 K36 ["Parent"]
  JUMP [+18]
  GETTABLEKS R20 R18 K21 ["Type"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K28 ["TRACK_TYPES"]
  GETTABLEKS R21 R22 K39 ["Facs"]
  JUMPIFNOTEQ R20 R21 [+10]
  GETGLOBAL R20 K40 ["makeFacsCurve"]
  MOVE R21 R18
  CALL R20 1 1
  JUMPIFNOT R20 [+4]
  SETTABLEKS R17 R20 K9 ["Name"]
  SETTABLEKS R19 R20 K36 ["Parent"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K41 ["countKeyframes"]
  MOVE R21 R18
  CALL R20 1 1
  ADD R8 R8 R20
  ADDK R9 R9 K42 [1]
  FORGLOOP R14 2 [-96]
  NEWTABLE R14 0 0
  GETTABLEKS R15 R0 K43 ["Events"]
  GETIMPORT R16 K27 [pairs]
  GETTABLEKS R17 R15 K44 ["Data"]
  CALL R16 1 3
  FORGPREP_NEXT R16
  GETIMPORT R21 K27 [pairs]
  MOVE R22 R20
  CALL R21 1 3
  FORGPREP_NEXT R21
  GETTABLE R26 R14 R24
  JUMPIF R26 [+3]
  NEWTABLE R26 0 0
  SETTABLE R26 R14 R24
  GETTABLE R26 R14 R24
  SETTABLE R25 R26 R19
  FORGLOOP R21 2 [-8]
  FORGLOOP R16 2 [-15]
  GETTABLEKS R16 R15 K45 ["NamedKeyframes"]
  JUMPIFNOT R16 [+15]
  NEWTABLE R16 0 0
  GETIMPORT R17 K27 [pairs]
  GETTABLEKS R18 R15 K45 ["NamedKeyframes"]
  CALL R17 1 3
  FORGPREP_NEXT R17
  SETTABLE R21 R16 R20
  FORGLOOP R17 2 [-2]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K46 ["NAMED_KEYFRAMES_CHANNEL"]
  SETTABLE R16 R14 R17
  GETIMPORT R16 K27 [pairs]
  MOVE R17 R14
  CALL R16 1 3
  FORGPREP_NEXT R16
  GETIMPORT R21 K7 [Instance.new]
  LOADK R22 K47 ["MarkerCurve"]
  CALL R21 1 1
  SETTABLEKS R19 R21 K9 ["Name"]
  SETTABLEKS R3 R21 K36 ["Parent"]
  GETIMPORT R22 K27 [pairs]
  MOVE R23 R20
  CALL R22 1 3
  FORGPREP_NEXT R22
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K48 ["TICK_FREQUENCY"]
  DIV R27 R25 R28
  MOVE R30 R27
  MOVE R31 R26
  NAMECALL R28 R21 K49 ["InsertMarkerAtTime"]
  CALL R28 3 0
  ADDK R10 R10 K42 [1]
  FORGLOOP R22 2 [-11]
  FORGLOOP R16 2 [-26]
  GETUPVAL R16 5
  MOVE R17 R0
  MOVE R18 R1
  MOVE R19 R3
  CALL R16 3 0
  MOVE R16 R3
  MOVE R17 R8
  MOVE R18 R9
  MOVE R19 R10
  RETURN R16 4

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Math"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K12 ["AnimationData"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K13 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K9 ["Util"]
  GETTABLEKS R7 R8 K14 ["KeyframeUtils"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K9 ["Util"]
  GETTABLEKS R8 R9 K15 ["RigInfo"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K9 ["Util"]
  GETTABLEKS R9 R10 K16 ["Templates"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K9 ["Util"]
  GETTABLEKS R10 R11 K17 ["TrackUtils"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K18 ["LuaFlags"]
  GETTABLEKS R11 R12 K19 ["GetFFlagAnimationConstraints"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K18 ["LuaFlags"]
  GETTABLEKS R12 R13 K20 ["GetFFlagForceR6HumanoidRootPart"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K21 ["Types"]
  CALL R12 1 1
  NEWTABLE R13 4 0
  DUPCLOSURE R14 K22 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R3
  DUPCLOSURE R15 K23 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R15
  DUPCLOSURE R16 K24 [PROTO_3]
  DUPCLOSURE R17 K25 [PROTO_4]
  CAPTURE VAL R17
  DUPCLOSURE R18 K26 [PROTO_6]
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R1
  DUPCLOSURE R19 K27 [PROTO_7]
  DUPCLOSURE R20 K28 [PROTO_8]
  CAPTURE VAL R5
  DUPCLOSURE R21 K29 [PROTO_9]
  DUPCLOSURE R22 K30 [PROTO_10]
  CAPTURE VAL R5
  SETGLOBAL R22 K31 ["fillFloatCurve"]
  DUPCLOSURE R22 K32 [PROTO_11]
  CAPTURE VAL R5
  SETGLOBAL R22 K33 ["fillQuaternionCurve"]
  DUPCLOSURE R22 K34 [PROTO_12]
  CAPTURE VAL R5
  SETGLOBAL R22 K35 ["makeVector3Curve"]
  DUPCLOSURE R22 K36 [PROTO_13]
  SETGLOBAL R22 K37 ["makeQuaternionCurve"]
  DUPCLOSURE R22 K38 [PROTO_14]
  CAPTURE VAL R5
  SETGLOBAL R22 K39 ["makeEulerCurve"]
  DUPCLOSURE R22 K40 [PROTO_15]
  CAPTURE VAL R5
  SETGLOBAL R22 K41 ["makeRotationCurve"]
  DUPCLOSURE R22 K42 [PROTO_16]
  SETGLOBAL R22 K43 ["makeFacsCurve"]
  DUPCLOSURE R22 K44 [PROTO_17]
  DUPCLOSURE R23 K45 [PROTO_18]
  CAPTURE VAL R11
  CAPTURE VAL R7
  DUPCLOSURE R24 K46 [PROTO_19]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETGLOBAL R24 K47 ["readCurve"]
  DUPCLOSURE R24 K48 [PROTO_20]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETGLOBAL R24 K49 ["readFacsCurves"]
  DUPCLOSURE R24 K50 [PROTO_23]
  CAPTURE VAL R14
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLEKS R24 R13 K51 ["fromKeyframeSequence"]
  DUPCLOSURE R24 K52 [PROTO_24]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R23
  SETTABLEKS R24 R13 K53 ["toKeyframeSequence"]
  DUPCLOSURE R24 K54 [PROTO_26]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE VAL R6
  SETTABLEKS R24 R13 K55 ["fromCurveAnimation"]
  DUPCLOSURE R24 K56 [PROTO_27]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R9
  CAPTURE VAL R23
  SETTABLEKS R24 R13 K57 ["toCurveAnimation"]
  RETURN R13 1
