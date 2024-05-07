PROTO_0:
  GETTABLEKS R1 R0 K0 ["fiatProduct"]
  JUMPIFNOT R1 [+34]
  GETTABLEKS R2 R0 K0 ["fiatProduct"]
  GETTABLEKS R1 R2 K1 ["purchasable"]
  GETTABLEKS R3 R0 K0 ["fiatProduct"]
  GETTABLEKS R2 R3 K2 ["purchasePrice"]
  JUMPIFNOT R1 [+1]
  JUMPIF R2 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["ASSET_STATUS"]
  GETTABLEKS R3 R4 K4 ["OffSale"]
  RETURN R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["isFree"]
  MOVE R5 R2
  CALL R4 1 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["ASSET_STATUS"]
  GETTABLEKS R3 R4 K6 ["Free"]
  RETURN R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["ASSET_STATUS"]
  GETTABLEKS R3 R4 K7 ["OnSale"]
  RETURN R3 1
  GETTABLEKS R1 R0 K8 ["product"]
  JUMPIFNOT R1 [+40]
  GETTABLEKS R2 R0 K8 ["product"]
  GETTABLEKS R1 R2 K9 ["isForSaleOrIsPublicDomain"]
  JUMPIFNOT R1 [+29]
  GETTABLEKS R4 R0 K8 ["product"]
  GETTABLEKS R3 R4 K10 ["price"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K12 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K13 ["number"] [+14]
  GETTABLEKS R3 R0 K8 ["product"]
  GETTABLEKS R2 R3 K10 ["price"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["ASSET_STATUS"]
  GETTABLEKS R1 R2 K7 ["OnSale"]
  RETURN R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["ASSET_STATUS"]
  GETTABLEKS R1 R2 K6 ["Free"]
  RETURN R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["ASSET_STATUS"]
  GETTABLEKS R1 R2 K4 ["OffSale"]
  RETURN R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["ASSET_STATUS"]
  GETTABLEKS R1 R2 K4 ["OffSale"]
  RETURN R1 1

PROTO_1:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETTABLEKS R2 R0 K1 ["asset"]
  JUMPIFNOT R2 [+142]
  DUPTABLE R2 K15 [{"Id", "Name", "TypeId", "AssetGenres", "AssetSubTypes", "IsEndorsed", "Description", "Duration", "Created", "Updated", "HasScripts", "CreatingUniverseId", "Status"}]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K16 ["id"]
  SETTABLEKS R3 R2 K2 ["Id"]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K17 ["name"]
  SETTABLEKS R3 R2 K3 ["Name"]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K18 ["typeId"]
  SETTABLEKS R3 R2 K4 ["TypeId"]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K19 ["assetGenres"]
  SETTABLEKS R3 R2 K5 ["AssetGenres"]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K20 ["assetSubTypes"]
  SETTABLEKS R3 R2 K6 ["AssetSubTypes"]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K21 ["isEndorsed"]
  SETTABLEKS R3 R2 K7 ["IsEndorsed"]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K22 ["description"]
  SETTABLEKS R3 R2 K8 ["Description"]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K23 ["duration"]
  SETTABLEKS R3 R2 K9 ["Duration"]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K24 ["createdUtc"]
  SETTABLEKS R3 R2 K10 ["Created"]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K25 ["updatedUtc"]
  SETTABLEKS R3 R2 K11 ["Updated"]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K26 ["hasScripts"]
  SETTABLEKS R3 R2 K12 ["HasScripts"]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R3 R4 K27 ["creatingUniverseId"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K13 ["CreatingUniverseId"]
  GETGLOBAL R3 K28 ["itemsDetailsToCreationsDistributionStatus"]
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K14 ["Status"]
  SETTABLEKS R2 R1 K29 ["Asset"]
  GETTABLEKS R3 R0 K1 ["asset"]
  GETTABLEKS R2 R3 K30 ["audioDetails"]
  JUMPIFNOT R2 [+51]
  DUPTABLE R2 K37 [{"Type", "Artist", "MusicAlbum", "MusicGenre", "SoundEffectCategory", "SoundEffectSubcategory"}]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K30 ["audioDetails"]
  GETTABLEKS R3 R4 K38 ["audioType"]
  SETTABLEKS R3 R2 K31 ["Type"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K30 ["audioDetails"]
  GETTABLEKS R3 R4 K39 ["artist"]
  SETTABLEKS R3 R2 K32 ["Artist"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K30 ["audioDetails"]
  GETTABLEKS R3 R4 K40 ["musicAlbum"]
  SETTABLEKS R3 R2 K33 ["MusicAlbum"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K30 ["audioDetails"]
  GETTABLEKS R3 R4 K41 ["musicGenre"]
  SETTABLEKS R3 R2 K34 ["MusicGenre"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K30 ["audioDetails"]
  GETTABLEKS R3 R4 K42 ["soundEffectCategory"]
  SETTABLEKS R3 R2 K35 ["SoundEffectCategory"]
  GETTABLEKS R5 R0 K1 ["asset"]
  GETTABLEKS R4 R5 K30 ["audioDetails"]
  GETTABLEKS R3 R4 K43 ["soundEffectSubcategory"]
  SETTABLEKS R3 R2 K36 ["SoundEffectSubcategory"]
  SETTABLEKS R2 R1 K44 ["AudioDetails"]
  GETTABLEKS R2 R0 K45 ["creator"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R2 K47 [{"Id", "Name", "Type", "IsVerifiedCreator"}]
  GETTABLEKS R4 R0 K45 ["creator"]
  GETTABLEKS R3 R4 K16 ["id"]
  SETTABLEKS R3 R2 K2 ["Id"]
  GETTABLEKS R4 R0 K45 ["creator"]
  GETTABLEKS R3 R4 K17 ["name"]
  SETTABLEKS R3 R2 K3 ["Name"]
  GETTABLEKS R4 R0 K45 ["creator"]
  GETTABLEKS R3 R4 K48 ["type"]
  SETTABLEKS R3 R2 K31 ["Type"]
  GETTABLEKS R4 R0 K45 ["creator"]
  GETTABLEKS R3 R4 K49 ["isVerifiedCreator"]
  SETTABLEKS R3 R2 K46 ["IsVerifiedCreator"]
  SETTABLEKS R2 R1 K50 ["Creator"]
  GETTABLEKS R2 R0 K51 ["product"]
  JUMPIFNOT R2 [+15]
  DUPTABLE R2 K54 [{"ProductId", "Price"}]
  GETTABLEKS R4 R0 K51 ["product"]
  GETTABLEKS R3 R4 K55 ["productId"]
  SETTABLEKS R3 R2 K52 ["ProductId"]
  GETTABLEKS R4 R0 K51 ["product"]
  GETTABLEKS R3 R4 K56 ["price"]
  SETTABLEKS R3 R2 K53 ["Price"]
  SETTABLEKS R2 R1 K57 ["Product"]
  GETTABLEKS R2 R0 K58 ["fiatProduct"]
  JUMPIFNOT R2 [+15]
  DUPTABLE R2 K61 [{"PurchasePrice", "Purchasable"}]
  GETTABLEKS R4 R0 K58 ["fiatProduct"]
  GETTABLEKS R3 R4 K62 ["purchasePrice"]
  SETTABLEKS R3 R2 K59 ["PurchasePrice"]
  GETTABLEKS R4 R0 K58 ["fiatProduct"]
  GETTABLEKS R3 R4 K63 ["purchasable"]
  SETTABLEKS R3 R2 K60 ["Purchasable"]
  SETTABLEKS R2 R1 K64 ["FiatProduct"]
  GETTABLEKS R2 R0 K65 ["thumbnail"]
  JUMPIFNOT R2 [+33]
  DUPTABLE R2 K71 [{"Final", "Url", "RetryUrl", "UserId", "EndpointType"}]
  GETTABLEKS R4 R0 K65 ["thumbnail"]
  GETTABLEKS R3 R4 K72 ["final"]
  SETTABLEKS R3 R2 K66 ["Final"]
  GETTABLEKS R4 R0 K65 ["thumbnail"]
  GETTABLEKS R3 R4 K73 ["url"]
  SETTABLEKS R3 R2 K67 ["Url"]
  GETTABLEKS R4 R0 K65 ["thumbnail"]
  GETTABLEKS R3 R4 K74 ["retryUrl"]
  SETTABLEKS R3 R2 K68 ["RetryUrl"]
  GETTABLEKS R4 R0 K65 ["thumbnail"]
  GETTABLEKS R3 R4 K75 ["userId"]
  SETTABLEKS R3 R2 K69 ["UserId"]
  GETTABLEKS R4 R0 K65 ["thumbnail"]
  GETTABLEKS R3 R4 K76 ["endpointType"]
  SETTABLEKS R3 R2 K70 ["EndpointType"]
  SETTABLEKS R2 R1 K77 ["Thumbnail"]
  GETTABLEKS R2 R0 K78 ["voting"]
  JUMPIFNOT R2 [+57]
  DUPTABLE R2 K88 [{"ShowVotes", "UpVotes", "DownVotes", "VoteCount", "UpVotePercent", "CanVote", "UserVote", "HasVoted", "ReasonForNotVoteable"}]
  GETTABLEKS R4 R0 K78 ["voting"]
  GETTABLEKS R3 R4 K89 ["showVotes"]
  SETTABLEKS R3 R2 K79 ["ShowVotes"]
  GETTABLEKS R4 R0 K78 ["voting"]
  GETTABLEKS R3 R4 K90 ["upVotes"]
  SETTABLEKS R3 R2 K80 ["UpVotes"]
  GETTABLEKS R4 R0 K78 ["voting"]
  GETTABLEKS R3 R4 K91 ["downVotes"]
  SETTABLEKS R3 R2 K81 ["DownVotes"]
  GETTABLEKS R4 R0 K78 ["voting"]
  GETTABLEKS R3 R4 K92 ["voteCount"]
  SETTABLEKS R3 R2 K82 ["VoteCount"]
  GETTABLEKS R4 R0 K78 ["voting"]
  GETTABLEKS R3 R4 K93 ["upVotePercent"]
  SETTABLEKS R3 R2 K83 ["UpVotePercent"]
  GETTABLEKS R4 R0 K78 ["voting"]
  GETTABLEKS R3 R4 K94 ["canVote"]
  SETTABLEKS R3 R2 K84 ["CanVote"]
  GETTABLEKS R4 R0 K78 ["voting"]
  GETTABLEKS R3 R4 K95 ["userVote"]
  SETTABLEKS R3 R2 K85 ["UserVote"]
  GETTABLEKS R4 R0 K78 ["voting"]
  GETTABLEKS R3 R4 K96 ["hasVoted"]
  SETTABLEKS R3 R2 K86 ["HasVoted"]
  GETTABLEKS R4 R0 K78 ["voting"]
  GETTABLEKS R3 R4 K97 ["reasonForNotVoteable"]
  SETTABLEKS R3 R2 K87 ["ReasonForNotVoteable"]
  SETTABLEKS R2 R1 K98 ["Voting"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  GETTABLEKS R3 R0 K1 ["Context"]
  MOVE R4 R1
  CALL R2 2 1
  SETTABLEKS R2 R0 K1 ["Context"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["new"]
  CALL R4 0 1
  DUPTABLE R5 K7 [{"Description", "Id", "Name", "TypeId", "AssetGenres", "Status"}]
  GETTABLEKS R6 R0 K8 ["description"]
  SETTABLEKS R6 R5 K1 ["Description"]
  GETTABLEKS R6 R0 K9 ["assetId"]
  SETTABLEKS R6 R5 K2 ["Id"]
  GETTABLEKS R6 R0 K10 ["name"]
  SETTABLEKS R6 R5 K3 ["Name"]
  MOVE R6 R1
  JUMPIFNOT R6 [+2]
  GETTABLEKS R6 R1 K11 ["Value"]
  SETTABLEKS R6 R5 K4 ["TypeId"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K5 ["AssetGenres"]
  GETTABLEKS R6 R0 K12 ["status"]
  SETTABLEKS R6 R5 K6 ["Status"]
  SETTABLEKS R5 R4 K13 ["Asset"]
  DUPTABLE R5 K15 [{"Id", "Name", "Type"}]
  GETTABLEKS R6 R0 K16 ["creatorTargetId"]
  SETTABLEKS R6 R5 K2 ["Id"]
  SETTABLEKS R2 R5 K3 ["Name"]
  SETTABLEKS R3 R5 K14 ["Type"]
  SETTABLEKS R5 R4 K17 ["Creator"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Core"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K10 ["AssetConfigConstants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Core"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K11 ["FiatUtil"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Core"]
  GETTABLEKS R8 R9 K12 ["Types"]
  GETTABLEKS R7 R8 K13 ["MarketplaceFiatServiceTypes"]
  CALL R6 1 1
  GETTABLEKS R8 R2 K14 ["SharedFlags"]
  GETTABLEKS R7 R8 K15 ["getFFlagAssetPreviewContentAttribution"]
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETGLOBAL R8 K17 ["itemsDetailsToCreationsDistributionStatus"]
  NEWTABLE R8 4 0
  DUPCLOSURE R9 K18 [PROTO_1]
  SETTABLEKS R9 R8 K19 ["new"]
  DUPCLOSURE R9 K20 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K21 ["fromItemDetailsRequest"]
  DUPCLOSURE R9 K22 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K23 ["AddContextToItemDetails"]
  DUPCLOSURE R9 K24 [PROTO_4]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K25 ["fromCreationsDetails"]
  RETURN R8 1
