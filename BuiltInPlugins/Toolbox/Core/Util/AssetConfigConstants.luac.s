PROTO_0:
  DUPTABLE R2 K3 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R0 R2 K0 ["type"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["isCatalog"]
  JUMPIFEQKB R1 TRUE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["isUploadable"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R2 K3 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R0 R2 K0 ["type"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["isMarketplace"]
  JUMPIFEQKB R1 TRUE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["isBuyable"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["enumerate"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K7 ["Core"]
  GETTABLEKS R2 R3 K8 ["Util"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K7 ["Core"]
  GETTABLEKS R6 R7 K8 ["Util"]
  GETTABLEKS R5 R6 K9 ["SharedFlags"]
  GETTABLEKS R4 R5 K10 ["getFFlagToolboxRestrictAssetConfig"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R2 K11 ["convertArrayToTable"]
  CALL R4 1 1
  NEWTABLE R5 64 0
  LOADN R6 76
  SETTABLEKS R6 R5 K12 ["WIDTH"]
  LOADN R6 92
  SETTABLEKS R6 R5 K13 ["HEIGHT"]
  LOADN R6 132
  SETTABLEKS R6 R5 K14 ["MIN_WIDTH"]
  LOADN R6 244
  SETTABLEKS R6 R5 K15 ["MIN_HEIGHT"]
  LOADK R6 K16 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
  SETTABLEKS R6 R5 K17 ["TERM_OF_USE_URL"]
  LOADK R6 K18 ["https://www.roblox.com/my/account#!/info"]
  SETTABLEKS R6 R5 K19 ["ACCOUNT_SETTING_URL"]
  LOADN R6 50
  SETTABLEKS R6 R5 K20 ["NAME_CHARACTER_LIMIT"]
  LOADN R6 232
  SETTABLEKS R6 R5 K21 ["DESCRIPTION_CHARACTER_LIMIT"]
  LOADN R6 244
  SETTABLEKS R6 R5 K22 ["PACKAGE_NOTE_CHARACTER_LIMIT"]
  LOADN R6 180
  SETTABLEKS R6 R5 K23 ["TITLE_GUTTER_WIDTH"]
  GETIMPORT R6 K26 [UDim2.new]
  LOADN R7 0
  LOADN R8 150
  LOADN R9 0
  LOADN R10 200
  CALL R6 4 1
  SETTABLEKS R6 R5 K27 ["OverrideAssetItemSize"]
  MOVE R6 R4
  NEWTABLE R7 0 3
  LOADK R8 K28 ["ImagePicker"]
  LOADK R9 K29 ["Thumbnail"]
  LOADK R10 K30 ["ModelPreview"]
  SETLIST R7 R8 3 [1]
  CALL R6 1 1
  SETTABLEKS R6 R5 K31 ["PreviewTypes"]
  MOVE R6 R4
  NEWTABLE R7 0 5
  LOADK R8 K32 ["Sales"]
  LOADK R9 K33 ["General"]
  LOADK R10 K34 ["Versions"]
  LOADK R11 K35 ["Override"]
  LOADK R12 K36 ["Permissions"]
  SETLIST R7 R8 5 [1]
  CALL R6 1 1
  SETTABLEKS R6 R5 K37 ["SIDE_TABS"]
  MOVE R6 R4
  NEWTABLE R7 0 3
  LOADK R8 K38 ["Title"]
  LOADK R9 K39 ["Description"]
  LOADK R10 K40 ["Price"]
  SETLIST R7 R8 3 [1]
  CALL R6 1 1
  SETTABLEKS R6 R5 K41 ["FIELD_NAMES"]
  NEWTABLE R6 0 14
  DUPTABLE R7 K43 [{"name"}]
  GETIMPORT R9 K47 [Enum.Genre.All]
  GETTABLEKS R8 R9 K48 ["Name"]
  SETTABLEKS R8 R7 K42 ["name"]
  DUPTABLE R8 K43 [{"name"}]
  GETIMPORT R10 K50 [Enum.Genre.TownAndCity]
  GETTABLEKS R9 R10 K48 ["Name"]
  SETTABLEKS R9 R8 K42 ["name"]
  DUPTABLE R9 K43 [{"name"}]
  GETIMPORT R11 K52 [Enum.Genre.Fantasy]
  GETTABLEKS R10 R11 K48 ["Name"]
  SETTABLEKS R10 R9 K42 ["name"]
  DUPTABLE R10 K43 [{"name"}]
  GETIMPORT R12 K54 [Enum.Genre.SciFi]
  GETTABLEKS R11 R12 K48 ["Name"]
  SETTABLEKS R11 R10 K42 ["name"]
  DUPTABLE R11 K43 [{"name"}]
  GETIMPORT R13 K56 [Enum.Genre.Ninja]
  GETTABLEKS R12 R13 K48 ["Name"]
  SETTABLEKS R12 R11 K42 ["name"]
  DUPTABLE R12 K43 [{"name"}]
  GETIMPORT R14 K58 [Enum.Genre.Scary]
  GETTABLEKS R13 R14 K48 ["Name"]
  SETTABLEKS R13 R12 K42 ["name"]
  DUPTABLE R13 K43 [{"name"}]
  GETIMPORT R15 K60 [Enum.Genre.Pirate]
  GETTABLEKS R14 R15 K48 ["Name"]
  SETTABLEKS R14 R13 K42 ["name"]
  DUPTABLE R14 K43 [{"name"}]
  GETIMPORT R16 K62 [Enum.Genre.Adventure]
  GETTABLEKS R15 R16 K48 ["Name"]
  SETTABLEKS R15 R14 K42 ["name"]
  DUPTABLE R15 K43 [{"name"}]
  GETIMPORT R17 K64 [Enum.Genre.Sports]
  GETTABLEKS R16 R17 K48 ["Name"]
  SETTABLEKS R16 R15 K42 ["name"]
  DUPTABLE R16 K43 [{"name"}]
  GETIMPORT R18 K66 [Enum.Genre.Funny]
  GETTABLEKS R17 R18 K48 ["Name"]
  SETTABLEKS R17 R16 K42 ["name"]
  DUPTABLE R17 K43 [{"name"}]
  GETIMPORT R19 K68 [Enum.Genre.WildWest]
  GETTABLEKS R18 R19 K48 ["Name"]
  SETTABLEKS R18 R17 K42 ["name"]
  DUPTABLE R18 K43 [{"name"}]
  GETIMPORT R20 K70 [Enum.Genre.War]
  GETTABLEKS R19 R20 K48 ["Name"]
  SETTABLEKS R19 R18 K42 ["name"]
  DUPTABLE R19 K43 [{"name"}]
  GETIMPORT R21 K72 [Enum.Genre.SkatePark]
  GETTABLEKS R20 R21 K48 ["Name"]
  SETTABLEKS R20 R19 K42 ["name"]
  DUPTABLE R20 K43 [{"name"}]
  GETIMPORT R22 K74 [Enum.Genre.Tutorial]
  GETTABLEKS R21 R22 K48 ["Name"]
  SETTABLEKS R21 R20 K42 ["name"]
  SETLIST R6 R7 14 [1]
  SETTABLEKS R6 R5 K75 ["GENRE_TYPE"]
  MOVE R6 R4
  NEWTABLE R7 0 3
  LOADK R8 K76 ["EDIT_FLOW"]
  LOADK R9 K77 ["UPLOAD_FLOW"]
  LOADK R10 K78 ["DOWNLOAD_FLOW"]
  SETLIST R7 R8 3 [1]
  CALL R6 1 1
  SETTABLEKS R6 R5 K79 ["FLOW_TYPE"]
  MOVE R6 R4
  NEWTABLE R7 0 5
  LOADK R8 K80 ["ASSET_TYPE_SELECTION"]
  LOADK R9 K81 ["ASSET_VALIDATION"]
  LOADK R10 K82 ["CONFIGURE_ASSET"]
  LOADK R11 K83 ["UPLOADING_ASSET"]
  LOADK R12 K84 ["UPLOAD_ASSET_RESULT"]
  SETLIST R7 R8 5 [1]
  CALL R6 1 1
  SETTABLEKS R6 R5 K85 ["SCREENS"]
  MOVE R6 R4
  NEWTABLE R7 0 8
  LOADK R8 K86 ["Unknown"]
  LOADK R9 K87 ["ReviewPending"]
  LOADK R10 K88 ["Moderated"]
  LOADK R11 K89 ["ReviewApproved"]
  LOADK R12 K90 ["OnSale"]
  LOADK R13 K91 ["OffSale"]
  LOADK R14 K92 ["DelayedRelease"]
  LOADK R15 K93 ["Free"]
  SETLIST R7 R8 8 [1]
  CALL R6 1 1
  SETTABLEKS R6 R5 K94 ["ASSET_STATUS"]
  MOVE R7 R3
  CALL R7 0 1
  JUMPIFNOT R7 [+17]
  MOVE R6 R4
  NEWTABLE R7 0 10
  LOADK R8 K95 ["AssetType"]
  LOADK R9 K96 ["Authorization"]
  LOADK R10 K97 ["Invalid"]
  LOADK R11 K98 ["KillSwitch"]
  LOADK R12 K99 ["Quota"]
  LOADK R13 K100 ["SafetyStatus"]
  LOADK R14 K101 ["SellerAccountNotOnboarded"]
  LOADK R15 K102 ["SellerAccountRestricted"]
  LOADK R16 K103 ["UnsupportedAssetOwner"]
  LOADK R17 K104 ["Verification"]
  SETLIST R7 R8 10 [1]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K105 ["RESTRICTION_TYPE"]
  MOVE R6 R4
  NEWTABLE R7 0 1
  LOADK R8 K90 ["OnSale"]
  SETLIST R7 R8 1 [1]
  CALL R6 1 1
  SETTABLEKS R6 R5 K106 ["SALES_STATUS_FOR_PRICE"]
  DUPCLOSURE R6 K107 [PROTO_0]
  DUPCLOSURE R7 K108 [PROTO_1]
  NEWTABLE R8 0 28
  GETIMPORT R10 K110 [Enum.AssetType.Hat]
  DUPTABLE R9 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R10 R9 K111 ["type"]
  LOADB R11 1
  SETTABLEKS R11 R9 K112 ["isCatalog"]
  LOADB R11 1
  SETTABLEKS R11 R9 K113 ["isUploadable"]
  GETIMPORT R11 K116 [Enum.AssetType.TShirt]
  DUPTABLE R10 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K111 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K112 ["isCatalog"]
  LOADB R12 0
  SETTABLEKS R12 R10 K113 ["isUploadable"]
  GETIMPORT R12 K118 [Enum.AssetType.Shirt]
  DUPTABLE R11 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K111 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K112 ["isCatalog"]
  LOADB R13 0
  SETTABLEKS R13 R11 K113 ["isUploadable"]
  GETIMPORT R13 K120 [Enum.AssetType.Pants]
  DUPTABLE R12 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R13 R12 K111 ["type"]
  LOADB R14 1
  SETTABLEKS R14 R12 K112 ["isCatalog"]
  LOADB R14 0
  SETTABLEKS R14 R12 K113 ["isUploadable"]
  GETIMPORT R14 K122 [Enum.AssetType.HairAccessory]
  DUPTABLE R13 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K111 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K112 ["isCatalog"]
  LOADB R15 1
  SETTABLEKS R15 R13 K113 ["isUploadable"]
  GETIMPORT R15 K124 [Enum.AssetType.FaceAccessory]
  DUPTABLE R14 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R15 R14 K111 ["type"]
  LOADB R16 1
  SETTABLEKS R16 R14 K112 ["isCatalog"]
  LOADB R16 1
  SETTABLEKS R16 R14 K113 ["isUploadable"]
  GETIMPORT R16 K126 [Enum.AssetType.NeckAccessory]
  DUPTABLE R15 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R16 R15 K111 ["type"]
  LOADB R17 1
  SETTABLEKS R17 R15 K112 ["isCatalog"]
  LOADB R17 1
  SETTABLEKS R17 R15 K113 ["isUploadable"]
  GETIMPORT R17 K128 [Enum.AssetType.ShoulderAccessory]
  DUPTABLE R16 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R17 R16 K111 ["type"]
  LOADB R18 1
  SETTABLEKS R18 R16 K112 ["isCatalog"]
  LOADB R18 1
  SETTABLEKS R18 R16 K113 ["isUploadable"]
  GETIMPORT R18 K130 [Enum.AssetType.FrontAccessory]
  DUPTABLE R17 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R18 R17 K111 ["type"]
  LOADB R19 1
  SETTABLEKS R19 R17 K112 ["isCatalog"]
  LOADB R19 1
  SETTABLEKS R19 R17 K113 ["isUploadable"]
  GETIMPORT R19 K132 [Enum.AssetType.BackAccessory]
  DUPTABLE R18 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R19 R18 K111 ["type"]
  LOADB R20 1
  SETTABLEKS R20 R18 K112 ["isCatalog"]
  LOADB R20 1
  SETTABLEKS R20 R18 K113 ["isUploadable"]
  GETIMPORT R20 K134 [Enum.AssetType.WaistAccessory]
  DUPTABLE R19 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R20 R19 K111 ["type"]
  LOADB R21 1
  SETTABLEKS R21 R19 K112 ["isCatalog"]
  LOADB R21 1
  SETTABLEKS R21 R19 K113 ["isUploadable"]
  GETIMPORT R21 K136 [Enum.AssetType.TShirtAccessory]
  DUPTABLE R20 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R21 R20 K111 ["type"]
  LOADB R22 1
  SETTABLEKS R22 R20 K112 ["isCatalog"]
  LOADB R22 1
  SETTABLEKS R22 R20 K113 ["isUploadable"]
  GETIMPORT R22 K138 [Enum.AssetType.ShirtAccessory]
  DUPTABLE R21 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R22 R21 K111 ["type"]
  LOADB R23 1
  SETTABLEKS R23 R21 K112 ["isCatalog"]
  LOADB R23 1
  SETTABLEKS R23 R21 K113 ["isUploadable"]
  GETIMPORT R23 K140 [Enum.AssetType.PantsAccessory]
  DUPTABLE R22 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R23 R22 K111 ["type"]
  LOADB R24 1
  SETTABLEKS R24 R22 K112 ["isCatalog"]
  LOADB R24 1
  SETTABLEKS R24 R22 K113 ["isUploadable"]
  GETIMPORT R24 K142 [Enum.AssetType.JacketAccessory]
  DUPTABLE R23 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R24 R23 K111 ["type"]
  LOADB R25 1
  SETTABLEKS R25 R23 K112 ["isCatalog"]
  LOADB R25 1
  SETTABLEKS R25 R23 K113 ["isUploadable"]
  GETIMPORT R25 K144 [Enum.AssetType.SweaterAccessory]
  DUPTABLE R24 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R25 R24 K111 ["type"]
  LOADB R26 1
  SETTABLEKS R26 R24 K112 ["isCatalog"]
  LOADB R26 1
  SETTABLEKS R26 R24 K113 ["isUploadable"]
  SETLIST R8 R9 16 [1]
  GETIMPORT R10 K146 [Enum.AssetType.ShortsAccessory]
  DUPTABLE R9 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R10 R9 K111 ["type"]
  LOADB R11 1
  SETTABLEKS R11 R9 K112 ["isCatalog"]
  LOADB R11 1
  SETTABLEKS R11 R9 K113 ["isUploadable"]
  GETIMPORT R11 K148 [Enum.AssetType.LeftShoeAccessory]
  DUPTABLE R10 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K111 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K112 ["isCatalog"]
  LOADB R12 1
  SETTABLEKS R12 R10 K113 ["isUploadable"]
  GETIMPORT R12 K150 [Enum.AssetType.RightShoeAccessory]
  DUPTABLE R11 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R12 R11 K111 ["type"]
  LOADB R13 1
  SETTABLEKS R13 R11 K112 ["isCatalog"]
  LOADB R13 1
  SETTABLEKS R13 R11 K113 ["isUploadable"]
  GETIMPORT R13 K152 [Enum.AssetType.DressSkirtAccessory]
  DUPTABLE R12 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R13 R12 K111 ["type"]
  LOADB R14 1
  SETTABLEKS R14 R12 K112 ["isCatalog"]
  LOADB R14 1
  SETTABLEKS R14 R12 K113 ["isUploadable"]
  GETIMPORT R14 K154 [Enum.AssetType.Model]
  DUPTABLE R13 K157 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R14 R13 K111 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K155 ["isMarketplace"]
  LOADB R15 0
  SETTABLEKS R15 R13 K156 ["isBuyable"]
  GETIMPORT R15 K159 [Enum.AssetType.Decal]
  DUPTABLE R14 K157 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R15 R14 K111 ["type"]
  LOADB R16 1
  SETTABLEKS R16 R14 K155 ["isMarketplace"]
  LOADB R16 0
  SETTABLEKS R16 R14 K156 ["isBuyable"]
  GETIMPORT R16 K161 [Enum.AssetType.Mesh]
  DUPTABLE R15 K157 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R16 R15 K111 ["type"]
  LOADB R17 1
  SETTABLEKS R17 R15 K155 ["isMarketplace"]
  LOADB R17 0
  SETTABLEKS R17 R15 K156 ["isBuyable"]
  GETIMPORT R17 K163 [Enum.AssetType.MeshPart]
  DUPTABLE R16 K157 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R17 R16 K111 ["type"]
  LOADB R18 1
  SETTABLEKS R18 R16 K155 ["isMarketplace"]
  LOADB R18 0
  SETTABLEKS R18 R16 K156 ["isBuyable"]
  GETIMPORT R18 K165 [Enum.AssetType.Audio]
  DUPTABLE R17 K157 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R18 R17 K111 ["type"]
  LOADB R19 1
  SETTABLEKS R19 R17 K155 ["isMarketplace"]
  LOADB R19 0
  SETTABLEKS R19 R17 K156 ["isBuyable"]
  GETIMPORT R19 K167 [Enum.AssetType.Animation]
  DUPTABLE R18 K157 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R19 R18 K111 ["type"]
  LOADB R20 1
  SETTABLEKS R20 R18 K155 ["isMarketplace"]
  LOADB R20 0
  SETTABLEKS R20 R18 K156 ["isBuyable"]
  GETIMPORT R20 K169 [Enum.AssetType.Video]
  DUPTABLE R19 K157 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R20 R19 K111 ["type"]
  LOADB R21 1
  SETTABLEKS R21 R19 K155 ["isMarketplace"]
  LOADB R21 0
  SETTABLEKS R21 R19 K156 ["isBuyable"]
  GETIMPORT R25 K171 [Enum.AssetType.Plugin]
  DUPTABLE R20 K157 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R25 R20 K111 ["type"]
  LOADB R26 1
  SETTABLEKS R26 R20 K155 ["isMarketplace"]
  LOADB R26 1
  SETTABLEKS R26 R20 K156 ["isBuyable"]
  SETLIST R8 R9 12 [17]
  SETTABLEKS R8 R5 K172 ["ASSET_TYPE_INFO"]
  GETTABLEKS R9 R5 K172 ["ASSET_TYPE_INFO"]
  GETIMPORT R11 K174 [Enum.AssetType.Package]
  DUPTABLE R10 K157 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R11 R10 K111 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K155 ["isMarketplace"]
  LOADB R12 0
  SETTABLEKS R12 R10 K156 ["isBuyable"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K177 [table.insert]
  CALL R8 2 0
  GETTABLEKS R9 R5 K172 ["ASSET_TYPE_INFO"]
  GETIMPORT R11 K179 [Enum.AssetType.Torso]
  DUPTABLE R10 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K111 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K112 ["isCatalog"]
  LOADB R12 1
  SETTABLEKS R12 R10 K113 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K177 [table.insert]
  CALL R8 2 0
  GETTABLEKS R9 R5 K172 ["ASSET_TYPE_INFO"]
  GETIMPORT R11 K181 [Enum.AssetType.RightArm]
  DUPTABLE R10 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K111 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K112 ["isCatalog"]
  LOADB R12 1
  SETTABLEKS R12 R10 K113 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K177 [table.insert]
  CALL R8 2 0
  GETTABLEKS R9 R5 K172 ["ASSET_TYPE_INFO"]
  GETIMPORT R11 K183 [Enum.AssetType.LeftArm]
  DUPTABLE R10 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K111 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K112 ["isCatalog"]
  LOADB R12 1
  SETTABLEKS R12 R10 K113 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K177 [table.insert]
  CALL R8 2 0
  GETTABLEKS R9 R5 K172 ["ASSET_TYPE_INFO"]
  GETIMPORT R11 K185 [Enum.AssetType.LeftLeg]
  DUPTABLE R10 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K111 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K112 ["isCatalog"]
  LOADB R12 1
  SETTABLEKS R12 R10 K113 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K177 [table.insert]
  CALL R8 2 0
  GETTABLEKS R9 R5 K172 ["ASSET_TYPE_INFO"]
  GETIMPORT R11 K187 [Enum.AssetType.RightLeg]
  DUPTABLE R10 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K111 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K112 ["isCatalog"]
  LOADB R12 1
  SETTABLEKS R12 R10 K113 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K177 [table.insert]
  CALL R8 2 0
  GETTABLEKS R9 R5 K172 ["ASSET_TYPE_INFO"]
  GETIMPORT R11 K189 [Enum.AssetType.DynamicHead]
  DUPTABLE R10 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K111 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K112 ["isCatalog"]
  LOADB R12 1
  SETTABLEKS R12 R10 K113 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K177 [table.insert]
  CALL R8 2 0
  GETTABLEKS R9 R5 K172 ["ASSET_TYPE_INFO"]
  GETIMPORT R11 K191 [Enum.AssetType.EyebrowAccessory]
  DUPTABLE R10 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K111 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K112 ["isCatalog"]
  LOADB R12 1
  SETTABLEKS R12 R10 K113 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K177 [table.insert]
  CALL R8 2 0
  GETTABLEKS R9 R5 K172 ["ASSET_TYPE_INFO"]
  GETIMPORT R11 K193 [Enum.AssetType.EyelashAccessory]
  DUPTABLE R10 K114 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R11 R10 K111 ["type"]
  LOADB R12 1
  SETTABLEKS R12 R10 K112 ["isCatalog"]
  LOADB R12 1
  SETTABLEKS R12 R10 K113 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K177 [table.insert]
  CALL R8 2 0
  GETIMPORT R8 K195 [ipairs]
  GETTABLEKS R9 R5 K172 ["ASSET_TYPE_INFO"]
  CALL R8 1 3
  FORGPREP_INEXT R8
  GETIMPORT R14 K197 [next]
  MOVE R15 R12
  CALL R14 1 1
  JUMPIFNOTEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMPIFNOT R13 [+40]
  GETTABLEKS R14 R12 K112 ["isCatalog"]
  JUMPIFNOT R14 [+15]
  GETTABLEKS R14 R12 K155 ["isMarketplace"]
  JUMPIFNOT R14 [+12]
  GETIMPORT R14 K199 [error]
  GETTABLEKS R19 R12 K111 ["type"]
  FASTCALL1 TOSTRING R19 [+2]
  GETIMPORT R18 K201 [tostring]
  CALL R18 1 1
  MOVE R16 R18
  LOADK R17 K202 [" cannot be both a catalog and marketplace asset"]
  CONCAT R15 R16 R17
  CALL R14 1 0
  GETTABLEKS R15 R5 K172 ["ASSET_TYPE_INFO"]
  GETTABLEKS R16 R12 K111 ["type"]
  GETTABLE R14 R15 R16
  JUMPIFNOT R14 [+11]
  GETIMPORT R14 K199 [error]
  LOADK R16 K203 ["AssetConfigConstants.ASSET_TYPE_INFO contains a duplicate of "]
  GETTABLEKS R18 R12 K111 ["type"]
  FASTCALL1 TOSTRING R18 [+2]
  GETIMPORT R17 K201 [tostring]
  CALL R17 1 1
  CONCAT R15 R16 R17
  CALL R14 1 0
  GETTABLEKS R14 R5 K172 ["ASSET_TYPE_INFO"]
  GETTABLEKS R15 R12 K111 ["type"]
  SETTABLE R12 R14 R15
  FORGLOOP R8 2 [inext] [-50]
  MOVE R8 R4
  NEWTABLE R9 0 3
  LOADK R10 K204 ["WhitelistedPlugins"]
  LOADK R11 K205 ["MyPlugins"]
  LOADK R12 K206 ["GroupPlugins"]
  SETLIST R9 R10 3 [1]
  CALL R8 1 1
  SETTABLEKS R8 R5 K207 ["developCategoryType"]
  MOVE R8 R4
  NEWTABLE R9 0 2
  LOADK R10 K208 ["MyPackages"]
  LOADK R11 K209 ["GroupPackages"]
  SETLIST R9 R10 2 [1]
  CALL R8 1 1
  SETTABLEKS R8 R5 K210 ["packagesCategoryType"]
  MOVE R8 R4
  NEWTABLE R9 0 9
  LOADK R10 K211 ["Asset"]
  LOADK R11 K212 ["Avatar"]
  LOADK R12 K213 ["AvatarHeadShot"]
  LOADK R13 K214 ["BadgeIcon"]
  LOADK R14 K215 ["BundleThumbnail"]
  LOADK R15 K216 ["GameIcon"]
  LOADK R16 K217 ["GamePass"]
  LOADK R17 K218 ["GroupIcon"]
  LOADK R18 K219 ["Outfit"]
  SETLIST R9 R10 9 [1]
  CALL R8 1 1
  SETTABLEKS R8 R5 K220 ["rbxThumbTypes"]
  DUPTABLE R8 K224 [{"AvatarHeadshotImageSize", "GroupIconImageSize", "AssetThumbnailSize"}]
  LOADN R9 60
  SETTABLEKS R9 R8 K221 ["AvatarHeadshotImageSize"]
  LOADN R9 150
  SETTABLEKS R9 R8 K222 ["GroupIconImageSize"]
  LOADN R9 164
  SETTABLEKS R9 R8 K223 ["AssetThumbnailSize"]
  SETTABLEKS R8 R5 K225 ["rbxThumbSizes"]
  DUPTABLE R8 K231 [{"MaxThumbnails", "AspectRatioHeight", "AspectRatioWidth", "RecommendedHeight", "RecommendedWidth"}]
  LOADN R9 5
  SETTABLEKS R9 R8 K226 ["MaxThumbnails"]
  LOADN R9 9
  SETTABLEKS R9 R8 K227 ["AspectRatioHeight"]
  LOADN R9 16
  SETTABLEKS R9 R8 K228 ["AspectRatioWidth"]
  LOADN R9 176
  SETTABLEKS R9 R8 K229 ["RecommendedHeight"]
  LOADN R9 0
  SETTABLEKS R9 R8 K230 ["RecommendedWidth"]
  SETTABLEKS R8 R5 K232 ["additionalImages"]
  NEWTABLE R8 0 3
  LOADK R9 K233 ["jpg"]
  LOADK R10 K234 ["jpeg"]
  LOADK R11 K235 ["png"]
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R5 K236 ["IMAGE_TYPES"]
  LOADK R8 K237 ["Success"]
  SETTABLEKS R8 R5 K238 ["TAGS_SUGGESTION_SUCCESS"]
  LOADN R8 5
  SETTABLEKS R8 R5 K239 ["MAX_DISPLAY_SUGGESTIONS"]
  LOADN R8 10
  SETTABLEKS R8 R5 K240 ["MAX_FETCH_SUGGESTIONS"]
  LOADK R8 K241 ["avatar_meshpart_accessory"]
  SETTABLEKS R8 R5 K242 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
  LOADK R8 K243 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
  SETTABLEKS R8 R5 K244 ["MULTIPART_FORM_BOUNDARY"]
  LOADK R8 K245 ["OverrideAssetId"]
  SETTABLEKS R8 R5 K246 ["OVERRIDE_ASSET_ID"]
  DUPTABLE R8 K249 [{"Public", "Private"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K247 ["Public"]
  LOADB R9 0
  SETTABLEKS R9 R8 K248 ["Private"]
  SETTABLEKS R8 R5 K250 ["SHARING_KEYS"]
  MOVE R8 R1
  LOADK R9 K251 ["UGCBundleTypes"]
  NEWTABLE R10 0 2
  LOADK R11 K252 ["Body"]
  LOADK R12 K188 ["DynamicHead"]
  SETLIST R10 R11 2 [1]
  CALL R8 2 1
  SETTABLEKS R8 R5 K251 ["UGCBundleTypes"]
  NEWTABLE R8 2 0
  GETTABLEKS R11 R5 K251 ["UGCBundleTypes"]
  GETTABLEKS R10 R11 K252 ["Body"]
  GETTABLEKS R9 R10 K253 ["rawValue"]
  CALL R9 0 1
  GETTABLEKS R11 R5 K251 ["UGCBundleTypes"]
  GETTABLEKS R10 R11 K252 ["Body"]
  SETTABLE R10 R8 R9
  GETTABLEKS R11 R5 K251 ["UGCBundleTypes"]
  GETTABLEKS R10 R11 K188 ["DynamicHead"]
  GETTABLEKS R9 R10 K253 ["rawValue"]
  CALL R9 0 1
  GETTABLEKS R11 R5 K251 ["UGCBundleTypes"]
  GETTABLEKS R10 R11 K188 ["DynamicHead"]
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R5 K254 ["UGCBundleTypeStringToEnumeration"]
  NEWTABLE R8 16 0
  GETIMPORT R9 K189 [Enum.AssetType.DynamicHead]
  SETTABLEKS R9 R8 K188 ["DynamicHead"]
  GETIMPORT R9 K183 [Enum.AssetType.LeftArm]
  SETTABLEKS R9 R8 K182 ["LeftArm"]
  GETIMPORT R9 K185 [Enum.AssetType.LeftLeg]
  SETTABLEKS R9 R8 K184 ["LeftLeg"]
  GETIMPORT R9 K181 [Enum.AssetType.RightArm]
  SETTABLEKS R9 R8 K180 ["RightArm"]
  GETIMPORT R9 K187 [Enum.AssetType.RightLeg]
  SETTABLEKS R9 R8 K186 ["RightLeg"]
  GETIMPORT R9 K179 [Enum.AssetType.Torso]
  SETTABLEKS R9 R8 K178 ["Torso"]
  GETIMPORT R9 K191 [Enum.AssetType.EyebrowAccessory]
  SETTABLEKS R9 R8 K190 ["EyebrowAccessory"]
  GETIMPORT R9 K193 [Enum.AssetType.EyelashAccessory]
  SETTABLEKS R9 R8 K192 ["EyelashAccessory"]
  GETIMPORT R9 K122 [Enum.AssetType.HairAccessory]
  SETTABLEKS R9 R8 K121 ["HairAccessory"]
  SETTABLEKS R8 R5 K255 ["AllowedAssetStringsMetadataToAssetTypeMap"]
  DUPTABLE R8 K271 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperArm", "LeftLowerArm", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
  LOADK R9 K0 ["script"]
  SETTABLEKS R9 R8 K256 ["Head"]
  LOADK R9 K1 [script]
  SETTABLEKS R9 R8 K257 ["UpperTorso"]
  LOADK R9 K2 ["Parent"]
  SETTABLEKS R9 R8 K258 ["LowerTorso"]
  LOADK R9 K3 ["require"]
  SETTABLEKS R9 R8 K259 ["LeftUpperLeg"]
  LOADK R9 K4 [require]
  SETTABLEKS R9 R8 K260 ["LeftLowerLeg"]
  LOADK R9 K5 ["Packages"]
  SETTABLEKS R9 R8 K261 ["LeftHand"]
  LOADK R9 K6 ["enumerate"]
  SETTABLEKS R9 R8 K262 ["RightUpperArm"]
  LOADK R9 K7 ["Core"]
  SETTABLEKS R9 R8 K263 ["RightLowerArm"]
  LOADK R9 K8 ["Util"]
  SETTABLEKS R9 R8 K264 ["RightHand"]
  LOADK R9 K9 ["SharedFlags"]
  SETTABLEKS R9 R8 K265 ["LeftUpperArm"]
  LOADK R9 K10 ["getFFlagToolboxRestrictAssetConfig"]
  SETTABLEKS R9 R8 K266 ["LeftLowerArm"]
  LOADK R9 K11 ["convertArrayToTable"]
  SETTABLEKS R9 R8 K267 ["LeftFoot"]
  LOADK R9 K12 ["WIDTH"]
  SETTABLEKS R9 R8 K268 ["RightUpperLeg"]
  LOADK R9 K13 ["HEIGHT"]
  SETTABLEKS R9 R8 K269 ["RightLowerLeg"]
  LOADK R9 K14 ["MIN_WIDTH"]
  SETTABLEKS R9 R8 K270 ["RightFoot"]
  LOADK R9 K190 ["EyebrowAccessory"]
  SETTABLEKS R9 R8 K190 ["EyebrowAccessory"]
  LOADK R9 K192 ["EyelashAccessory"]
  SETTABLEKS R9 R8 K192 ["EyelashAccessory"]
  LOADK R9 K121 ["HairAccessory"]
  SETTABLEKS R9 R8 K121 ["HairAccessory"]
  SETTABLEKS R8 R5 K272 ["UGC_BODY_PARTS"]
  NEWTABLE R8 32 0
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K256 ["Head"]
  GETIMPORT R10 K189 [Enum.AssetType.DynamicHead]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K257 ["UpperTorso"]
  GETIMPORT R10 K179 [Enum.AssetType.Torso]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K258 ["LowerTorso"]
  GETIMPORT R10 K179 [Enum.AssetType.Torso]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K265 ["LeftUpperArm"]
  GETIMPORT R10 K183 [Enum.AssetType.LeftArm]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K266 ["LeftLowerArm"]
  GETIMPORT R10 K183 [Enum.AssetType.LeftArm]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K261 ["LeftHand"]
  GETIMPORT R10 K183 [Enum.AssetType.LeftArm]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K262 ["RightUpperArm"]
  GETIMPORT R10 K181 [Enum.AssetType.RightArm]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K263 ["RightLowerArm"]
  GETIMPORT R10 K181 [Enum.AssetType.RightArm]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K264 ["RightHand"]
  GETIMPORT R10 K181 [Enum.AssetType.RightArm]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K259 ["LeftUpperLeg"]
  GETIMPORT R10 K185 [Enum.AssetType.LeftLeg]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K260 ["LeftLowerLeg"]
  GETIMPORT R10 K185 [Enum.AssetType.LeftLeg]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K267 ["LeftFoot"]
  GETIMPORT R10 K185 [Enum.AssetType.LeftLeg]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K268 ["RightUpperLeg"]
  GETIMPORT R10 K187 [Enum.AssetType.RightLeg]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K269 ["RightLowerLeg"]
  GETIMPORT R10 K187 [Enum.AssetType.RightLeg]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K270 ["RightFoot"]
  GETIMPORT R10 K187 [Enum.AssetType.RightLeg]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K190 ["EyebrowAccessory"]
  GETIMPORT R10 K191 [Enum.AssetType.EyebrowAccessory]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K192 ["EyelashAccessory"]
  GETIMPORT R10 K193 [Enum.AssetType.EyelashAccessory]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R5 K272 ["UGC_BODY_PARTS"]
  GETTABLEKS R9 R10 K121 ["HairAccessory"]
  GETIMPORT R10 K122 [Enum.AssetType.HairAccessory]
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R5 K273 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
  RETURN R5 1
