PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getBodyTypeSizeSpecification"]
  GETUPVAL R1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Avatar"]
  GETTABLEKS R2 R3 K2 ["WorldModel"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ValidationResults"]
  JUMPIFNOT R0 [+13]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["computeInvalidBodyPartList"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Avatar"]
  GETTABLEKS R1 R2 K3 ["WorldModel"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ValidationResults"]
  CALL R0 2 -1
  RETURN R0 -1
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ValidationResults"]
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["getAvatarSizeBoundsFromValidationResults"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ValidationResults"]
  GETUPVAL R2 2
  CALL R0 2 1
  JUMPIFNOT R0 [+1]
  RETURN R0 1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["guessAvatarSizeBounds"]
  GETUPVAL R1 3
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  DUPTABLE R0 K2 [{"sizeBounds", "invalidBodyParts"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["sizeBounds"]
  GETUPVAL R1 1
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["invalidBodyParts"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R2 K1 [{"Avatar"}]
  GETTABLEKS R3 R0 K0 ["Avatar"]
  SETTABLEKS R3 R2 K0 ["Avatar"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R0
  NEWTABLE R4 0 3
  MOVE R5 R1
  GETTABLEKS R7 R0 K0 ["Avatar"]
  GETTABLEKS R6 R7 K3 ["WorldModel"]
  GETTABLEKS R8 R0 K0 ["Avatar"]
  GETTABLEKS R7 R8 K4 ["LatestWorldModelHash"]
  SETLIST R4 R5 3 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["useMemo"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R5 0 5
  GETTABLEKS R7 R0 K0 ["Avatar"]
  GETTABLEKS R6 R7 K3 ["WorldModel"]
  GETTABLEKS R8 R0 K0 ["Avatar"]
  GETTABLEKS R7 R8 K4 ["LatestWorldModelHash"]
  GETTABLEKS R9 R0 K0 ["Avatar"]
  GETTABLEKS R8 R9 K5 ["WorldModelScale"]
  GETTABLEKS R10 R0 K0 ["Avatar"]
  GETTABLEKS R9 R10 K6 ["ProportionalScale"]
  GETTABLEKS R10 R0 K7 ["ValidationResults"]
  SETLIST R5 R6 5 [1]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["useMemo"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R2
  NEWTABLE R6 0 3
  GETTABLEKS R7 R0 K7 ["ValidationResults"]
  MOVE R8 R1
  MOVE R9 R2
  SETLIST R6 R7 3 [1]
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["useMemo"]
  NEWCLOSURE R6 P3
  CAPTURE VAL R4
  CAPTURE VAL R3
  NEWTABLE R7 0 2
  MOVE R8 R4
  MOVE R9 R3
  SETLIST R7 R8 2 [1]
  CALL R5 2 1
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["Sizing"]
  GETTABLEKS R2 R3 K9 ["AvatarSizeSpecificationUtils"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K12 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Components"]
  GETTABLEKS R6 R7 K8 ["Sizing"]
  GETTABLEKS R5 R6 K13 ["useAvatarProportions"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K14 ["UGCValidation"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R6 1
