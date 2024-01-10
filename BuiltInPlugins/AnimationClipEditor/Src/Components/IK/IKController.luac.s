PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showMenu"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showMenu"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showMenu"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showMenu"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"showTree"}]
  SETTABLEKS R0 R3 K0 ["showTree"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R4 R2 K0 ["Name"]
  GETTABLE R3 R1 R4
  JUMPIFNOT R3 [+12]
  GETTABLEKS R4 R2 K0 ["Name"]
  LOADB R5 1
  SETTABLE R5 R0 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["makeChainHelper"]
  MOVE R5 R0
  MOVE R6 R1
  GETTABLEKS R7 R3 K2 ["Part0"]
  CALL R4 3 0
  RETURN R0 0

PROTO_4:
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R4 R2 K0 ["Name"]
  GETTABLE R3 R1 R4
  JUMPIFNOT R3 [+14]
  GETTABLEKS R4 R2 K0 ["Name"]
  LOADB R5 1
  SETTABLE R5 R0 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["makeChainHelperAnimationConstraint"]
  MOVE R5 R0
  MOVE R6 R1
  GETTABLEKS R8 R3 K2 ["Attachment0"]
  GETTABLEKS R7 R8 K3 ["Parent"]
  CALL R4 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["SelectedTracks"]
  JUMPIFNOT R0 [+13]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["SelectedTracks"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["SelectedTracks"]
  LENGTH R2 R3
  GETTABLE R0 R1 R2
  RETURN R0 1
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["ToggleIKEnabled"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Analytics"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getLastSelectedTrack"]
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  GETTABLEN R1 R0 1
  JUMPIF R1 [+1]
  LOADNIL R1
  LOADNIL R2
  LOADNIL R3
  LOADNIL R4
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+16]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["getRigInfo"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["props"]
  GETTABLEKS R6 R7 K3 ["RootInstance"]
  CALL R5 1 1
  GETTABLEKS R2 R5 K4 ["Parts"]
  GETTABLEKS R3 R5 K5 ["PartNameToMotor"]
  GETTABLEKS R4 R5 K6 ["PartNameToAnimConstraint"]
  JUMP [+15]
  LOADNIL R5
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K1 ["getRigInfo"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["props"]
  GETTABLEKS R7 R11 K3 ["RootInstance"]
  CALL R6 1 5
  MOVE R2 R6
  MOVE R3 R7
  MOVE R5 R8
  MOVE R5 R9
  MOVE R4 R10
  NEWTABLE R5 0 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["props"]
  GETTABLEKS R6 R7 K7 ["PinnedParts"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["props"]
  GETTABLEKS R7 R8 K8 ["IKMode"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K9 ["IK_MODE"]
  GETTABLEKS R8 R9 K10 ["BodyPart"]
  JUMPIFNOTEQ R7 R8 [+3]
  NEWTABLE R6 0 0
  GETIMPORT R7 K12 [ipairs]
  MOVE R8 R2
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETTABLE R12 R6 R11
  JUMPIF R12 [+4]
  GETTABLEKS R12 R11 K13 ["Name"]
  LOADB R13 0
  SETTABLE R13 R5 R12
  FORGLOOP R7 2 [inext] [-7]
  JUMPIFNOT R1 [+90]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["getPartByName"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["props"]
  GETTABLEKS R8 R9 K3 ["RootInstance"]
  MOVE R9 R1
  CALL R7 2 1
  JUMPIFNOT R7 [+79]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["props"]
  GETTABLEKS R8 R9 K8 ["IKMode"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K9 ["IK_MODE"]
  GETTABLEKS R9 R10 K10 ["BodyPart"]
  JUMPIFNOTEQ R8 R9 [+9]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K15 ["pinForLimbMode"]
  MOVE R9 R7
  MOVE R10 R3
  MOVE R11 R4
  CALL R8 3 1
  MOVE R6 R8
  GETUPVAL R8 5
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  GETTABLE R8 R3 R1
  JUMPIFNOT R8 [+9]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["makeChainHelper"]
  MOVE R9 R5
  MOVE R10 R3
  GETTABLE R12 R3 R1
  GETTABLEKS R11 R12 K17 ["Part1"]
  CALL R8 3 0
  GETUPVAL R8 5
  CALL R8 0 1
  JUMPIFNOT R8 [+13]
  GETTABLE R8 R4 R1
  JUMPIFNOT R8 [+11]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K18 ["makeChainHelperAnimationConstraint"]
  MOVE R9 R5
  MOVE R10 R4
  GETTABLE R13 R4 R1
  GETTABLEKS R12 R13 K19 ["Attachment1"]
  GETTABLEKS R11 R12 K20 ["Parent"]
  CALL R8 3 0
  GETIMPORT R8 K22 [pairs]
  MOVE R9 R6
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETTABLEKS R13 R11 K13 ["Name"]
  JUMPIFEQ R13 R1 [+19]
  JUMPIFNOT R12 [+17]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K16 ["makeChainHelper"]
  MOVE R14 R5
  MOVE R15 R3
  MOVE R16 R11
  CALL R13 3 0
  GETUPVAL R13 5
  CALL R13 0 1
  JUMPIFNOT R13 [+7]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K18 ["makeChainHelperAnimationConstraint"]
  MOVE R14 R5
  MOVE R15 R4
  MOVE R16 R11
  CALL R13 3 0
  FORGLOOP R8 2 [-23]
  RETURN R5 1

PROTO_8:
  DUPTABLE R1 K2 [{"showMenu", "showTree"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["showMenu"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["showTree"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["showMenu"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["hideMenu"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["setShowTree"]
  NEWCLOSURE R1 P3
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["makeChainHelper"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["makeChainHelperAnimationConstraint"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["getLastSelectedTrack"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["toggleIKEnabledHandler"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K10 ["makeChains"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setShowTree"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["ShowTree"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["ShowTree"]
  GETTABLEKS R4 R2 K3 ["showTree"]
  JUMPIFEQ R3 R4 [+17]
  GETTABLEKS R3 R1 K2 ["ShowTree"]
  JUMPIFEQKNIL R3 [+8]
  GETIMPORT R3 K5 [spawn]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R3 R0 K6 ["setShowTree"]
  GETTABLEKS R4 R1 K2 ["ShowTree"]
  CALL R3 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K2 ["Stylizer"]
  GETTABLEKS R4 R0 K3 ["getLastSelectedTrack"]
  CALL R4 0 1
  GETTABLEKS R5 R0 K4 ["state"]
  GETTABLEKS R6 R2 K5 ["ToggleShowTree"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["canUseIK"]
  GETTABLEKS R8 R2 K7 ["RootInstance"]
  CALL R7 1 2
  GETTABLEKS R10 R5 K8 ["showTree"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K9 ["ACEHeaderButtonActive"]
  JUMP [+1]
  LOADK R9 K10 ["ACEHeaderButtonDefault"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K7 ["RootInstance"]
  JUMPIFNOT R10 [+188]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K11 ["createElement"]
  LOADK R11 K12 ["Frame"]
  DUPTABLE R12 K17 [{"Position", "Size", "BackgroundTransparency", "AnchorPoint"}]
  GETTABLEKS R13 R2 K13 ["Position"]
  SETTABLEKS R13 R12 K13 ["Position"]
  GETIMPORT R13 K20 [UDim2.new]
  LOADN R14 0
  LOADN R15 40
  LOADN R16 0
  LOADN R17 18
  CALL R13 4 1
  SETTABLEKS R13 R12 K14 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K15 ["BackgroundTransparency"]
  GETIMPORT R13 K22 [Vector2.new]
  LOADN R14 0
  LOADK R15 K23 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K16 ["AnchorPoint"]
  DUPTABLE R13 K27 [{"IKButton", "IKWindow", "R15IKRig"}]
  GETTABLEKS R14 R2 K7 ["RootInstance"]
  JUMPIFNOT R14 [+69]
  MOVE R14 R7
  JUMPIFNOT R14 [+67]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K11 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K30 [{"Style", "Size", "OnClick"}]
  SETTABLEKS R9 R16 K28 ["Style"]
  GETIMPORT R17 K20 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K14 ["Size"]
  SETTABLEKS R6 R16 K29 ["OnClick"]
  DUPTABLE R17 K32 [{"Label"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K11 ["createElement"]
  LOADK R19 K33 ["TextLabel"]
  DUPTABLE R20 K39 [{"BackgroundTransparency", "Size", "TextYAlignment", "TextSize", "Text", "Font", "TextColor3"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K15 ["BackgroundTransparency"]
  GETIMPORT R21 K20 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K14 ["Size"]
  GETIMPORT R21 K42 [Enum.TextYAlignment.Center]
  SETTABLEKS R21 R20 K34 ["TextYAlignment"]
  GETTABLEKS R22 R3 K43 ["ikTheme"]
  GETTABLEKS R21 R22 K44 ["textSize"]
  SETTABLEKS R21 R20 K35 ["TextSize"]
  LOADK R23 K45 ["Title"]
  LOADK R24 K46 ["IK"]
  NAMECALL R21 R1 K47 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K36 ["Text"]
  GETTABLEKS R21 R3 K48 ["font"]
  SETTABLEKS R21 R20 K37 ["Font"]
  GETTABLEKS R22 R3 K43 ["ikTheme"]
  GETTABLEKS R21 R22 K49 ["textColor"]
  SETTABLEKS R21 R20 K38 ["TextColor3"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K31 ["Label"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K24 ["IKButton"]
  GETTABLEKS R14 R2 K50 ["ShowTree"]
  JUMPIFNOT R14 [+62]
  GETTABLEKS R14 R5 K8 ["showTree"]
  JUMPIFNOT R14 [+59]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K11 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K63 [{"RootInstance", "PinnedParts", "IKEnabled", "ShowTree", "SelectedTrack", "SetSelectedTracks", "ToggleIKEnabled", "TogglePinnedPart", "SetShowTree", "SetIKEnabled", "SetIKMode", "Chain", "IKMode", "IsR15"}]
  GETTABLEKS R17 R2 K7 ["RootInstance"]
  SETTABLEKS R17 R16 K7 ["RootInstance"]
  GETTABLEKS R17 R2 K51 ["PinnedParts"]
  SETTABLEKS R17 R16 K51 ["PinnedParts"]
  GETTABLEKS R17 R2 K52 ["IKEnabled"]
  SETTABLEKS R17 R16 K52 ["IKEnabled"]
  GETTABLEKS R17 R2 K50 ["ShowTree"]
  SETTABLEKS R17 R16 K50 ["ShowTree"]
  SETTABLEKS R4 R16 K53 ["SelectedTrack"]
  GETTABLEKS R17 R2 K54 ["SetSelectedTracks"]
  SETTABLEKS R17 R16 K54 ["SetSelectedTracks"]
  GETTABLEKS R17 R0 K64 ["toggleIKEnabledHandler"]
  SETTABLEKS R17 R16 K55 ["ToggleIKEnabled"]
  GETTABLEKS R17 R2 K56 ["TogglePinnedPart"]
  SETTABLEKS R17 R16 K56 ["TogglePinnedPart"]
  GETTABLEKS R17 R2 K57 ["SetShowTree"]
  SETTABLEKS R17 R16 K57 ["SetShowTree"]
  GETTABLEKS R17 R2 K58 ["SetIKEnabled"]
  SETTABLEKS R17 R16 K58 ["SetIKEnabled"]
  GETTABLEKS R17 R2 K59 ["SetIKMode"]
  SETTABLEKS R17 R16 K59 ["SetIKMode"]
  GETTABLEKS R17 R0 K65 ["makeChains"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K60 ["Chain"]
  GETTABLEKS R17 R2 K61 ["IKMode"]
  SETTABLEKS R17 R16 K61 ["IKMode"]
  SETTABLEKS R8 R16 K62 ["IsR15"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["IKWindow"]
  GETTABLEKS R14 R2 K52 ["IKEnabled"]
  JUMPIFNOT R14 [+12]
  MOVE R14 R8
  JUMPIFNOT R14 [+10]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K11 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K66 [{"RootInstance"}]
  GETTABLEKS R17 R2 K7 ["RootInstance"]
  SETTABLEKS R17 R16 K7 ["RootInstance"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K26 ["R15IKRig"]
  CALL R10 3 1
  RETURN R10 1

PROTO_12:
  DUPTABLE R2 K6 [{"ShowTree", "IKMode", "IKEnabled", "RootInstance", "PinnedParts", "SelectedTracks"}]
  GETTABLEKS R4 R0 K7 ["Status"]
  GETTABLEKS R3 R4 K0 ["ShowTree"]
  SETTABLEKS R3 R2 K0 ["ShowTree"]
  GETTABLEKS R4 R0 K7 ["Status"]
  GETTABLEKS R3 R4 K1 ["IKMode"]
  SETTABLEKS R3 R2 K1 ["IKMode"]
  GETTABLEKS R4 R0 K7 ["Status"]
  GETTABLEKS R3 R4 K2 ["IKEnabled"]
  SETTABLEKS R3 R2 K2 ["IKEnabled"]
  GETTABLEKS R4 R0 K7 ["Status"]
  GETTABLEKS R3 R4 K3 ["RootInstance"]
  SETTABLEKS R3 R2 K3 ["RootInstance"]
  GETTABLEKS R4 R0 K7 ["Status"]
  GETTABLEKS R3 R4 K4 ["PinnedParts"]
  SETTABLEKS R3 R2 K4 ["PinnedParts"]
  GETTABLEKS R4 R0 K7 ["Status"]
  GETTABLEKS R3 R4 K5 ["SelectedTracks"]
  SETTABLEKS R3 R2 K5 ["SelectedTracks"]
  RETURN R2 1

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  DUPTABLE R1 K7 [{"ToggleShowTree", "SetIKMode", "SetIKEnabled", "ToggleIKEnabled", "TogglePinnedPart", "SetShowTree", "SetSelectedTracks"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ToggleShowTree"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetIKMode"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetIKEnabled"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["ToggleIKEnabled"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["TogglePinnedPart"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K5 ["SetShowTree"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K6 ["SetSelectedTracks"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R4 R5 K11 ["Button"]
  GETTABLEKS R5 R3 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["withContext"]
  GETTABLEKS R7 R5 K14 ["Localization"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K16 ["Util"]
  GETTABLEKS R9 R10 K17 ["RigUtils"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Util"]
  GETTABLEKS R10 R11 K18 ["RigInfo"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Util"]
  GETTABLEKS R11 R12 K19 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K15 ["Src"]
  GETTABLEKS R14 R15 K20 ["Components"]
  GETTABLEKS R13 R14 K21 ["IK"]
  GETTABLEKS R12 R13 K22 ["IKWindow"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K20 ["Components"]
  GETTABLEKS R14 R15 K21 ["IK"]
  GETTABLEKS R13 R14 K23 ["R15IKRig"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K24 ["Thunks"]
  GETTABLEKS R14 R15 K25 ["ToggleIKEnabled"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K15 ["Src"]
  GETTABLEKS R16 R17 K24 ["Thunks"]
  GETTABLEKS R15 R16 K26 ["ToggleShowTree"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K15 ["Src"]
  GETTABLEKS R17 R18 K24 ["Thunks"]
  GETTABLEKS R16 R17 K27 ["TogglePinnedPart"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K15 ["Src"]
  GETTABLEKS R18 R19 K28 ["Actions"]
  GETTABLEKS R17 R18 K29 ["SetIKEnabled"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K15 ["Src"]
  GETTABLEKS R19 R20 K28 ["Actions"]
  GETTABLEKS R18 R19 K30 ["SetIKMode"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K15 ["Src"]
  GETTABLEKS R20 R21 K28 ["Actions"]
  GETTABLEKS R19 R20 K31 ["SetShowTree"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K15 ["Src"]
  GETTABLEKS R21 R22 K28 ["Actions"]
  GETTABLEKS R20 R21 K32 ["SetSelectedTracks"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R0 K33 ["LuaFlags"]
  GETTABLEKS R21 R22 K34 ["GetFFlagAnimationConstraints"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R23 R0 K33 ["LuaFlags"]
  GETTABLEKS R22 R23 K35 ["GetFFlagGetRigInfo"]
  CALL R21 1 1
  GETTABLEKS R22 R1 K36 ["PureComponent"]
  LOADK R24 K37 ["IKController"]
  NAMECALL R22 R22 K38 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K39 [PROTO_8]
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R8
  SETTABLEKS R23 R22 K40 ["init"]
  DUPCLOSURE R23 K41 [PROTO_10]
  SETTABLEKS R23 R22 K42 ["didUpdate"]
  DUPCLOSURE R23 K43 [PROTO_11]
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R23 R22 K44 ["render"]
  MOVE R23 R6
  DUPTABLE R24 K47 [{"Stylizer", "Localization", "Analytics"}]
  GETTABLEKS R25 R5 K45 ["Stylizer"]
  SETTABLEKS R25 R24 K45 ["Stylizer"]
  GETTABLEKS R25 R5 K14 ["Localization"]
  SETTABLEKS R25 R24 K14 ["Localization"]
  GETTABLEKS R25 R5 K46 ["Analytics"]
  SETTABLEKS R25 R24 K46 ["Analytics"]
  CALL R23 1 1
  MOVE R24 R22
  CALL R23 1 1
  MOVE R22 R23
  DUPCLOSURE R23 K48 [PROTO_12]
  DUPCLOSURE R24 K49 [PROTO_20]
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R18
  CAPTURE VAL R19
  GETTABLEKS R25 R2 K50 ["connect"]
  MOVE R26 R23
  MOVE R27 R24
  CALL R25 2 1
  MOVE R26 R22
  CALL R25 1 -1
  RETURN R25 -1
