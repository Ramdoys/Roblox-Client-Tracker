PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETUPVAL R4 0
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R0 K1 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R3 R1 K2 ["Status"]
  GETTABLEKS R2 R3 K3 ["RootInstance"]
  GETTABLEKS R3 R1 K4 ["AnimationData"]
  GETTABLEKS R5 R1 K2 ["Status"]
  GETTABLEKS R4 R5 K5 ["Playhead"]
  GETTABLEKS R6 R1 K2 ["Status"]
  GETTABLEKS R5 R6 K6 ["VisualizeBones"]
  GETUPVAL R6 1
  NAMECALL R6 R6 K7 ["GetCanUndo"]
  CALL R6 1 1
  JUMPIFNOT R6 [+5]
  GETUPVAL R6 1
  LOADB R8 0
  NAMECALL R6 R6 K8 ["SetEnabled"]
  CALL R6 2 0
  GETUPVAL R6 2
  LOADK R8 K9 [""]
  NAMECALL R6 R6 K10 ["CopyToClipboard"]
  CALL R6 2 0
  JUMPIFEQKNIL R2 [+14]
  LOADK R8 K11 ["Workspace"]
  NAMECALL R6 R2 K12 ["FindFirstAncestorOfClass"]
  CALL R6 2 1
  JUMPIFEQKNIL R6 [+8]
  JUMPIFNOT R2 [+35]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K13 ["rigHasErrors"]
  MOVE R7 R2
  CALL R6 1 1
  JUMPIFNOT R6 [+29]
  GETUPVAL R8 4
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K14 ["None"]
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 6
  NEWTABLE R9 0 0
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 7
  NEWTABLE R9 0 0
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 8
  LOADNIL R9
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0
  JUMPIFNOT R3 [+45]
  GETUPVAL R8 6
  NEWTABLE R9 0 0
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 0
  GETIMPORT R6 K16 [pairs]
  GETTABLEKS R7 R3 K17 ["Instances"]
  CALL R6 1 3
  FORGPREP_NEXT R6
  GETIMPORT R11 K16 [pairs]
  GETTABLEKS R12 R10 K18 ["Tracks"]
  CALL R11 1 3
  FORGPREP_NEXT R11
  GETUPVAL R17 9
  GETTABLEKS R16 R17 K19 ["getRotationType"]
  MOVE R17 R15
  CALL R16 1 1
  GETUPVAL R18 9
  GETTABLEKS R17 R18 K20 ["getEulerAnglesOrder"]
  MOVE R18 R15
  CALL R17 1 1
  GETUPVAL R20 10
  MOVE R21 R9
  MOVE R22 R14
  GETTABLEKS R23 R15 K21 ["Type"]
  MOVE R24 R16
  MOVE R25 R17
  GETUPVAL R26 11
  CALL R20 6 -1
  NAMECALL R18 R0 K1 ["dispatch"]
  CALL R18 -1 0
  FORGLOOP R11 2 [-23]
  FORGLOOP R6 2 [-31]
  GETUPVAL R6 12
  CALL R6 0 1
  JUMPIFNOT R6 [+13]
  GETUPVAL R7 13
  GETTABLEKS R6 R7 K22 ["clearMicrobones"]
  CALL R6 0 0
  JUMPIFNOT R2 [+20]
  JUMPIF R3 [+19]
  GETUPVAL R7 13
  GETTABLEKS R6 R7 K23 ["updateMicrobones"]
  MOVE R7 R2
  MOVE R8 R5
  CALL R6 2 0
  JUMP [+12]
  GETUPVAL R7 14
  GETTABLEKS R6 R7 K22 ["clearMicrobones"]
  CALL R6 0 0
  JUMPIFNOT R2 [+7]
  JUMPIF R3 [+6]
  GETUPVAL R7 14
  GETTABLEKS R6 R7 K23 ["updateMicrobones"]
  MOVE R7 R2
  MOVE R8 R5
  CALL R6 2 0
  GETUPVAL R8 15
  MOVE R9 R4
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StudioService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["AnimationClipEditor"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R2 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R8 R2 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Thunks"]
  GETTABLEKS R6 R7 K15 ["Playback"]
  GETTABLEKS R5 R6 K16 ["StepAnimation"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R2 K13 ["Src"]
  GETTABLEKS R7 R8 K17 ["Actions"]
  GETTABLEKS R6 R7 K18 ["SetRootInstance"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R9 R2 K13 ["Src"]
  GETTABLEKS R8 R9 K17 ["Actions"]
  GETTABLEKS R7 R8 K19 ["SetAnimationData"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R10 R2 K13 ["Src"]
  GETTABLEKS R9 R10 K17 ["Actions"]
  GETTABLEKS R8 R9 K20 ["SetSelectedKeyframes"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R11 R2 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Thunks"]
  GETTABLEKS R9 R10 K21 ["AddTrack"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R12 R2 K13 ["Src"]
  GETTABLEKS R11 R12 K14 ["Thunks"]
  GETTABLEKS R10 R11 K22 ["SortAndSetTracks"]
  CALL R9 1 1
  GETIMPORT R10 K10 [require]
  GETTABLEKS R13 R2 K13 ["Src"]
  GETTABLEKS R12 R13 K17 ["Actions"]
  GETTABLEKS R11 R12 K23 ["SetActive"]
  CALL R10 1 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R14 R2 K13 ["Src"]
  GETTABLEKS R13 R14 K24 ["Util"]
  GETTABLEKS R12 R13 K25 ["RigUtils"]
  CALL R11 1 1
  GETIMPORT R12 K10 [require]
  GETTABLEKS R15 R2 K13 ["Src"]
  GETTABLEKS R14 R15 K24 ["Util"]
  GETTABLEKS R13 R14 K26 ["RigValidation"]
  CALL R12 1 1
  GETIMPORT R13 K10 [require]
  GETTABLEKS R16 R2 K13 ["Src"]
  GETTABLEKS R15 R16 K24 ["Util"]
  GETTABLEKS R14 R15 K27 ["RigVisualization"]
  CALL R13 1 1
  GETIMPORT R14 K10 [require]
  GETTABLEKS R17 R2 K13 ["Src"]
  GETTABLEKS R16 R17 K24 ["Util"]
  GETTABLEKS R15 R16 K28 ["TrackUtils"]
  CALL R14 1 1
  GETIMPORT R15 K10 [require]
  GETTABLEKS R17 R2 K29 ["LuaFlags"]
  GETTABLEKS R16 R17 K30 ["GetFFlagRigVisualization"]
  CALL R15 1 1
  DUPCLOSURE R16 K31 [PROTO_1]
  CAPTURE VAL R10
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R4
  RETURN R16 1
