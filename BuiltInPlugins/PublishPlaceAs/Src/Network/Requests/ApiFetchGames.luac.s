PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["limit"]
  ORK R2 R3 K1 [10]
  NEWTABLE R3 2 0
  GETTABLEKS R4 R1 K3 ["nextResultIndex"]
  JUMPIFNOT R4 [+13]
  GETTABLEKS R7 R1 K3 ["nextResultIndex"]
  DIV R6 R7 R2
  FASTCALL1 TONUMBER R6 [+2]
  GETIMPORT R5 K5 [tonumber]
  CALL R5 1 1
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K7 [tostring]
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["nextPageCursor"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K9 ["games"]
  GETIMPORT R4 K11 [pairs]
  GETTABLEKS R5 R1 K12 ["data"]
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K13 ["fromJsonData"]
  MOVE R10 R8
  CALL R9 1 2
  JUMPIFNOT R9 [+9]
  GETTABLEKS R12 R3 K9 ["games"]
  FASTCALL2 TABLE_INSERT R12 R10 [+4]
  MOVE R13 R10
  GETIMPORT R11 K16 [table.insert]
  CALL R11 2 0
  JUMP [+6]
  GETIMPORT R11 K18 [error]
  LOADK R13 K19 ["Parsing error for ApiFetchGamesByUserId: "]
  MOVE R14 R10
  CONCAT R12 R13 R14
  CALL R11 1 0
  FORGLOOP R4 2 [-22]
  RETURN R3 1

PROTO_1:
  LOADNIL R1
  GETTABLEKS R3 R0 K0 ["type"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["SUBJECT_TYPE"]
  GETTABLEKS R4 R5 K2 ["GROUP"]
  JUMPIFNOTEQ R3 R4 [+3]
  LOADK R2 K3 ["Group"]
  JUMP [+1]
  LOADK R2 K4 ["User"]
  GETTABLEKS R3 R0 K5 ["id"]
  GETTABLEKS R4 R0 K6 ["cursor"]
  GETTABLEKS R6 R0 K8 ["limit"]
  ORK R5 R6 K7 [10]
  GETTABLEKS R7 R0 K10 ["search"]
  ORK R6 R7 K9 [""]
  GETTABLEKS R8 R0 K12 ["sortOrder"]
  ORK R7 R8 K11 ["Desc"]
  GETTABLEKS R9 R0 K14 ["sort"]
  ORK R8 R9 K13 ["LastUpdated"]
  DUPTABLE R9 K18 [{"Url", "Method", "Params"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K19 ["BuildRobloxUrl"]
  LOADK R11 K20 ["apis"]
  LOADK R12 K21 ["universes/v1/search"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["Url"]
  LOADK R10 K22 ["GET"]
  SETTABLEKS R10 R9 K16 ["Method"]
  DUPTABLE R10 K29 [{"creatorType", "creatorTargetId", "isArchived", "pageIndex", "pageSize", "search", "sortOrder", "sortParam"}]
  SETTABLEKS R2 R10 K23 ["creatorType"]
  SETTABLEKS R3 R10 K24 ["creatorTargetId"]
  LOADK R11 K30 ["false"]
  SETTABLEKS R11 R10 K25 ["isArchived"]
  SETTABLEKS R4 R10 K26 ["pageIndex"]
  SETTABLEKS R5 R10 K27 ["pageSize"]
  SETTABLEKS R6 R10 K10 ["search"]
  SETTABLEKS R7 R10 K12 ["sortOrder"]
  SETTABLEKS R8 R10 K28 ["sortParam"]
  SETTABLEKS R10 R9 K17 ["Params"]
  MOVE R1 R9
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K31 ["Request"]
  MOVE R10 R1
  CALL R9 1 1
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  NAMECALL R9 R9 K32 ["andThen"]
  CALL R9 2 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R6 R1 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Network"]
  GETTABLEKS R4 R5 K11 ["Models"]
  GETTABLEKS R3 R4 K12 ["GameToPublish"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Network"]
  GETTABLEKS R4 R5 K13 ["Http"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R1 K9 ["Src"]
  GETTABLEKS R6 R7 K14 ["Resources"]
  GETTABLEKS R5 R6 K15 ["Constants"]
  CALL R4 1 1
  DUPCLOSURE R5 K16 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R5 1
