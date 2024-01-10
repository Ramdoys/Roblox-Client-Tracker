MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["LayoutOrderIterator"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K10 ["ModernIcons"]
  CALL R4 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K7 ["Util"]
  GETTABLEKS R7 R8 K11 ["AssetManagerUtilities"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K12 ["shouldEnableAudioImport"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K7 ["Util"]
  GETTABLEKS R8 R9 K11 ["AssetManagerUtilities"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K13 ["shouldEnableVideoImport"]
  GETTABLEKS R8 R4 K14 ["IconEnums"]
  GETTABLEKS R7 R8 K15 ["Places"]
  GETTABLEKS R9 R4 K14 ["IconEnums"]
  GETTABLEKS R8 R9 K16 ["Images"]
  GETTABLEKS R10 R4 K14 ["IconEnums"]
  GETTABLEKS R9 R10 K17 ["Meshes"]
  GETTABLEKS R11 R4 K14 ["IconEnums"]
  GETTABLEKS R10 R11 K5 ["Packages"]
  GETTABLEKS R12 R4 K14 ["IconEnums"]
  GETTABLEKS R11 R12 K18 ["Scripts"]
  GETTABLEKS R13 R4 K14 ["IconEnums"]
  GETTABLEKS R12 R13 K19 ["Audio"]
  GETTABLEKS R14 R4 K14 ["IconEnums"]
  GETTABLEKS R13 R14 K20 ["Video"]
  GETTABLEKS R15 R4 K14 ["IconEnums"]
  GETTABLEKS R14 R15 K21 ["Models"]
  DUPTABLE R15 K28 [{"MAIN", "PLACES", "MESHES", "IMAGES", "PACKAGES", "SCRIPTS"}]
  DUPTABLE R16 K30 [{"Path"}]
  LOADK R17 K22 ["MAIN"]
  SETTABLEKS R17 R16 K29 ["Path"]
  SETTABLEKS R16 R15 K22 ["MAIN"]
  DUPTABLE R16 K30 [{"Path"}]
  LOADK R17 K23 ["PLACES"]
  SETTABLEKS R17 R16 K29 ["Path"]
  SETTABLEKS R16 R15 K23 ["PLACES"]
  DUPTABLE R16 K30 [{"Path"}]
  LOADK R17 K24 ["MESHES"]
  SETTABLEKS R17 R16 K29 ["Path"]
  SETTABLEKS R16 R15 K24 ["MESHES"]
  DUPTABLE R16 K30 [{"Path"}]
  LOADK R17 K25 ["IMAGES"]
  SETTABLEKS R17 R16 K29 ["Path"]
  SETTABLEKS R16 R15 K25 ["IMAGES"]
  DUPTABLE R16 K30 [{"Path"}]
  LOADK R17 K26 ["PACKAGES"]
  SETTABLEKS R17 R16 K29 ["Path"]
  SETTABLEKS R16 R15 K26 ["PACKAGES"]
  DUPTABLE R16 K30 [{"Path"}]
  LOADK R17 K27 ["SCRIPTS"]
  SETTABLEKS R17 R16 K29 ["Path"]
  SETTABLEKS R16 R15 K27 ["SCRIPTS"]
  MOVE R16 R5
  CALL R16 0 1
  JUMPIFNOT R16 [+29]
  DUPTABLE R16 K30 [{"Path"}]
  LOADK R17 K31 ["AUDIO"]
  SETTABLEKS R17 R16 K29 ["Path"]
  SETTABLEKS R16 R15 K31 ["AUDIO"]
  GETTABLEKS R16 R15 K31 ["AUDIO"]
  GETTABLEKS R18 R15 K22 ["MAIN"]
  GETTABLEKS R17 R18 K29 ["Path"]
  SETTABLEKS R17 R16 K2 ["Parent"]
  GETTABLEKS R16 R15 K31 ["AUDIO"]
  GETIMPORT R17 K34 [Enum.AssetType.Audio]
  SETTABLEKS R17 R16 K33 ["AssetType"]
  GETTABLEKS R16 R15 K31 ["AUDIO"]
  LOADN R17 6
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  GETTABLEKS R16 R15 K31 ["AUDIO"]
  SETTABLEKS R12 R16 K36 ["Image"]
  MOVE R16 R6
  CALL R16 0 1
  JUMPIFNOT R16 [+29]
  DUPTABLE R16 K30 [{"Path"}]
  LOADK R17 K37 ["VIDEO"]
  SETTABLEKS R17 R16 K29 ["Path"]
  SETTABLEKS R16 R15 K37 ["VIDEO"]
  GETTABLEKS R16 R15 K37 ["VIDEO"]
  GETTABLEKS R18 R15 K22 ["MAIN"]
  GETTABLEKS R17 R18 K29 ["Path"]
  SETTABLEKS R17 R16 K2 ["Parent"]
  GETTABLEKS R16 R15 K37 ["VIDEO"]
  GETIMPORT R17 K38 [Enum.AssetType.Video]
  SETTABLEKS R17 R16 K33 ["AssetType"]
  GETTABLEKS R16 R15 K37 ["VIDEO"]
  LOADN R17 7
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  GETTABLEKS R16 R15 K37 ["VIDEO"]
  SETTABLEKS R13 R16 K36 ["Image"]
  DUPTABLE R16 K30 [{"Path"}]
  LOADK R17 K39 ["MODELS"]
  SETTABLEKS R17 R16 K29 ["Path"]
  SETTABLEKS R16 R15 K39 ["MODELS"]
  GETTABLEKS R16 R15 K39 ["MODELS"]
  GETTABLEKS R18 R15 K22 ["MAIN"]
  GETTABLEKS R17 R18 K29 ["Path"]
  SETTABLEKS R17 R16 K2 ["Parent"]
  GETTABLEKS R16 R15 K39 ["MODELS"]
  GETIMPORT R17 K41 [Enum.AssetType.Model]
  SETTABLEKS R17 R16 K33 ["AssetType"]
  GETTABLEKS R16 R15 K39 ["MODELS"]
  MOVE R18 R6
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  LOADN R17 8
  JUMP [+1]
  LOADN R17 7
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  GETTABLEKS R16 R15 K39 ["MODELS"]
  SETTABLEKS R14 R16 K36 ["Image"]
  GETTABLEKS R16 R15 K24 ["MESHES"]
  GETTABLEKS R18 R15 K22 ["MAIN"]
  GETTABLEKS R17 R18 K29 ["Path"]
  SETTABLEKS R17 R16 K2 ["Parent"]
  GETTABLEKS R16 R15 K25 ["IMAGES"]
  GETTABLEKS R18 R15 K22 ["MAIN"]
  GETTABLEKS R17 R18 K29 ["Path"]
  SETTABLEKS R17 R16 K2 ["Parent"]
  GETTABLEKS R16 R15 K26 ["PACKAGES"]
  GETTABLEKS R18 R15 K22 ["MAIN"]
  GETTABLEKS R17 R18 K29 ["Path"]
  SETTABLEKS R17 R16 K2 ["Parent"]
  GETTABLEKS R16 R15 K23 ["PLACES"]
  GETTABLEKS R18 R15 K22 ["MAIN"]
  GETTABLEKS R17 R18 K29 ["Path"]
  SETTABLEKS R17 R16 K2 ["Parent"]
  GETTABLEKS R16 R15 K27 ["SCRIPTS"]
  GETTABLEKS R18 R15 K22 ["MAIN"]
  GETTABLEKS R17 R18 K29 ["Path"]
  SETTABLEKS R17 R16 K2 ["Parent"]
  GETTABLEKS R16 R15 K24 ["MESHES"]
  GETIMPORT R17 K43 [Enum.AssetType.MeshPart]
  SETTABLEKS R17 R16 K33 ["AssetType"]
  GETTABLEKS R16 R15 K25 ["IMAGES"]
  GETIMPORT R17 K44 [Enum.AssetType.Image]
  SETTABLEKS R17 R16 K33 ["AssetType"]
  GETTABLEKS R16 R15 K26 ["PACKAGES"]
  GETIMPORT R17 K46 [Enum.AssetType.Package]
  SETTABLEKS R17 R16 K33 ["AssetType"]
  GETTABLEKS R16 R15 K23 ["PLACES"]
  GETIMPORT R17 K48 [Enum.AssetType.Place]
  SETTABLEKS R17 R16 K33 ["AssetType"]
  GETTABLEKS R16 R15 K27 ["SCRIPTS"]
  GETIMPORT R17 K50 [Enum.AssetType.Lua]
  SETTABLEKS R17 R16 K33 ["AssetType"]
  GETTABLEKS R16 R15 K23 ["PLACES"]
  LOADN R17 1
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  GETTABLEKS R16 R15 K25 ["IMAGES"]
  LOADN R17 2
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  GETTABLEKS R16 R15 K24 ["MESHES"]
  LOADN R17 3
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  GETTABLEKS R16 R15 K26 ["PACKAGES"]
  LOADN R17 4
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  GETTABLEKS R16 R15 K27 ["SCRIPTS"]
  LOADN R17 5
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  GETTABLEKS R16 R15 K23 ["PLACES"]
  SETTABLEKS R7 R16 K36 ["Image"]
  GETTABLEKS R16 R15 K25 ["IMAGES"]
  SETTABLEKS R8 R16 K36 ["Image"]
  GETTABLEKS R16 R15 K24 ["MESHES"]
  SETTABLEKS R9 R16 K36 ["Image"]
  GETTABLEKS R16 R15 K26 ["PACKAGES"]
  SETTABLEKS R10 R16 K36 ["Image"]
  GETTABLEKS R16 R15 K27 ["SCRIPTS"]
  SETTABLEKS R11 R16 K36 ["Image"]
  RETURN R15 1
