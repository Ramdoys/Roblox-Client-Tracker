PROTO_0:
  GETTABLEKS R2 R1 K0 ["ViewportSize"]
  LOADN R4 1
  GETTABLEKS R6 R2 K1 ["X"]
  GETTABLEKS R7 R2 K2 ["Y"]
  DIV R5 R6 R7
  FASTCALL2 MATH_MIN R4 R5 [+3]
  GETIMPORT R3 K5 [math.min]
  CALL R3 2 1
  GETTABLEKS R9 R1 K7 ["FieldOfView"]
  DIVK R8 R9 K6 [2]
  FASTCALL1 MATH_RAD R8 [+2]
  GETIMPORT R7 K9 [math.rad]
  CALL R7 1 1
  FASTCALL1 MATH_TAN R7 [+2]
  GETIMPORT R6 K11 [math.tan]
  CALL R6 1 1
  MUL R5 R6 R3
  FASTCALL1 MATH_ATAN R5 [+2]
  GETIMPORT R4 K13 [math.atan]
  CALL R4 1 1
  GETTABLEKS R6 R0 K14 ["Magnitude"]
  DIVK R5 R6 K6 [2]
  FASTCALL1 MATH_SIN R4 [+3]
  MOVE R8 R4
  GETIMPORT R7 K16 [math.sin]
  CALL R7 1 1
  DIV R6 R5 R7
  RETURN R6 1

PROTO_1:
  LOADK R4 K0 ["Model"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+4]
  NAMECALL R1 R0 K2 ["GetPivot"]
  CALL R1 1 1
  JUMP [+2]
  GETTABLEKS R1 R0 K3 ["CFrame"]
  LOADK R5 K0 ["Model"]
  NAMECALL R3 R0 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+4]
  NAMECALL R2 R0 K4 ["GetExtentsSize"]
  CALL R2 1 1
  JUMP [+2]
  GETTABLEKS R2 R0 K5 ["Size"]
  MULK R3 R2 K6 [0.5]
  GETTABLEKS R5 R1 K7 ["Position"]
  GETTABLEKS R8 R3 K8 ["X"]
  MINUS R7 R8
  GETTABLEKS R9 R3 K9 ["Y"]
  MINUS R8 R9
  GETTABLEKS R10 R3 K10 ["Z"]
  MINUS R9 R10
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K13 [Vector3.new]
  CALL R6 3 1
  ADD R4 R5 R6
  GETTABLEKS R6 R1 K7 ["Position"]
  GETTABLEKS R8 R3 K8 ["X"]
  GETTABLEKS R9 R3 K9 ["Y"]
  GETTABLEKS R10 R3 K10 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K13 [Vector3.new]
  CALL R7 3 1
  ADD R5 R6 R7
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["X"]
  GETTABLEKS R9 R4 K8 ["X"]
  FASTCALL2 MATH_MIN R8 R9 [+3]
  GETIMPORT R7 K16 [math.min]
  CALL R7 2 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["Y"]
  GETTABLEKS R10 R4 K9 ["Y"]
  FASTCALL2 MATH_MIN R9 R10 [+3]
  GETIMPORT R8 K16 [math.min]
  CALL R8 2 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K10 ["Z"]
  GETTABLEKS R11 R4 K10 ["Z"]
  FASTCALL2 MATH_MIN R10 R11 [+3]
  GETIMPORT R9 K16 [math.min]
  CALL R9 2 1
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K13 [Vector3.new]
  CALL R6 3 1
  SETUPVAL R6 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["X"]
  GETTABLEKS R9 R5 K8 ["X"]
  FASTCALL2 MATH_MAX R8 R9 [+3]
  GETIMPORT R7 K18 [math.max]
  CALL R7 2 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["Y"]
  GETTABLEKS R10 R5 K9 ["Y"]
  FASTCALL2 MATH_MAX R9 R10 [+3]
  GETIMPORT R8 K18 [math.max]
  CALL R8 2 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K10 ["Z"]
  GETTABLEKS R11 R5 K10 ["Z"]
  FASTCALL2 MATH_MAX R10 R11 [+3]
  GETIMPORT R9 K18 [math.max]
  CALL R9 2 1
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K13 [Vector3.new]
  CALL R6 3 1
  SETUPVAL R6 1
  RETURN R0 0

PROTO_2:
  LOADK R1 K0 [{∞, ∞, ∞}]
  LOADK R2 K1 [{-∞, -∞, -∞}]
  NEWCLOSURE R3 P0
  CAPTURE REF R1
  CAPTURE REF R2
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  LOADK R11 K2 ["Model"]
  NAMECALL R9 R8 K3 ["IsA"]
  CALL R9 2 1
  JUMPIF R9 [+10]
  LOADK R11 K4 ["BasePart"]
  NAMECALL R9 R8 K3 ["IsA"]
  CALL R9 2 1
  JUMPIF R9 [+5]
  LOADK R11 K5 ["MeshPart"]
  NAMECALL R9 R8 K3 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+3]
  MOVE R9 R3
  MOVE R10 R8
  CALL R9 1 0
  FORGLOOP R4 2 [-19]
  ADD R5 R1 R2
  MULK R4 R5 K6 [0.5]
  SUB R5 R2 R1
  GETIMPORT R6 K9 [CFrame.new]
  MOVE R7 R4
  CALL R6 1 1
  MOVE R7 R5
  CLOSEUPVALS R1
  RETURN R6 2

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 2
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  MOVE R6 R2
  MOVE R7 R3
  NAMECALL R4 R0 K0 ["ZoomToExtents"]
  CALL R4 3 0
  RETURN R0 0
  GETTABLEKS R5 R0 K1 ["ViewportSize"]
  LOADN R7 1
  GETTABLEKS R9 R5 K2 ["X"]
  GETTABLEKS R10 R5 K3 ["Y"]
  DIV R8 R9 R10
  FASTCALL2 MATH_MIN R7 R8 [+3]
  GETIMPORT R6 K6 [math.min]
  CALL R6 2 1
  GETTABLEKS R12 R0 K8 ["FieldOfView"]
  DIVK R11 R12 K7 [2]
  FASTCALL1 MATH_RAD R11 [+2]
  GETIMPORT R10 K10 [math.rad]
  CALL R10 1 1
  FASTCALL1 MATH_TAN R10 [+2]
  GETIMPORT R9 K12 [math.tan]
  CALL R9 1 1
  MUL R8 R9 R6
  FASTCALL1 MATH_ATAN R8 [+2]
  GETIMPORT R7 K14 [math.atan]
  CALL R7 1 1
  GETTABLEKS R9 R3 K15 ["Magnitude"]
  DIVK R8 R9 K7 [2]
  FASTCALL1 MATH_SIN R7 [+3]
  MOVE R10 R7
  GETIMPORT R9 K17 [math.sin]
  CALL R9 1 1
  DIV R4 R8 R9
  GETTABLEKS R5 R0 K18 ["CFrame"]
  GETIMPORT R6 K20 [CFrame.new]
  GETTABLEKS R8 R2 K21 ["p"]
  GETTABLEKS R10 R5 K22 ["LookVector"]
  MUL R9 R10 R4
  SUB R7 R8 R9
  CALL R6 1 1
  SETTABLEKS R6 R0 K18 ["CFrame"]
  SETTABLEKS R2 R0 K23 ["Focus"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagZoomToExtentsApi"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  DUPCLOSURE R3 K10 [PROTO_2]
  DUPCLOSURE R4 K11 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
