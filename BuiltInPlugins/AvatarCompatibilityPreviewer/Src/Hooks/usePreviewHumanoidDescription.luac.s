PROTO_0:
  SETTABLEKS R1 R0 K0 ["HeadColor"]
  SETTABLEKS R1 R0 K1 ["TorsoColor"]
  SETTABLEKS R1 R0 K2 ["LeftArmColor"]
  SETTABLEKS R1 R0 K3 ["RightArmColor"]
  SETTABLEKS R1 R0 K4 ["LeftLegColor"]
  SETTABLEKS R1 R0 K5 ["RightLegColor"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
  GETTABLEKS R4 R0 K1 ["AssetType"]
  GETTABLE R2 R3 R4
  LOADK R4 K2 ["No known accessory type for %*"]
  GETTABLEKS R6 R0 K1 ["AssetType"]
  NAMECALL R4 R4 K3 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 1
  DUPTABLE R2 K9 [{"AccessoryType", "AssetId", "Order"}]
  SETTABLEKS R1 R2 K6 ["AccessoryType"]
  GETTABLEKS R3 R0 K7 ["AssetId"]
  SETTABLEKS R3 R2 K7 ["AssetId"]
  GETTABLEKS R3 R0 K8 ["Order"]
  SETTABLEKS R3 R2 K8 ["Order"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["map"]
  MOVE R2 R0
  DUPCLOSURE R3 K1 [PROTO_1]
  CAPTURE UPVAL U1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  NAMECALL R3 R0 K0 ["Clone"]
  CALL R3 1 1
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R7 K1 ["Name"]
  SETTABLE R8 R3 R9
  FORGLOOP R4 2 [-4]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["map"]
  MOVE R7 R2
  DUPCLOSURE R8 K3 [PROTO_1]
  CAPTURE UPVAL U1
  CALL R6 2 1
  LOADB R7 1
  NAMECALL R4 R3 K4 ["SetAccessories"]
  CALL R4 3 0
  RETURN R3 1

PROTO_4:
  DUPTABLE R2 K2 [{"AssetId", "AssetType"}]
  SETTABLEKS R1 R2 K0 ["AssetId"]
  SETTABLEKS R0 R2 K1 ["AssetType"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R0 0
  JUMPIFEQKNIL R0 [+8]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["includeAccessories"]
  JUMPIF R0 [+3]
  NEWTABLE R0 0 0
  RETURN R0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["List"]
  GETTABLEKS R0 R1 K2 ["join"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["avatarAssets"]
  GETTABLEKS R1 R2 K4 ["clothing"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K5 ["collectArray"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["avatarAssets"]
  GETTABLEKS R3 R4 K6 ["accessories"]
  DUPCLOSURE R4 K7 [PROTO_4]
  CALL R2 2 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_6:
  DUPTABLE R2 K2 [{"AssetId", "AssetType"}]
  SETTABLEKS R1 R2 K0 ["AssetId"]
  SETTABLEKS R0 R2 K1 ["AssetType"]
  RETURN R2 1

PROTO_7:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["HumanoidDescription"]
  CALL R0 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["avatarAssets"]
  GETTABLEKS R1 R2 K5 ["skinTone"]
  JUMPIFEQKNIL R1 [+20]
  MOVE R1 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["avatarAssets"]
  GETTABLEKS R2 R3 K5 ["skinTone"]
  SETTABLEKS R2 R1 K6 ["HeadColor"]
  SETTABLEKS R2 R1 K7 ["TorsoColor"]
  SETTABLEKS R2 R1 K8 ["LeftArmColor"]
  SETTABLEKS R2 R1 K9 ["RightArmColor"]
  SETTABLEKS R2 R1 K10 ["LeftLegColor"]
  SETTABLEKS R2 R1 K11 ["RightLegColor"]
  JUMP [+60]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K12 ["WorldModel"]
  LOADK R3 K13 ["BodyColors"]
  NAMECALL R1 R1 K14 ["FindFirstChildWhichIsA"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+16]
  MOVE R2 R0
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K6 ["HeadColor"]
  SETTABLEKS R3 R2 K7 ["TorsoColor"]
  SETTABLEKS R3 R2 K8 ["LeftArmColor"]
  SETTABLEKS R3 R2 K9 ["RightArmColor"]
  SETTABLEKS R3 R2 K10 ["LeftLegColor"]
  SETTABLEKS R3 R2 K11 ["RightLegColor"]
  JUMP [+36]
  LOADK R5 K13 ["BodyColors"]
  NAMECALL R3 R1 K15 ["IsA"]
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K16 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K18 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R1 K19 ["HeadColor3"]
  SETTABLEKS R2 R0 K6 ["HeadColor"]
  GETTABLEKS R2 R1 K20 ["TorsoColor3"]
  SETTABLEKS R2 R0 K7 ["TorsoColor"]
  GETTABLEKS R2 R1 K21 ["LeftArmColor3"]
  SETTABLEKS R2 R0 K8 ["LeftArmColor"]
  GETTABLEKS R2 R1 K22 ["RightArmColor3"]
  SETTABLEKS R2 R0 K9 ["RightArmColor"]
  GETTABLEKS R2 R1 K23 ["LeftLegColor3"]
  SETTABLEKS R2 R0 K10 ["LeftLegColor"]
  GETTABLEKS R2 R1 K24 ["RightLegColor3"]
  SETTABLEKS R2 R0 K11 ["RightLegColor"]
  MOVE R1 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["avatarAssets"]
  GETTABLEKS R2 R3 K25 ["patches"]
  GETUPVAL R3 4
  NAMECALL R4 R1 K26 ["Clone"]
  CALL R4 1 1
  MOVE R5 R2
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R8 K27 ["Name"]
  SETTABLE R9 R4 R10
  FORGLOOP R5 2 [-4]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K28 ["map"]
  MOVE R8 R3
  DUPCLOSURE R9 K29 [PROTO_1]
  CAPTURE UPVAL U3
  CALL R7 2 1
  LOADB R8 1
  NAMECALL R5 R4 K30 ["SetAccessories"]
  CALL R5 3 0
  MOVE R0 R4
  GETUPVAL R1 6
  MOVE R2 R0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K12 ["WorldModel"]
  GETTABLEKS R3 R4 K31 ["Humanoid"]
  CALL R1 2 0
  GETUPVAL R1 7
  JUMPIFNOT R1 [+23]
  GETUPVAL R1 8
  CALL R1 0 1
  JUMPIFNOT R1 [+20]
  GETUPVAL R1 9
  JUMPIFNOT R1 [+3]
  GETUPVAL R2 9
  GETTABLEKS R1 R2 K32 ["resetIncludesBodyParts"]
  JUMPIFEQKNIL R1 [+14]
  GETUPVAL R2 9
  JUMPIFEQKNIL R2 [+11]
  GETUPVAL R3 9
  GETTABLEKS R2 R3 K32 ["resetIncludesBodyParts"]
  JUMPIFEQKNIL R2 [+6]
  GETUPVAL R3 9
  GETTABLEKS R2 R3 K32 ["resetIncludesBodyParts"]
  SETTABLEKS R2 R0 K33 ["ResetIncludesBodyParts"]
  RETURN R0 1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useContext"]
  GETUPVAL R4 1
  CALL R3 1 1
  GETUPVAL R5 2
  JUMPIFNOT R5 [+26]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["useMemo"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  CAPTURE UPVAL U4
  NEWTABLE R6 0 3
  MOVE R7 R2
  JUMPIFNOT R7 [+2]
  GETTABLEKS R7 R2 K2 ["includeAccessories"]
  GETTABLEKS R9 R3 K3 ["avatarAssets"]
  GETTABLEKS R8 R9 K4 ["clothing"]
  GETTABLEKS R10 R3 K3 ["avatarAssets"]
  GETTABLEKS R9 R10 K5 ["accessories"]
  SETLIST R6 R7 3 [1]
  CALL R4 2 1
  JUMP [+19]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K6 ["List"]
  GETTABLEKS R4 R5 K7 ["join"]
  GETTABLEKS R6 R3 K3 ["avatarAssets"]
  GETTABLEKS R5 R6 K4 ["clothing"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K8 ["collectArray"]
  GETTABLEKS R8 R3 K3 ["avatarAssets"]
  GETTABLEKS R7 R8 K5 ["accessories"]
  DUPCLOSURE R8 K9 [PROTO_6]
  CALL R6 2 -1
  CALL R4 -1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["useMemo"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K6 ["List"]
  GETTABLEKS R7 R8 K7 ["join"]
  NEWTABLE R8 0 3
  GETUPVAL R10 10
  CALL R10 0 1
  JUMPIFNOT R10 [+3]
  GETTABLEKS R9 R3 K3 ["avatarAssets"]
  JUMP [+1]
  MOVE R9 R3
  GETUPVAL R11 2
  JUMPIFNOT R11 [+2]
  MOVE R10 R4
  JUMP [+1]
  LOADNIL R10
  GETUPVAL R12 2
  JUMPIFNOT R12 [+5]
  MOVE R11 R2
  JUMPIFNOT R11 [+4]
  GETTABLEKS R11 R2 K10 ["resetIncludesBodyParts"]
  JUMP [+1]
  LOADNIL R11
  SETLIST R8 R9 3 [1]
  MOVE R9 R1
  CALL R7 2 -1
  CALL R5 -1 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K13 ["EquipmentStateContext"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K14 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Util"]
  GETTABLEKS R8 R9 K15 ["copyHumanoidScaleToHumanoidDescription"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K16 ["Flags"]
  GETTABLEKS R9 R10 K17 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R8 1 1
  MOVE R9 R8
  CALL R9 0 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K16 ["Flags"]
  GETTABLEKS R11 R12 K18 ["getFFlagAvatarPreviewerReplicateEditorStateOnWorldModel"]
  CALL R10 1 1
  GETIMPORT R11 K20 [game]
  LOADK R13 K21 ["HumanoidDescriptionResetIncludesBodyParts"]
  LOADB R14 0
  NAMECALL R11 R11 K22 ["DefineFastFlag"]
  CALL R11 3 1
  GETIMPORT R12 K25 [Color3.fromRGB]
  LOADN R13 205
  LOADN R14 205
  LOADN R15 204
  CALL R12 3 1
  DUPCLOSURE R13 K26 [PROTO_0]
  DUPCLOSURE R14 K27 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPCLOSURE R15 K28 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPCLOSURE R16 K29 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R10
  RETURN R16 1
