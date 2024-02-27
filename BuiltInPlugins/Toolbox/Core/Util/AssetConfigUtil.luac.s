PROTO_0:
  LOADN R3 10
  ORK R4 R1 K0 [0]
  POW R2 R3 R4
  MUL R6 R0 R2
  ADDK R5 R6 K1 [0.5]
  FASTCALL1 MATH_FLOOR R5 [+2]
  GETIMPORT R4 K4 [math.floor]
  CALL R4 1 1
  DIV R3 R4 R2
  RETURN R3 1

PROTO_1:
  LOADB R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["UGCBundleTypes"]
  GETTABLEKS R2 R3 K1 ["Body"]
  JUMPIFEQ R0 R2 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["UGCBundleTypes"]
  GETTABLEKS R2 R3 K2 ["DynamicHead"]
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  LOADB R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ASSET_STATUS"]
  GETTABLEKS R2 R3 K1 ["ReviewApproved"]
  JUMPIFEQ R2 R0 [+26]
  LOADB R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ASSET_STATUS"]
  GETTABLEKS R2 R3 K2 ["OnSale"]
  JUMPIFEQ R2 R0 [+18]
  LOADB R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ASSET_STATUS"]
  GETTABLEKS R2 R3 K3 ["OffSale"]
  JUMPIFEQ R2 R0 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ASSET_STATUS"]
  GETTABLEKS R2 R3 K4 ["DelayedRelease"]
  JUMPIFEQ R2 R0 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  LOADB R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ASSET_STATUS"]
  GETTABLEKS R2 R3 K1 ["OnSale"]
  JUMPIFEQ R2 R0 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ASSET_STATUS"]
  GETTABLEKS R2 R3 K2 ["Free"]
  JUMPIFEQ R2 R0 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_4:
  GETTABLEKS R3 R1 K0 ["Name"]
  GETTABLE R2 R0 R3
  JUMPIFNOT R2 [+3]
  GETTABLEKS R3 R2 K1 ["marketplaceFeesPercentage"]
  JUMPIF R3 [+1]
  LOADN R3 0
  RETURN R3 1

PROTO_5:
  FASTCALL1 TONUMBER R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [tonumber]
  CALL R4 1 1
  MOVE R1 R4
  JUMPIF R1 [+2]
  LOADN R4 0
  RETURN R4 1
  MOVE R4 R1
  MULK R7 R4 K2 [1]
  ADDK R6 R7 K3 [0.5]
  FASTCALL1 MATH_FLOOR R6 [+2]
  GETIMPORT R5 K6 [math.floor]
  CALL R5 1 1
  DIVK R1 R5 K2 [1]
  LOADK R5 K7 [0.01]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["getMarketplaceFeesPercentage"]
  MOVE R7 R0
  MOVE R8 R2
  CALL R6 2 1
  MUL R4 R5 R6
  MUL R6 R1 R4
  MULK R9 R6 K2 [1]
  ADDK R8 R9 K3 [0.5]
  FASTCALL1 MATH_FLOOR R8 [+2]
  GETIMPORT R7 K6 [math.floor]
  CALL R7 1 1
  DIVK R5 R7 K2 [1]
  JUMPIFNOTLT R1 R3 [+3]
  LOADN R6 0
  RETURN R6 1
  SUB R6 R1 R5
  RETURN R6 1

PROTO_6:
  MOVE R2 R0
  JUMPIFNOT R2 [+5]
  MOVE R2 R1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R3 R1 K0 ["Name"]
  GETTABLE R2 R0 R3
  JUMPIFNOT R2 [+3]
  GETTABLEKS R3 R2 K1 ["allowedPriceRange"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  RETURN R3 1

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getPriceRange"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["isBuyableMarketplaceAsset"]
  MOVE R4 R1
  CALL R3 1 1
  JUMPIFNOT R3 [+2]
  LOADN R3 0
  RETURN R3 1
  GETTABLEKS R4 R2 K2 ["minRobux"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R4 R2 K2 ["minRobux"]
  FASTCALL1 TONUMBER R4 [+2]
  GETIMPORT R3 K4 [tonumber]
  CALL R3 1 1
  JUMPIF R3 [+1]
  LOADN R3 0
  RETURN R3 1

PROTO_8:
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+94]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["isUGCBundleType"]
  MOVE R7 R1
  CALL R6 1 1
  JUMPIFNOT R6 [+42]
  MOVE R6 R0
  JUMPIFNOT R6 [+6]
  MOVE R6 R1
  JUMPIFNOT R6 [+4]
  GETTABLEKS R7 R1 K1 ["rawValue"]
  CALL R7 0 1
  GETTABLE R6 R0 R7
  GETTABLEKS R7 R6 K2 ["allowedPriceRange"]
  GETTABLEKS R9 R6 K4 ["marketplaceFeePercentage"]
  FASTCALL1 TONUMBER R9 [+2]
  GETIMPORT R8 K6 [tonumber]
  CALL R8 1 1
  ORK R5 R8 K3 [0]
  GETTABLEKS R8 R7 K7 ["minimumPrice"]
  JUMPIFNOT R8 [+8]
  GETTABLEKS R9 R7 K7 ["minimumPrice"]
  FASTCALL1 TONUMBER R9 [+2]
  GETIMPORT R8 K6 [tonumber]
  CALL R8 1 1
  ORK R3 R8 K3 [0]
  JUMP [+1]
  LOADN R3 0
  GETTABLEKS R8 R7 K8 ["maximumPrice"]
  JUMPIFNOT R8 [+8]
  GETTABLEKS R9 R7 K8 ["maximumPrice"]
  FASTCALL1 TONUMBER R9 [+2]
  GETIMPORT R8 K6 [tonumber]
  CALL R8 1 1
  ORK R4 R8 K3 [0]
  RETURN R3 3
  LOADN R4 0
  RETURN R3 3
  JUMPIFNOT R1 [+90]
  GETTABLEKS R7 R1 K9 ["Name"]
  GETTABLE R6 R0 R7
  JUMPIFNOT R6 [+86]
  MOVE R6 R0
  JUMPIFNOT R6 [+5]
  MOVE R6 R1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R7 R1 K9 ["Name"]
  GETTABLE R6 R0 R7
  GETTABLEKS R7 R6 K2 ["allowedPriceRange"]
  GETTABLEKS R9 R6 K10 ["marketplaceFeesPercentage"]
  FASTCALL1 TONUMBER R9 [+2]
  GETIMPORT R8 K6 [tonumber]
  CALL R8 1 1
  ORK R5 R8 K3 [0]
  GETTABLEKS R8 R7 K11 ["minRobux"]
  JUMPIFNOT R8 [+8]
  GETTABLEKS R9 R7 K11 ["minRobux"]
  FASTCALL1 TONUMBER R9 [+2]
  GETIMPORT R8 K6 [tonumber]
  CALL R8 1 1
  ORK R3 R8 K3 [0]
  JUMP [+1]
  LOADN R3 0
  GETTABLEKS R8 R7 K12 ["maxRobux"]
  JUMPIFNOT R8 [+8]
  GETTABLEKS R9 R7 K12 ["maxRobux"]
  FASTCALL1 TONUMBER R9 [+2]
  GETIMPORT R8 K6 [tonumber]
  CALL R8 1 1
  ORK R4 R8 K3 [0]
  RETURN R3 3
  LOADN R4 0
  RETURN R3 3
  JUMPIFNOT R1 [+44]
  GETTABLEKS R7 R1 K9 ["Name"]
  GETTABLE R6 R0 R7
  JUMPIFNOT R6 [+40]
  MOVE R6 R0
  JUMPIFNOT R6 [+5]
  MOVE R6 R1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R7 R1 K9 ["Name"]
  GETTABLE R6 R0 R7
  GETTABLEKS R7 R6 K2 ["allowedPriceRange"]
  GETTABLEKS R9 R6 K10 ["marketplaceFeesPercentage"]
  FASTCALL1 TONUMBER R9 [+2]
  GETIMPORT R8 K6 [tonumber]
  CALL R8 1 1
  ORK R5 R8 K3 [0]
  GETTABLEKS R9 R7 K11 ["minRobux"]
  JUMPIFNOT R9 [+7]
  GETTABLEKS R9 R7 K11 ["minRobux"]
  FASTCALL1 TONUMBER R9 [+2]
  GETIMPORT R8 K6 [tonumber]
  CALL R8 1 1
  JUMPIF R8 [+1]
  LOADN R8 0
  MOVE R3 R8
  GETTABLEKS R9 R7 K12 ["maxRobux"]
  JUMPIFNOT R9 [+7]
  GETTABLEKS R9 R7 K12 ["maxRobux"]
  FASTCALL1 TONUMBER R9 [+2]
  GETIMPORT R8 K6 [tonumber]
  CALL R8 1 1
  JUMPIF R8 [+1]
  LOADN R8 0
  MOVE R4 R8
  RETURN R3 3

PROTO_9:
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFLT R3 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["IMAGE_TYPES"]
  NAMECALL R0 R0 K1 ["PromptImportFile"]
  CALL R0 2 1
  JUMPIFNOT R0 [+8]
  GETTABLEKS R1 R0 K2 ["Size"]
  GETUPVAL R2 2
  JUMPIFNOTLT R2 R1 [+3]
  LOADNIL R1
  RETURN R1 1
  RETURN R0 1
  RETURN R0 0

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ASSET_TYPE_INFO"]
  GETTABLE R1 R2 R0
  LOADB R2 0
  JUMPIFEQKNIL R1 [+7]
  GETTABLEKS R3 R1 K1 ["isCatalog"]
  JUMPIFEQKB R3 TRUE [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ASSET_TYPE_INFO"]
  GETTABLE R1 R2 R0
  LOADB R2 0
  JUMPIFEQKNIL R1 [+7]
  GETTABLEKS R3 R1 K1 ["isMarketplace"]
  JUMPIFEQKB R3 TRUE [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ASSET_TYPE_INFO"]
  GETTABLE R1 R2 R0
  LOADB R2 0
  JUMPIFEQKNIL R1 [+12]
  LOADB R2 0
  GETTABLEKS R3 R1 K1 ["isMarketplace"]
  JUMPIFNOTEQKB R3 TRUE [+7]
  GETTABLEKS R3 R1 K2 ["isBuyable"]
  JUMPIFEQKB R3 TRUE [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_14:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["FLOW_TYPE"]
  GETTABLEKS R2 R3 K1 ["UPLOAD_FLOW"]
  JUMPIFNOTEQ R0 R2 [+22]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+12]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["hasAllowedAssetTypesForRelease"]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["SCREENS"]
  GETTABLEKS R2 R3 K4 ["CONFIGURE_ASSET"]
  RETURN R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["SCREENS"]
  GETTABLEKS R2 R3 K5 ["ASSET_TYPE_SELECTION"]
  RETURN R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["FLOW_TYPE"]
  GETTABLEKS R2 R3 K6 ["EDIT_FLOW"]
  JUMPIFEQ R0 R2 [+8]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["FLOW_TYPE"]
  GETTABLEKS R2 R3 K7 ["DOWNLOAD_FLOW"]
  JUMPIFNOTEQ R0 R2 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["SCREENS"]
  GETTABLEKS R2 R3 K4 ["CONFIGURE_ASSET"]
  RETURN R2 1
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["GENRE_TYPE"]
  RETURN R0 1

PROTO_16:
  LOADN R1 1
  GETIMPORT R2 K1 [pairs]
  GETUPVAL R5 0
  GETTABLEKS R3 R5 K2 ["GENRE_TYPE"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K3 ["name"]
  JUMPIFNOTEQ R0 R7 [+3]
  MOVE R1 R5
  RETURN R1 1
  FORGLOOP R2 2 [-7]
  RETURN R1 1

PROTO_17:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["GENRE_TYPE"]
  LENGTH R1 R2
  JUMPIFNOTLT R1 R0 [+2]
  LOADN R0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["GENRE_TYPE"]
  GETTABLE R2 R3 R0
  GETTABLEKS R1 R2 K1 ["name"]
  RETURN R1 1

PROTO_18:
  NEWTABLE R2 0 1
  DUPTABLE R3 K3 [{"name", "creatorType", "creatorId"}]
  LOADK R6 K4 ["General"]
  LOADK R7 K5 ["Me"]
  NAMECALL R4 R1 K6 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K0 ["name"]
  LOADK R4 K7 ["User"]
  SETTABLEKS R4 R3 K1 ["creatorType"]
  GETUPVAL R4 0
  CALL R4 0 1
  SETTABLEKS R4 R3 K2 ["creatorId"]
  SETLIST R2 R3 1 [1]
  GETIMPORT R3 K9 [ipairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_INEXT R3
  DUPTABLE R10 K11 [{"name", "creatorId", "creatorType", "item"}]
  GETTABLEKS R11 R7 K0 ["name"]
  SETTABLEKS R11 R10 K0 ["name"]
  GETTABLEKS R11 R7 K12 ["id"]
  SETTABLEKS R11 R10 K2 ["creatorId"]
  LOADK R11 K13 ["Group"]
  SETTABLEKS R11 R10 K1 ["creatorType"]
  SETTABLEKS R7 R10 K10 ["item"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K16 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-21]
  RETURN R2 1

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  NAMECALL R0 R0 K0 ["Clone"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_20:
  NEWTABLE R1 0 0
  LOADN R4 1
  LENGTH R2 R0
  LOADN R3 1
  FORNPREP R2
  GETIMPORT R5 K1 [pcall]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R4
  CALL R5 1 2
  LENGTH R8 R1
  ADDK R7 R8 K2 [1]
  JUMPIFNOT R5 [+2]
  MOVE R8 R6
  JUMPIF R8 [+1]
  LOADNIL R8
  SETTABLE R8 R1 R7
  FORNLOOP R2
  RETURN R1 1

PROTO_21:
  JUMPIFNOT R1 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["PreviewTypes"]
  GETTABLEKS R2 R3 K1 ["ModelPreview"]
  JUMPIF R2 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["PreviewTypes"]
  GETTABLEKS R2 R3 K2 ["Thumbnail"]
  JUMPIFNOT R0 [+11]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["isBuyableMarketplaceAsset"]
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFNOT R3 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["PreviewTypes"]
  GETTABLEKS R2 R3 K4 ["ImagePicker"]
  GETUPVAL R3 2
  JUMPIFNOT R3 [+9]
  GETIMPORT R3 K8 [Enum.AssetType.Animation]
  JUMPIFNOTEQ R0 R3 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["PreviewTypes"]
  GETTABLEKS R2 R3 K2 ["Thumbnail"]
  RETURN R2 1

PROTO_22:
  LOADNIL R2
  JUMPIFNOT R1 [+5]
  NAMECALL R3 R1 K0 ["GetTemporaryId"]
  CALL R3 1 1
  MOVE R2 R3
  RETURN R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["constructAssetThumbnailUrl"]
  MOVE R4 R0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["rbxThumbSizes"]
  GETTABLEKS R5 R6 K3 ["AssetThumbnailSize"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K2 ["rbxThumbSizes"]
  GETTABLEKS R6 R7 K3 ["AssetThumbnailSize"]
  CALL R3 3 1
  MOVE R2 R3
  RETURN R2 1

PROTO_23:
  LOADB R2 1
  LOADNIL R3
  LENGTH R4 R0
  LOADN R5 1
  JUMPIFNOTLT R5 R4 [+22]
  LOADB R2 0
  GETUPVAL R4 0
  JUMPIF R4 [+2]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+10]
  JUMPIFNOT R1 [+7]
  LOADK R6 K0 ["AssetConfigPackage"]
  LOADK R7 K1 ["CantConvertMultipleInstancesWarning"]
  NAMECALL R4 R1 K2 ["getText"]
  CALL R4 3 1
  MOVE R3 R4
  JUMP [+8]
  LOADNIL R3
  JUMP [+6]
  LOADK R6 K0 ["AssetConfigPackage"]
  LOADK R7 K1 ["CantConvertMultipleInstancesWarning"]
  NAMECALL R4 R1 K2 ["getText"]
  CALL R4 3 1
  MOVE R3 R4
  GETTABLEN R4 R0 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["isPackage"]
  MOVE R6 R4
  CALL R5 1 1
  JUMPIFNOT R5 [+1]
  LOADB R2 0
  LOADK R7 K4 ["Model"]
  NAMECALL R5 R4 K5 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+31]
  GETTABLEKS R5 R4 K6 ["PrimaryPart"]
  JUMPIFEQKNIL R5 [+28]
  GETTABLEKS R6 R4 K6 ["PrimaryPart"]
  GETTABLEKS R5 R6 K7 ["Archivable"]
  JUMPIFEQKB R5 TRUE [+22]
  LOADB R2 0
  GETUPVAL R5 0
  JUMPIF R5 [+2]
  GETUPVAL R5 1
  JUMPIFNOT R5 [+10]
  JUMPIFNOT R1 [+7]
  LOADK R7 K0 ["AssetConfigPackage"]
  LOADK R8 K8 ["CantConvertModelWithPrimaryPartNonArchivableWarning"]
  NAMECALL R5 R1 K2 ["getText"]
  CALL R5 3 1
  MOVE R3 R5
  JUMP [+8]
  LOADNIL R3
  JUMP [+6]
  LOADK R7 K0 ["AssetConfigPackage"]
  LOADK R8 K8 ["CantConvertModelWithPrimaryPartNonArchivableWarning"]
  NAMECALL R5 R1 K2 ["getText"]
  CALL R5 3 1
  MOVE R3 R5
  LOADK R7 K9 ["PVInstance"]
  NAMECALL R5 R4 K5 ["IsA"]
  CALL R5 2 1
  JUMPIFNOTEQKB R5 FALSE [+27]
  LOADK R7 K9 ["PVInstance"]
  NAMECALL R5 R4 K10 ["FindFirstChildWhichIsA"]
  CALL R5 2 1
  JUMPIFEQKNIL R5 [+21]
  GETUPVAL R5 0
  JUMPIF R5 [+2]
  GETUPVAL R5 1
  JUMPIFNOT R5 [+10]
  JUMPIFNOT R1 [+7]
  LOADK R7 K0 ["AssetConfigPackage"]
  LOADK R8 K11 ["Non3DRoot3DDescendentsWarning"]
  NAMECALL R5 R1 K2 ["getText"]
  CALL R5 3 1
  MOVE R3 R5
  JUMP [+8]
  LOADNIL R3
  JUMP [+6]
  LOADK R7 K0 ["AssetConfigPackage"]
  LOADK R8 K11 ["Non3DRoot3DDescendentsWarning"]
  NAMECALL R5 R1 K2 ["getText"]
  CALL R5 3 1
  MOVE R3 R5
  GETIMPORT R5 K13 [pairs]
  NAMECALL R6 R4 K14 ["GetDescendants"]
  CALL R6 1 -1
  CALL R5 -1 3
  FORGPREP_NEXT R5
  LOADK R12 K15 ["PackageLink"]
  NAMECALL R10 R9 K5 ["IsA"]
  CALL R10 2 1
  JUMPIFNOT R10 [+37]
  GETTABLEKS R10 R9 K16 ["Parent"]
  JUMPIFEQ R10 R4 [+34]
  GETTABLEKS R10 R9 K17 ["Status"]
  JUMPIFEQKNIL R10 [+30]
  GETTABLEKS R10 R9 K17 ["Status"]
  JUMPIFEQKS R10 K18 ["Changed"] [+5]
  GETTABLEKS R10 R9 K17 ["Status"]
  JUMPIFNOTEQKS R10 K19 ["Changed + New Version Available"] [+22]
  LOADB R2 0
  GETUPVAL R10 0
  JUMPIF R10 [+2]
  GETUPVAL R10 1
  JUMPIFNOT R10 [+10]
  JUMPIFNOT R1 [+7]
  LOADK R12 K0 ["AssetConfigPackage"]
  LOADK R13 K20 ["CantConvertIfChildPackageHasUnpublishedChangesWarning"]
  NAMECALL R10 R1 K2 ["getText"]
  CALL R10 3 1
  MOVE R3 R10
  JUMP [+8]
  LOADNIL R3
  JUMP [+6]
  LOADK R12 K0 ["AssetConfigPackage"]
  LOADK R13 K20 ["CantConvertIfChildPackageHasUnpublishedChangesWarning"]
  NAMECALL R10 R1 K2 ["getText"]
  CALL R10 3 1
  MOVE R3 R10
  FORGLOOP R5 2 [-43]
  RETURN R2 2

PROTO_24:
  LOADK R3 K0 ["PackageLink"]
  NAMECALL R1 R0 K1 ["FindFirstChildOfClass"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+3]
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_25:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getUGCBodyPartsAssetTypeMap"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 1
  JUMPIFNOTEQKNIL R3 [+3]
  LOADNIL R4
  RETURN R4 1
  NEWTABLE R4 0 0
  MOVE R5 R3
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R8 K1 ["Name"]
  GETTABLE R11 R4 R10
  JUMPIFEQKNIL R11 [+4]
  ADDK R12 R11 K2 [1]
  SETTABLE R12 R4 R10
  JUMP [+2]
  LOADN R12 1
  SETTABLE R12 R4 R10
  FORGLOOP R5 1 [-11]
  RETURN R4 1

PROTO_26:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["UGCBundleTypeStringToEnumeration"]
  GETTABLE R1 R2 R0
  RETURN R1 1

PROTO_27:
  JUMPIFEQKNIL R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["None"]
  JUMPIFNOTEQ R1 R2 [+3]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R4 R1 K1 ["rawValue"]
  CALL R4 0 1
  GETTABLE R3 R0 R4
  GETTABLEKS R2 R3 K2 ["allowedAssetTypeSettings"]
  RETURN R2 1

PROTO_28:
  NEWTABLE R2 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getAllowedAssetTypeSettingsForBundle"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R2 1
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["AllowedAssetStringsMetadataToAssetTypeMap"]
  GETTABLE R9 R10 R7
  JUMPIFEQKNIL R9 [+8]
  FASTCALL2 TABLE_INSERT R2 R9 [+5]
  MOVE R11 R2
  MOVE R12 R9
  GETIMPORT R10 K4 [table.insert]
  CALL R10 2 0
  FORGLOOP R4 1 [-14]
  RETURN R2 1

PROTO_29:
  NEWTABLE R2 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getAllowedAssetTypeSettingsForBundle"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R2 1
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["AllowedAssetStringsMetadataToAssetTypeMap"]
  GETTABLE R9 R10 R7
  JUMPIFEQKNIL R9 [+12]
  DUPTABLE R12 K4 [{"assetType", "settings"}]
  SETTABLEKS R9 R12 K2 ["assetType"]
  SETTABLEKS R8 R12 K3 ["settings"]
  FASTCALL2 TABLE_INSERT R2 R12 [+4]
  MOVE R11 R2
  GETIMPORT R10 K7 [table.insert]
  CALL R10 2 0
  FORGLOOP R4 2 [-18]
  RETURN R2 1

PROTO_30:
  GETIMPORT R3 K2 [table.find]
  MOVE R4 R1
  MOVE R5 R0
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_31:
  LOADK R5 K0 ["Model"]
  NAMECALL R3 R0 K1 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+2]
  LOADNIL R4
  RETURN R4 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["getAllowedAssetTypeEnumsForBundle"]
  MOVE R5 R1
  MOVE R6 R2
  CALL R4 2 1
  NEWTABLE R5 0 0
  GETUPVAL R9 1
  GETTABLEKS R6 R9 K3 ["UGC_BODY_PARTS"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  MOVE R13 R10
  NAMECALL R11 R0 K4 ["FindFirstChild"]
  CALL R11 2 1
  JUMPIFEQKNIL R11 [+32]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
  GETTABLE R12 R13 R9
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["isAllowedUGCAssetType"]
  MOVE R14 R12
  MOVE R15 R4
  CALL R13 2 1
  JUMPIFNOT R13 [+20]
  GETTABLE R13 R5 R12
  JUMPIFNOTEQKNIL R13 [+8]
  NEWTABLE R13 0 1
  MOVE R14 R11
  SETLIST R13 R14 1 [1]
  SETTABLE R13 R5 R12
  JUMP [+10]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K7 ["append"]
  GETTABLE R14 R5 R12
  NEWTABLE R15 0 1
  MOVE R16 R11
  SETLIST R15 R16 1 [1]
  CALL R13 2 0
  FORGLOOP R6 2 [-38]
  RETURN R5 1

PROTO_32:
  GETIMPORT R1 K3 [Enum.AssetType.DynamicHead]
  JUMPIFEQ R0 R1 [+13]
  GETIMPORT R1 K5 [Enum.AssetType.EyebrowAccessory]
  JUMPIFEQ R0 R1 [+9]
  GETIMPORT R1 K7 [Enum.AssetType.EyelashAccessory]
  JUMPIFEQ R0 R1 [+5]
  GETIMPORT R1 K9 [Enum.AssetType.HairAccessory]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADB R1 0
  RETURN R1 1
  LOADB R1 1
  RETURN R1 1

PROTO_33:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["getUGCBodyPartsAssetTypeMap"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 1
  JUMPIFNOTEQKNIL R4 [+3]
  LOADNIL R5
  RETURN R5 1
  NEWTABLE R5 0 0
  MOVE R6 R4
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["AssetTypeRequiresFolderForUpload"]
  MOVE R12 R9
  CALL R11 1 1
  JUMPIFNOT R11 [+50]
  GETIMPORT R12 K4 [Instance.new]
  LOADK R13 K5 ["Folder"]
  CALL R12 1 1
  GETUPVAL R13 1
  SETTABLEKS R13 R12 K6 ["Name"]
  MOVE R13 R10
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  SETTABLEKS R12 R17 K7 ["Parent"]
  FORGLOOP R13 2 [-3]
  NEWTABLE R13 0 1
  MOVE R14 R12
  SETLIST R13 R14 1 [1]
  SETTABLE R13 R5 R9
  JUMPIFNOT R3 [+29]
  NAMECALL R13 R12 K8 ["Clone"]
  CALL R13 1 1
  GETUPVAL R14 2
  SETTABLEKS R14 R13 K6 ["Name"]
  GETTABLE R15 R5 R9
  FASTCALL2 TABLE_INSERT R15 R13 [+4]
  MOVE R16 R13
  GETIMPORT R14 K11 [table.insert]
  CALL R14 2 0
  GETIMPORT R14 K4 [Instance.new]
  LOADK R15 K5 ["Folder"]
  CALL R14 1 1
  GETUPVAL R15 3
  SETTABLEKS R15 R14 K6 ["Name"]
  GETTABLE R16 R5 R9
  FASTCALL2 TABLE_INSERT R16 R14 [+4]
  MOVE R17 R14
  GETIMPORT R15 K11 [table.insert]
  CALL R15 2 0
  JUMP [+1]
  SETTABLE R10 R5 R9
  FORGLOOP R6 2 [-58]
  RETURN R5 1

PROTO_34:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["UGCBundleTypes"]
  GETTABLEKS R2 R3 K1 ["Body"]
  JUMPIFNOTEQ R0 R2 [+7]
  LOADK R4 K2 ["AssetConfig"]
  LOADK R5 K3 ["UGCBodyBundleName"]
  NAMECALL R2 R1 K4 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["UGCBundleTypes"]
  GETTABLEKS R2 R3 K5 ["DynamicHead"]
  JUMPIFNOTEQ R0 R2 [+7]
  LOADK R4 K2 ["AssetConfig"]
  LOADK R5 K6 ["UGCDynamicHeadBundleName"]
  NAMECALL R2 R1 K4 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  LOADK R2 K7 [""]
  RETURN R2 1

PROTO_35:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  NAMECALL R1 R0 K0 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K1 ["Motor6D"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+8]
  GETTABLEKS R6 R5 K3 ["Name"]
  JUMPIFEQKS R6 K4 ["OriginalSize"] [+5]
  GETTABLEKS R6 R5 K3 ["Name"]
  JUMPIFNOTEQKS R6 K5 ["OriginalPosition"] [+7]
  NAMECALL R6 R5 K6 ["Destroy"]
  CALL R6 1 0
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIF R6 [+46]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+13]
  LOADK R8 K7 ["Weld"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+8]
  GETTABLEKS R6 R5 K3 ["Name"]
  JUMPIFNOTEQKS R6 K8 ["AccessoryWeld"] [+5]
  NAMECALL R6 R5 K6 ["Destroy"]
  CALL R6 1 0
  JUMP [+30]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+27]
  LOADK R8 K9 ["MeshPart"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+22]
  GETTABLEKS R6 R5 K10 ["Parent"]
  LOADK R8 K11 ["Accessory"]
  NAMECALL R6 R6 K2 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+15]
  GETTABLEKS R6 R5 K12 ["TextureID"]
  JUMPIFNOTEQKS R6 K13 [""] [+12]
  LOADK R8 K14 ["SurfaceAppearance"]
  NAMECALL R6 R5 K15 ["FindFirstChildWhichIsA"]
  CALL R6 2 1
  JUMPIF R6 [+6]
  GETIMPORT R6 K18 [Instance.new]
  LOADK R7 K14 ["SurfaceAppearance"]
  CALL R6 1 1
  SETTABLEKS R5 R6 K10 ["Parent"]
  FORGLOOP R1 2 [-66]
  RETURN R0 0

PROTO_36:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  NEWTABLE R3 0 0
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R10 R8 K1 ["settings"]
  GETTABLEKS R9 R10 K2 ["minimumQuantity"]
  JUMPIFNOTEQKN R9 K3 [0] [+9]
  GETTABLEKS R11 R8 K4 ["assetType"]
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K7 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-15]
  RETURN R3 1

PROTO_37:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getOptionalAssetTypesForBundle"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getUGCBodyPartsAssetTypeMap"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 1
  NEWTABLE R5 0 0
  JUMPIFNOTEQKNIL R4 [+2]
  RETURN R5 1
  MOVE R6 R3
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLE R11 R4 R10
  JUMPIFNOTEQKNIL R11 [+8]
  FASTCALL2 TABLE_INSERT R5 R10 [+5]
  MOVE R12 R5
  MOVE R13 R10
  GETIMPORT R11 K4 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-11]
  RETURN R5 1

PROTO_38:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getAllowedAssetTypeEnumsForBundle"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  NEWTABLE R3 0 0
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  SETTABLE R8 R3 R8
  FORGLOOP R4 2 [-2]
  RETURN R3 1

PROTO_39:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  NAMECALL R3 R0 K2 ["GetChildren"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R6 K4 ["Name"]
  GETTABLE R7 R8 R9
  JUMPIFNOTEQKNIL R7 [+14]
  LOADK R9 K5 ["MeshPart"]
  NAMECALL R7 R6 K6 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+8]
  GETTABLEKS R9 R6 K4 ["Name"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K9 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-22]
  RETURN R1 1

PROTO_40:
  JUMPIFEQKNIL R0 [+27]
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["userdata"] [+20]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["isUGCBundleType"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  GETTABLEKS R1 R0 K4 ["rawValue"]
  CALL R1 0 -1
  RETURN R1 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["isCatalogAsset"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K6 ["Name"]
  RETURN R1 1
  LOADK R1 K7 [""]
  RETURN R1 1

PROTO_41:
  JUMPIFNOTEQKS R0 K0 ["USD"] [+3]
  LOADK R1 K1 ["$"]
  RETURN R1 1
  RETURN R0 1

PROTO_42:
  GETTABLEKS R3 R0 K0 ["quantity"]
  GETTABLEKS R2 R3 K1 ["significand"]
  JUMPIFNOTEQKN R2 K2 [0] [+16]
  GETTABLEKS R3 R0 K0 ["quantity"]
  GETTABLEKS R2 R3 K3 ["exponent"]
  JUMPIFNOTEQKN R2 K2 [0] [+10]
  JUMPIFNOT R1 [+6]
  LOADK R4 K4 ["General"]
  LOADK R5 K5 ["Free"]
  NAMECALL R2 R1 K6 ["getText"]
  CALL R2 3 1
  RETURN R2 1
  LOADK R2 K5 ["Free"]
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["stringFromCurrencyCode"]
  GETTABLEKS R3 R0 K8 ["currencyCode"]
  CALL R2 1 1
  GETTABLEKS R5 R0 K0 ["quantity"]
  GETTABLEKS R4 R5 K1 ["significand"]
  LOADN R6 10
  GETTABLEKS R8 R0 K0 ["quantity"]
  GETTABLEKS R7 R8 K3 ["exponent"]
  POW R5 R6 R7
  MUL R3 R4 R5
  GETIMPORT R4 K11 [string.format]
  LOADK R5 K12 ["%s%.2f"]
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Core"]
  GETTABLEKS R1 R2 K4 ["Util"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["AssetConfigConstants"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["fixUpPreValidation"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["getUserId"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K10 ["Urls"]
  CALL R5 1 1
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R6 K12 ["Cryo"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R6 K13 ["Framework"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R6 K14 ["Dash"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K3 ["Core"]
  GETTABLEKS R12 R13 K15 ["Types"]
  GETTABLEKS R11 R12 K16 ["MarketplaceFiatServiceTypes"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R1 K17 ["getAllowedAssetTypeEnums"]
  CALL R11 1 1
  GETIMPORT R13 K19 [settings]
  CALL R13 0 1
  LOADK R15 K20 ["FileMaxSizeBytes"]
  NAMECALL R13 R13 K21 ["GetFVariable"]
  CALL R13 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R12 K23 [tonumber]
  CALL R12 -1 1
  GETIMPORT R13 K25 [game]
  LOADK R15 K26 ["UseDefaultThumbnailForAnimation"]
  NAMECALL R13 R13 K27 ["GetFastFlag"]
  CALL R13 2 1
  GETIMPORT R14 K25 [game]
  LOADK R16 K28 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
  NAMECALL R14 R14 K27 ["GetFastFlag"]
  CALL R14 2 1
  GETIMPORT R15 K25 [game]
  LOADK R17 K29 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
  NAMECALL R15 R15 K27 ["GetFastFlag"]
  CALL R15 2 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R17 R1 K30 ["DebugFlags"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R21 R0 K3 ["Core"]
  GETTABLEKS R20 R21 K4 ["Util"]
  GETTABLEKS R19 R20 K31 ["SharedFlags"]
  GETTABLEKS R18 R19 K32 ["getFFlagEnableUGCBodyUploadFlow"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R22 R0 K3 ["Core"]
  GETTABLEKS R21 R22 K4 ["Util"]
  GETTABLEKS R20 R21 K31 ["SharedFlags"]
  GETTABLEKS R19 R20 K33 ["getFFlagEnableUGCFixUploadInstances"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R23 R0 K3 ["Core"]
  GETTABLEKS R22 R23 K4 ["Util"]
  GETTABLEKS R21 R22 K31 ["SharedFlags"]
  GETTABLEKS R20 R21 K34 ["getFFlagEnableUGCToolboxFixAccessories"]
  CALL R19 1 1
  GETIMPORT R20 K6 [require]
  GETTABLEKS R22 R1 K31 ["SharedFlags"]
  GETTABLEKS R21 R22 K35 ["getFFlagEnableUGCMissingPartsMessage"]
  CALL R20 1 1
  GETIMPORT R21 K6 [require]
  GETTABLEKS R24 R0 K3 ["Core"]
  GETTABLEKS R23 R24 K36 ["Localization"]
  GETTABLEKS R22 R23 K37 ["getLocalizedAssetTextMap"]
  CALL R21 1 1
  GETIMPORT R22 K6 [require]
  GETTABLEKS R24 R1 K31 ["SharedFlags"]
  GETTABLEKS R23 R24 K38 ["getFFlagEnableUGCUploadFlowAnalytics"]
  CALL R22 1 1
  GETIMPORT R23 K25 [game]
  LOADK R25 K39 ["EnableUGCBundleUnknownMeshPartFiltering"]
  NAMECALL R23 R23 K27 ["GetFastFlag"]
  CALL R23 2 1
  GETIMPORT R24 K25 [game]
  LOADK R26 K40 ["StudioService"]
  NAMECALL R24 R24 K41 ["GetService"]
  CALL R24 2 1
  MOVE R26 R17
  CALL R26 0 1
  JUMPIFNOT R26 [+2]
  LOADK R25 K42 ["R15ArtistIntent"]
  JUMP [+1]
  LOADNIL R25
  MOVE R27 R17
  CALL R27 0 1
  JUMPIFNOT R27 [+2]
  LOADK R26 K43 ["R15Fixed"]
  JUMP [+1]
  LOADNIL R26
  MOVE R28 R17
  CALL R28 0 1
  JUMPIFNOT R28 [+2]
  LOADK R27 K44 ["R6"]
  JUMP [+1]
  LOADNIL R27
  DUPCLOSURE R28 K45 [PROTO_0]
  NEWTABLE R29 64 0
  MOVE R30 R17
  CALL R30 0 1
  JUMPIFNOT R30 [+4]
  DUPCLOSURE R30 K46 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K47 ["isUGCBundleType"]
  DUPCLOSURE R30 K48 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K49 ["isReadyForSale"]
  DUPCLOSURE R30 K50 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K51 ["isOnSale"]
  DUPCLOSURE R30 K52 [PROTO_4]
  SETTABLEKS R30 R29 K53 ["getMarketplaceFeesPercentage"]
  DUPCLOSURE R30 K54 [PROTO_5]
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K55 ["calculatePotentialEarning"]
  DUPCLOSURE R30 K56 [PROTO_6]
  SETTABLEKS R30 R29 K57 ["getPriceRange"]
  DUPCLOSURE R30 K58 [PROTO_7]
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K59 ["getMinPrice"]
  DUPCLOSURE R30 K60 [PROTO_8]
  CAPTURE VAL R17
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K61 ["getPriceInfo"]
  MOVE R30 R17
  CALL R30 0 1
  JUMPIFNOT R30 [+4]
  DUPCLOSURE R30 K62 [PROTO_9]
  CAPTURE VAL R11
  SETTABLEKS R30 R29 K63 ["hasAllowedAssetTypesForRelease"]
  DUPCLOSURE R30 K64 [PROTO_10]
  CAPTURE VAL R24
  CAPTURE VAL R2
  CAPTURE VAL R12
  SETTABLEKS R30 R29 K65 ["promptImagePicker"]
  DUPCLOSURE R30 K66 [PROTO_11]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K67 ["isCatalogAsset"]
  DUPCLOSURE R30 K68 [PROTO_12]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K69 ["isMarketplaceAsset"]
  DUPCLOSURE R30 K70 [PROTO_13]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K71 ["isBuyableMarketplaceAsset"]
  DUPCLOSURE R30 K72 [PROTO_14]
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K73 ["getFlowStartScreen"]
  DUPCLOSURE R30 K74 [PROTO_15]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K75 ["getGenreTypes"]
  DUPCLOSURE R30 K76 [PROTO_16]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K77 ["getGenreIndex"]
  DUPCLOSURE R30 K78 [PROTO_17]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K79 ["getGenreName"]
  DUPCLOSURE R30 K80 [PROTO_18]
  CAPTURE VAL R4
  SETTABLEKS R30 R29 K81 ["getOwnerDropDownContent"]
  DUPCLOSURE R30 K82 [PROTO_20]
  SETTABLEKS R30 R29 K83 ["getClonedInstances"]
  DUPCLOSURE R30 K84 [PROTO_21]
  CAPTURE VAL R2
  CAPTURE VAL R29
  CAPTURE VAL R13
  SETTABLEKS R30 R29 K85 ["getPreviewType"]
  DUPCLOSURE R30 K86 [PROTO_22]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K87 ["getResultThumbnail"]
  DUPCLOSURE R30 K88 [PROTO_23]
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K89 ["isPackagePublishAllowed"]
  DUPCLOSURE R30 K90 [PROTO_24]
  SETTABLEKS R30 R29 K91 ["isPackage"]
  MOVE R30 R17
  CALL R30 0 1
  JUMPIFNOT R30 [+75]
  DUPCLOSURE R30 K92 [PROTO_25]
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K93 ["getUGCBodyBundleAssetQuantities"]
  DUPCLOSURE R30 K94 [PROTO_26]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K95 ["getUGCBundleTypeFromString"]
  DUPCLOSURE R30 K96 [PROTO_27]
  CAPTURE VAL R7
  SETTABLEKS R30 R29 K97 ["getAllowedAssetTypeSettingsForBundle"]
  DUPCLOSURE R30 K98 [PROTO_28]
  CAPTURE VAL R29
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K99 ["getAllowedAssetTypeEnumsForBundle"]
  DUPCLOSURE R30 K100 [PROTO_29]
  CAPTURE VAL R29
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K101 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
  DUPCLOSURE R30 K102 [PROTO_30]
  SETTABLEKS R30 R29 K103 ["isAllowedUGCAssetType"]
  DUPCLOSURE R30 K104 [PROTO_31]
  CAPTURE VAL R29
  CAPTURE VAL R2
  CAPTURE VAL R9
  SETTABLEKS R30 R29 K105 ["getUGCBodyPartsAssetTypeMap"]
  DUPCLOSURE R30 K106 [PROTO_32]
  SETTABLEKS R30 R29 K107 ["AssetTypeRequiresFolderForUpload"]
  DUPCLOSURE R30 K108 [PROTO_33]
  CAPTURE VAL R29
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R27
  SETTABLEKS R30 R29 K109 ["createUGCBodyPartFolders"]
  DUPCLOSURE R30 K110 [PROTO_34]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K111 ["getLocalizedUGCBundleName"]
  DUPCLOSURE R30 K112 [PROTO_35]
  CAPTURE VAL R19
  CAPTURE VAL R3
  CAPTURE VAL R18
  SETTABLEKS R30 R29 K113 ["sanitizeForValidation"]
  MOVE R30 R20
  CALL R30 0 1
  JUMPIFNOT R30 [+8]
  DUPCLOSURE R30 K114 [PROTO_36]
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K115 ["getOptionalAssetTypesForBundle"]
  DUPCLOSURE R30 K116 [PROTO_37]
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K117 ["getOptionalBodyPartsNotFound"]
  JUMPIFNOT R23 [+8]
  DUPCLOSURE R30 K118 [PROTO_38]
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K119 ["getAllowedAssetTypesByBundleType"]
  DUPCLOSURE R30 K120 [PROTO_39]
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K121 ["getUnknownMeshPartNames"]
  DUPCLOSURE R30 K122 [PROTO_40]
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K123 ["getAvatarAssetTypeAsString"]
  DUPCLOSURE R30 K124 [PROTO_41]
  SETTABLEKS R30 R29 K125 ["stringFromCurrencyCode"]
  DUPCLOSURE R30 K126 [PROTO_42]
  CAPTURE VAL R29
  SETTABLEKS R30 R29 K127 ["displayStringFromMoney"]
  RETURN R29 1
