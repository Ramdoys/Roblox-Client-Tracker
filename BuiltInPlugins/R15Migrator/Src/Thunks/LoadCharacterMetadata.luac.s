PROTO_0:
  LOADNIL R1
  NEWTABLE R2 0 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADNIL R8
  LOADNIL R9
  LOADK R13 K0 ["Humanoid"]
  NAMECALL R11 R7 K1 ["FindFirstChildOfClass"]
  CALL R11 2 1
  GETTABLEKS R10 R11 K2 ["RigType"]
  GETIMPORT R11 K6 [Enum.HumanoidRigType.R6]
  JUMPIFNOTEQ R10 R11 [+7]
  NAMECALL R10 R7 K7 ["Clone"]
  CALL R10 1 1
  MOVE R8 R10
  MOVE R9 R7
  JUMP [+50]
  MOVE R10 R1
  JUMPIF R10 [+4]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["getR6Characters"]
  CALL R10 0 1
  MOVE R1 R10
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["getConversionId"]
  MOVE R12 R7
  CALL R11 1 1
  GETTABLE R10 R1 R11
  JUMPIF R10 [+5]
  GETIMPORT R11 K11 [warn]
  LOADK R12 K12 ["Original R6 character is unavailable. Was the save folder edited?"]
  CALL R11 1 0
  JUMP [+63]
  GETUPVAL R11 1
  MOVE R13 R7
  NAMECALL R11 R11 K13 ["addTag"]
  CALL R11 2 0
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K14 ["HasUnificationScripts"]
  MOVE R12 R7
  CALL R11 1 1
  JUMPIFNOT R11 [+6]
  GETUPVAL R11 3
  MOVE R13 R7
  NAMECALL R11 R11 K13 ["addTag"]
  CALL R11 2 0
  JUMP [+5]
  GETUPVAL R11 3
  MOVE R13 R7
  NAMECALL R11 R11 K15 ["removeTag"]
  CALL R11 2 0
  NAMECALL R11 R10 K7 ["Clone"]
  CALL R11 1 1
  MOVE R8 R11
  GETTABLEKS R11 R7 K16 ["Name"]
  SETTABLEKS R11 R8 K16 ["Name"]
  MOVE R9 R10
  NAMECALL R10 R7 K17 ["GetFullName"]
  CALL R10 1 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["getConversionId"]
  MOVE R12 R7
  CALL R11 1 1
  JUMPIFNOT R11 [+7]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K18 ["SetNpcWithId"]
  MOVE R13 R7
  MOVE R14 R11
  CALL R12 2 0
  JUMP [+6]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K19 ["AddNpc"]
  MOVE R13 R7
  CALL R12 1 1
  MOVE R11 R12
  DUPTABLE R12 K24 [{"key", "fullName", "model", "revealTarget"}]
  SETTABLEKS R11 R12 K20 ["key"]
  SETTABLEKS R10 R12 K21 ["fullName"]
  SETTABLEKS R8 R12 K22 ["model"]
  SETTABLEKS R9 R12 K23 ["revealTarget"]
  SETTABLE R12 R2 R11
  FORGLOOP R3 2 [-101]
  RETURN R2 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Reset"]
  CALL R2 0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["GetR6Npcs"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["addConvertibleCharacters"]
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 3
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["GetR15ConvertedNpcs"]
  CALL R4 0 1
  GETUPVAL R5 3
  MOVE R6 R4
  CALL R5 1 1
  GETIMPORT R6 K5 [pairs]
  MOVE R7 R2
  CALL R6 1 3
  FORGPREP_NEXT R6
  GETUPVAL R11 4
  MOVE R13 R10
  NAMECALL R11 R11 K6 ["addTag"]
  CALL R11 2 0
  FORGLOOP R6 2 [-6]
  GETIMPORT R6 K5 [pairs]
  MOVE R7 R4
  CALL R6 1 3
  FORGPREP_NEXT R6
  GETUPVAL R11 4
  MOVE R13 R10
  NAMECALL R11 R11 K7 ["removeTag"]
  CALL R11 2 0
  FORGLOOP R6 2 [-6]
  GETUPVAL R8 5
  MOVE R9 R3
  MOVE R10 R5
  CALL R8 2 -1
  NAMECALL R6 R0 K8 ["dispatch"]
  CALL R6 -1 0
  LOADK R8 K9 ["onCharactersLoaded"]
  NAMECALL R6 R1 K10 ["getHandler"]
  CALL R6 2 1
  MOVE R7 R3
  MOVE R8 R5
  CALL R6 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K2 [coroutine.wrap]
  GETUPVAL R2 0
  CALL R1 1 1
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Modules"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["NpcManager"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K9 ["NpcIdManager"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K4 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETIMPORT R5 K7 [require]
  GETTABLEKS R6 R4 K11 ["SaveInterface"]
  CALL R5 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R8 R4 K12 ["PublishTagging"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K13 ["CharacterTagging"]
  GETIMPORT R8 K7 [require]
  GETTABLEKS R9 R4 K12 ["PublishTagging"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K14 ["AdapterTagging"]
  GETIMPORT R9 K7 [require]
  GETTABLEKS R10 R4 K15 ["QuickAccessTagging"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K16 ["CharactersConvertedToR15Tagging"]
  GETIMPORT R9 K7 [require]
  GETTABLEKS R12 R0 K4 ["Src"]
  GETTABLEKS R11 R12 K17 ["Actions"]
  GETTABLEKS R10 R11 K18 ["SetCharacterMetadata"]
  CALL R9 1 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R3
  DUPCLOSURE R11 K20 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R9
  DUPCLOSURE R12 K21 [PROTO_3]
  CAPTURE VAL R11
  RETURN R12 1
