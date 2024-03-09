PROTO_0:
  NEWTABLE R1 1 0
  ORK R2 R0 K0 []
  SETTABLEKS R2 R1 K1 ["_tag"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K3 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  MOVE R4 R1
  GETTABLEKS R5 R0 K0 ["_tag"]
  NAMECALL R2 R2 K1 ["AddTag"]
  CALL R2 3 0
  NAMECALL R2 R0 K2 ["setPublishBlocked"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  MOVE R4 R1
  GETTABLEKS R5 R0 K0 ["_tag"]
  NAMECALL R2 R2 K1 ["RemoveTag"]
  CALL R2 3 0
  NAMECALL R2 R0 K2 ["checkPublishTags"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K1 [pairs]
  NAMECALL R2 R0 K2 ["getTagged"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_NEXT R1
  GETUPVAL R6 0
  MOVE R8 R5
  GETTABLEKS R9 R0 K3 ["_tag"]
  NAMECALL R6 R6 K4 ["RemoveTag"]
  CALL R6 3 0
  FORGLOOP R1 2 [-8]
  NAMECALL R1 R0 K5 ["checkPublishTags"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["_tag"]
  NAMECALL R1 R1 K1 ["GetTagged"]
  CALL R1 2 1
  RETURN R1 1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K0 ["_tag"]
  NAMECALL R1 R1 K1 ["AddTag"]
  CALL R1 3 0
  NAMECALL R1 R0 K2 ["setPublishBlocked"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K0 ["_tag"]
  NAMECALL R1 R1 K1 ["RemoveTag"]
  CALL R1 3 0
  NAMECALL R1 R0 K2 ["checkPublishTags"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R2 0 4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["CharacterTagging"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["AnimationTagging"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["ScriptTagging"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["AdapterTagging"]
  SETLIST R2 R5 4 [1]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R9 R1
  NAMECALL R7 R6 K4 ["removeTag"]
  CALL R7 2 0
  NAMECALL R7 R1 K5 ["GetDescendants"]
  CALL R7 1 3
  FORGPREP R7
  MOVE R14 R11
  NAMECALL R12 R6 K4 ["removeTag"]
  CALL R12 2 0
  FORGLOOP R7 2 [-5]
  FORGLOOP R2 2 [-15]
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RunTests"]
  CALL R1 0 1
  JUMPIF R1 [+38]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["StudioPublishService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  LOADB R2 1
  SETTABLEKS R2 R1 K5 ["PublishLocked"]
  LOADK R4 K6 ["Blocked"]
  LOADB R5 0
  NAMECALL R2 R1 K7 ["SetAttribute"]
  CALL R2 3 0
  GETUPVAL R2 1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R9 2
  MOVE R11 R6
  NAMECALL R9 R9 K8 ["GetTagged"]
  CALL R9 2 1
  LENGTH R8 R9
  LOADN R9 0
  JUMPIFLT R9 R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIFNOT R7 [+6]
  LOADK R10 K6 ["Blocked"]
  LOADB R11 1
  NAMECALL R8 R1 K7 ["SetAttribute"]
  CALL R8 3 0
  RETURN R0 0
  FORGLOOP R2 2 [-19]
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RunTests"]
  CALL R1 0 1
  JUMPIF R1 [+14]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["StudioPublishService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  LOADB R2 1
  SETTABLEKS R2 R1 K5 ["PublishLocked"]
  LOADK R4 K6 ["Blocked"]
  LOADB R5 1
  NAMECALL R2 R1 K7 ["SetAttribute"]
  CALL R2 3 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RunTests"]
  CALL R1 0 1
  JUMPIF R1 [+11]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["StudioPublishService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["Blocked"]
  NAMECALL R2 R1 K6 ["GetAttribute"]
  CALL R2 2 -1
  RETURN R2 -1
  LOADNIL R1
  RETURN R1 1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RunTests"]
  CALL R1 0 1
  JUMPIF R1 [+9]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["StudioPublishService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  LOADB R2 0
  SETTABLEKS R2 R1 K5 ["PublishLocked"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CollectionService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Workspace"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["R15Migrator"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R6 R2 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["DebugFlags"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R7 R2 K11 ["Src"]
  GETTABLEKS R6 R7 K14 ["Resources"]
  GETTABLEKS R5 R6 K15 ["Constants"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K16 ["PublishTags"]
  DUPTABLE R6 K18 [{"_tag"}]
  LOADNIL R7
  SETTABLEKS R7 R6 K17 ["_tag"]
  SETTABLEKS R6 R6 K19 ["__index"]
  DUPCLOSURE R7 K20 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K21 ["new"]
  DUPCLOSURE R7 K22 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K23 ["addTag"]
  DUPCLOSURE R7 K24 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K25 ["removeTag"]
  DUPCLOSURE R7 K26 [PROTO_3]
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K27 ["removeAllTags"]
  DUPCLOSURE R7 K28 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K29 ["getTagged"]
  GETTABLEKS R7 R6 K21 ["new"]
  GETTABLEKS R8 R5 K30 ["CharacterTag"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K31 ["CharacterTagging"]
  GETTABLEKS R8 R6 K21 ["new"]
  GETTABLEKS R9 R5 K32 ["AnimationTag"]
  CALL R8 1 1
  SETTABLEKS R8 R6 K33 ["AnimationTagging"]
  GETTABLEKS R9 R6 K21 ["new"]
  GETTABLEKS R10 R5 K34 ["ScriptTag"]
  CALL R9 1 1
  SETTABLEKS R9 R6 K35 ["ScriptTagging"]
  GETTABLEKS R10 R6 K21 ["new"]
  GETTABLEKS R11 R5 K36 ["AdapterTag"]
  CALL R10 1 1
  SETTABLEKS R10 R6 K37 ["AdapterTagging"]
  GETTABLEKS R11 R6 K21 ["new"]
  GETTABLEKS R12 R5 K38 ["AvatarTag"]
  CALL R11 1 1
  DUPCLOSURE R12 K39 [PROTO_5]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K23 ["addTag"]
  DUPCLOSURE R12 K40 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K25 ["removeTag"]
  SETTABLEKS R11 R6 K41 ["AvatarTagging"]
  DUPCLOSURE R12 K42 [PROTO_7]
  CAPTURE VAL R6
  SETTABLEKS R12 R6 K43 ["clearPublishTags"]
  DUPCLOSURE R12 K44 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R0
  SETTABLEKS R12 R6 K45 ["checkPublishTags"]
  DUPCLOSURE R12 K46 [PROTO_9]
  CAPTURE VAL R3
  SETTABLEKS R12 R6 K47 ["setPublishBlocked"]
  DUPCLOSURE R12 K48 [PROTO_10]
  CAPTURE VAL R3
  SETTABLEKS R12 R6 K49 ["publishingIsBlocked"]
  DUPCLOSURE R12 K50 [PROTO_11]
  CAPTURE VAL R3
  SETTABLEKS R12 R6 K51 ["prepareToPublish"]
  RETURN R6 1
