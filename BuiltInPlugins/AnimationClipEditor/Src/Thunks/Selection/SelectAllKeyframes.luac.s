PROTO_0:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+64]
  GETTABLEKS R2 R1 K0 ["Type"]
  NEWTABLE R3 0 0
  LOADNIL R4
  GETTABLEKS R5 R1 K1 ["Components"]
  JUMPIFNOT R5 [+38]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["COMPONENT_TRACK_TYPES"]
  GETTABLE R5 R6 R2
  JUMPIFNOT R5 [+33]
  NEWTABLE R4 0 0
  GETIMPORT R5 K4 [pairs]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["COMPONENT_TRACK_TYPES"]
  GETTABLEKS R10 R1 K0 ["Type"]
  GETTABLE R8 R9 R10
  GETTABLEKS R6 R8 K5 ["_Order"]
  CALL R5 1 3
  FORGPREP_NEXT R5
  NEWTABLE R10 0 0
  SETTABLE R10 R4 R9
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K6 ["Dictionary"]
  GETTABLEKS R10 R11 K7 ["join"]
  MOVE R11 R3
  GETUPVAL R12 3
  GETTABLE R13 R4 R9
  GETTABLEKS R15 R1 K1 ["Components"]
  GETTABLE R14 R15 R9
  CALL R12 2 -1
  CALL R10 -1 1
  MOVE R3 R10
  FORGLOOP R5 2 [-18]
  GETTABLEKS R5 R1 K8 ["Data"]
  JUMPIFNOT R5 [+10]
  GETIMPORT R5 K4 [pairs]
  GETTABLEKS R6 R1 K8 ["Data"]
  CALL R5 1 3
  FORGPREP_NEXT R5
  LOADB R10 1
  SETTABLE R10 R3 R8
  FORGLOOP R5 2 [-3]
  SETTABLEKS R3 R0 K9 ["Selection"]
  SETTABLEKS R4 R0 K1 ["Components"]
  RETURN R3 1
  GETTABLEKS R2 R1 K0 ["Type"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R0 K9 ["Selection"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["COMPONENT_TRACK_TYPES"]
  GETTABLE R3 R4 R2
  JUMPIFNOT R3 [+53]
  GETTABLEKS R4 R1 K1 ["Components"]
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K11 [assert]
  CALL R3 1 0
  NEWTABLE R3 0 0
  SETTABLEKS R3 R0 K1 ["Components"]
  GETTABLEKS R4 R0 K1 ["Components"]
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K11 [assert]
  CALL R3 1 0
  GETIMPORT R3 K4 [pairs]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["COMPONENT_TRACK_TYPES"]
  GETTABLEKS R8 R1 K0 ["Type"]
  GETTABLE R6 R7 R8
  GETTABLEKS R4 R6 K5 ["_Order"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R8 R0 K1 ["Components"]
  NEWTABLE R9 0 0
  SETTABLE R9 R8 R7
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["Dictionary"]
  GETTABLEKS R8 R9 K7 ["join"]
  GETTABLEKS R9 R0 K9 ["Selection"]
  GETUPVAL R10 3
  GETTABLEKS R12 R0 K1 ["Components"]
  GETTABLE R11 R12 R7
  GETTABLEKS R13 R1 K1 ["Components"]
  GETTABLE R12 R13 R7
  CALL R10 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R0 K9 ["Selection"]
  FORGLOOP R3 2 [-24]
  GETTABLEKS R4 R0 K9 ["Selection"]
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K11 [assert]
  CALL R3 1 0
  GETTABLEKS R3 R1 K8 ["Data"]
  JUMPIFNOT R3 [+12]
  GETIMPORT R3 K4 [pairs]
  GETTABLEKS R4 R1 K8 ["Data"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R8 R0 K9 ["Selection"]
  LOADB R9 1
  SETTABLE R9 R8 R6
  FORGLOOP R3 2 [-5]
  GETTABLEKS R3 R0 K9 ["Selection"]
  RETURN R3 1

PROTO_1:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["AnimationData"]
  JUMPIF R2 [+1]
  RETURN R0 0
  NEWTABLE R3 0 0
  GETIMPORT R4 K3 [pairs]
  GETTABLEKS R5 R2 K4 ["Instances"]
  CALL R4 1 3
  FORGPREP_NEXT R4
  NEWTABLE R9 0 0
  SETTABLE R9 R3 R7
  GETIMPORT R9 K3 [pairs]
  GETTABLEKS R10 R8 K5 ["Tracks"]
  CALL R9 1 3
  FORGPREP_NEXT R9
  GETTABLE R14 R3 R7
  NEWTABLE R15 0 0
  SETTABLE R15 R14 R12
  DUPCLOSURE R14 K6 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R14
  GETTABLE R16 R3 R7
  GETTABLE R15 R16 R12
  MOVE R16 R14
  MOVE R17 R15
  MOVE R18 R13
  CALL R16 2 0
  FORGLOOP R9 2 [-16]
  FORGLOOP R4 2 [-27]
  GETUPVAL R6 3
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R0 K7 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_2:
  DUPCLOSURE R0 K0 [PROTO_1]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["SelectionUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K14 [game]
  LOADK R7 K15 ["ACEFixSelectAll"]
  LOADB R8 0
  NAMECALL R5 R5 K16 ["DefineFastFlag"]
  CALL R5 3 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K17 ["Actions"]
  GETTABLEKS R7 R8 K18 ["SetSelectedKeyframes"]
  CALL R6 1 1
  DUPCLOSURE R7 K19 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R6
  RETURN R7 1
