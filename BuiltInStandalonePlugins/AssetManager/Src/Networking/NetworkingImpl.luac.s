PROTO_0:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["_fetchScopeId"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["_fetchScopeId"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_fetchScopeId"]
  JUMPIFNOTEQKN R0 K2 [∞] [+5]
  GETUPVAL R0 0
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["_fetchScopeId"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R3 R2 K0 ["_fetchTotalAssets"]
  ADD R3 R3 R0
  SETTABLEKS R3 R2 K0 ["_fetchTotalAssets"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["_fetchTotalAssets"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["_fetchLimit"]
  DIV R5 R6 R7
  LOADN R6 0
  LOADN R7 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K4 [math.clamp]
  CALL R4 3 1
  NAMECALL R2 R1 K5 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NEWTABLE R2 0 1
  GETUPVAL R3 1
  SETLIST R2 R3 1 [1]
  NAMECALL R0 R0 K0 ["GetUserInfosByUserIdsAsync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetUserId"]
  CALL R1 1 1
  GETIMPORT R2 K2 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIFNOT R2 [+7]
  MOVE R4 R0
  GETTABLEN R6 R3 1
  GETTABLEKS R5 R6 K3 ["Username"]
  LOADB R6 0
  CALL R4 2 0
  RETURN R0 0
  MOVE R4 R0
  LOADK R5 K4 [""]
  LOADB R6 1
  CALL R4 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETIMPORT R4 K2 [game]
  GETTABLEKS R3 R4 K3 ["PlaceId"]
  NAMECALL R1 R1 K4 ["GetProductInfo"]
  CALL R1 2 1
  GETTABLEKS R0 R1 K0 ["Name"]
  RETURN R0 1

PROTO_5:
  GETIMPORT R1 K1 [game]
  GETTABLEKS R0 R1 K2 ["GameId"]
  JUMPIFNOTEQKN R0 K3 [0] [+11]
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K5 [warn]
  LOADK R2 K6 ["Game has not yet been published, cannot fetch game name"]
  CALL R1 1 0
  LOADB R1 0
  LOADK R2 K7 [""]
  RETURN R1 2
  GETIMPORT R1 K9 [pcall]
  DUPCLOSURE R2 K10 [PROTO_4]
  CAPTURE UPVAL U1
  CALL R1 1 2
  RETURN R1 2

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["responseBody"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["CreateFetchGroupsRequest"]
  CALL R2 0 1
  NAMECALL R2 R2 K1 ["makeRequest"]
  CALL R2 1 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  MOVE R5 R1
  NAMECALL R2 R2 K2 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["assetItem"]
  GETTABLEKS R1 R2 K1 ["asset"]
  MOVE R2 R1
  JUMPIFNOT R2 [+15]
  GETTABLEKS R3 R1 K2 ["creationContext"]
  GETTABLEKS R2 R3 K3 ["creator"]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R2 R1 K4 ["createTime"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R1 K5 ["updateTime"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K6 ["assetType"]
  CALL R2 1 1
  RETURN R2 1

PROTO_9:
  NEWTABLE R1 0 0
  NEWTABLE R2 0 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R10 R7 K0 ["assetItem"]
  GETTABLEKS R9 R10 K1 ["asset"]
  MOVE R8 R9
  JUMPIFNOT R8 [+16]
  GETTABLEKS R10 R9 K2 ["creationContext"]
  GETTABLEKS R8 R10 K3 ["creator"]
  JUMPIFNOT R8 [+11]
  GETTABLEKS R8 R9 K4 ["createTime"]
  JUMPIFNOT R8 [+8]
  GETTABLEKS R8 R9 K5 ["updateTime"]
  JUMPIFNOT R8 [+5]
  GETUPVAL R10 0
  GETTABLEKS R11 R9 K6 ["assetType"]
  CALL R10 1 1
  MOVE R8 R10
  JUMPIF R8 [+17]
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+118]
  GETIMPORT R8 K8 [warn]
  LOADK R10 K9 ["Could not convert asset response for asset %*"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K10 ["pretty"]
  MOVE R13 R7
  CALL R12 1 1
  NAMECALL R10 R10 K11 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  CALL R8 1 0
  JUMP [+104]
  GETTABLEKS R9 R7 K0 ["assetItem"]
  GETTABLEKS R8 R9 K1 ["asset"]
  GETTABLEKS R12 R7 K0 ["assetItem"]
  GETTABLEKS R11 R12 K1 ["asset"]
  GETTABLEKS R10 R11 K2 ["creationContext"]
  GETTABLEKS R9 R10 K3 ["creator"]
  GETTABLEKS R11 R9 K12 ["userId"]
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R9 K12 ["userId"]
  JUMP [+2]
  GETTABLEKS R10 R9 K13 ["groupId"]
  GETTABLEKS R12 R9 K14 ["name"]
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R9 K14 ["name"]
  JUMP [+5]
  FASTCALL1 TOSTRING R10 [+3]
  MOVE R12 R10
  GETIMPORT R11 K16 [tostring]
  CALL R11 1 1
  GETTABLEKS R13 R9 K12 ["userId"]
  JUMPIFNOT R13 [+6]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K17 ["Scope"]
  GETTABLEKS R12 R13 K18 ["User"]
  JUMP [+5]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K17 ["Scope"]
  GETTABLEKS R12 R13 K19 ["Group"]
  DUPTABLE R13 K27 [{"AssetId", "AssetType", "DisplayName", "Created", "Modified", "ModerationStatus", "Creator"}]
  GETTABLEKS R14 R8 K28 ["assetId"]
  SETTABLEKS R14 R13 K20 ["AssetId"]
  GETUPVAL R14 0
  GETTABLEKS R15 R8 K6 ["assetType"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K21 ["AssetType"]
  GETTABLEKS R14 R8 K29 ["displayName"]
  SETTABLEKS R14 R13 K22 ["DisplayName"]
  GETIMPORT R14 K32 [DateTime.fromIsoDate]
  GETTABLEKS R15 R8 K4 ["createTime"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K23 ["Created"]
  GETIMPORT R14 K32 [DateTime.fromIsoDate]
  GETTABLEKS R15 R8 K5 ["updateTime"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K24 ["Modified"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K25 ["ModerationStatus"]
  GETTABLEKS R14 R15 K33 ["Placeholder"]
  SETTABLEKS R14 R13 K25 ["ModerationStatus"]
  DUPTABLE R14 K36 [{"Id", "Name", "Scope"}]
  SETTABLEKS R10 R14 K34 ["Id"]
  SETTABLEKS R11 R14 K35 ["Name"]
  SETTABLEKS R12 R14 K17 ["Scope"]
  SETTABLEKS R14 R13 K26 ["Creator"]
  FASTCALL2 TABLE_INSERT R1 R13 [+5]
  MOVE R15 R1
  MOVE R16 R13
  GETIMPORT R14 K39 [table.insert]
  CALL R14 2 0
  GETTABLEKS R15 R13 K26 ["Creator"]
  GETTABLEKS R14 R15 K35 ["Name"]
  GETTABLEKS R15 R13 K26 ["Creator"]
  SETTABLE R15 R2 R14
  FORGLOOP R3 2 [-145]
  RETURN R1 2

PROTO_10:
  GETTABLEKS R5 R0 K0 ["FetchSessionId"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["_fetchScopeId"]
  JUMPIFEQ R5 R6 [+33]
  GETTABLEKS R5 R0 K2 ["OnFetchProgressChanged"]
  GETUPVAL R6 0
  GETTABLEKS R7 R6 K3 ["_fetchTotalAssets"]
  ADDK R7 R7 K4 [0]
  SETTABLEKS R7 R6 K3 ["_fetchTotalAssets"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["_fetchTotalAssets"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["_fetchLimit"]
  DIV R9 R10 R11
  LOADN R10 0
  LOADN R11 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K8 [math.clamp]
  CALL R8 3 1
  NAMECALL R6 R5 K9 ["Fire"]
  CALL R6 2 0
  MOVE R5 R3
  NEWTABLE R6 0 0
  NEWTABLE R7 0 0
  CALL R5 2 0
  LOADB R5 0
  RETURN R5 1
  JUMPIFEQKN R1 K10 [200] [+11]
  MOVE R5 R4
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K12 [tostring]
  CALL R6 1 1
  MOVE R7 R1
  CALL R5 2 0
  LOADB R5 0
  RETURN R5 1
  JUMPIFNOTEQKN R2 K4 [0] [+38]
  GETTABLEKS R5 R0 K2 ["OnFetchProgressChanged"]
  GETUPVAL R6 0
  GETTABLEKS R7 R6 K3 ["_fetchTotalAssets"]
  ADDK R7 R7 K4 [0]
  SETTABLEKS R7 R6 K3 ["_fetchTotalAssets"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["_fetchTotalAssets"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["_fetchLimit"]
  DIV R9 R10 R11
  LOADN R10 0
  LOADN R11 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K8 [math.clamp]
  CALL R8 3 1
  NAMECALL R6 R5 K9 ["Fire"]
  CALL R6 2 0
  GETTABLEKS R5 R0 K13 ["OnFetchFinished"]
  NAMECALL R5 R5 K9 ["Fire"]
  CALL R5 1 0
  MOVE R5 R3
  NEWTABLE R6 0 0
  NEWTABLE R7 0 0
  CALL R5 2 0
  LOADB R5 0
  RETURN R5 1
  LOADB R5 1
  RETURN R5 1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_checkResponse"]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K1 ["responseCode"]
  GETTABLEKS R6 R0 K2 ["responseBody"]
  GETTABLEKS R5 R6 K3 ["items"]
  LENGTH R4 R5
  GETUPVAL R5 2
  GETUPVAL R6 3
  CALL R1 5 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 4
  GETTABLEKS R4 R0 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["items"]
  CALL R2 1 2
  LENGTH R4 R2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["OnFetchProgressChanged"]
  GETUPVAL R6 0
  GETTABLEKS R7 R6 K5 ["_fetchTotalAssets"]
  ADD R7 R7 R4
  SETTABLEKS R7 R6 K5 ["_fetchTotalAssets"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["_fetchTotalAssets"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["_fetchLimit"]
  DIV R9 R10 R11
  LOADN R10 0
  LOADN R11 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K9 [math.clamp]
  CALL R8 3 1
  NAMECALL R6 R5 K10 ["Fire"]
  CALL R6 2 0
  GETUPVAL R4 2
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 0
  GETTABLEKS R5 R0 K2 ["responseBody"]
  GETTABLEKS R4 R5 K11 ["nextPageToken"]
  JUMPIFNOT R4 [+28]
  GETTABLEKS R5 R0 K2 ["responseBody"]
  GETTABLEKS R4 R5 K11 ["nextPageToken"]
  JUMPIFEQKS R4 K12 [""] [+23]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["_fetchTotalAssets"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["_fetchLimit"]
  JUMPIFNOTLT R4 R5 [+15]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["_fetchAssetsImplAsync"]
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETUPVAL R7 3
  GETUPVAL R8 5
  GETUPVAL R9 6
  GETTABLEKS R11 R0 K2 ["responseBody"]
  GETTABLEKS R10 R11 K11 ["nextPageToken"]
  CALL R4 6 0
  RETURN R0 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["OnFetchFinished"]
  NAMECALL R4 R4 K10 ["Fire"]
  CALL R4 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnFetchFinished"]
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["pretty"]
  GETTABLEKS R4 R0 K3 ["responseBody"]
  GETTABLEKS R3 R4 K4 ["errors"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R6 K2 [{"maxPageSize", "pageToken"}]
  SETTABLEKS R4 R6 K0 ["maxPageSize"]
  SETTABLEKS R5 R6 K1 ["pageToken"]
  MOVE R7 R3
  GETTABLEKS R8 R0 K3 ["Id"]
  MOVE R9 R6
  CALL R7 2 1
  NAMECALL R7 R7 K4 ["makeRequest"]
  CALL R7 1 1
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE VAL R4
  NEWCLOSURE R10 P1
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  NAMECALL R7 R7 K5 ["andThen"]
  CALL R7 3 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["incrementFetchSessionId"]
  CALL R3 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["_fetchScopeId"]
  SETTABLEKS R3 R0 K2 ["FetchSessionId"]
  GETUPVAL R3 0
  LOADN R4 0
  SETTABLEKS R4 R3 K3 ["_fetchTotalAssets"]
  LOADNIL R3
  GETTABLEKS R4 R0 K4 ["Scope"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["Scope"]
  GETTABLEKS R5 R6 K5 ["User"]
  JUMPIFNOTEQ R4 R5 [+5]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["CreateFetchAssetsForUserRequest"]
  JUMP [+40]
  GETTABLEKS R4 R0 K4 ["Scope"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["Scope"]
  GETTABLEKS R5 R6 K7 ["Group"]
  JUMPIFNOTEQ R4 R5 [+5]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["CreateFetchAssetsForGroupRequest"]
  JUMP [+27]
  GETTABLEKS R4 R0 K4 ["Scope"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["Scope"]
  GETTABLEKS R5 R6 K9 ["Universe"]
  JUMPIFNOTEQ R4 R5 [+5]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K10 ["CreateFetchAssetsForUniverseRequest"]
  JUMP [+14]
  GETUPVAL R4 3
  CALL R4 0 1
  JUMPIFNOT R4 [+10]
  GETIMPORT R4 K12 [warn]
  LOADK R6 K13 ["ExplorerRow: Unsupported Scope type for fetchAssetsAsync %*"]
  GETTABLEKS R8 R0 K4 ["Scope"]
  NAMECALL R6 R6 K14 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["_fetchAssetsImplAsync"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  MOVE R8 R3
  LOADN R9 238
  LOADK R10 K16 [""]
  CALL R4 6 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_checkResponse"]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K1 ["responseCode"]
  GETTABLEKS R6 R0 K2 ["responseBody"]
  GETTABLEKS R5 R6 K3 ["items"]
  LENGTH R4 R5
  GETUPVAL R5 2
  GETUPVAL R6 3
  CALL R1 5 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 4
  GETTABLEKS R4 R0 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["items"]
  CALL R2 1 2
  LENGTH R4 R2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["OnFetchProgressChanged"]
  GETUPVAL R6 0
  GETTABLEKS R7 R6 K5 ["_fetchTotalAssets"]
  ADD R7 R7 R4
  SETTABLEKS R7 R6 K5 ["_fetchTotalAssets"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["_fetchTotalAssets"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["_fetchLimit"]
  DIV R9 R10 R11
  LOADN R10 0
  LOADN R11 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K9 [math.clamp]
  CALL R8 3 1
  NAMECALL R6 R5 K10 ["Fire"]
  CALL R6 2 0
  GETUPVAL R4 2
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 0
  GETTABLEKS R5 R0 K2 ["responseBody"]
  GETTABLEKS R4 R5 K11 ["nextPageToken"]
  JUMPIFNOT R4 [+27]
  GETTABLEKS R5 R0 K2 ["responseBody"]
  GETTABLEKS R4 R5 K11 ["nextPageToken"]
  JUMPIFEQKS R4 K12 [""] [+22]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["_fetchTotalAssets"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["_fetchLimit"]
  JUMPIFNOTLT R4 R5 [+14]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["_searchAssetsImplAsync"]
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETUPVAL R7 3
  GETUPVAL R8 5
  GETTABLEKS R10 R0 K2 ["responseBody"]
  GETTABLEKS R9 R10 K11 ["nextPageToken"]
  CALL R4 5 0
  RETURN R0 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["OnFetchFinished"]
  NAMECALL R4 R4 K10 ["Fire"]
  CALL R4 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnFetchFinished"]
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["pretty"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_17:
  DUPTABLE R5 K2 [{"Type", "Id"}]
  GETTABLEKS R7 R0 K3 ["ScopeInfo"]
  GETTABLEKS R6 R7 K4 ["Scope"]
  SETTABLEKS R6 R5 K0 ["Type"]
  GETTABLEKS R7 R0 K3 ["ScopeInfo"]
  GETTABLEKS R6 R7 K1 ["Id"]
  SETTABLEKS R6 R5 K1 ["Id"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["CreateSearchAssetsRequest"]
  GETTABLEKS R7 R0 K6 ["SearchTerm"]
  GETTABLEKS R8 R0 K7 ["AssetType"]
  MOVE R9 R5
  MOVE R10 R3
  MOVE R11 R4
  CALL R6 5 1
  NAMECALL R6 R6 K8 ["makeRequest"]
  CALL R6 1 1
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  NAMECALL R6 R6 K9 ["andThen"]
  CALL R6 3 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["incrementFetchSessionId"]
  CALL R3 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["_fetchScopeId"]
  SETTABLEKS R3 R0 K2 ["FetchSessionId"]
  GETUPVAL R3 0
  LOADN R4 0
  SETTABLEKS R4 R3 K3 ["_fetchTotalAssets"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["_searchAssetsImplAsync"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  LOADN R7 238
  LOADK R8 K5 [""]
  CALL R3 5 0
  RETURN R0 0

PROTO_19:
  RETURN R0 1

PROTO_20:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PatchAssetsPermissionsRequest"]
  MOVE R2 R0
  LOADK R3 K1 ["Universe"]
  GETIMPORT R5 K3 [game]
  GETTABLEKS R4 R5 K4 ["GameId"]
  LOADK R5 K5 ["Use"]
  CALL R1 4 1
  NAMECALL R1 R1 K6 ["makeRequest"]
  CALL R1 1 1
  DUPCLOSURE R3 K7 [PROTO_19]
  NAMECALL R1 R1 K8 ["catch"]
  CALL R1 2 1
  NAMECALL R1 R1 K9 ["await"]
  CALL R1 1 1
  JUMPIFNOT R1 [+28]
  GETTABLEKS R2 R1 K10 ["errors"]
  JUMPIFNOT R2 [+25]
  GETTABLEKS R3 R1 K10 ["errors"]
  LENGTH R2 R3
  JUMPIFNOT R2 [+21]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+14]
  GETIMPORT R2 K12 [warn]
  LOADK R4 K13 ["Failed to grant permissions to assets: %*\")"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K14 ["pretty"]
  GETTABLEKS R7 R1 K10 ["errors"]
  CALL R6 1 1
  NAMECALL R4 R4 K15 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  LOADB R2 0
  GETTABLEKS R3 R1 K10 ["errors"]
  RETURN R2 2
  JUMPIFNOT R1 [+24]
  GETTABLEKS R2 R1 K16 ["error"]
  JUMPIFNOT R2 [+21]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+14]
  GETIMPORT R2 K12 [warn]
  LOADK R4 K13 ["Failed to grant permissions to assets: %*\")"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K14 ["pretty"]
  GETTABLEKS R7 R1 K16 ["error"]
  CALL R6 1 1
  NAMECALL R4 R4 K15 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  LOADB R2 0
  NEWTABLE R3 0 0
  RETURN R2 2
  JUMPIFNOT R1 [+21]
  GETTABLEKS R2 R1 K17 ["responseCode"]
  JUMPIFEQKN R2 K18 [200] [+18]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+10]
  GETIMPORT R2 K12 [warn]
  LOADK R4 K19 ["Failed to grant permissions to assets: %*"]
  GETTABLEKS R6 R1 K17 ["responseCode"]
  NAMECALL R4 R4 K15 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  LOADB R2 0
  NEWTABLE R3 0 0
  RETURN R2 2
  LOADB R2 1
  NEWTABLE R3 0 0
  RETURN R2 2

PROTO_21:
  GETTABLEKS R1 R0 K0 ["Scope"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Scope"]
  GETTABLEKS R2 R3 K1 ["User"]
  JUMPIFNOTEQ R1 R2 [+9]
  LOADK R2 K2 ["rbxthumb://type=AvatarHeadShot&id=%*&w=150&h=150"]
  GETTABLEKS R4 R0 K3 ["Id"]
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["Scope"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Scope"]
  GETTABLEKS R2 R3 K5 ["Group"]
  JUMPIFNOTEQ R1 R2 [+9]
  LOADK R2 K6 ["rbxthumb://type=GroupIcon&id=%*&w=150&h=150"]
  GETTABLEKS R4 R0 K3 ["Id"]
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["Scope"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Scope"]
  GETTABLEKS R2 R3 K7 ["Universe"]
  JUMPIFNOTEQ R1 R2 [+9]
  LOADK R2 K8 ["rbxthumb://type=GameIcon&id=%*&w=150&h=150"]
  GETTABLEKS R4 R0 K3 ["Id"]
  NAMECALL R2 R2 K4 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+6]
  GETIMPORT R1 K10 [warn]
  LOADK R2 K11 ["ExplorerRow: Unsupported Scope type for image icon"]
  GETTABLEKS R3 R0 K0 ["Scope"]
  CALL R1 2 0
  LOADK R1 K12 [""]
  RETURN R1 1

PROTO_22:
  GETIMPORT R2 K3 [Enum.AssetFetchStatus.Success]
  JUMPIFNOTEQ R1 R2 [+5]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R2 K5 [warn]
  LOADK R3 K6 ["Failed to fetch thumbnail for scope"]
  GETUPVAL R4 2
  CALL R2 2 0
  GETUPVAL R2 0
  LOADK R3 K7 [""]
  CALL R2 1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getThumbnailUriForScope"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R3 1
  NEWTABLE R5 0 1
  MOVE R6 R2
  SETLIST R5 R6 1 [1]
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NAMECALL R3 R3 K1 ["PreloadAsync"]
  CALL R3 3 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  LOADK R2 K0 ["rbxthumb://type=CreatorContextAsset&id=%*&w=150&h=150"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  LOADK R2 K2 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_25:
  GETUPVAL R0 0
  NEWTABLE R2 0 1
  GETUPVAL R3 1
  SETLIST R2 R3 1 [1]
  GETUPVAL R3 2
  NAMECALL R0 R0 K0 ["PreloadAsync"]
  CALL R0 3 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getThumbnailForItem"]
  MOVE R3 R0
  CALL R2 1 1
  GETIMPORT R3 K3 [task.spawn]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE VAL R1
  CALL R3 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K11 ["Urls"]
  CALL R3 1 1
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["ContentProvider"]
  NAMECALL R4 R4 K15 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K13 [game]
  LOADK R7 K16 ["MarketplaceService"]
  NAMECALL R5 R5 K15 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K13 [game]
  LOADK R8 K17 ["StudioService"]
  NAMECALL R6 R6 K15 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K13 [game]
  LOADK R9 K18 ["UserService"]
  NAMECALL R7 R7 K15 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K19 ["Util"]
  GETTABLEKS R9 R10 K20 ["convertAssetTypeStringToEnum"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K21 ["Flags"]
  GETTABLEKS R10 R11 K22 ["getFFlagAssetManagerThumbnailPermissions"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K21 ["Flags"]
  GETTABLEKS R11 R12 K23 ["getFFlagDebugAmrOutput"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K21 ["Flags"]
  GETTABLEKS R12 R13 K24 ["getFIntAmrAssetFetchCount"]
  CALL R11 1 1
  NEWTABLE R12 32 0
  LOADN R13 0
  SETTABLEKS R13 R12 K25 ["_fetchScopeId"]
  LOADN R13 0
  SETTABLEKS R13 R12 K26 ["_fetchTotalAssets"]
  MOVE R13 R11
  CALL R13 0 1
  SETTABLEKS R13 R12 K27 ["_fetchLimit"]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K28 ["_fetchAssetsTrackers_DEPRECATED"]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K29 ["_fetchAssetsTypeTotals_DEPRECATED"]
  DUPCLOSURE R13 K30 [PROTO_0]
  CAPTURE VAL R12
  SETTABLEKS R13 R12 K31 ["incrementFetchSessionId"]
  DUPCLOSURE R13 K32 [PROTO_1]
  CAPTURE VAL R12
  DUPCLOSURE R14 K33 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R14 R12 K34 ["fetchUsername"]
  DUPCLOSURE R14 K35 [PROTO_5]
  CAPTURE VAL R10
  CAPTURE VAL R5
  SETTABLEKS R14 R12 K36 ["fetchGameName"]
  DUPCLOSURE R14 K37 [PROTO_7]
  CAPTURE VAL R3
  SETTABLEKS R14 R12 K38 ["fetchGroupsAsync"]
  DUPCLOSURE R14 K39 [PROTO_8]
  CAPTURE VAL R8
  DUPCLOSURE R15 K40 [PROTO_9]
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R1
  DUPCLOSURE R16 K41 [PROTO_10]
  CAPTURE VAL R12
  SETTABLEKS R16 R12 K42 ["_checkResponse"]
  DUPCLOSURE R16 K43 [PROTO_13]
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R2
  SETTABLEKS R16 R12 K44 ["_fetchAssetsImplAsync"]
  DUPCLOSURE R16 K45 [PROTO_14]
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R10
  SETTABLEKS R16 R12 K46 ["fetchAssetsAsync"]
  DUPCLOSURE R16 K47 [PROTO_17]
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R2
  SETTABLEKS R16 R12 K48 ["_searchAssetsImplAsync"]
  DUPCLOSURE R16 K49 [PROTO_18]
  CAPTURE VAL R12
  SETTABLEKS R16 R12 K50 ["searchAssetsAsync"]
  DUPCLOSURE R16 K51 [PROTO_20]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R2
  SETTABLEKS R16 R12 K52 ["grantUniverseUseAssetsPermissions"]
  DUPCLOSURE R16 K53 [PROTO_21]
  CAPTURE VAL R1
  CAPTURE VAL R10
  SETTABLEKS R16 R12 K54 ["getThumbnailUriForScope"]
  DUPCLOSURE R16 K55 [PROTO_23]
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R10
  SETTABLEKS R16 R12 K56 ["getThumbnailForScopeAsync"]
  DUPCLOSURE R16 K57 [PROTO_24]
  CAPTURE VAL R9
  SETTABLEKS R16 R12 K58 ["getThumbnailForItem"]
  DUPCLOSURE R16 K59 [PROTO_26]
  CAPTURE VAL R12
  CAPTURE VAL R4
  SETTABLEKS R16 R12 K60 ["getThumbnailForItemAsync"]
  RETURN R12 1
