PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["AssetManagerReducer"]
  GETTABLEKS R2 R3 K2 ["hasLinkedScripts"]
  GETIMPORT R3 K4 [pairs]
  GETTABLEKS R4 R1 K5 ["Aliases"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R8 1
  GETIMPORT R9 K9 [Enum.AssetType.Image]
  JUMPIFNOTEQ R8 R9 [+8]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K14 ["Images/"]
  CALL R8 2 1
  JUMPIF R8 [+66]
  GETUPVAL R8 1
  GETIMPORT R9 K16 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R8 R9 [+8]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K17 ["Meshes/"]
  CALL R8 2 1
  JUMPIF R8 [+54]
  GETUPVAL R8 1
  GETIMPORT R9 K19 [Enum.AssetType.Lua]
  JUMPIFNOTEQ R8 R9 [+8]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K20 ["Scripts/"]
  CALL R8 2 1
  JUMPIF R8 [+42]
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+12]
  GETUPVAL R8 1
  GETIMPORT R9 K22 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R8 R9 [+8]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K23 ["Audio/"]
  CALL R8 2 1
  JUMPIF R8 [+27]
  GETUPVAL R8 3
  CALL R8 0 1
  JUMPIFNOT R8 [+12]
  GETUPVAL R8 1
  GETIMPORT R9 K25 [Enum.AssetType.Video]
  JUMPIFNOTEQ R8 R9 [+8]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K26 ["Video/"]
  CALL R8 2 1
  JUMPIF R8 [+12]
  GETUPVAL R8 1
  GETIMPORT R9 K28 [Enum.AssetType.Model]
  JUMPIFNOTEQ R8 R9 [+186]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K29 ["Models/"]
  CALL R8 2 1
  JUMPIFNOT R8 [+178]
  NEWTABLE R8 8 0
  GETTABLEKS R10 R7 K30 ["TargetId"]
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K32 [tostring]
  CALL R9 1 1
  GETUPVAL R10 1
  SETTABLEKS R10 R8 K33 ["assetType"]
  GETTABLEKS R10 R7 K34 ["Asset"]
  SETTABLEKS R10 R8 K35 ["asset"]
  GETTABLEKS R10 R7 K30 ["TargetId"]
  SETTABLEKS R10 R8 K36 ["id"]
  GETUPVAL R10 1
  GETIMPORT R11 K9 [Enum.AssetType.Image]
  JUMPIFNOTEQ R10 R11 [+18]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K14 ["Images/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+10]
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K14 ["Images/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  JUMP [+116]
  GETUPVAL R10 1
  GETIMPORT R11 K16 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R10 R11 [+18]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K17 ["Meshes/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+10]
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K17 ["Meshes/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  JUMP [+94]
  GETUPVAL R10 1
  GETIMPORT R11 K19 [Enum.AssetType.Lua]
  JUMPIFNOTEQ R10 R11 [+19]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K20 ["Scripts/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+11]
  LOADB R2 1
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K20 ["Scripts/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  JUMP [+71]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+22]
  GETUPVAL R10 1
  GETIMPORT R11 K22 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R10 R11 [+18]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K23 ["Audio/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+10]
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K23 ["Audio/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  JUMP [+46]
  GETUPVAL R10 3
  CALL R10 0 1
  JUMPIFNOT R10 [+22]
  GETUPVAL R10 1
  GETIMPORT R11 K25 [Enum.AssetType.Video]
  JUMPIFNOTEQ R10 R11 [+18]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K26 ["Video/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+10]
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K26 ["Video/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  JUMP [+21]
  GETUPVAL R10 1
  GETIMPORT R11 K28 [Enum.AssetType.Model]
  JUMPIFNOTEQ R10 R11 [+17]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K29 ["Models/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+9]
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K29 ["Models/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  GETUPVAL R10 4
  SETTABLEKS R10 R8 K41 ["layoutOrder"]
  GETUPVAL R10 5
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K42 ["Dictionary"]
  GETTABLEKS R11 R12 K43 ["join"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K44 ["assets"]
  NEWTABLE R13 1 0
  SETTABLE R8 R13 R9
  CALL R11 2 1
  SETTABLEKS R11 R10 K44 ["assets"]
  GETUPVAL R11 4
  ADDK R10 R11 K45 [1]
  SETUPVAL R10 4
  FORGLOOP R3 2 [-257]
  GETTABLEKS R3 R1 K46 ["NextPageCursor"]
  JUMPIFNOT R3 [+5]
  GETUPVAL R3 7
  GETTABLEKS R4 R1 K46 ["NextPageCursor"]
  CALL R3 1 -1
  RETURN R3 -1
  GETUPVAL R3 5
  GETUPVAL R4 4
  MOVE R5 R2
  RETURN R3 3

PROTO_1:
  GETUPVAL R1 0
  GETIMPORT R2 K3 [Enum.AssetType.Image]
  JUMPIFEQ R1 R2 [+32]
  GETUPVAL R1 0
  GETIMPORT R2 K5 [Enum.AssetType.MeshPart]
  JUMPIFEQ R1 R2 [+27]
  GETUPVAL R1 0
  GETIMPORT R2 K7 [Enum.AssetType.Lua]
  JUMPIFEQ R1 R2 [+22]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  GETIMPORT R2 K9 [Enum.AssetType.Audio]
  JUMPIFEQ R1 R2 [+14]
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  GETIMPORT R2 K11 [Enum.AssetType.Video]
  JUMPIFEQ R1 R2 [+6]
  GETUPVAL R1 0
  GETIMPORT R2 K13 [Enum.AssetType.Model]
  JUMPIFNOTEQ R1 R2 [+31]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K14 ["APIS"]
  GETTABLEKS R2 R3 K15 ["ContentAliasesApi"]
  GETTABLEKS R1 R2 K16 ["aliases"]
  GETIMPORT R3 K18 [game]
  GETTABLEKS R2 R3 K19 ["GameId"]
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R1 3 1
  NAMECALL R1 R1 K20 ["makeRequest"]
  CALL R1 1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  NAMECALL R1 R1 K21 ["andThen"]
  CALL R1 2 -1
  RETURN R1 -1
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["AssetManagerReducer"]
  GETTABLEKS R2 R3 K2 ["hasLinkedScripts"]
  GETIMPORT R3 K4 [pairs]
  GETTABLEKS R4 R1 K5 ["Aliases"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R8 1
  GETIMPORT R9 K9 [Enum.AssetType.Image]
  JUMPIFNOTEQ R8 R9 [+8]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K14 ["Images/"]
  CALL R8 2 1
  JUMPIF R8 [+66]
  GETUPVAL R8 1
  GETIMPORT R9 K16 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R8 R9 [+8]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K17 ["Meshes/"]
  CALL R8 2 1
  JUMPIF R8 [+54]
  GETUPVAL R8 1
  GETIMPORT R9 K19 [Enum.AssetType.Lua]
  JUMPIFNOTEQ R8 R9 [+8]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K20 ["Scripts/"]
  CALL R8 2 1
  JUMPIF R8 [+42]
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+12]
  GETUPVAL R8 1
  GETIMPORT R9 K22 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R8 R9 [+8]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K23 ["Audio/"]
  CALL R8 2 1
  JUMPIF R8 [+27]
  GETUPVAL R8 3
  CALL R8 0 1
  JUMPIFNOT R8 [+12]
  GETUPVAL R8 1
  GETIMPORT R9 K25 [Enum.AssetType.Video]
  JUMPIFNOTEQ R8 R9 [+8]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K26 ["Video/"]
  CALL R8 2 1
  JUMPIF R8 [+12]
  GETUPVAL R8 1
  GETIMPORT R9 K28 [Enum.AssetType.Model]
  JUMPIFNOTEQ R8 R9 [+186]
  GETIMPORT R8 K12 [string.find]
  GETTABLEKS R9 R7 K13 ["Name"]
  LOADK R10 K29 ["Models/"]
  CALL R8 2 1
  JUMPIFNOT R8 [+178]
  NEWTABLE R8 8 0
  GETTABLEKS R10 R7 K30 ["TargetId"]
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K32 [tostring]
  CALL R9 1 1
  GETUPVAL R10 1
  SETTABLEKS R10 R8 K33 ["assetType"]
  GETTABLEKS R10 R7 K34 ["Asset"]
  SETTABLEKS R10 R8 K35 ["asset"]
  GETTABLEKS R10 R7 K30 ["TargetId"]
  SETTABLEKS R10 R8 K36 ["id"]
  GETUPVAL R10 1
  GETIMPORT R11 K9 [Enum.AssetType.Image]
  JUMPIFNOTEQ R10 R11 [+18]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K14 ["Images/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+10]
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K14 ["Images/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  JUMP [+116]
  GETUPVAL R10 1
  GETIMPORT R11 K16 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R10 R11 [+18]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K17 ["Meshes/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+10]
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K17 ["Meshes/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  JUMP [+94]
  GETUPVAL R10 1
  GETIMPORT R11 K19 [Enum.AssetType.Lua]
  JUMPIFNOTEQ R10 R11 [+19]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K20 ["Scripts/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+11]
  LOADB R2 1
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K20 ["Scripts/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  JUMP [+71]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+22]
  GETUPVAL R10 1
  GETIMPORT R11 K22 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R10 R11 [+18]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K23 ["Audio/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+10]
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K23 ["Audio/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  JUMP [+46]
  GETUPVAL R10 3
  CALL R10 0 1
  JUMPIFNOT R10 [+22]
  GETUPVAL R10 1
  GETIMPORT R11 K25 [Enum.AssetType.Video]
  JUMPIFNOTEQ R10 R11 [+18]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K26 ["Video/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+10]
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K26 ["Video/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  JUMP [+21]
  GETUPVAL R10 1
  GETIMPORT R11 K28 [Enum.AssetType.Model]
  JUMPIFNOTEQ R10 R11 [+17]
  GETIMPORT R10 K12 [string.find]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K29 ["Models/"]
  CALL R10 2 1
  JUMPIFNOT R10 [+9]
  GETIMPORT R10 K38 [string.gsub]
  GETTABLEKS R11 R7 K13 ["Name"]
  LOADK R12 K29 ["Models/"]
  LOADK R13 K39 [""]
  CALL R10 3 1
  SETTABLEKS R10 R8 K40 ["name"]
  GETUPVAL R10 4
  SETTABLEKS R10 R8 K41 ["layoutOrder"]
  GETUPVAL R10 5
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K42 ["Dictionary"]
  GETTABLEKS R11 R12 K43 ["join"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K44 ["assets"]
  NEWTABLE R13 1 0
  SETTABLE R8 R13 R9
  CALL R11 2 1
  SETTABLEKS R11 R10 K44 ["assets"]
  GETUPVAL R11 4
  ADDK R10 R11 K45 [1]
  SETUPVAL R10 4
  FORGLOOP R3 2 [-257]
  GETTABLEKS R3 R1 K46 ["FinalPage"]
  JUMPIF R3 [+5]
  GETUPVAL R3 7
  GETUPVAL R5 8
  ADDK R4 R5 K45 [1]
  CALL R3 1 -1
  RETURN R3 -1
  GETUPVAL R3 5
  GETUPVAL R4 4
  MOVE R5 R2
  RETURN R3 3

PROTO_3:
  GETUPVAL R1 0
  GETIMPORT R2 K3 [Enum.AssetType.Image]
  JUMPIFEQ R1 R2 [+32]
  GETUPVAL R1 0
  GETIMPORT R2 K5 [Enum.AssetType.MeshPart]
  JUMPIFEQ R1 R2 [+27]
  GETUPVAL R1 0
  GETIMPORT R2 K7 [Enum.AssetType.Lua]
  JUMPIFEQ R1 R2 [+22]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  GETIMPORT R2 K9 [Enum.AssetType.Audio]
  JUMPIFEQ R1 R2 [+14]
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  GETIMPORT R2 K11 [Enum.AssetType.Video]
  JUMPIFEQ R1 R2 [+6]
  GETUPVAL R1 0
  GETIMPORT R2 K13 [Enum.AssetType.Model]
  JUMPIFNOTEQ R1 R2 [+31]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K14 ["API"]
  GETTABLEKS R2 R3 K15 ["Universes"]
  GETTABLEKS R1 R2 K16 ["getAliases"]
  GETIMPORT R3 K18 [game]
  GETTABLEKS R2 R3 K19 ["GameId"]
  MOVE R3 R0
  CALL R1 2 1
  NAMECALL R1 R1 K20 ["makeRequest"]
  CALL R1 1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  NAMECALL R1 R1 K21 ["andThen"]
  CALL R1 2 -1
  RETURN R1 -1
  RETURN R0 0

PROTO_4:
  NEWTABLE R3 1 0
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K0 ["assets"]
  LOADN R4 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE REF R4
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE REF R4
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CAPTURE VAL R6
  GETUPVAL R7 4
  JUMPIFNOT R7 [+4]
  MOVE R7 R5
  CALL R7 0 -1
  CLOSEUPVALS R4
  RETURN R7 -1
  MOVE R7 R6
  LOADN R8 1
  CALL R7 1 -1
  CLOSEUPVALS R4
  RETURN R7 -1

PROTO_5:
  GETUPVAL R3 0
  GETUPVAL R5 1
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R3 K0 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 2
  JUMPIF R3 [+15]
  GETUPVAL R3 0
  GETUPVAL R5 3
  LOADB R6 0
  CALL R5 1 -1
  NAMECALL R3 R3 K0 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 0
  GETUPVAL R5 4
  MOVE R6 R0
  MOVE R7 R1
  CALL R5 2 -1
  NAMECALL R3 R3 K0 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADB R3 0
  CALL R2 1 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  GETIMPORT R0 K2 [error]
  LOADK R1 K3 ["Failed to load aliases"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETUPVAL R2 0
  JUMPIF R2 [+6]
  GETUPVAL R4 1
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R0 K1 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["resolve"]
  GETUPVAL R3 3
  GETUPVAL R4 4
  GETUPVAL R5 5
  MOVE R6 R1
  CALL R3 3 -1
  CALL R2 -1 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U7
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R2 R2 K3 ["andThen"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_8:
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K7 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["Promise"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K8 ["Util"]
  GETTABLEKS R5 R6 K11 ["AssetManagerUtilities"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["enableAudioImport"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K8 ["Util"]
  GETTABLEKS R6 R7 K11 ["AssetManagerUtilities"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K13 ["enableVideoImport"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K14 ["Actions"]
  GETTABLEKS R6 R7 K15 ["SetAssets"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Actions"]
  GETTABLEKS R7 R8 K16 ["SetIsFetchingAssets"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K14 ["Actions"]
  GETTABLEKS R8 R9 K17 ["SetHasLinkedScripts"]
  CALL R7 1 1
  GETIMPORT R8 K19 [game]
  LOADK R10 K20 ["StudioAssetManagerAssetFetchNumber"]
  NAMECALL R8 R8 K21 ["GetFastInt"]
  CALL R8 2 1
  GETIMPORT R9 K19 [game]
  LOADK R11 K22 ["AssetManagerMigrateAliasesEndpoint"]
  NAMECALL R9 R9 K23 ["GetFastFlag"]
  CALL R9 2 1
  DUPCLOSURE R10 K24 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R9
  DUPCLOSURE R11 K25 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R11 1
