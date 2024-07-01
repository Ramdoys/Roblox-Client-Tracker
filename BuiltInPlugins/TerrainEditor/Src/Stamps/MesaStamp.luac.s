PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["NoiseScale"]
  GETTABLE R1 R2 R3
  GETTABLEKS R4 R0 K0 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["NoiseStrength"]
  GETTABLE R2 R3 R4
  GETTABLEKS R7 R0 K0 ["_payload"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["BuildSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["AdvancedNoise"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K4 ["Children"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["Offset"]
  GETTABLE R3 R4 R5
  GETTABLEKS R8 R0 K0 ["_payload"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["BuildSettings"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["AdvancedNoise"]
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K4 ["Children"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["Seed"]
  GETTABLE R4 R5 R6
  GETTABLEKS R7 R0 K0 ["_payload"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["BuildSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["CliffSlope"]
  GETTABLE R5 R6 R7
  GETTABLEKS R8 R0 K0 ["_payload"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["BuildSettings"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["TopRadius"]
  GETTABLE R6 R7 R8
  GETTABLEKS R9 R0 K0 ["_payload"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["BuildSettings"]
  GETTABLE R8 R9 R10
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["RimHeight"]
  GETTABLE R7 R8 R9
  GETIMPORT R8 K13 [table.create]
  GETTABLEKS R10 R0 K14 ["_sliceX"]
  GETTABLEKS R11 R0 K15 ["_sliceZ"]
  MUL R9 R10 R11
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R0 K16 ["_noiseMap"]
  JUMPIFNOT R6 [+1]
  JUMPIF R7 [+5]
  GETIMPORT R8 K18 [warn]
  LOADK R9 K19 ["Missing parameters!"]
  CALL R8 1 0
  RETURN R0 0
  DUPTABLE R8 K23 [{"center2d", "hillWidth", "hillHeight"}]
  GETIMPORT R9 K26 [Vector2.new]
  LOADK R10 K27 [0.5]
  LOADK R11 K27 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["center2d"]
  LOADK R9 K28 [0.2]
  SETTABLEKS R9 R8 K21 ["hillWidth"]
  LOADN R10 1
  MULK R11 R6 K29 [1.2]
  ADD R9 R10 R11
  SETTABLEKS R9 R8 K22 ["hillHeight"]
  DUPTABLE R9 K34 [{"frequency", "amplitude", "offset", "seed"}]
  DIVK R10 R1 K35 [5]
  SETTABLEKS R10 R9 K30 ["frequency"]
  MULK R11 R2 K37 [0.16]
  MULK R10 R11 K36 [3]
  SETTABLEKS R10 R9 K31 ["amplitude"]
  SETTABLEKS R3 R9 K32 ["offset"]
  SETTABLEKS R4 R9 K33 ["seed"]
  LOADN R11 0
  JUMPIFNOTLT R11 R1 [+6]
  LOADN R11 0
  JUMPIFNOTLT R11 R2 [+3]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  JUMPIFNOT R10 [+10]
  GETIMPORT R11 K13 [table.create]
  GETTABLEKS R13 R0 K38 ["_rotatedSliceX"]
  GETTABLEKS R14 R0 K39 ["_rotatedSliceZ"]
  MUL R12 R13 R14
  LOADN R13 0
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  GETIMPORT R12 K13 [table.create]
  GETTABLEKS R14 R0 K38 ["_rotatedSliceX"]
  GETTABLEKS R15 R0 K39 ["_rotatedSliceZ"]
  MUL R13 R14 R15
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R0 K16 ["_noiseMap"]
  LOADN R14 1
  GETTABLEKS R12 R0 K38 ["_rotatedSliceX"]
  LOADN R13 1
  FORNPREP R12
  GETTABLEKS R16 R0 K40 ["_rotatedXOffset"]
  SUB R15 R14 R16
  LOADN R18 1
  GETTABLEKS R16 R0 K39 ["_rotatedSliceZ"]
  LOADN R17 1
  FORNPREP R16
  GETTABLEKS R20 R0 K41 ["_rotatedZOffset"]
  SUB R19 R18 R20
  MOVE R22 R15
  MOVE R23 R19
  MOVE R24 R8
  LOADNIL R25
  NAMECALL R20 R0 K42 ["getGaussianHillHeight"]
  CALL R20 5 1
  MOVE R23 R14
  MOVE R24 R18
  NAMECALL R21 R0 K43 ["getSliceIndex"]
  CALL R21 3 1
  GETTABLEKS R22 R0 K16 ["_noiseMap"]
  SETTABLE R20 R22 R21
  JUMPIFNOT R10 [+9]
  MOVE R24 R15
  MOVE R25 R19
  MOVE R26 R8
  MOVE R27 R9
  NAMECALL R22 R0 K42 ["getGaussianHillHeight"]
  CALL R22 5 1
  SUB R23 R22 R20
  SETTABLE R23 R11 R21
  FORNLOOP R16
  FORNLOOP R12
  JUMPIFNOT R10 [+20]
  NAMECALL R12 R0 K44 ["addErosion"]
  CALL R12 1 0
  LOADN R14 1
  GETTABLEKS R15 R0 K16 ["_noiseMap"]
  LENGTH R12 R15
  LOADN R13 1
  FORNPREP R12
  GETTABLEKS R15 R0 K16 ["_noiseMap"]
  GETTABLE R16 R15 R14
  GETTABLE R18 R11 R14
  GETTABLEKS R20 R0 K16 ["_noiseMap"]
  GETTABLE R19 R20 R14
  MUL R17 R18 R19
  ADD R16 R16 R17
  SETTABLE R16 R15 R14
  FORNLOOP R12
  LOADB R12 0
  LOADN R13 0
  JUMPIFNOTLT R13 R6 [+6]
  LOADN R13 0
  JUMPIFLT R13 R7 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  JUMPIFNOT R12 [+73]
  LOADN R15 1
  GETTABLEKS R13 R0 K38 ["_rotatedSliceX"]
  LOADN R14 1
  FORNPREP R13
  LOADN R18 1
  GETTABLEKS R16 R0 K39 ["_rotatedSliceZ"]
  LOADN R17 1
  FORNPREP R16
  MOVE R21 R15
  MOVE R22 R18
  NAMECALL R19 R0 K43 ["getSliceIndex"]
  CALL R19 3 1
  GETTABLEKS R21 R0 K16 ["_noiseMap"]
  GETTABLE R20 R21 R19
  LOADN R21 1
  JUMPIFNOTLT R20 R21 [+51]
  JUMPIFNOTEQKN R5 K45 [90] [+11]
  GETTABLEKS R20 R0 K16 ["_noiseMap"]
  GETTABLE R21 R20 R19
  GETTABLEKS R24 R0 K16 ["_noiseMap"]
  GETTABLE R23 R24 R19
  MUL R22 R7 R23
  SUB R21 R21 R22
  SETTABLE R21 R20 R19
  JUMP [+38]
  JUMPIFNOTEQKN R5 K46 [0] [+6]
  GETTABLEKS R20 R0 K16 ["_noiseMap"]
  LOADN R21 1
  SETTABLE R21 R20 R19
  JUMP [+31]
  LOADN R21 1
  SUB R20 R21 R7
  MULK R23 R5 K48 [3.14159265358979]
  DIVK R22 R23 K47 [180]
  FASTCALL1 MATH_TAN R22 [+2]
  GETIMPORT R21 K51 [math.tan]
  CALL R21 1 1
  GETTABLEKS R26 R0 K16 ["_noiseMap"]
  GETTABLE R25 R26 R19
  SUBK R24 R25 K52 [1]
  MUL R23 R21 R24
  ADDK R22 R23 K52 [1]
  JUMPIFNOTLE R20 R22 [+5]
  GETTABLEKS R23 R0 K16 ["_noiseMap"]
  SETTABLE R22 R23 R19
  JUMP [+11]
  SUBK R25 R20 K52 [1]
  DIV R24 R25 R21
  ADDK R23 R24 K52 [1]
  DIV R25 R20 R23
  GETTABLEKS R27 R0 K16 ["_noiseMap"]
  GETTABLE R26 R27 R19
  MUL R24 R25 R26
  GETTABLEKS R25 R0 K16 ["_noiseMap"]
  SETTABLE R24 R25 R19
  FORNLOOP R16
  FORNLOOP R13
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["_sliceY"]
  MOVE R5 R1
  LOADN R6 255
  LOADN R7 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K3 [math.clamp]
  CALL R4 3 1
  MUL R2 R3 R4
  MOVE R4 R2
  LOADN R5 0
  GETTABLEKS R6 R0 K0 ["_sliceY"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R3 K3 [math.clamp]
  CALL R3 3 1
  RETURN R3 1

PROTO_3:
  NAMECALL R1 R0 K0 ["createHeightMapWithNoise"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R2 K2 [table.create]
  GETTABLEKS R4 R0 K3 ["_sliceX"]
  GETTABLEKS R5 R0 K4 ["_sliceZ"]
  MUL R3 R4 R5
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_blendingFactorMap"]
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+33]
  DUPTABLE R2 K11 [{"CurveWidth", "Distance", "PreserveDistance", "PreserveRatio", "RoundCorner"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K6 ["CurveWidth"]
  LOADN R5 1
  SUB R4 R5 R1
  MULK R3 R4 K12 [0.9]
  SETTABLEKS R3 R2 K7 ["Distance"]
  LOADK R4 K13 [0.5]
  DIVK R5 R1 K14 [5]
  SUB R3 R4 R5
  SETTABLEKS R3 R2 K8 ["PreserveDistance"]
  LOADN R3 0
  SETTABLEKS R3 R2 K9 ["PreserveRatio"]
  LOADN R3 1
  SETTABLEKS R3 R2 K10 ["RoundCorner"]
  GETUPVAL R3 0
  GETIMPORT R4 K17 [Vector2.new]
  GETTABLEKS R5 R0 K3 ["_sliceX"]
  GETTABLEKS R6 R0 K4 ["_sliceZ"]
  CALL R4 2 1
  MOVE R5 R2
  CALL R3 2 1
  SETTABLEKS R3 R0 K5 ["_blendingFactorMap"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["MountainBaseStamp"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["BuildSettings"]
  GETTABLEKS R4 R2 K11 ["Category"]
  GETTABLEKS R5 R2 K12 ["TerrainType"]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["Generation"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K15 ["GetBlendingFactorMap"]
  CALL R7 1 1
  GETTABLEKS R10 R5 K16 ["Mesa"]
  NAMECALL R8 R1 K17 ["new"]
  CALL R8 2 1
  DUPCLOSURE R9 K18 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K19 ["init"]
  DUPCLOSURE R9 K20 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K21 ["generateNoiseMap"]
  DUPCLOSURE R9 K22 [PROTO_2]
  SETTABLEKS R9 R8 K23 ["getHeightFromNoise"]
  DUPCLOSURE R9 K24 [PROTO_3]
  SETTABLEKS R9 R8 K25 ["generateHeightMap"]
  DUPCLOSURE R9 K26 [PROTO_4]
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K27 ["updateBlendingFactorMap"]
  RETURN R8 1
