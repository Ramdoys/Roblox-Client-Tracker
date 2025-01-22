PROTO_0:
  GETUPVAL R0 0
  LOADK R3 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
  GETUPVAL R6 1
  GETTABLEKS R4 R6 K1 ["Id"]
  LOADK R5 K2 ["/configure"]
  CONCAT R2 R3 R5
  NAMECALL R0 R0 K3 ["openLink"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADK R3 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
  GETUPVAL R8 1
  GETTABLEKS R4 R8 K1 ["Id"]
  LOADK R5 K2 ["/places/"]
  GETUPVAL R8 1
  GETTABLEKS R6 R8 K3 ["RootPlaceId"]
  LOADK R7 K4 ["/configure"]
  CONCAT R2 R3 R7
  NAMECALL R0 R0 K5 ["openLink"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADK R3 K0 ["https://www.roblox.com/games/"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["RootPlaceId"]
  CONCAT R2 R3 R4
  NAMECALL R0 R0 K2 ["openLink"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Id"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["PrivacyType"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Id"]
  LOADB R2 1
  CALL R0 2 0
  GETUPVAL R0 2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Id"]
  NAMECALL R0 R0 K1 ["removeAPIGameFromRegistry"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Id"]
  LOADB R2 0
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Id"]
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["GetUserId"]
  CALL R2 1 -1
  CALL R0 -1 0
  GETUPVAL R0 3
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Id"]
  NAMECALL R0 R0 K2 ["removeAPIGameFromRegistry"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["FilePath"]
  JUMPIFNOT R0 [+15]
  GETUPVAL R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["FilePath"]
  NAMECALL R0 R0 K1 ["deleteItem"]
  CALL R0 2 0
  GETUPVAL R0 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["FilePath"]
  NAMECALL R0 R0 K2 ["removeLocalFileFromRegistry"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["Id"]
  JUMPIFNOT R0 [+18]
  GETUPVAL R0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Id"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K5 [tostring]
  CALL R2 1 1
  NAMECALL R0 R0 K1 ["deleteItem"]
  CALL R0 2 0
  GETUPVAL R0 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["Id"]
  NAMECALL R0 R0 K6 ["removeAPIGameFromRegistry"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["IsPlaceholder"]
  NOT R2 R3
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["Cell should not be a placeholder here"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K4 ["use"]
  CALL R1 1 1
  DUPTABLE R2 K13 [{"ConfigureExperience", "ConfigurePlace", "OpenPlace", "PublicPrivateToggle", "Archive", "RestoreArchive", "RemoveShared", "RemoveRecent"}]
  GETTABLEKS R4 R0 K14 ["Id"]
  JUMPIFNOT R4 [+14]
  DUPTABLE R3 K17 [{"Label", "Action"}]
  LOADK R6 K18 ["Plugin"]
  LOADK R7 K5 ["ConfigureExperience"]
  NAMECALL R4 R1 K19 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K15 ["Label"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K16 ["Action"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K5 ["ConfigureExperience"]
  GETTABLEKS R4 R0 K14 ["Id"]
  JUMPIFNOT R4 [+17]
  GETTABLEKS R4 R0 K20 ["RootPlaceId"]
  JUMPIFNOT R4 [+14]
  DUPTABLE R3 K17 [{"Label", "Action"}]
  LOADK R6 K18 ["Plugin"]
  LOADK R7 K6 ["ConfigurePlace"]
  NAMECALL R4 R1 K19 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K15 ["Label"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K16 ["Action"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K6 ["ConfigurePlace"]
  GETTABLEKS R4 R0 K20 ["RootPlaceId"]
  JUMPIFNOT R4 [+14]
  DUPTABLE R3 K17 [{"Label", "Action"}]
  LOADK R6 K18 ["Plugin"]
  LOADK R7 K21 ["OpenPlacePage"]
  NAMECALL R4 R1 K19 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K15 ["Label"]
  NEWCLOSURE R4 P2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K16 ["Action"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K7 ["OpenPlace"]
  GETTABLEKS R4 R0 K14 ["Id"]
  JUMPIFNOT R4 [+39]
  GETTABLEKS R4 R0 K22 ["PrivacyType"]
  JUMPIFNOT R4 [+36]
  GETTABLEKS R4 R0 K22 ["PrivacyType"]
  JUMPIFEQKS R4 K23 ["Draft"] [+33]
  DUPTABLE R3 K17 [{"Label", "Action"}]
  LOADK R6 K18 ["Plugin"]
  LOADK R7 K24 ["SetPrivacy"]
  DUPTABLE R8 K26 [{"privacy"}]
  GETTABLEKS R10 R0 K22 ["PrivacyType"]
  JUMPIFNOTEQKS R10 K27 ["Public"] [+7]
  LOADK R11 K18 ["Plugin"]
  LOADK R12 K28 ["PrivacyType.Private"]
  NAMECALL R9 R1 K19 ["getText"]
  CALL R9 3 1
  JUMP [+5]
  LOADK R11 K18 ["Plugin"]
  LOADK R12 K29 ["PrivacyType.Public"]
  NAMECALL R9 R1 K19 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K25 ["privacy"]
  NAMECALL R4 R1 K19 ["getText"]
  CALL R4 4 1
  SETTABLEKS R4 R3 K15 ["Label"]
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K16 ["Action"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K8 ["PublicPrivateToggle"]
  GETTABLEKS R4 R0 K14 ["Id"]
  JUMPIFNOT R4 [+15]
  DUPTABLE R3 K17 [{"Label", "Action"}]
  LOADK R6 K18 ["Plugin"]
  LOADK R7 K9 ["Archive"]
  NAMECALL R4 R1 K19 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K15 ["Label"]
  NEWCLOSURE R4 P4
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R4 R3 K16 ["Action"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K9 ["Archive"]
  GETTABLEKS R4 R0 K14 ["Id"]
  JUMPIFNOT R4 [+14]
  DUPTABLE R3 K17 [{"Label", "Action"}]
  LOADK R6 K18 ["Plugin"]
  LOADK R7 K30 ["Restore"]
  NAMECALL R4 R1 K19 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K15 ["Label"]
  NEWCLOSURE R4 P5
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K16 ["Action"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K10 ["RestoreArchive"]
  GETTABLEKS R4 R0 K14 ["Id"]
  JUMPIFNOT R4 [+16]
  DUPTABLE R3 K17 [{"Label", "Action"}]
  LOADK R6 K18 ["Plugin"]
  LOADK R7 K31 ["Remove"]
  NAMECALL R4 R1 K19 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K15 ["Label"]
  NEWCLOSURE R4 P6
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U1
  SETTABLEKS R4 R3 K16 ["Action"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K11 ["RemoveShared"]
  GETUPVAL R4 6
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  GETTABLEKS R4 R0 K14 ["Id"]
  JUMPIF R4 [+3]
  GETTABLEKS R4 R0 K32 ["FilePath"]
  JUMPIFNOT R4 [+15]
  DUPTABLE R3 K17 [{"Label", "Action"}]
  LOADK R6 K18 ["Plugin"]
  LOADK R7 K33 ["RemoveFromList"]
  NAMECALL R4 R1 K19 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K15 ["Label"]
  NEWCLOSURE R4 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U1
  SETTABLEKS R4 R3 K16 ["Action"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K12 ["RemoveRecent"]
  RETURN R2 1

PROTO_9:
  GETUPVAL R2 0
  GETUPVAL R3 1
  GETTABLE R1 R2 R3
  GETTABLEKS R0 R1 K0 ["Action"]
  CALL R0 0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["OnItemActivated"]
  CALL R0 0 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["MenuContainerSizeChanged"]
  GETTABLEKS R2 R0 K1 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["Cell"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K1 ["KebabMenu"]
  JUMPIFNOT R3 [+60]
  GETTABLEKS R4 R0 K1 ["KebabMenu"]
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+55]
  GETTABLEKS R3 R0 K1 ["KebabMenu"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLE R8 R2 R7
  JUMPIFNOT R8 [+45]
  MOVE R9 R1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["createElement"]
  LOADK R11 K3 ["TextButton"]
  NEWTABLE R12 8 0
  GETIMPORT R13 K6 [UDim2.new]
  LOADN R14 0
  LOADN R15 153
  LOADN R16 0
  LOADN R17 28
  CALL R13 4 1
  SETTABLEKS R13 R12 K7 ["Size"]
  GETTABLE R14 R2 R7
  GETTABLEKS R13 R14 K8 ["Label"]
  SETTABLEKS R13 R12 K9 ["Text"]
  GETIMPORT R13 K13 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K11 ["TextXAlignment"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K14 ["Event"]
  GETTABLEKS R13 R14 K15 ["Activated"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R0
  SETTABLE R14 R12 R13
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K16 ["Tag"]
  LOADK R14 K17 ["X-Fit StartPage-TextColor StartPage-ContextMenuBackground StartPage-RoundedCorner8 StartPage-ContextMenuRowPadding StartPage-Font StartPage-TextSize"]
  SETTABLE R14 R12 R13
  CALL R10 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K20 [table.insert]
  CALL R8 -1 0
  FORGLOOP R3 2 [-48]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K21 ["Frame"]
  NEWTABLE R5 4 0
  GETTABLEKS R6 R0 K22 ["Position"]
  SETTABLEKS R6 R5 K22 ["Position"]
  GETTABLEKS R7 R0 K23 ["Hide"]
  NOT R6 R7
  SETTABLEKS R6 R5 K24 ["Visible"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K25 ["Change"]
  GETTABLEKS R6 R7 K26 ["AbsoluteSize"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  SETTABLE R7 R5 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["Tag"]
  GETUPVAL R8 2
  JUMPIFNOT R8 [+8]
  GETUPVAL R7 3
  LOADK R8 K27 ["X-Column X-Fit StartPage-ContextMenuBackground StartPage-RoundedCorner8 StartPage-ContextMenuPadding"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["Tag"]
  GETTABLE R9 R0 R10
  CALL R7 2 1
  JUMP [+1]
  LOADK R7 K27 ["X-Column X-Fit StartPage-ContextMenuBackground StartPage-RoundedCorner8 StartPage-ContextMenuPadding"]
  SETTABLE R7 R5 R6
  MOVE R6 R1
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Services"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["StartPageManager"]
  GETTABLEKS R4 R2 K12 ["StudioService"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K13 ["Network"]
  GETTABLEKS R6 R7 K14 ["ChangeUniverseActivity"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K13 ["Network"]
  GETTABLEKS R7 R8 K15 ["ChangeArchiveConfiguration"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K13 ["Network"]
  GETTABLEKS R8 R9 K16 ["DeleteUserFromTeamCreateUniverse"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K13 ["Network"]
  GETTABLEKS R9 R10 K17 ["GameCache"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K6 ["Packages"]
  GETTABLEKS R10 R11 K18 ["Framework"]
  CALL R9 1 1
  GETTABLEKS R11 R9 K19 ["ContextServices"]
  GETTABLEKS R10 R11 K20 ["Localization"]
  GETTABLEKS R12 R9 K21 ["Styling"]
  GETTABLEKS R11 R12 K22 ["joinTags"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K8 ["Src"]
  GETTABLEKS R14 R15 K23 ["SharedFlags"]
  GETTABLEKS R13 R14 K24 ["getFFlagLuaStartPageAtomicTestsFixes"]
  CALL R12 1 1
  GETIMPORT R13 K26 [game]
  LOADK R15 K27 ["DontLayoutInvisibleGuiObjects"]
  NAMECALL R13 R13 K28 ["GetEngineFeature"]
  CALL R13 2 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R0 K8 ["Src"]
  GETTABLEKS R15 R16 K29 ["Types"]
  CALL R14 1 1
  DUPCLOSURE R15 K30 [PROTO_8]
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R8
  DUPCLOSURE R16 K31 [PROTO_11]
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R11
  RETURN R16 1
