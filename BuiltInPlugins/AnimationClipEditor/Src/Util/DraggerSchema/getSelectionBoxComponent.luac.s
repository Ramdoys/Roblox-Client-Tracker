PROTO_0:
  GETTABLEKS R3 R1 K0 ["parent"]
  GETTABLEKS R2 R3 K1 ["Name"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["FOLDERS"]
  GETTABLEKS R3 R4 K3 ["Microbones"]
  JUMP [+1]
  LOADK R3 K4 ["RBX_MICROBONE_NODES"]
  JUMPIFNOTEQ R2 R3 [+64]
  GETTABLEKS R2 R0 K5 ["VisualizeBones"]
  JUMPIFNOT R2 [+60]
  JUMPIFNOT R1 [+28]
  LOADK R4 K6 ["Cone"]
  NAMECALL R2 R1 K7 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+23]
  GETTABLEKS R3 R1 K6 ["Cone"]
  GETTABLEKS R2 R3 K8 ["Color3"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["BONE_COLOR_SELECTED"]
  JUMPIFEQ R2 R3 [+15]
  GETTABLEKS R2 R1 K6 ["Cone"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["BONE_COLOR_HOVER"]
  SETTABLEKS R3 R2 K8 ["Color3"]
  GETTABLEKS R2 R1 K6 ["Cone"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["BONE_TRANSPARENCY_HOVER"]
  SETTABLEKS R3 R2 K12 ["Transparency"]
  JUMPIFNOT R1 [+28]
  LOADK R4 K13 ["Sphere"]
  NAMECALL R2 R1 K7 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+23]
  GETTABLEKS R3 R1 K13 ["Sphere"]
  GETTABLEKS R2 R3 K8 ["Color3"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["BONE_COLOR_SELECTED"]
  JUMPIFEQ R2 R3 [+15]
  GETTABLEKS R2 R1 K13 ["Sphere"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["BONE_COLOR_HOVER"]
  SETTABLEKS R3 R2 K8 ["Color3"]
  GETTABLEKS R2 R1 K13 ["Sphere"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["BONE_TRANSPARENCY_HOVER"]
  SETTABLEKS R3 R2 K12 ["Transparency"]
  LOADNIL R2
  RETURN R2 1
  LOADK R2 K14 ["SelectionBox"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["RigUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["LuaFlags"]
  GETTABLEKS R4 R5 K11 ["GetFFlagRigVisualization"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
