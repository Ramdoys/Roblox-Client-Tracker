PROTO_0:
  LOADK R0 K0 ["universes/v1/search"]
  RETURN R0 1

PROTO_1:
  LOADK R0 K0 ["v1/gametemplates"]
  RETURN R0 1

PROTO_2:
  LOADK R2 K0 ["v2/universes/%*/places"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_3:
  LOADK R0 K0 ["v1/user/groups/canmanage"]
  RETURN R0 1

PROTO_4:
  LOADK R0 K0 ["/v1/games/icons"]
  RETURN R0 1

PROTO_5:
  LOADK R0 K0 ["teamcreate/v1/MultiGetUniversesActiveSessionMembers"]
  RETURN R0 1

PROTO_6:
  LOADK R0 K0 ["v1/users/avatar-headshot"]
  RETURN R0 1

PROTO_7:
  LOADK R0 K0 ["experience-guidelines-service/v1beta1/multi-age-recommendation"]
  RETURN R0 1

PROTO_8:
  LOADK R0 K0 ["experience-guidelines-service/v1beta1/multi-creator-eligibility"]
  RETURN R0 1

PROTO_9:
  LOADK R0 K0 ["v1/universes/multiget/teamcreate"]
  RETURN R0 1

PROTO_10:
  LOADK R2 K0 ["v1/universes/%*/activate"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_11:
  LOADK R2 K0 ["v1/universes/%*/deactivate"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_12:
  LOADK R2 K0 ["v1/universes/%*/configuration"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_13:
  LOADK R0 K0 ["v1/universes/multiget"]
  RETURN R0 1

PROTO_14:
  LOADK R2 K0 ["v1/universes/%*/teamcreate/memberships"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_15:
  LOADK R0 K0 ["v1/games/multiget-place-details"]
  RETURN R0 1

PROTO_16:
  LOADK R0 K0 ["studio-test-templates-service/v1/test-templates"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["RobloxAPI"]
  GETTABLEKS R2 R3 K9 ["Url"]
  GETTABLEKS R3 R2 K10 ["new"]
  CALL R3 0 1
  DUPTABLE R4 K28 [{"EXPERIENCES_SEARCH_URL", "TEMPLATES_SEARCH_URL", "PLACES_SEARCH_URL", "GROUPS_SEARCH_URL", "EXPERIENCES_ICON_URL", "TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL", "AVATAR_ICON_URL", "MULTI_AGE_RECOMMENDATION", "MULTI_CREATOR_ELIGIBILITY", "MULTI_TEAM_CREATE_STATUS", "ACTIVATE_UNIVERSE", "DEACTIVATE_UNIVERSE", "UNIVERSE_CONFIGURATION", "UNIVERSE_DATA", "TEAMCREATE_MEMBERSHIPS", "MULTIGET_PLACES", "TEST_TEMPLATES"}]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K31 ["APIS_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K32 [PROTO_0]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K11 ["EXPERIENCES_SEARCH_URL"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K33 ["DEVELOP_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K34 [PROTO_1]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K12 ["TEMPLATES_SEARCH_URL"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K33 ["DEVELOP_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K35 [PROTO_2]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K13 ["PLACES_SEARCH_URL"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K33 ["DEVELOP_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K36 [PROTO_3]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K14 ["GROUPS_SEARCH_URL"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K37 ["THUMBNAILS_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K38 [PROTO_4]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K15 ["EXPERIENCES_ICON_URL"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K31 ["APIS_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K39 [PROTO_5]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K16 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K37 ["THUMBNAILS_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K40 [PROTO_6]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K17 ["AVATAR_ICON_URL"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K31 ["APIS_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K41 [PROTO_7]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K18 ["MULTI_AGE_RECOMMENDATION"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K31 ["APIS_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K42 [PROTO_8]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K19 ["MULTI_CREATOR_ELIGIBILITY"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K33 ["DEVELOP_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K43 [PROTO_9]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K20 ["MULTI_TEAM_CREATE_STATUS"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K33 ["DEVELOP_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K44 [PROTO_10]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K21 ["ACTIVATE_UNIVERSE"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K33 ["DEVELOP_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K45 [PROTO_11]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K22 ["DEACTIVATE_UNIVERSE"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K33 ["DEVELOP_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K46 [PROTO_12]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K23 ["UNIVERSE_CONFIGURATION"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K33 ["DEVELOP_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K47 [PROTO_13]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K24 ["UNIVERSE_DATA"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K33 ["DEVELOP_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K48 [PROTO_14]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K25 ["TEAMCREATE_MEMBERSHIPS"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K49 ["GAMES_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K50 [PROTO_15]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K26 ["MULTIGET_PLACES"]
  DUPTABLE R5 K30 [{"Prefix", "Url"}]
  GETTABLEKS R6 R3 K31 ["APIS_URL"]
  SETTABLEKS R6 R5 K29 ["Prefix"]
  DUPCLOSURE R6 K51 [PROTO_16]
  SETTABLEKS R6 R5 K9 ["Url"]
  SETTABLEKS R5 R4 K27 ["TEST_TEMPLATES"]
  RETURN R4 1
