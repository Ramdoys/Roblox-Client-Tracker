PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["dummy"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K0 ["dummy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  LOADK R3 K0 ["WrapTarget"]
  NAMECALL R1 R0 K1 ["FindFirstChildWhichIsA"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  NEWTABLE R0 0 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetChildren"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K1 ["Accessory"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+11]
  GETTABLEKS R6 R5 K3 ["Archivable"]
  JUMPIFNOT R6 [+8]
  MOVE R7 R0
  NAMECALL R8 R5 K4 ["Clone"]
  CALL R8 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K7 [table.insert]
  CALL R6 -1 0
  FORGLOOP R1 2 [-17]
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  NAMECALL R5 R4 K0 ["Clone"]
  CALL R5 1 1
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K1 ["Parent"]
  FORGLOOP R0 2 [-7]
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useCallback"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  NEWTABLE R4 0 1
  MOVE R5 R1
  SETLIST R4 R5 1 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  NEWTABLE R0 0 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetChildren"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K1 ["BasePart"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+29]
  GETTABLEKS R6 R5 K3 ["Archivable"]
  JUMPIFNOT R6 [+26]
  LOADK R9 K1 ["BasePart"]
  NAMECALL R7 R5 K2 ["IsA"]
  CALL R7 2 1
  FASTCALL2K ASSERT R7 K4 [+4]
  LOADK R8 K4 ["Luau"]
  GETIMPORT R6 K6 [assert]
  CALL R6 2 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["BODY_PART_TO_LIMB_NAME"]
  GETTABLEKS R8 R5 K8 ["Name"]
  GETTABLE R6 R7 R8
  JUMPIFEQKNIL R6 [+9]
  MOVE R8 R0
  NAMECALL R9 R5 K9 ["Clone"]
  CALL R9 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R7 K12 [table.insert]
  CALL R7 -1 0
  FORGLOOP R1 2 [-35]
  RETURN R0 1

PROTO_6:
  NEWTABLE R0 0 0
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["BODY_PART_TO_LIMB_NAME"]
  GETTABLEKS R8 R5 K1 ["Name"]
  GETTABLE R6 R7 R8
  JUMPIFEQKNIL R6 [+12]
  GETUPVAL R8 2
  GETTABLE R7 R8 R6
  JUMPIFNOTEQKN R7 K2 [0] [+8]
  FASTCALL2 TABLE_INSERT R0 R5 [+5]
  MOVE R8 R0
  MOVE R9 R5
  GETIMPORT R7 K5 [table.insert]
  CALL R7 2 0
  FORGLOOP R1 2 [-20]
  RETURN R0 1

PROTO_7:
  GETUPVAL R1 0
  LOADK R3 K0 ["Humanoid"]
  NAMECALL R1 R1 K1 ["FindFirstChildWhichIsA"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  LOADK R5 K0 ["Humanoid"]
  NAMECALL R3 R1 K2 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Luau"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  NAMECALL R7 R6 K6 ["Clone"]
  CALL R7 1 1
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+7]
  GETUPVAL R8 2
  MOVE R10 R7
  GETIMPORT R11 K10 [Enum.CollisionFidelity.Default]
  NAMECALL R8 R8 K11 ["ResetCollisionFidelity"]
  CALL R8 3 0
  GETIMPORT R11 K13 [Enum.BodyPartR15]
  GETTABLEKS R12 R6 K14 ["Name"]
  GETTABLE R10 R11 R12
  MOVE R11 R7
  NAMECALL R8 R1 K15 ["ReplaceBodyPartR15"]
  CALL R8 3 0
  FORGLOOP R2 2 [-23]
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Name"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETUPVAL R1 3
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  MOVE R8 R4
  NAMECALL R6 R0 K1 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFEQKNIL R6 [+40]
  LOADK R9 K5 ["Attachment"]
  NAMECALL R7 R6 K6 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+34]
  LOADB R8 0
  JUMPIFEQKNIL R6 [+5]
  LOADK R10 K5 ["Attachment"]
  NAMECALL R8 R6 K6 ["IsA"]
  CALL R8 2 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K2 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R8 R9 [+3]
  GETIMPORT R7 K4 [assert]
  CALL R7 2 0
  SETTABLEKS R5 R6 K7 ["CFrame"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["ORIGINAL_POSITION_VALUE"]
  NAMECALL R7 R6 K1 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFEQKNIL R7 [+10]
  LOADK R10 K9 ["Vector3Value"]
  NAMECALL R8 R7 K6 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+4]
  GETTABLEKS R8 R5 K10 ["Position"]
  SETTABLEKS R8 R7 K11 ["Value"]
  FORGLOOP R1 2 [-46]
  LOADK R3 K12 ["WrapTarget"]
  NAMECALL R1 R0 K13 ["FindFirstChildWhichIsA"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+10]
  GETUPVAL R2 4
  JUMPIFEQKNIL R2 [+7]
  GETIMPORT R4 K17 [Enum.CageType.Outer]
  GETUPVAL R5 4
  NAMECALL R2 R1 K18 ["ModifyVertices"]
  CALL R2 3 0
  RETURN R0 0

PROTO_9:
  NEWTABLE R0 0 0
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETIMPORT R6 K2 [table.find]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["current"]
  MOVE R8 R5
  CALL R6 2 1
  JUMPIFEQKNIL R6 [+50]
  GETUPVAL R6 2
  GETTABLEKS R8 R5 K4 ["Name"]
  NAMECALL R6 R6 K5 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFEQKNIL R6 [+42]
  NEWTABLE R7 0 0
  NAMECALL R8 R6 K6 ["GetChildren"]
  CALL R8 1 3
  FORGPREP R8
  LOADK R15 K7 ["Attachment"]
  NAMECALL R13 R12 K8 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+5]
  GETTABLEKS R13 R12 K4 ["Name"]
  GETTABLEKS R14 R12 K9 ["CFrame"]
  SETTABLE R14 R7 R13
  FORGLOOP R8 2 [-11]
  LOADK R10 K10 ["WrapTarget"]
  NAMECALL R8 R6 K11 ["FindFirstChildWhichIsA"]
  CALL R8 2 1
  MOVE R9 R8
  JUMPIFNOT R9 [+5]
  GETIMPORT R11 K15 [Enum.CageType.Outer]
  NAMECALL R9 R8 K16 ["GetVertices"]
  CALL R9 2 1
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R6
  CAPTURE UPVAL U3
  CAPTURE VAL R7
  CAPTURE VAL R9
  FASTCALL2 TABLE_INSERT R0 R12 [+4]
  MOVE R11 R0
  GETIMPORT R10 K18 [table.insert]
  CALL R10 2 0
  FORGLOOP R1 2 [-59]
  GETUPVAL R1 4
  GETUPVAL R2 0
  CALL R1 1 0
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  MOVE R6 R5
  CALL R6 0 0
  FORGLOOP R1 2 [-3]
  RETURN R0 0

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R4 0 1
  MOVE R5 R0
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useMemo"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  NEWTABLE R5 0 2
  MOVE R6 R2
  MOVE R7 R1
  SETLIST R5 R6 2 [1]
  CALL R3 2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["useRefToState"]
  MOVE R5 R3
  CALL R4 1 1
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["useCallback"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  NEWTABLE R8 0 2
  MOVE R9 R2
  MOVE R10 R0
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  RETURN R6 1

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["startIgnoringChildren"]
  CALL R0 0 -1
  RETURN R0 -1

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onRepresentEditorStateOnWorldModelUnmounted"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["worldModel"]
  CALL R0 1 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["includeAccessories"]
  JUMPIFNOT R0 [+21]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["worldModel"]
  NAMECALL R0 R0 K2 ["GetChildren"]
  CALL R0 1 3
  FORGPREP R0
  LOADK R7 K3 ["Accessory"]
  NAMECALL R5 R4 K4 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+3]
  NAMECALL R5 R4 K5 ["Destroy"]
  CALL R5 1 0
  FORGLOOP R0 2 [-9]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K6 ["current"]
  CALL R0 0 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K6 ["current"]
  CALL R0 0 0
  GETUPVAL R0 4
  JUMPIFEQKNIL R0 [+19]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["worldModel"]
  LOADK R2 K7 ["BodyColors"]
  NAMECALL R0 R0 K8 ["FindFirstChildWhichIsA"]
  CALL R0 2 1
  JUMPIFEQKNIL R0 [+4]
  NAMECALL R1 R0 K5 ["Destroy"]
  CALL R1 1 0
  GETUPVAL R1 4
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["worldModel"]
  SETTABLEKS R2 R1 K9 ["Parent"]
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K10 ["onRepresentEditorStateOnWorldModelUnmounted"]
  JUMPIFEQKNIL R0 [+6]
  GETIMPORT R0 K13 [task.defer]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U5
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["worldModel"]
  LOADK R2 K1 ["BodyColors"]
  NAMECALL R0 R0 K2 ["FindFirstChildWhichIsA"]
  CALL R0 2 1
  JUMPIFEQKNIL R0 [+5]
  NAMECALL R1 R0 K3 ["Clone"]
  CALL R1 1 1
  MOVE R0 R1
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE REF R0
  CAPTURE UPVAL U4
  CLOSEUPVALS R0
  RETURN R1 1

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onRepresentEditorStateOnWorldModelDescriptionApplied"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["worldModel"]
  GETTABLEKS R0 R1 K1 ["Humanoid"]
  GETUPVAL R2 1
  NAMECALL R0 R0 K2 ["ApplyDescriptionReset"]
  CALL R0 2 0
  GETUPVAL R0 2
  CALL R0 0 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["includeAccessories"]
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 3
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["includeAccessories"]
  JUMPIF R0 [+2]
  GETUPVAL R0 4
  CALL R0 0 0
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K4 ["onRepresentEditorStateOnWorldModelDescriptionApplied"]
  JUMPIFEQKNIL R0 [+6]
  GETIMPORT R0 K7 [task.defer]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U5
  CALL R0 1 0
  GETUPVAL R1 6
  GETTABLEKS R0 R1 K8 ["increment"]
  CALL R0 0 0
  LOADNIL R0
  RETURN R0 1

PROTO_17:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["RepresentEditorStateOnWorldModle required FFlagAvatarPreviewerEditingTools"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["useContext"]
  GETUPVAL R2 2
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["useContext"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["Context"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["useEffect"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  NEWTABLE R5 0 1
  GETTABLEKS R6 R1 K6 ["startIgnoringChildren"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 0
  GETUPVAL R3 4
  DUPTABLE R4 K11 [{"WorldModel", "ProportionalScale", "WorldModelScale", "LatestWorldModelHash"}]
  GETTABLEKS R5 R0 K12 ["worldModel"]
  SETTABLEKS R5 R4 K7 ["WorldModel"]
  GETTABLEKS R5 R0 K12 ["worldModel"]
  NAMECALL R5 R5 K13 ["GetScale"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["ProportionalScale"]
  GETTABLEKS R5 R0 K12 ["worldModel"]
  NAMECALL R5 R5 K13 ["GetScale"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K9 ["WorldModelScale"]
  LOADK R5 K14 [""]
  SETTABLEKS R5 R4 K10 ["LatestWorldModelHash"]
  NEWTABLE R5 0 0
  DUPTABLE R6 K17 [{"includeAccessories", "resetIncludesBodyParts"}]
  GETTABLEKS R7 R0 K15 ["includeAccessories"]
  SETTABLEKS R7 R6 K15 ["includeAccessories"]
  LOADB R7 0
  SETTABLEKS R7 R6 K16 ["resetIncludesBodyParts"]
  CALL R3 3 1
  GETUPVAL R4 5
  GETTABLEKS R5 R0 K12 ["worldModel"]
  CALL R4 1 1
  GETUPVAL R5 6
  GETTABLEKS R6 R0 K12 ["worldModel"]
  MOVE R7 R3
  CALL R5 2 1
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K18 ["useRefToState"]
  MOVE R7 R4
  CALL R6 1 1
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K18 ["useRefToState"]
  MOVE R8 R5
  CALL R7 1 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["useEffect"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R2
  NEWTABLE R10 0 3
  GETTABLEKS R11 R0 K15 ["includeAccessories"]
  MOVE R12 R4
  MOVE R13 R5
  SETLIST R10 R11 3 [1]
  CALL R8 2 0
  GETUPVAL R8 9
  CALL R8 0 1
  GETUPVAL R10 10
  CALL R10 0 1
  JUMPIFNOT R10 [+5]
  GETUPVAL R9 11
  GETTABLEKS R10 R0 K12 ["worldModel"]
  CALL R9 1 1
  JUMP [+1]
  LOADNIL R9
  GETUPVAL R10 12
  NEWCLOSURE R11 P2
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE UPVAL U10
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R8
  NEWTABLE R12 0 2
  MOVE R13 R3
  MOVE R14 R4
  SETLIST R12 R13 2 [1]
  CALL R10 2 0
  GETTABLEKS R10 R0 K15 ["includeAccessories"]
  JUMPIFNOT R10 [+25]
  GETTABLEKS R10 R8 K19 ["amount"]
  LOADN R11 0
  JUMPIFNOTLT R11 R10 [+21]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K20 ["createElement"]
  GETUPVAL R11 13
  DUPTABLE R12 K23 [{"key", "dummy"}]
  LOADK R14 K24 ["GiveDummyInstancesClothing%*"]
  GETTABLEKS R16 R8 K19 ["amount"]
  NAMECALL R14 R14 K25 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLEKS R13 R12 K21 ["key"]
  GETTABLEKS R13 R0 K12 ["worldModel"]
  SETTABLEKS R13 R12 K22 ["dummy"]
  CALL R10 2 -1
  RETURN R10 -1
  LOADNIL R10
  RETURN R10 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K13 ["EquipmentStateContext"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K14 ["Packages"]
  GETTABLEKS R5 R6 K15 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K14 ["Packages"]
  GETTABLEKS R6 R7 K16 ["ReactUtils"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K10 ["Src"]
  GETTABLEKS R8 R9 K17 ["Components"]
  GETTABLEKS R7 R8 K18 ["TestingInterfaceContext"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R1 K10 ["Src"]
  GETTABLEKS R8 R9 K19 ["Types"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K10 ["Src"]
  GETTABLEKS R10 R11 K20 ["Flags"]
  GETTABLEKS R9 R10 K21 ["getFFlagAvatarPreviewerCageEditingTools"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K10 ["Src"]
  GETTABLEKS R11 R12 K20 ["Flags"]
  GETTABLEKS R10 R11 K22 ["getFFlagAvatarPreviewerEditingTools"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R1 K10 ["Src"]
  GETTABLEKS R12 R13 K20 ["Flags"]
  GETTABLEKS R11 R12 K23 ["getFFlagAvatarPreviewerGearAccessories"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R1 K10 ["Src"]
  GETTABLEKS R13 R14 K11 ["Util"]
  GETTABLEKS R12 R13 K24 ["isAvatar"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R1 K10 ["Src"]
  GETTABLEKS R14 R15 K25 ["Hooks"]
  GETTABLEKS R13 R14 K26 ["useAsync"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R1 K10 ["Src"]
  GETTABLEKS R15 R16 K25 ["Hooks"]
  GETTABLEKS R14 R15 K27 ["useClothingFromInstances"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R17 R1 K10 ["Src"]
  GETTABLEKS R16 R17 K25 ["Hooks"]
  GETTABLEKS R15 R16 K28 ["useEquipGearAccessories"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R18 R1 K10 ["Src"]
  GETTABLEKS R17 R18 K25 ["Hooks"]
  GETTABLEKS R16 R17 K29 ["useIncrementedState"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R19 R1 K10 ["Src"]
  GETTABLEKS R18 R19 K25 ["Hooks"]
  GETTABLEKS R17 R18 K30 ["useMoveAccessoriesAlongsideAttachments"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R20 R1 K10 ["Src"]
  GETTABLEKS R19 R20 K25 ["Hooks"]
  GETTABLEKS R18 R19 K31 ["usePreviewHumanoidDescription"]
  CALL R17 1 1
  DUPCLOSURE R18 K32 [PROTO_0]
  CAPTURE VAL R13
  CAPTURE VAL R16
  DUPCLOSURE R19 K33 [PROTO_1]
  DUPCLOSURE R20 K34 [PROTO_4]
  CAPTURE VAL R4
  DUPCLOSURE R21 K35 [PROTO_10]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R0
  DUPCLOSURE R22 K36 [PROTO_17]
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R18
  RETURN R22 1
