PROTO_0:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["'%s'"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["%.3f"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["{%.3f, %d}"]
  GETTABLEKS R3 R0 K4 ["Scale"]
  GETTABLEKS R4 R0 K5 ["Offset"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["{%.3f, %d}, {%.3f, %d}"]
  GETTABLEKS R4 R0 K4 ["X"]
  GETTABLEKS R3 R4 K5 ["Scale"]
  GETTABLEKS R5 R0 K4 ["X"]
  GETTABLEKS R4 R5 K6 ["Offset"]
  GETTABLEKS R6 R0 K7 ["Y"]
  GETTABLEKS R5 R6 K5 ["Scale"]
  GETTABLEKS R7 R0 K7 ["Y"]
  GETTABLEKS R6 R7 K6 ["Offset"]
  CALL R1 5 -1
  RETURN R1 -1

PROTO_4:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["{%.3f, %.3f}"]
  GETTABLEKS R3 R0 K4 ["X"]
  GETTABLEKS R4 R0 K5 ["Y"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_5:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["{%.3f, %.3f, %.3f}"]
  GETTABLEKS R3 R0 K4 ["X"]
  GETTABLEKS R4 R0 K5 ["Y"]
  GETTABLEKS R5 R0 K6 ["Z"]
  CALL R1 4 -1
  RETURN R1 -1

PROTO_6:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["{%.3f, %.3f}, {%.3f, %.3f}"]
  GETTABLEKS R4 R0 K4 ["Min"]
  GETTABLEKS R3 R4 K5 ["X"]
  GETTABLEKS R5 R0 K4 ["Min"]
  GETTABLEKS R4 R5 K6 ["Y"]
  GETTABLEKS R6 R0 K7 ["Max"]
  GETTABLEKS R5 R6 K5 ["X"]
  GETTABLEKS R7 R0 K7 ["Max"]
  GETTABLEKS R6 R7 K6 ["Y"]
  CALL R1 5 -1
  RETURN R1 -1

PROTO_7:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["#%s"]
  NAMECALL R3 R0 K4 ["ToHex"]
  CALL R3 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["Weight"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K2 [tostring]
  CALL R2 1 1
  LOADK R4 K3 ["Enum%."]
  LOADK R5 K4 [""]
  NAMECALL R2 R2 K5 ["gsub"]
  CALL R2 3 1
  GETTABLEKS R4 R0 K6 ["Style"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K2 [tostring]
  CALL R3 1 1
  LOADK R5 K3 ["Enum%."]
  LOADK R6 K4 [""]
  NAMECALL R3 R3 K5 ["gsub"]
  CALL R3 3 1
  GETTABLEKS R5 R1 K7 ["Fonts"]
  GETTABLEKS R6 R0 K8 ["Family"]
  GETTABLE R4 R5 R6
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K9 ["Name"]
  JUMP [+9]
  GETTABLEKS R5 R0 K8 ["Family"]
  LOADK R7 K10 ["/([^%s/]+)%.json"]
  NAMECALL R5 R5 K11 ["match"]
  CALL R5 2 1
  JUMPIF R5 [+2]
  GETTABLEKS R5 R0 K8 ["Family"]
  LOADK R7 K12 ["%* (%*, %*)"]
  MOVE R9 R5
  MOVE R10 R2
  MOVE R11 R3
  NAMECALL R7 R7 K13 ["format"]
  CALL R7 4 1
  MOVE R6 R7
  RETURN R6 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["Name"]
  RETURN R1 1

PROTO_10:
  NAMECALL R1 R0 K0 ["ToEulerAnglesXYZ"]
  CALL R1 1 3
  GETIMPORT R4 K3 [string.format]
  LOADK R5 K4 ["{%.3f, %.3f, %.3f}, {%.3f, %.3f, %.3f}"]
  GETTABLEKS R7 R0 K5 ["Position"]
  GETTABLEKS R6 R7 K6 ["X"]
  GETTABLEKS R8 R0 K5 ["Position"]
  GETTABLEKS R7 R8 K7 ["Y"]
  GETTABLEKS R9 R0 K5 ["Position"]
  GETTABLEKS R8 R9 K8 ["Z"]
  MOVE R9 R1
  MOVE R10 R2
  MOVE R11 R3
  CALL R4 7 -1
  RETURN R4 -1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["Keypoints"]
  LENGTH R1 R2
  LOADN R2 2
  JUMPIFLT R2 R1 [+13]
  GETTABLEKS R3 R0 K0 ["Keypoints"]
  GETTABLEN R2 R3 1
  GETTABLEKS R1 R2 K1 ["Value"]
  GETTABLEKS R4 R0 K0 ["Keypoints"]
  GETTABLEN R3 R4 2
  GETTABLEKS R2 R3 K1 ["Value"]
  JUMPIFEQ R1 R2 [+3]
  LOADK R1 K2 ["<NumberSequence>"]
  RETURN R1 1
  GETIMPORT R1 K5 [string.format]
  LOADK R2 K6 ["%.3f"]
  GETTABLEKS R5 R0 K0 ["Keypoints"]
  GETTABLEN R4 R5 1
  GETTABLEKS R3 R4 K1 ["Value"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_12:
  GETTABLEKS R2 R0 K0 ["Keypoints"]
  LENGTH R1 R2
  LOADN R2 2
  JUMPIFLT R2 R1 [+13]
  GETTABLEKS R3 R0 K0 ["Keypoints"]
  GETTABLEN R2 R3 1
  GETTABLEKS R1 R2 K1 ["Value"]
  GETTABLEKS R4 R0 K0 ["Keypoints"]
  GETTABLEN R3 R4 2
  GETTABLEKS R2 R3 K1 ["Value"]
  JUMPIFEQ R1 R2 [+3]
  LOADK R1 K2 ["<ColorSequence>"]
  RETURN R1 1
  GETIMPORT R1 K5 [string.format]
  LOADK R2 K6 ["#%s"]
  GETTABLEKS R5 R0 K0 ["Keypoints"]
  GETTABLEN R4 R5 1
  GETTABLEKS R3 R4 K1 ["Value"]
  NAMECALL R3 R3 K7 ["ToHex"]
  CALL R3 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R3 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+5]
  MOVE R3 R2
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  RETURN R3 -1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K3 [tostring]
  CALL R3 1 1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  DUPTABLE R2 K20 [{"string", "number", "UDim", "UDim2", "Vector2", "Vector3", "Rect", "Color3", "Font", "BrickColor", "CFrame", "NumberSequence", "ColorSequence"}]
  DUPCLOSURE R3 K21 [PROTO_0]
  SETTABLEKS R3 R2 K7 ["string"]
  DUPCLOSURE R3 K22 [PROTO_1]
  SETTABLEKS R3 R2 K8 ["number"]
  DUPCLOSURE R3 K23 [PROTO_2]
  SETTABLEKS R3 R2 K9 ["UDim"]
  DUPCLOSURE R3 K24 [PROTO_3]
  SETTABLEKS R3 R2 K10 ["UDim2"]
  DUPCLOSURE R3 K25 [PROTO_4]
  SETTABLEKS R3 R2 K11 ["Vector2"]
  DUPCLOSURE R3 K26 [PROTO_5]
  SETTABLEKS R3 R2 K12 ["Vector3"]
  DUPCLOSURE R3 K27 [PROTO_6]
  SETTABLEKS R3 R2 K13 ["Rect"]
  DUPCLOSURE R3 K28 [PROTO_7]
  SETTABLEKS R3 R2 K14 ["Color3"]
  DUPCLOSURE R3 K29 [PROTO_8]
  SETTABLEKS R3 R2 K15 ["Font"]
  DUPCLOSURE R3 K30 [PROTO_9]
  SETTABLEKS R3 R2 K16 ["BrickColor"]
  DUPCLOSURE R3 K31 [PROTO_10]
  SETTABLEKS R3 R2 K17 ["CFrame"]
  DUPCLOSURE R3 K32 [PROTO_11]
  SETTABLEKS R3 R2 K18 ["NumberSequence"]
  DUPCLOSURE R3 K33 [PROTO_12]
  SETTABLEKS R3 R2 K19 ["ColorSequence"]
  DUPCLOSURE R3 K34 [PROTO_13]
  CAPTURE VAL R2
  RETURN R3 1
