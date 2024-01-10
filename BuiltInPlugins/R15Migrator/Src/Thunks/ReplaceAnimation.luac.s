PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["AnimationConversion"]
  GETTABLEKS R2 R3 K2 ["selection"]
  GETTABLEKS R4 R1 K1 ["AnimationConversion"]
  GETTABLEKS R3 R4 K3 ["animations"]
  GETUPVAL R4 0
  MOVE R5 R3
  CALL R4 1 1
  LOADB R5 0
  GETUPVAL R6 1
  LOADK R8 K4 ["onAnimationsConverted"]
  NAMECALL R6 R6 K5 ["getHandler"]
  CALL R6 2 1
  MOVE R7 R4
  MOVE R8 R2
  CALL R6 2 0
  GETUPVAL R6 2
  LOADK R8 K6 ["preReplace"]
  NAMECALL R6 R6 K7 ["SetWaypoint"]
  CALL R6 2 0
  MOVE R6 R2
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K8 ["getConvertedAnimationAssetInfo"]
  MOVE R12 R10
  CALL R11 1 1
  GETTABLEKS R12 R11 K9 ["id"]
  JUMPIFNOT R12 [+142]
  GETTABLEKS R14 R11 K10 ["_type"]
  NAMECALL R12 R10 K11 ["IsA"]
  CALL R12 2 1
  JUMPIFNOT R12 [+136]
  GETTABLEKS R13 R10 K9 ["id"]
  GETTABLE R12 R4 R13
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K12 ["getConvertedKeyframeSequence"]
  MOVE R14 R10
  CALL R13 1 1
  LOADNIL R14
  LOADB R15 0
  LOADN R16 0
  NEWTABLE R17 0 0
  GETTABLEKS R18 R12 K13 ["refs"]
  LOADNIL R19
  LOADNIL R20
  FORGPREP R18
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K14 ["LocalAsset"]
  NAMECALL R23 R22 K11 ["IsA"]
  CALL R23 2 1
  JUMPIFNOT R23 [+27]
  JUMPIF R14 [+4]
  NAMECALL R23 R21 K15 ["Clone"]
  CALL R23 1 1
  MOVE R14 R23
  NAMECALL R23 R21 K16 ["ClearAllChildren"]
  CALL R23 1 0
  NAMECALL R23 R13 K17 ["GetChildren"]
  CALL R23 1 3
  FORGPREP R23
  NAMECALL R28 R27 K15 ["Clone"]
  CALL R28 1 1
  SETTABLEKS R21 R28 K18 ["Parent"]
  FORGLOOP R23 2 [-6]
  FASTCALL2 TABLE_INSERT R17 R21 [+5]
  MOVE R24 R17
  MOVE R25 R21
  GETIMPORT R23 K21 [table.insert]
  CALL R23 2 0
  JUMP [+28]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K22 ["AnimationInstance"]
  NAMECALL R23 R22 K11 ["IsA"]
  CALL R23 2 1
  JUMPIFNOT R23 [+13]
  LOADB R15 1
  GETTABLEKS R23 R11 K23 ["url"]
  SETTABLEKS R23 R21 K24 ["AnimationId"]
  FASTCALL2 TABLE_INSERT R17 R21 [+5]
  MOVE R24 R17
  MOVE R25 R21
  GETIMPORT R23 K21 [table.insert]
  CALL R23 2 0
  JUMP [+8]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K25 ["AssetIdString"]
  NAMECALL R23 R22 K11 ["IsA"]
  CALL R23 2 1
  JUMPIFNOT R23 [+1]
  LOADB R5 1
  ADDK R16 R16 K26 [1]
  FORGLOOP R18 2 [-64]
  LENGTH R18 R17
  JUMPIFNOTEQ R18 R16 [+41]
  JUMPIFNOT R14 [+16]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K27 ["addConvertedKeyframesequenceInstance"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K28 ["Dictionary"]
  GETTABLEKS R19 R20 K29 ["keys"]
  GETTABLEKS R22 R10 K9 ["id"]
  GETTABLE R21 R4 R22
  GETTABLEKS R20 R21 K13 ["refs"]
  CALL R19 1 1
  MOVE R20 R14
  CALL R18 2 0
  JUMPIFNOT R15 [+6]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K30 ["addConvertedAnimationAssetId"]
  GETTABLEKS R19 R13 K18 ["Parent"]
  CALL R18 1 0
  GETTABLEKS R19 R10 K9 ["id"]
  GETTABLE R18 R4 R19
  NEWTABLE R19 0 0
  SETTABLEKS R19 R18 K13 ["refs"]
  GETTABLEKS R19 R10 K9 ["id"]
  GETTABLE R18 R4 R19
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K31 ["Done"]
  SETTABLEKS R19 R18 K32 ["status"]
  JUMP [+10]
  MOVE R18 R17
  LOADNIL R19
  LOADNIL R20
  FORGPREP R18
  GETTABLEKS R23 R12 K13 ["refs"]
  LOADNIL R24
  SETTABLE R24 R23 R22
  FORGLOOP R18 2 [-5]
  FORGLOOP R6 2 [-151]
  GETUPVAL R6 2
  LOADK R8 K33 ["postReplace"]
  NAMECALL R6 R6 K7 ["SetWaypoint"]
  CALL R6 2 0
  GETUPVAL R8 8
  MOVE R9 R4
  CALL R8 1 -1
  NAMECALL R6 R0 K34 ["dispatch"]
  CALL R6 -1 0
  JUMPIFNOT R5 [+7]
  GETUPVAL R8 9
  LOADK R9 K35 ["ScriptAnimationsNotReplaced"]
  CALL R8 1 -1
  NAMECALL R6 R0 K34 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0
  GETUPVAL R8 9
  LOADK R9 K36 ["ReplacementSuccess"]
  CALL R8 1 -1
  NAMECALL R6 R0 K34 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["ChangeHistoryService"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["deepCopy"]
  GETTABLEKS R6 R0 K15 ["Src"]
  GETTABLEKS R5 R6 K13 ["Util"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K16 ["SaveInterface"]
  CALL R6 1 1
  GETTABLEKS R9 R0 K15 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K17 ["AnimationConversion"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K18 ["AnimationConversionManager"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K19 ["constants"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K20 ["AssetType"]
  GETTABLEKS R11 R9 K21 ["UploadStatus"]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K22 ["Actions"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K23 ["SetAnimations"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R12 K24 ["SetReplaceProcessResult"]
  CALL R14 1 1
  DUPCLOSURE R15 K25 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R14
  RETURN R15 1
