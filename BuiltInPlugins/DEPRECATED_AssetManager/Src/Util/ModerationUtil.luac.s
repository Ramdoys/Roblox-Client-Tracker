PROTO_0:
  GETTABLEKS R1 R0 K0 ["isModerated"]
  JUMPIFNOT R1 [+2]
  LOADB R1 0
  RETURN R1 1
  LOADB R1 1
  GETTABLEKS R2 R0 K1 ["reviewStatus"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Finished"]
  JUMPIFEQ R2 R3 [+10]
  GETTABLEKS R2 R0 K1 ["reviewStatus"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["DoesNotRequire"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["reviewStatus"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Pending"]
  JUMPIFNOTEQ R2 R3 [+7]
  LOADK R4 K2 ["AssetItem"]
  LOADK R5 K3 ["PendingModerationTooltip"]
  NAMECALL R2 R0 K4 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  GETTABLEKS R2 R1 K5 ["isModerated"]
  JUMPIFNOT R2 [+6]
  LOADK R4 K2 ["AssetItem"]
  LOADK R5 K6 ["FailedModerationTooltip"]
  NAMECALL R2 R0 K4 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["ReviewStatus"]
  CALL R1 1 1
  NEWTABLE R2 2 0
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K9 ["isApprovedAsset"]
  DUPCLOSURE R3 K10 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K11 ["getModerationTooltip"]
  RETURN R2 1
