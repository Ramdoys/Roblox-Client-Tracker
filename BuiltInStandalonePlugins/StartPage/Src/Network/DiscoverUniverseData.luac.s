PROTO_0:
  GETTABLEKS R2 R1 K0 ["Id"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R2 K11 [{"Id", "Name", "Description", "IsArchived", "RootPlaceId", "PrivacyType", "CreatorType", "CreatorTargetId", "CreatorName", "Created", "Updated"}]
  GETTABLEKS R3 R1 K12 ["id"]
  SETTABLEKS R3 R2 K0 ["Id"]
  GETTABLEKS R3 R1 K13 ["name"]
  SETTABLEKS R3 R2 K1 ["Name"]
  GETTABLEKS R3 R1 K14 ["description"]
  SETTABLEKS R3 R2 K2 ["Description"]
  GETTABLEKS R3 R1 K15 ["isArchived"]
  SETTABLEKS R3 R2 K3 ["IsArchived"]
  GETTABLEKS R3 R1 K16 ["rootPlaceId"]
  SETTABLEKS R3 R2 K4 ["RootPlaceId"]
  GETTABLEKS R3 R1 K17 ["privacyType"]
  SETTABLEKS R3 R2 K5 ["PrivacyType"]
  GETTABLEKS R3 R1 K18 ["creatorType"]
  SETTABLEKS R3 R2 K6 ["CreatorType"]
  GETTABLEKS R3 R1 K19 ["creatorTargetId"]
  SETTABLEKS R3 R2 K7 ["CreatorTargetId"]
  GETTABLEKS R3 R1 K20 ["creatorName"]
  SETTABLEKS R3 R2 K8 ["CreatorName"]
  GETTABLEKS R3 R1 K21 ["created"]
  SETTABLEKS R3 R2 K9 ["Created"]
  GETTABLEKS R3 R1 K22 ["updated"]
  SETTABLEKS R3 R2 K10 ["Updated"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["data"]
  DUPCLOSURE R3 K1 [PROTO_1]
  CALL R1 2 1
  GETUPVAL R2 1
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["upsertItems"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["DiscoverTeamCreateStatus experienced an error: %*"]
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K0 [0] [+2]
  RETURN R0 0
  GETUPVAL R1 0
  MOVE R2 R0
  DUPCLOSURE R3 K1 [PROTO_0]
  CALL R1 2 1
  DUPTABLE R2 K3 [{"ids"}]
  SETTABLEKS R1 R2 K2 ["ids"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["UNIVERSE_DATA"]
  GETTABLEKS R4 R7 K5 ["Prefix"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K4 ["UNIVERSE_DATA"]
  GETTABLEKS R7 R8 K6 ["Url"]
  CALL R7 0 1
  MOVE R5 R7
  LOADK R6 K7 ["?"]
  CONCAT R3 R4 R6
  GETTABLEKS R4 R2 K2 ["ids"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  MOVE R9 R3
  LOADK R10 K8 ["ids="]
  MOVE R11 R8
  LOADK R12 K9 ["&"]
  CONCAT R3 R9 R12
  FORGLOOP R4 2 [-6]
  GETUPVAL R4 2
  MOVE R6 R3
  NAMECALL R4 R4 K10 ["get"]
  CALL R4 2 1
  GETUPVAL R5 2
  MOVE R7 R4
  NAMECALL R5 R5 K11 ["parseJson"]
  CALL R5 2 1
  GETUPVAL R7 3
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["validate"]
  CALL R7 1 -1
  NAMECALL R5 R5 K13 ["andThen"]
  CALL R5 -1 1
  DUPCLOSURE R7 K14 [PROTO_2]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  NAMECALL R5 R5 K13 ["andThen"]
  CALL R5 2 1
  DUPCLOSURE R7 K15 [PROTO_3]
  NAMECALL R5 R5 K16 ["catch"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFIntDebugLuaStartPageLogging"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["Models"]
  GETTABLEKS R4 R5 K11 ["ApiArrayResponseUniverseModel"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K12 ["Network"]
  GETTABLEKS R5 R6 K13 ["Urls"]
  CALL R4 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["Services"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K16 ["Networking"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K17 ["createResponseValidator"]
  CALL R6 1 1
  GETTABLEKS R7 R5 K18 ["new"]
  DUPTABLE R8 K21 [{"isInternal", "loggingLevel"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K19 ["isInternal"]
  SETTABLEKS R1 R8 K20 ["loggingLevel"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K22 ["Packages"]
  GETTABLEKS R9 R10 K23 ["Dash"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K24 ["collectArray"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K12 ["Network"]
  GETTABLEKS R11 R12 K25 ["GameCache"]
  CALL R10 1 1
  DUPCLOSURE R11 K26 [PROTO_4]
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R10
  RETURN R11 1
