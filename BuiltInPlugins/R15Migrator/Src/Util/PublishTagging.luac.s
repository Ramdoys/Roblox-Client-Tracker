PROTO_0:
  NEWTABLE R1 2 0
  JUMPIFNOT R0 [+3]
  GETTABLEKS R2 R0 K0 ["Name"]
  JUMPIF R2 [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["_name"]
  JUMPIFNOT R0 [+3]
  GETTABLEKS R2 R0 K2 ["Mask"]
  JUMPIF R2 [+1]
  LOADN R2 0
  SETTABLEKS R2 R1 K3 ["_mask"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  MOVE R4 R1
  GETTABLEKS R5 R0 K0 ["_name"]
  NAMECALL R2 R2 K1 ["AddTag"]
  CALL R2 3 0
  NAMECALL R2 R0 K2 ["setPublishBlocked"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  MOVE R4 R1
  GETTABLEKS R5 R0 K0 ["_name"]
  NAMECALL R2 R2 K1 ["RemoveTag"]
  CALL R2 3 0
  NAMECALL R2 R0 K2 ["checkPublishTags"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RunTests"]
  CALL R1 0 1
  JUMPIF R1 [+20]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["StudioPublishService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  LOADK R5 K6 ["Blocked"]
  NAMECALL R3 R1 K7 ["GetAttribute"]
  CALL R3 2 1
  ORK R2 R3 K5 [0]
  GETTABLEKS R5 R0 K8 ["_mask"]
  FASTCALL2 BIT32_BTEST R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K11 [bit32.btest]
  CALL R3 2 1
  RETURN R3 1
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K1 [pairs]
  NAMECALL R2 R0 K2 ["getTagged"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_NEXT R1
  GETUPVAL R6 0
  MOVE R8 R5
  GETTABLEKS R9 R0 K3 ["_name"]
  NAMECALL R6 R6 K4 ["RemoveTag"]
  CALL R6 3 0
  FORGLOOP R1 2 [-8]
  NAMECALL R1 R0 K5 ["checkPublishTags"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["_name"]
  NAMECALL R1 R1 K1 ["GetTagged"]
  CALL R1 2 1
  RETURN R1 1

PROTO_6:
  GETUPVAL R2 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 1
  GETTABLE R7 R8 R5
  MOVE R10 R1
  NAMECALL R8 R7 K0 ["removeTag"]
  CALL R8 2 0
  NAMECALL R8 R1 K1 ["GetDescendants"]
  CALL R8 1 3
  FORGPREP R8
  MOVE R15 R12
  NAMECALL R13 R7 K0 ["removeTag"]
  CALL R13 2 0
  FORGLOOP R8 2 [-5]
  FORGLOOP R2 1 [-17]
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RunTests"]
  CALL R1 0 1
  JUMPIF R1 [+82]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["StudioPublishService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  LOADB R2 1
  SETTABLEKS R2 R1 K5 ["PublishLocked"]
  LOADNIL R2
  GETTABLEKS R3 R0 K6 ["_name"]
  JUMPIFNOT R3 [+35]
  GETTABLEKS R3 R0 K7 ["_mask"]
  JUMPIFNOT R3 [+32]
  LOADK R5 K9 ["Blocked"]
  NAMECALL R3 R1 K10 ["GetAttribute"]
  CALL R3 2 1
  ORK R2 R3 K8 [0]
  GETUPVAL R5 1
  GETTABLEKS R7 R0 K6 ["_name"]
  NAMECALL R5 R5 K11 ["GetTagged"]
  CALL R5 2 1
  LENGTH R4 R5
  LOADN R5 0
  JUMPIFLT R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIF R3 [+43]
  GETTABLEKS R7 R0 K7 ["_mask"]
  FASTCALL1 BIT32_BNOT R7 [+2]
  GETIMPORT R6 K14 [bit32.bnot]
  CALL R6 1 1
  FASTCALL2 BIT32_BAND R2 R6 [+4]
  MOVE R5 R2
  GETIMPORT R4 K16 [bit32.band]
  CALL R4 2 1
  MOVE R2 R4
  JUMP [+29]
  LOADN R2 0
  GETUPVAL R3 2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R10 1
  GETTABLEKS R12 R7 K17 ["Name"]
  NAMECALL R10 R10 K11 ["GetTagged"]
  CALL R10 2 1
  LENGTH R9 R10
  LOADN R10 0
  JUMPIFLT R10 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  JUMPIFNOT R8 [+9]
  GETTABLEKS R11 R7 K18 ["Mask"]
  FASTCALL2 BIT32_BOR R2 R11 [+4]
  MOVE R10 R2
  GETIMPORT R9 K20 [bit32.bor]
  CALL R9 2 1
  MOVE R2 R9
  FORGLOOP R3 2 [-23]
  LOADK R5 K9 ["Blocked"]
  MOVE R6 R2
  NAMECALL R3 R1 K21 ["SetAttribute"]
  CALL R3 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RunTests"]
  CALL R1 0 1
  JUMPIF R1 [+28]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["StudioPublishService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  LOADB R2 1
  SETTABLEKS R2 R1 K5 ["PublishLocked"]
  LOADK R5 K7 ["Blocked"]
  NAMECALL R3 R1 K8 ["GetAttribute"]
  CALL R3 2 1
  ORK R2 R3 K6 [0]
  GETTABLEKS R5 R0 K9 ["_mask"]
  FASTCALL2 BIT32_BOR R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K12 [bit32.bor]
  CALL R3 2 1
  MOVE R2 R3
  LOADK R5 K7 ["Blocked"]
  MOVE R6 R2
  NAMECALL R3 R1 K13 ["SetAttribute"]
  CALL R3 3 0
  RETURN R0 0

PROTO_9:
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

PROTO_10:
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
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["R15Migrator"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K13 ["Resources"]
  GETTABLEKS R4 R5 K14 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K15 ["PublishTags"]
  DUPTABLE R5 K18 [{"_name", "mask"}]
  LOADNIL R6
  SETTABLEKS R6 R5 K16 ["_name"]
  LOADN R6 0
  SETTABLEKS R6 R5 K17 ["mask"]
  SETTABLEKS R5 R5 K19 ["__index"]
  DUPCLOSURE R6 K20 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K21 ["new"]
  DUPCLOSURE R6 K22 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K23 ["addTag"]
  DUPCLOSURE R6 K24 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K25 ["removeTag"]
  DUPCLOSURE R6 K26 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K27 ["isBlocking"]
  DUPCLOSURE R6 K28 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K29 ["removeAllTags"]
  DUPCLOSURE R6 K30 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K31 ["getTagged"]
  MOVE R6 R4
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R5 K21 ["new"]
  MOVE R12 R10
  CALL R11 1 1
  SETTABLE R11 R5 R9
  FORGLOOP R6 2 [-6]
  DUPCLOSURE R6 K32 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K33 ["clearPublishTags"]
  DUPCLOSURE R6 K34 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K35 ["checkPublishTags"]
  DUPCLOSURE R6 K36 [PROTO_8]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K37 ["setPublishBlocked"]
  DUPCLOSURE R6 K38 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K39 ["publishingIsBlocked"]
  DUPCLOSURE R6 K40 [PROTO_10]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K41 ["prepareToPublish"]
  RETURN R5 1
