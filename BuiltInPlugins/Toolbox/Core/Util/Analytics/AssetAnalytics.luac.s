PROTO_0:
  DUPTABLE R1 K2 [{"_searches", "senders"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["_searches"]
  MOVE R2 R0
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["senders"]
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K4 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  PREPVARARGS 0
  GETUPVAL R1 0
  NEWTABLE R2 0 0
  GETVARARGS R3 -1
  SETLIST R2 R3 -1 [1]
  FASTCALL2 TABLE_INSERT R1 R2 [+3]
  GETIMPORT R0 K2 [table.insert]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R0 0 0
  DUPTABLE R1 K2 [{"sendEventDeferredCalls", "sendEventDeferred"}]
  SETTABLEKS R0 R1 K0 ["sendEventDeferredCalls"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K1 ["sendEventDeferred"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["new"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_3:
  NAMECALL R2 R0 K0 ["getBreadcrumbRoute"]
  CALL R2 1 1
  NAMECALL R3 R0 K1 ["getNavigationRoute"]
  CALL R3 1 1
  GETIMPORT R5 K4 [table.find]
  MOVE R6 R3
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["NAVIGATION"]
  GETTABLEKS R7 R8 K6 ["RESULTS"]
  CALL R5 2 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETIMPORT R6 K4 [table.find]
  MOVE R7 R3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["NAVIGATION"]
  GETTABLEKS R8 R9 K7 ["ALL_SUBCATEGORIES"]
  CALL R6 2 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  DUPTABLE R6 K12 [{"navBreadcrumbs", "navSwimlane", "navSeeAll", "navSeeAllSubcategory"}]
  GETUPVAL R7 1
  MOVE R9 R2
  NAMECALL R7 R7 K13 ["JSONEncode"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["navBreadcrumbs"]
  SETTABLEKS R1 R6 K9 ["navSwimlane"]
  SETTABLEKS R4 R6 K10 ["navSeeAll"]
  SETTABLEKS R5 R6 K11 ["navSeeAllSubcategory"]
  RETURN R6 1

PROTO_4:
  GETIMPORT R2 K1 [delay]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K1 [ipairs]
  GETIMPORT R2 K4 [Enum.AssetType]
  NAMECALL R2 R2 K5 ["GetEnumItems"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_INEXT R1
  GETTABLEKS R6 R5 K6 ["Value"]
  JUMPIFNOTEQ R6 R0 [+4]
  GETTABLEKS R6 R5 K7 ["Name"]
  RETURN R6 1
  FORGLOOP R1 2 [inext] [-8]
  LOADK R1 K8 [""]
  RETURN R1 1

PROTO_6:
  MOVE R1 R0
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K0 ["Asset"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R2 R0 K0 ["Asset"]
  GETTABLEKS R1 R2 K1 ["Id"]
  RETURN R1 1

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["isAssetDataTrackable"]
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K1 ["searchId"]
  RETURN R2 1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["Context"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["Dictionary"]
  GETTABLEKS R4 R5 K2 ["join"]
  MOVE R5 R1
  MOVE R6 R3
  CALL R4 2 1
  GETTABLEKS R5 R1 K3 ["searchId"]
  LOADNIL R6
  GETTABLEKS R8 R0 K4 ["Asset"]
  GETTABLEKS R7 R8 K5 ["AssetSubTypes"]
  JUMPIFNOT R7 [+6]
  GETIMPORT R8 K8 [table.concat]
  MOVE R9 R7
  LOADK R10 K9 [","]
  CALL R8 2 1
  MOVE R6 R8
  LOADNIL R8
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIF R9 [+1]
  JUMPIFNOT R2 [+102]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["Dictionary"]
  GETTABLEKS R9 R10 K2 ["join"]
  MOVE R10 R4
  DUPTABLE R11 K25 [{"assetId", "assetSubTypes", "assetType", "assetTypeId", "userId", "placeId", "platformId", "clientId", "searchId", "studioSid", "isEditMode", "isVerifiedCreator", "label", "value", "isEndorsed", "hasScripts"}]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K26 ["Id"]
  SETTABLEKS R12 R11 K10 ["assetId"]
  SETTABLEKS R6 R11 K11 ["assetSubTypes"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K27 ["getAssetCategoryName"]
  GETTABLEKS R14 R0 K4 ["Asset"]
  GETTABLEKS R13 R14 K28 ["TypeId"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K12 ["assetType"]
  GETUPVAL R13 1
  CALL R13 0 1
  JUMPIFNOT R13 [+5]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K28 ["TypeId"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K13 ["assetTypeId"]
  GETUPVAL R12 3
  CALL R12 0 1
  SETTABLEKS R12 R11 K14 ["userId"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K29 ["getPlaceId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K15 ["placeId"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K30 ["getPlatformId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K16 ["platformId"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K31 ["getClientId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K17 ["clientId"]
  SETTABLEKS R5 R11 K3 ["searchId"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K32 ["getStudioSessionId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K18 ["studioSid"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K33 ["getIsEditMode"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K19 ["isEditMode"]
  GETTABLEKS R13 R0 K34 ["Creator"]
  GETTABLEKS R12 R13 K35 ["IsVerifiedCreator"]
  SETTABLEKS R12 R11 K20 ["isVerifiedCreator"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K26 ["Id"]
  SETTABLEKS R12 R11 K21 ["label"]
  LOADN R12 0
  SETTABLEKS R12 R11 K22 ["value"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K36 ["IsEndorsed"]
  SETTABLEKS R12 R11 K23 ["isEndorsed"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K37 ["HasScripts"]
  SETTABLEKS R12 R11 K24 ["hasScripts"]
  CALL R9 2 1
  MOVE R8 R9
  JUMP [+93]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["Dictionary"]
  GETTABLEKS R9 R10 K2 ["join"]
  MOVE R10 R4
  DUPTABLE R11 K44 [{"assetID", "assetSubTypes", "assetType", "userID", "placeID", "platformID", "clientID", "searchID", "studioSid", "isEditMode", "isVerifiedCreator", "label", "value", "isEndorsed", "hasScripts"}]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K26 ["Id"]
  SETTABLEKS R12 R11 K38 ["assetID"]
  SETTABLEKS R6 R11 K11 ["assetSubTypes"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K27 ["getAssetCategoryName"]
  GETTABLEKS R14 R0 K4 ["Asset"]
  GETTABLEKS R13 R14 K28 ["TypeId"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K12 ["assetType"]
  GETUPVAL R12 3
  CALL R12 0 1
  SETTABLEKS R12 R11 K39 ["userID"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K29 ["getPlaceId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K40 ["placeID"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K30 ["getPlatformId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K41 ["platformID"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K31 ["getClientId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K42 ["clientID"]
  SETTABLEKS R5 R11 K43 ["searchID"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K32 ["getStudioSessionId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K18 ["studioSid"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K33 ["getIsEditMode"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K19 ["isEditMode"]
  GETTABLEKS R13 R0 K34 ["Creator"]
  GETTABLEKS R12 R13 K35 ["IsVerifiedCreator"]
  SETTABLEKS R12 R11 K20 ["isVerifiedCreator"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K26 ["Id"]
  SETTABLEKS R12 R11 K21 ["label"]
  LOADN R12 0
  SETTABLEKS R12 R11 K22 ["value"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K36 ["IsEndorsed"]
  SETTABLEKS R12 R11 K23 ["isEndorsed"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K37 ["HasScripts"]
  SETTABLEKS R12 R11 K24 ["hasScripts"]
  CALL R9 2 1
  MOVE R8 R9
  LOADNIL R9
  SETTABLEKS R9 R8 K3 ["searchId"]
  GETIMPORT R9 K46 [pairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_NEXT R9
  FASTCALL1 TOSTRING R13 [+3]
  MOVE R15 R13
  GETIMPORT R14 K48 [tostring]
  CALL R14 1 1
  SETTABLE R14 R8 R12
  FORGLOOP R9 2 [-7]
  RETURN R8 1

PROTO_9:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["isAssetTrackable"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETTABLEKS R6 R1 K1 ["Asset"]
  GETTABLEKS R5 R6 K2 ["Id"]
  GETTABLEKS R6 R2 K3 ["searchId"]
  GETTABLEKS R8 R0 K4 ["_searches"]
  GETTABLE R7 R8 R6
  JUMPIF R7 [+8]
  GETTABLEKS R7 R0 K4 ["_searches"]
  DUPTABLE R8 K6 [{"impressions"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K5 ["impressions"]
  SETTABLE R8 R7 R6
  GETTABLEKS R8 R0 K4 ["_searches"]
  GETTABLE R7 R8 R6
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["getTrackingAttributes"]
  MOVE R9 R1
  MOVE R10 R2
  CALL R8 2 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["join"]
  MOVE R10 R8
  DUPTABLE R11 K10 [{"layoutMode"}]
  SETTABLEKS R4 R11 K9 ["layoutMode"]
  CALL R9 2 1
  MOVE R8 R9
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["join"]
  MOVE R10 R8
  MOVE R11 R3
  JUMPIF R11 [+2]
  NEWTABLE R11 0 0
  CALL R9 2 1
  MOVE R8 R9
  GETTABLEKS R10 R7 K5 ["impressions"]
  GETTABLE R9 R10 R5
  JUMPIF R9 [+24]
  GETTABLEKS R10 R0 K11 ["senders"]
  GETTABLEKS R9 R10 K12 ["sendEventDeferred"]
  GETUPVAL R11 2
  CALL R11 0 1
  JUMPIFNOT R11 [+4]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K13 ["eventTarget"]
  JUMP [+1]
  LOADK R10 K14 ["studio"]
  LOADK R11 K15 ["Marketplace"]
  LOADK R12 K16 ["MarketplaceAssetImpression"]
  MOVE R13 R8
  CALL R9 4 0
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K17 ["incrementAssetImpressionCounter"]
  CALL R9 0 0
  GETTABLEKS R9 R7 K5 ["impressions"]
  LOADB R10 1
  SETTABLE R10 R9 R5
  RETURN R0 0

PROTO_10:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["isAssetTrackable"]
  MOVE R5 R1
  MOVE R6 R2
  CALL R4 2 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getTrackingAttributes"]
  MOVE R5 R1
  MOVE R6 R2
  CALL R4 2 1
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+4]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R5 R3 K2 ["purchaserStatus"]
  JUMP [+1]
  LOADNIL R5
  GETTABLEKS R6 R1 K3 ["FiatProduct"]
  JUMPIFNOT R6 [+4]
  GETTABLEKS R7 R1 K3 ["FiatProduct"]
  GETTABLEKS R6 R7 K4 ["PurchasePrice"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["Dictionary"]
  GETTABLEKS R7 R8 K6 ["join"]
  MOVE R8 R4
  DUPTABLE R9 K10 [{"buyerStatus", "currencyCode", "fiatPrice"}]
  GETUPVAL R11 1
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  MOVE R10 R5
  JUMP [+1]
  MOVE R10 R3
  SETTABLEKS R10 R9 K7 ["buyerStatus"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R10 R6 K8 ["currencyCode"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K8 ["currencyCode"]
  JUMPIFNOT R6 [+6]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K11 ["calculateQuantity"]
  MOVE R11 R6
  CALL R10 1 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K9 ["fiatPrice"]
  CALL R7 2 1
  MOVE R4 R7
  GETTABLEKS R8 R0 K12 ["senders"]
  GETTABLEKS R7 R8 K13 ["sendEventDeferred"]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+4]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K14 ["eventTarget"]
  JUMP [+1]
  LOADK R8 K15 ["studio"]
  LOADK R9 K16 ["Marketplace"]
  LOADK R10 K17 ["MarketplaceAssetPreview"]
  MOVE R11 R4
  CALL R7 4 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  FASTCALL1 TYPE R1 [+2]
  GETIMPORT R0 K1 [type]
  CALL R0 1 1
  JUMPIFNOTEQKS R0 K2 ["table"] [+10]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R5 0
  GETTABLEN R4 R5 1
  NAMECALL R0 R0 K3 ["logRemainsOrDeleted"]
  CALL R0 4 0
  RETURN R0 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R4 0
  NAMECALL R0 R0 K3 ["logRemainsOrDeleted"]
  CALL R0 4 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["isAssetTrackable"]
  MOVE R9 R1
  MOVE R10 R4
  CALL R8 2 1
  JUMPIF R8 [+1]
  RETURN R0 0
  DUPTABLE R8 K2 [{"method"}]
  SETTABLEKS R2 R8 K1 ["method"]
  SETTABLEKS R6 R8 K3 ["layoutMode"]
  GETUPVAL R9 1
  JUMPIFNOT R9 [+2]
  SETTABLEKS R7 R8 K4 ["insertDuration"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["join"]
  MOVE R10 R8
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["getTrackingAttributes"]
  MOVE R12 R1
  MOVE R13 R4
  CALL R11 2 1
  DUPTABLE R12 K8 [{"navSwimlane"}]
  SETTABLEKS R5 R12 K7 ["navSwimlane"]
  CALL R9 3 1
  GETTABLEKS R11 R0 K9 ["senders"]
  GETTABLEKS R10 R11 K10 ["sendEventDeferred"]
  GETUPVAL R12 3
  CALL R12 0 1
  JUMPIFNOT R12 [+4]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K11 ["eventTarget"]
  JUMP [+1]
  LOADK R11 K12 ["studio"]
  LOADK R12 K13 ["Marketplace"]
  LOADK R13 K14 ["MarketplaceInsert"]
  MOVE R14 R9
  CALL R10 4 0
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R0 0
  GETIMPORT R10 K16 [ipairs]
  GETUPVAL R13 0
  GETTABLEKS R11 R13 K17 ["InsertRemainsCheckDelays"]
  CALL R10 1 3
  FORGPREP_INEXT R10
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K18 ["schedule"]
  MOVE R16 R14
  NEWCLOSURE R17 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R14
  CAPTURE VAL R9
  CALL R15 2 0
  FORGLOOP R10 2 [inext] [-11]
  RETURN R0 0

PROTO_13:
  JUMPIFNOT R3 [+5]
  GETTABLEKS R5 R3 K0 ["Parent"]
  JUMPIFNOT R5 [+2]
  LOADK R4 K1 ["InsertRemains"]
  JUMP [+1]
  LOADK R4 K2 ["InsertDeleted"]
  GETTABLEKS R6 R0 K3 ["senders"]
  GETTABLEKS R5 R6 K4 ["sendEventDeferred"]
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["eventTarget"]
  JUMP [+1]
  LOADK R6 K6 ["studio"]
  LOADK R7 K7 ["Marketplace"]
  MOVE R9 R4
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R11 R1
  GETIMPORT R10 K9 [tostring]
  CALL R10 1 1
  CONCAT R8 R9 R10
  MOVE R9 R2
  CALL R5 4 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R9 R0 K0 ["senders"]
  GETTABLEKS R8 R9 K1 ["sendEventDeferred"]
  GETUPVAL R10 0
  CALL R10 0 1
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["eventTarget"]
  JUMP [+1]
  LOADK R9 K3 ["studio"]
  LOADK R10 K4 ["Marketplace"]
  MOVE R11 R1
  DUPTABLE R12 K11 [{"searchID", "searchCategory", "subcategoryName", "navBreadcrumbs", "toolboxTab", "assetType"}]
  SETTABLEKS R2 R12 K5 ["searchID"]
  SETTABLEKS R3 R12 K6 ["searchCategory"]
  SETTABLEKS R4 R12 K7 ["subcategoryName"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R13 2
  MOVE R15 R5
  NAMECALL R13 R13 K12 ["JSONEncode"]
  CALL R13 2 1
  JUMPIF R13 [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K8 ["navBreadcrumbs"]
  SETTABLEKS R6 R12 K9 ["toolboxTab"]
  SETTABLEKS R7 R12 K10 ["assetType"]
  CALL R8 4 0
  RETURN R0 0

PROTO_15:
  LOADK R9 K0 ["MarketplaceNavigatePageView"]
  MOVE R10 R1
  MOVE R11 R2
  MOVE R12 R3
  MOVE R13 R4
  MOVE R14 R5
  MOVE R15 R6
  NAMECALL R7 R0 K1 ["logNavigationButtonInteraction"]
  CALL R7 8 0
  RETURN R0 0

PROTO_16:
  LOADK R9 K0 ["MarketplaceNavigateViewBack"]
  MOVE R10 R1
  MOVE R11 R2
  MOVE R12 R3
  MOVE R13 R4
  MOVE R14 R5
  MOVE R15 R6
  NAMECALL R7 R0 K1 ["logNavigationButtonInteraction"]
  CALL R7 8 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R3 R0 K0 ["senders"]
  GETTABLEKS R2 R3 K1 ["sendEventDeferred"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["eventTarget"]
  JUMP [+1]
  LOADK R3 K3 ["studio"]
  LOADK R4 K4 ["Marketplace"]
  LOADK R5 K5 ["CallToActionBannerClicked"]
  DUPTABLE R6 K7 [{"creatorId"}]
  SETTABLEKS R1 R6 K6 ["creatorId"]
  CALL R2 4 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["isAssetDataTrackable"]
  MOVE R8 R1
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["getTrackingAttributes"]
  MOVE R8 R1
  NEWTABLE R9 0 0
  LOADB R10 1
  CALL R7 3 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["join"]
  MOVE R9 R7
  DUPTABLE R10 K8 [{"imageId", "imageIndex", "searchId", "source", "parentAssetId"}]
  SETTABLEKS R2 R10 K3 ["imageId"]
  SETTABLEKS R3 R10 K4 ["imageIndex"]
  SETTABLEKS R4 R10 K5 ["searchId"]
  SETTABLEKS R5 R10 K6 ["source"]
  SETTABLEKS R6 R10 K7 ["parentAssetId"]
  CALL R8 2 1
  MOVE R7 R8
  GETTABLEKS R9 R0 K9 ["senders"]
  GETTABLEKS R8 R9 K10 ["sendEventDeferred"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K11 ["eventTarget"]
  JUMP [+1]
  LOADK R9 K12 ["studio"]
  LOADK R10 K13 ["Marketplace"]
  LOADK R11 K14 ["AssetMediaImpression"]
  MOVE R12 R7
  CALL R8 4 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["isAssetTrackable"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["getTrackingAttributes"]
  MOVE R6 R1
  MOVE R7 R2
  LOADB R8 1
  CALL R5 3 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["join"]
  MOVE R7 R5
  DUPTABLE R8 K5 [{"searchId", "url"}]
  SETTABLEKS R3 R8 K3 ["searchId"]
  SETTABLEKS R4 R8 K4 ["url"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K6 ["senders"]
  GETTABLEKS R7 R8 K7 ["sendEventDeferred"]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+4]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K8 ["eventTarget"]
  JUMP [+1]
  LOADK R8 K9 ["studio"]
  LOADK R9 K10 ["Marketplace"]
  LOADK R10 K11 ["AssetDescriptionLinkClicked"]
  MOVE R11 R6
  CALL R7 4 0
  RETURN R0 0

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
  GETTABLEKS R2 R1 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K11 ["Dash"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K12 ["Core"]
  GETTABLEKS R7 R8 K13 ["Models"]
  GETTABLEKS R6 R7 K14 ["AssetInfo"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K12 ["Core"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["getUserId"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K12 ["Core"]
  GETTABLEKS R9 R10 K15 ["Util"]
  GETTABLEKS R8 R9 K17 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K12 ["Core"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K18 ["FiatUtil"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETIMPORT R12 K5 [script]
  GETTABLEKS R11 R12 K6 ["Parent"]
  GETTABLEKS R10 R11 K19 ["Analytics"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETIMPORT R13 K5 [script]
  GETTABLEKS R12 R13 K6 ["Parent"]
  GETTABLEKS R11 R12 K20 ["Senders"]
  CALL R10 1 1
  GETIMPORT R11 K1 [game]
  LOADK R13 K21 ["ToolboxLogInsertDuration"]
  NAMECALL R11 R11 K22 ["GetFastFlag"]
  CALL R11 2 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R16 R1 K12 ["Core"]
  GETTABLEKS R15 R16 K15 ["Util"]
  GETTABLEKS R14 R15 K23 ["SharedFlags"]
  GETTABLEKS R13 R14 K24 ["getFFlagToolboxEnableWebView"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R17 R1 K12 ["Core"]
  GETTABLEKS R16 R17 K15 ["Util"]
  GETTABLEKS R15 R16 K23 ["SharedFlags"]
  GETTABLEKS R14 R15 K25 ["getFFlagToolboxFFlagFixBuyerStatusAnalytics"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R18 R1 K12 ["Core"]
  GETTABLEKS R17 R18 K15 ["Util"]
  GETTABLEKS R16 R17 K23 ["SharedFlags"]
  GETTABLEKS R15 R16 K26 ["getFFlagToolboxFixAnalyticCapitalization"]
  CALL R14 1 1
  NEWTABLE R15 32 0
  SETTABLEKS R15 R15 K27 ["__index"]
  NEWTABLE R16 0 3
  LOADN R17 30
  LOADN R18 120
  LOADN R19 88
  SETLIST R16 R17 3 [1]
  SETTABLEKS R16 R15 K28 ["InsertRemainsCheckDelays"]
  DUPCLOSURE R16 K29 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R15
  SETTABLEKS R16 R15 K30 ["new"]
  DUPCLOSURE R16 K31 [PROTO_2]
  CAPTURE VAL R15
  SETTABLEKS R16 R15 K32 ["mock"]
  DUPCLOSURE R16 K33 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R0
  SETTABLEKS R16 R15 K34 ["getNavigationContext"]
  DUPCLOSURE R16 K35 [PROTO_4]
  SETTABLEKS R16 R15 K36 ["schedule"]
  DUPCLOSURE R16 K37 [PROTO_5]
  SETTABLEKS R16 R15 K38 ["getAssetCategoryName"]
  DUPCLOSURE R16 K39 [PROTO_6]
  SETTABLEKS R16 R15 K40 ["isAssetDataTrackable"]
  DUPCLOSURE R16 K41 [PROTO_7]
  CAPTURE VAL R15
  SETTABLEKS R16 R15 K42 ["isAssetTrackable"]
  DUPCLOSURE R16 K43 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K44 ["getTrackingAttributes"]
  DUPCLOSURE R16 K45 [PROTO_9]
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K46 ["logImpression"]
  DUPCLOSURE R16 K47 [PROTO_10]
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K48 ["logPreview"]
  DUPCLOSURE R16 K49 [PROTO_12]
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K50 ["logInsert"]
  DUPCLOSURE R16 K51 [PROTO_13]
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K52 ["logRemainsOrDeleted"]
  DUPCLOSURE R16 K53 [PROTO_14]
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R0
  SETTABLEKS R16 R15 K54 ["logNavigationButtonInteraction"]
  DUPCLOSURE R16 K55 [PROTO_15]
  SETTABLEKS R16 R15 K56 ["logPageView"]
  DUPCLOSURE R16 K57 [PROTO_16]
  SETTABLEKS R16 R15 K58 ["logGoBack"]
  DUPCLOSURE R16 K59 [PROTO_17]
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K60 ["onCallToActionBannerClicked"]
  DUPCLOSURE R16 K61 [PROTO_18]
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K62 ["logAssetMediaImpression"]
  DUPCLOSURE R16 K63 [PROTO_19]
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K64 ["onAssetDescriptionLinkClicked"]
  RETURN R15 1
