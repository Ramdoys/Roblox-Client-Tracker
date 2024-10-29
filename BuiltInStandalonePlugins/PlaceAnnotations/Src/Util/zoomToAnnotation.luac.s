PROTO_0:
  JUMPIFNOTEQKN R0 K0 [0] [+3]
  LOADK R2 K1 [0.1]
  RETURN R2 1
  FASTCALL1 MATH_ABS R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K4 [math.abs]
  CALL R2 1 1
  JUMPIFNOTLT R2 R1 [+8]
  FASTCALL1 MATH_SIGN R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K6 [math.sign]
  CALL R3 1 1
  MULK R2 R3 K1 [0.1]
  RETURN R2 1
  RETURN R0 1

PROTO_1:
  GETIMPORT R1 K1 [workspace]
  GETTABLEKS R0 R1 K2 ["CurrentCamera"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K3 ["CameraType"]
  GETUPVAL R0 1
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K4 ["Selected"]
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["AnnotationsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K4 ["Adornee"]
  JUMPIF R2 [+3]
  SETTABLEKS R0 R1 K5 ["Selected"]
  RETURN R0 0
  GETTABLEKS R3 R0 K4 ["Adornee"]
  FASTCALL2K ASSERT R3 K6 [+4]
  LOADK R4 K6 ["Can only zoom to annotations with adornees"]
  GETIMPORT R2 K8 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K4 ["Adornee"]
  LOADK R4 K9 ["PVInstance"]
  NAMECALL R2 R2 K10 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+179]
  GETTABLEKS R2 R0 K4 ["Adornee"]
  NAMECALL R3 R0 K11 ["GetAbsolutePosition"]
  CALL R3 1 1
  GETIMPORT R4 K14 [RaycastParams.new]
  CALL R4 0 1
  NEWTABLE R7 0 1
  GETTABLEKS R8 R0 K4 ["Adornee"]
  SETLIST R7 R8 1 [1]
  NAMECALL R5 R4 K15 ["AddToFilter"]
  CALL R5 2 0
  GETIMPORT R5 K19 [Enum.RaycastFilterType.Include]
  SETTABLEKS R5 R4 K20 ["FilterType"]
  LOADK R5 K21 ["StudioSelectable"]
  SETTABLEKS R5 R4 K22 ["CollisionGroup"]
  LOADB R5 1
  SETTABLEKS R5 R4 K23 ["BruteForceAllSlow"]
  GETIMPORT R5 K25 [workspace]
  GETTABLEKS R9 R0 K26 ["AdorneeOffset"]
  GETTABLEKS R8 R9 K27 ["Unit"]
  ADD R7 R3 R8
  GETTABLEKS R9 R0 K26 ["AdorneeOffset"]
  MINUS R8 R9
  MOVE R9 R4
  NAMECALL R5 R5 K28 ["Raycast"]
  CALL R5 4 1
  GETIMPORT R8 K25 [workspace]
  GETTABLEKS R7 R8 K29 ["CurrentCamera"]
  GETTABLEKS R6 R7 K30 ["CameraType"]
  GETIMPORT R8 K25 [workspace]
  GETTABLEKS R7 R8 K29 ["CurrentCamera"]
  GETIMPORT R8 K32 [Enum.CameraType.Custom]
  SETTABLEKS R8 R7 K30 ["CameraType"]
  GETIMPORT R8 K25 [workspace]
  GETTABLEKS R7 R8 K29 ["CurrentCamera"]
  GETIMPORT R8 K34 [CFrame.new]
  MOVE R9 R3
  CALL R8 1 1
  SETTABLEKS R8 R7 K35 ["Focus"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R8 R5 K36 ["Normal"]
  GETTABLEKS R7 R8 K27 ["Unit"]
  JUMP [+3]
  GETTABLEKS R8 R3 K27 ["Unit"]
  MINUS R7 R8
  GETTABLEKS R9 R7 K37 ["Y"]
  FASTCALL1 MATH_ABS R9 [+2]
  GETIMPORT R8 K40 [math.abs]
  CALL R8 1 1
  LOADK R9 K41 [0.9]
  JUMPIFNOTLT R9 R8 [+59]
  GETTABLEKS R10 R7 K42 ["X"]
  JUMPIFNOTEQKN R10 K43 [0] [+3]
  LOADK R9 K44 [0.1]
  JUMP [+17]
  FASTCALL1 MATH_ABS R10 [+3]
  MOVE R12 R10
  GETIMPORT R11 K40 [math.abs]
  CALL R11 1 1
  LOADK R12 K44 [0.1]
  JUMPIFNOTLT R11 R12 [+8]
  FASTCALL1 MATH_SIGN R10 [+3]
  MOVE R12 R10
  GETIMPORT R11 K46 [math.sign]
  CALL R11 1 1
  MULK R9 R11 K44 [0.1]
  JUMP [+2]
  MOVE R9 R10
  JUMP [0]
  GETTABLEKS R12 R7 K37 ["Y"]
  FASTCALL1 MATH_SIGN R12 [+2]
  GETIMPORT R11 K46 [math.sign]
  CALL R11 1 1
  MULK R10 R11 K41 [0.9]
  GETTABLEKS R12 R7 K47 ["Z"]
  JUMPIFNOTEQKN R12 K43 [0] [+3]
  LOADK R11 K44 [0.1]
  JUMP [+17]
  FASTCALL1 MATH_ABS R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K40 [math.abs]
  CALL R13 1 1
  LOADK R14 K44 [0.1]
  JUMPIFNOTLT R13 R14 [+8]
  FASTCALL1 MATH_SIGN R12 [+3]
  MOVE R14 R12
  GETIMPORT R13 K46 [math.sign]
  CALL R13 1 1
  MULK R11 R13 K44 [0.1]
  JUMP [+2]
  MOVE R11 R12
  JUMP [0]
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K49 [Vector3.new]
  CALL R8 3 1
  MOVE R7 R8
  GETUPVAL R8 0
  GETIMPORT R11 K25 [workspace]
  GETTABLEKS R10 R11 K29 ["CurrentCamera"]
  GETIMPORT R11 K51 [TweenInfo.new]
  LOADK R12 K52 [0.3]
  GETIMPORT R13 K55 [Enum.EasingStyle.Circular]
  GETIMPORT R14 K58 [Enum.EasingDirection.InOut]
  CALL R11 3 1
  DUPTABLE R12 K59 [{"CFrame"}]
  GETIMPORT R13 K61 [CFrame.lookAt]
  MULK R15 R7 K62 [10]
  ADD R14 R3 R15
  MOVE R15 R3
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["CFrame"]
  NAMECALL R8 R8 K63 ["Create"]
  CALL R8 4 1
  NAMECALL R9 R8 K64 ["Play"]
  CALL R9 1 0
  GETTABLEKS R9 R8 K65 ["Completed"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R0
  NAMECALL R9 R9 K66 ["Once"]
  CALL R9 2 0
  RETURN R0 0
  GETIMPORT R2 K68 [error]
  LOADK R3 K69 ["Adornee type is unsupported."]
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["TweenService"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  DUPCLOSURE R3 K12 [PROTO_0]
  DUPCLOSURE R4 K13 [PROTO_2]
  CAPTURE VAL R2
  RETURN R4 1
