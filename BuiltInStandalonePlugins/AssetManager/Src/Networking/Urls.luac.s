MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Http"]
  GETTABLEKS R2 R3 K9 ["Networking"]
  GETTABLEKS R3 R1 K10 ["RobloxAPI"]
  GETIMPORT R4 K12 [game]
  LOADK R6 K13 ["StudioPlat37699UnmoveCreatorInventoryItems"]
  LOADB R7 0
  NAMECALL R4 R4 K14 ["DefineFastFlag"]
  CALL R4 3 1
  NEWTABLE R5 8 0
  GETTABLEKS R6 R3 K15 ["new"]
  GETTABLEKS R7 R2 K15 ["new"]
  CALL R7 0 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K16 ["_FrameworkAPI"]
  GETTABLEKS R11 R5 K16 ["_FrameworkAPI"]
  GETTABLEKS R10 R11 K17 ["Develop"]
  GETTABLEKS R9 R10 K18 ["V1"]
  GETTABLEKS R8 R9 K19 ["User"]
  GETTABLEKS R7 R8 K20 ["Groups"]
  GETTABLEKS R6 R7 K21 ["canManage"]
  SETTABLEKS R6 R5 K22 ["CreateFetchGroupsRequest"]
  JUMPIFNOT R4 [+55]
  GETTABLEKS R11 R5 K16 ["_FrameworkAPI"]
  GETTABLEKS R10 R11 K23 ["APIS"]
  GETTABLEKS R9 R10 K24 ["CreatorInventoryApi"]
  GETTABLEKS R8 R9 K18 ["V1"]
  GETTABLEKS R7 R8 K25 ["Users"]
  GETTABLEKS R6 R7 K26 ["creatorInventoryItems"]
  SETTABLEKS R6 R5 K27 ["CreateFetchAssetsForUserRequest"]
  GETTABLEKS R11 R5 K16 ["_FrameworkAPI"]
  GETTABLEKS R10 R11 K23 ["APIS"]
  GETTABLEKS R9 R10 K24 ["CreatorInventoryApi"]
  GETTABLEKS R8 R9 K18 ["V1"]
  GETTABLEKS R7 R8 K20 ["Groups"]
  GETTABLEKS R6 R7 K26 ["creatorInventoryItems"]
  SETTABLEKS R6 R5 K28 ["CreateFetchAssetsForGroupRequest"]
  GETTABLEKS R11 R5 K16 ["_FrameworkAPI"]
  GETTABLEKS R10 R11 K23 ["APIS"]
  GETTABLEKS R9 R10 K24 ["CreatorInventoryApi"]
  GETTABLEKS R8 R9 K18 ["V1"]
  GETTABLEKS R7 R8 K29 ["Universe"]
  GETTABLEKS R6 R7 K26 ["creatorInventoryItems"]
  SETTABLEKS R6 R5 K30 ["CreateFetchAssetsForUniverseRequest"]
  GETTABLEKS R10 R5 K16 ["_FrameworkAPI"]
  GETTABLEKS R9 R10 K23 ["APIS"]
  GETTABLEKS R8 R9 K24 ["CreatorInventoryApi"]
  GETTABLEKS R7 R8 K18 ["V1"]
  GETTABLEKS R6 R7 K31 ["search"]
  SETTABLEKS R6 R5 K32 ["CreateSearchAssetsRequest"]
  JUMP [+40]
  GETTABLEKS R9 R5 K16 ["_FrameworkAPI"]
  GETTABLEKS R8 R9 K33 ["API"]
  GETTABLEKS R7 R8 K34 ["CreatorInventory"]
  GETTABLEKS R6 R7 K35 ["userItems"]
  SETTABLEKS R6 R5 K27 ["CreateFetchAssetsForUserRequest"]
  GETTABLEKS R9 R5 K16 ["_FrameworkAPI"]
  GETTABLEKS R8 R9 K33 ["API"]
  GETTABLEKS R7 R8 K34 ["CreatorInventory"]
  GETTABLEKS R6 R7 K36 ["groupItems"]
  SETTABLEKS R6 R5 K28 ["CreateFetchAssetsForGroupRequest"]
  GETTABLEKS R9 R5 K16 ["_FrameworkAPI"]
  GETTABLEKS R8 R9 K33 ["API"]
  GETTABLEKS R7 R8 K34 ["CreatorInventory"]
  GETTABLEKS R6 R7 K37 ["universeItems"]
  SETTABLEKS R6 R5 K30 ["CreateFetchAssetsForUniverseRequest"]
  GETTABLEKS R9 R5 K16 ["_FrameworkAPI"]
  GETTABLEKS R8 R9 K33 ["API"]
  GETTABLEKS R7 R8 K34 ["CreatorInventory"]
  GETTABLEKS R6 R7 K31 ["search"]
  SETTABLEKS R6 R5 K32 ["CreateSearchAssetsRequest"]
  GETTABLEKS R11 R5 K16 ["_FrameworkAPI"]
  GETTABLEKS R10 R11 K23 ["APIS"]
  GETTABLEKS R9 R10 K38 ["AssetPermissionsApi"]
  GETTABLEKS R8 R9 K18 ["V1"]
  GETTABLEKS R7 R8 K39 ["Assets"]
  GETTABLEKS R6 R7 K40 ["permissions"]
  SETTABLEKS R6 R5 K41 ["PatchAssetsPermissionsRequest"]
  RETURN R5 1
