MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  DUPTABLE R1 K5 [{"AdapterTag", "CharacterTag", "AnimationTag", "ScriptTag", "AvatarTag"}]
  LOADK R2 K6 ["R15MigratorHasAdapter"]
  SETTABLEKS R2 R1 K0 ["AdapterTag"]
  LOADK R2 K7 ["R15MigratorUnconvertedCharacter"]
  SETTABLEKS R2 R1 K1 ["CharacterTag"]
  LOADK R2 K8 ["R15MigratorUnconvertedAnimation"]
  SETTABLEKS R2 R1 K2 ["AnimationTag"]
  LOADK R2 K9 ["R15MigratorUnconvertedScript"]
  SETTABLEKS R2 R1 K3 ["ScriptTag"]
  LOADK R2 K10 ["R15MigratorAvatarType"]
  SETTABLEKS R2 R1 K4 ["AvatarTag"]
  SETTABLEKS R1 R0 K11 ["PublishTags"]
  DUPTABLE R2 K13 [{"CharactersConvertedToR15Tag"}]
  LOADK R3 K14 ["R15MigratorCharactersConvertedToR15"]
  SETTABLEKS R3 R2 K12 ["CharactersConvertedToR15Tag"]
  SETTABLEKS R2 R0 K15 ["NonePublishTags"]
  DUPTABLE R3 K18 [{"TempId", "OriginalId"}]
  LOADK R4 K19 ["R15MigratorTempId"]
  SETTABLEKS R4 R3 K16 ["TempId"]
  LOADK R4 K17 ["OriginalId"]
  SETTABLEKS R4 R3 K17 ["OriginalId"]
  SETTABLEKS R3 R0 K20 ["Attributes"]
  DUPTABLE R4 K23 [{"TEXT_COLUMN_INDEX", "STATUS_COLUMN_INDEX"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K21 ["TEXT_COLUMN_INDEX"]
  LOADN R5 2
  SETTABLEKS R5 R4 K22 ["STATUS_COLUMN_INDEX"]
  SETTABLEKS R4 R0 K24 ["StatusTableData"]
  RETURN R0 1
