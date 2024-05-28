PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createEquippedItemsSerializer"]
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R7 0
  JUMPIFEQKNIL R7 [+8]
  GETIMPORT R7 K4 [table.find]
  GETUPVAL R8 0
  MOVE R9 R6
  CALL R7 2 1
  JUMPIFNOTEQKNIL R7 [+9]
  GETIMPORT R7 K2 [table.clone]
  MOVE R8 R6
  CALL R7 1 1
  GETUPVAL R8 1
  SETTABLEKS R8 R7 K5 ["isHidden"]
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-19]
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  LOADB R2 0
  GETUPVAL R3 0
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+7]
  GETUPVAL R3 0
  LENGTH R4 R0
  JUMPIFLE R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Starting index out of range"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  LOADB R2 0
  GETUPVAL R3 1
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+7]
  GETUPVAL R3 1
  LENGTH R4 R0
  JUMPIFLE R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["New index out of range"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETIMPORT R1 K6 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  MOVE R0 R1
  GETIMPORT R1 K8 [table.remove]
  MOVE R2 R0
  GETUPVAL R3 0
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["Removed item is invalid even though we checked bounds"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  MOVE R3 R0
  GETUPVAL R4 1
  MOVE R5 R1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K11 [table.insert]
  CALL R2 3 0
  RETURN R0 1

PROTO_5:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["decrement"]
  CALL R0 0 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["increment"]
  CALL R0 0 0
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_8:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  NEWTABLE R4 0 1
  MOVE R5 R1
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R3 3
  GETTABLEKS R4 R0 K1 ["root"]
  LOADK R5 K2 ["equippedItems"]
  NEWTABLE R6 0 0
  MOVE R7 R2
  CALL R3 4 2
  GETUPVAL R6 4
  JUMPIFNOT R6 [+5]
  GETUPVAL R5 5
  MOVE R6 R4
  LOADB R7 0
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  GETUPVAL R7 4
  JUMPIFNOT R7 [+5]
  GETUPVAL R6 5
  MOVE R7 R4
  LOADB R8 1
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  GETUPVAL R8 4
  JUMPIFNOT R8 [+12]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["useCallback"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R4
  NEWTABLE R9 0 1
  MOVE R10 R3
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  GETUPVAL R8 6
  MOVE R9 R4
  CALL R8 1 1
  GETUPVAL R9 7
  MOVE R10 R4
  CALL R9 1 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["useCallback"]
  NEWCLOSURE R11 P2
  CAPTURE VAL R4
  NEWTABLE R12 0 0
  CALL R10 2 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K3 ["useCallback"]
  NEWCLOSURE R12 P3
  CAPTURE VAL R4
  NEWTABLE R13 0 0
  CALL R11 2 1
  GETUPVAL R12 8
  MOVE R13 R3
  CALL R12 1 1
  GETUPVAL R13 9
  CALL R13 0 1
  GETUPVAL R15 10
  CALL R15 0 1
  JUMPIFNOT R15 [+9]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K3 ["useCallback"]
  NEWCLOSURE R15 P4
  CAPTURE VAL R13
  NEWTABLE R16 0 0
  CALL R14 2 1
  JUMP [+1]
  LOADNIL R14
  DUPTABLE R15 K14 [{"equippedItems", "addEquippedItem", "removeEquippedItem", "removeAllEquippedItems", "moveEquippedItemsToIndex", "hideEquippedItem", "showEquippedItem", "setHideAllEquippedItems", "avatarAssets", "startIgnoringChildren", "isIgnoringChildren"}]
  SETTABLEKS R3 R15 K2 ["equippedItems"]
  SETTABLEKS R8 R15 K4 ["addEquippedItem"]
  SETTABLEKS R9 R15 K5 ["removeEquippedItem"]
  SETTABLEKS R10 R15 K6 ["removeAllEquippedItems"]
  SETTABLEKS R11 R15 K7 ["moveEquippedItemsToIndex"]
  SETTABLEKS R6 R15 K8 ["hideEquippedItem"]
  SETTABLEKS R5 R15 K9 ["showEquippedItem"]
  SETTABLEKS R7 R15 K10 ["setHideAllEquippedItems"]
  SETTABLEKS R12 R15 K11 ["avatarAssets"]
  SETTABLEKS R14 R15 K12 ["startIgnoringChildren"]
  GETTABLEKS R17 R13 K15 ["amount"]
  LOADN R18 0
  JUMPIFLT R18 R17 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  SETTABLEKS R16 R15 K13 ["isIgnoringChildren"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K16 ["createElement"]
  GETUPVAL R18 11
  GETTABLEKS R17 R18 K17 ["Provider"]
  DUPTABLE R18 K19 [{"value"}]
  SETTABLEKS R15 R18 K18 ["value"]
  GETTABLEKS R19 R0 K20 ["children"]
  CALL R16 3 -1
  RETURN R16 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["EquipmentStateContext"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K10 ["Serializers"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K7 ["Src"]
  GETTABLEKS R7 R8 K12 ["Hooks"]
  GETTABLEKS R6 R7 K13 ["useAvatarAssets"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K12 ["Hooks"]
  GETTABLEKS R7 R8 K14 ["useAddEquippedItem"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K7 ["Src"]
  GETTABLEKS R9 R10 K12 ["Hooks"]
  GETTABLEKS R8 R9 K15 ["useRemoveEquippedItem"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K7 ["Src"]
  GETTABLEKS R10 R11 K12 ["Hooks"]
  GETTABLEKS R9 R10 K16 ["useSerializedState"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K7 ["Src"]
  GETTABLEKS R11 R12 K12 ["Hooks"]
  GETTABLEKS R10 R11 K17 ["useSetEquippedItemIsHidden"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K7 ["Src"]
  GETTABLEKS R12 R13 K12 ["Hooks"]
  GETTABLEKS R11 R12 K18 ["useIncrementedState"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K7 ["Src"]
  GETTABLEKS R13 R14 K12 ["Hooks"]
  GETTABLEKS R12 R13 K19 ["useUserCatalogFolder"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K7 ["Src"]
  GETTABLEKS R14 R15 K20 ["Flags"]
  GETTABLEKS R13 R14 K21 ["getFFlagAvatarPreviewerEquippedHoverMenu"]
  CALL R12 1 1
  MOVE R13 R12
  CALL R13 0 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K7 ["Src"]
  GETTABLEKS R16 R17 K20 ["Flags"]
  GETTABLEKS R15 R16 K22 ["getFFlagAvatarPreviewerReplicateEditorStateOnWorldModel"]
  CALL R14 1 1
  DUPCLOSURE R15 K23 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R2
  RETURN R15 1
