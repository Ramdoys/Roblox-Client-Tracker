PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadDirectionalCurveEditorInAssetDM"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AudioEmitterDistanceAttenuationMaxPoints"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DirectionalAttenuationMaxPoints"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LoadDirectionalCurveEditorInAssetDM"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["AudioEmitterDistanceAttenuationMaxPoints"]
  LOADN R3 144
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["DirectionalAttenuationMaxPoints"]
  LOADN R3 144
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  DUPTABLE R0 K10 [{"getFFlagLoadDirectionalCurveEditorInAssetDM", "getFIntDistanceAttenuationMaxPoints", "getFIntDirectionalAttenuationMaxPoints"}]
  DUPCLOSURE R1 K11 [PROTO_0]
  SETTABLEKS R1 R0 K7 ["getFFlagLoadDirectionalCurveEditorInAssetDM"]
  DUPCLOSURE R1 K12 [PROTO_1]
  SETTABLEKS R1 R0 K8 ["getFIntDistanceAttenuationMaxPoints"]
  DUPCLOSURE R1 K13 [PROTO_2]
  SETTABLEKS R1 R0 K9 ["getFIntDirectionalAttenuationMaxPoints"]
  RETURN R0 1
