PROTO_0:
  LOADNIL R1
  NEWTABLE R2 0 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADNIL R8
  GETTABLEKS R10 R7 K0 ["Humanoid"]
  GETTABLEKS R9 R10 K1 ["RigType"]
  GETIMPORT R10 K5 [Enum.HumanoidRigType.R6]
  JUMPIFNOTEQ R9 R10 [+6]
  NAMECALL R9 R7 K6 ["Clone"]
  CALL R9 1 1
  MOVE R8 R9
  JUMP [+49]
  MOVE R9 R1
  JUMPIF R9 [+4]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["getR6Characters"]
  CALL R9 0 1
  MOVE R1 R9
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["getConversionId"]
  MOVE R11 R7
  CALL R10 1 1
  GETTABLE R9 R1 R10
  JUMPIF R9 [+5]
  GETIMPORT R10 K10 [warn]
  LOADK R11 K11 ["Original R6 character is unavailable. Was the save folder edited?"]
  CALL R10 1 0
  JUMP [+60]
  GETUPVAL R10 1
  MOVE R12 R7
  NAMECALL R10 R10 K12 ["addTag"]
  CALL R10 2 0
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K13 ["HasUnificationScripts"]
  MOVE R11 R7
  CALL R10 1 1
  JUMPIFNOT R10 [+6]
  GETUPVAL R10 3
  MOVE R12 R7
  NAMECALL R10 R10 K12 ["addTag"]
  CALL R10 2 0
  JUMP [+5]
  GETUPVAL R10 3
  MOVE R12 R7
  NAMECALL R10 R10 K14 ["removeTag"]
  CALL R10 2 0
  NAMECALL R10 R9 K6 ["Clone"]
  CALL R10 1 1
  MOVE R8 R10
  GETTABLEKS R10 R7 K15 ["Name"]
  SETTABLEKS R10 R8 K15 ["Name"]
  NAMECALL R9 R7 K16 ["GetFullName"]
  CALL R9 1 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["getConversionId"]
  MOVE R11 R7
  CALL R10 1 1
  JUMPIFNOT R10 [+7]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K17 ["SetNpcWithId"]
  MOVE R12 R7
  MOVE R13 R10
  CALL R11 2 0
  JUMP [+6]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K18 ["AddNpc"]
  MOVE R12 R7
  CALL R11 1 1
  MOVE R10 R11
  DUPTABLE R11 K22 [{"key", "fullName", "model"}]
  SETTABLEKS R10 R11 K19 ["key"]
  SETTABLEKS R9 R11 K20 ["fullName"]
  SETTABLEKS R8 R11 K21 ["model"]
  SETTABLE R11 R2 R10
  FORGLOOP R3 2 [-94]
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
  CALL R6 1 0
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
