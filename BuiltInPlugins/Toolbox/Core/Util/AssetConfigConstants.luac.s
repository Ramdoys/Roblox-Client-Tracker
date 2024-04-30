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
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["enumerate"]
  GETTABLEKS R4 R0 K9 ["Core"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K10 ["Flags"]
  GETTABLEKS R5 R6 K11 ["getFFlagToolboxAddNewUGCAssetTypes"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K9 ["Core"]
  GETTABLEKS R8 R9 K7 ["Util"]
  GETTABLEKS R7 R8 K12 ["SharedFlags"]
  GETTABLEKS R6 R7 K13 ["getFFlagToolboxRestrictAssetConfig"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R3 K14 ["convertArrayToTable"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R11 R0 K9 ["Core"]
  GETTABLEKS R10 R11 K7 ["Util"]
  GETTABLEKS R9 R10 K12 ["SharedFlags"]
  GETTABLEKS R8 R9 K15 ["getFFlagEnableUGCBodyUploadFlow"]
  CALL R7 1 1
  NEWTABLE R8 64 0
  LOADN R9 76
  SETTABLEKS R9 R8 K16 ["WIDTH"]
  MOVE R10 R7
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  LOADN R9 92
  JUMP [+1]
  LOADN R9 128
  SETTABLEKS R9 R8 K17 ["HEIGHT"]
  LOADN R9 132
  SETTABLEKS R9 R8 K18 ["MIN_WIDTH"]
  LOADN R9 244
  SETTABLEKS R9 R8 K19 ["MIN_HEIGHT"]
  LOADK R9 K20 ["https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use"]
  SETTABLEKS R9 R8 K21 ["TERM_OF_USE_URL"]
  LOADK R9 K22 ["https://www.roblox.com/my/account#!/info"]
  SETTABLEKS R9 R8 K23 ["ACCOUNT_SETTING_URL"]
  LOADN R9 50
  SETTABLEKS R9 R8 K24 ["NAME_CHARACTER_LIMIT"]
  LOADN R9 232
  SETTABLEKS R9 R8 K25 ["DESCRIPTION_CHARACTER_LIMIT"]
  LOADN R9 244
  SETTABLEKS R9 R8 K26 ["PACKAGE_NOTE_CHARACTER_LIMIT"]
  LOADN R9 180
  SETTABLEKS R9 R8 K27 ["TITLE_GUTTER_WIDTH"]
  GETIMPORT R9 K30 [UDim2.new]
  LOADN R10 0
  LOADN R11 150
  LOADN R12 0
  LOADN R13 200
  CALL R9 4 1
  SETTABLEKS R9 R8 K31 ["OverrideAssetItemSize"]
  MOVE R9 R6
  NEWTABLE R10 0 3
  LOADK R11 K32 ["ImagePicker"]
  LOADK R12 K33 ["Thumbnail"]
  LOADK R13 K34 ["ModelPreview"]
  SETLIST R10 R11 3 [1]
  CALL R9 1 1
  SETTABLEKS R9 R8 K35 ["PreviewTypes"]
  MOVE R9 R6
  NEWTABLE R10 0 5
  LOADK R11 K36 ["Sales"]
  LOADK R12 K37 ["General"]
  LOADK R13 K38 ["Versions"]
  LOADK R14 K39 ["Override"]
  LOADK R15 K40 ["Permissions"]
  SETLIST R10 R11 5 [1]
  CALL R9 1 1
  SETTABLEKS R9 R8 K41 ["SIDE_TABS"]
  MOVE R9 R6
  NEWTABLE R10 0 3
  LOADK R11 K42 ["Title"]
  LOADK R12 K43 ["Description"]
  LOADK R13 K44 ["Price"]
  SETLIST R10 R11 3 [1]
  CALL R9 1 1
  SETTABLEKS R9 R8 K45 ["FIELD_NAMES"]
  NEWTABLE R9 0 14
  DUPTABLE R10 K47 [{"name"}]
  GETIMPORT R12 K51 [Enum.Genre.All]
  GETTABLEKS R11 R12 K52 ["Name"]
  SETTABLEKS R11 R10 K46 ["name"]
  DUPTABLE R11 K47 [{"name"}]
  GETIMPORT R13 K54 [Enum.Genre.TownAndCity]
  GETTABLEKS R12 R13 K52 ["Name"]
  SETTABLEKS R12 R11 K46 ["name"]
  DUPTABLE R12 K47 [{"name"}]
  GETIMPORT R14 K56 [Enum.Genre.Fantasy]
  GETTABLEKS R13 R14 K52 ["Name"]
  SETTABLEKS R13 R12 K46 ["name"]
  DUPTABLE R13 K47 [{"name"}]
  GETIMPORT R15 K58 [Enum.Genre.SciFi]
  GETTABLEKS R14 R15 K52 ["Name"]
  SETTABLEKS R14 R13 K46 ["name"]
  DUPTABLE R14 K47 [{"name"}]
  GETIMPORT R16 K60 [Enum.Genre.Ninja]
  GETTABLEKS R15 R16 K52 ["Name"]
  SETTABLEKS R15 R14 K46 ["name"]
  DUPTABLE R15 K47 [{"name"}]
  GETIMPORT R17 K62 [Enum.Genre.Scary]
  GETTABLEKS R16 R17 K52 ["Name"]
  SETTABLEKS R16 R15 K46 ["name"]
  DUPTABLE R16 K47 [{"name"}]
  GETIMPORT R18 K64 [Enum.Genre.Pirate]
  GETTABLEKS R17 R18 K52 ["Name"]
  SETTABLEKS R17 R16 K46 ["name"]
  DUPTABLE R17 K47 [{"name"}]
  GETIMPORT R19 K66 [Enum.Genre.Adventure]
  GETTABLEKS R18 R19 K52 ["Name"]
  SETTABLEKS R18 R17 K46 ["name"]
  DUPTABLE R18 K47 [{"name"}]
  GETIMPORT R20 K68 [Enum.Genre.Sports]
  GETTABLEKS R19 R20 K52 ["Name"]
  SETTABLEKS R19 R18 K46 ["name"]
  DUPTABLE R19 K47 [{"name"}]
  GETIMPORT R21 K70 [Enum.Genre.Funny]
  GETTABLEKS R20 R21 K52 ["Name"]
  SETTABLEKS R20 R19 K46 ["name"]
  DUPTABLE R20 K47 [{"name"}]
  GETIMPORT R22 K72 [Enum.Genre.WildWest]
  GETTABLEKS R21 R22 K52 ["Name"]
  SETTABLEKS R21 R20 K46 ["name"]
  DUPTABLE R21 K47 [{"name"}]
  GETIMPORT R23 K74 [Enum.Genre.War]
  GETTABLEKS R22 R23 K52 ["Name"]
  SETTABLEKS R22 R21 K46 ["name"]
  DUPTABLE R22 K47 [{"name"}]
  GETIMPORT R24 K76 [Enum.Genre.SkatePark]
  GETTABLEKS R23 R24 K52 ["Name"]
  SETTABLEKS R23 R22 K46 ["name"]
  DUPTABLE R23 K47 [{"name"}]
  GETIMPORT R25 K78 [Enum.Genre.Tutorial]
  GETTABLEKS R24 R25 K52 ["Name"]
  SETTABLEKS R24 R23 K46 ["name"]
  SETLIST R9 R10 14 [1]
  SETTABLEKS R9 R8 K79 ["GENRE_TYPE"]
  MOVE R9 R6
  NEWTABLE R10 0 3
  LOADK R11 K80 ["EDIT_FLOW"]
  LOADK R12 K81 ["UPLOAD_FLOW"]
  LOADK R13 K82 ["DOWNLOAD_FLOW"]
  SETLIST R10 R11 3 [1]
  CALL R9 1 1
  SETTABLEKS R9 R8 K83 ["FLOW_TYPE"]
  MOVE R9 R6
  NEWTABLE R10 0 5
  LOADK R11 K84 ["ASSET_TYPE_SELECTION"]
  LOADK R12 K85 ["ASSET_VALIDATION"]
  LOADK R13 K86 ["CONFIGURE_ASSET"]
  LOADK R14 K87 ["UPLOADING_ASSET"]
  LOADK R15 K88 ["UPLOAD_ASSET_RESULT"]
  SETLIST R10 R11 5 [1]
  CALL R9 1 1
  SETTABLEKS R9 R8 K89 ["SCREENS"]
  MOVE R9 R6
  NEWTABLE R10 0 8
  LOADK R11 K90 ["Unknown"]
  LOADK R12 K91 ["ReviewPending"]
  LOADK R13 K92 ["Moderated"]
  LOADK R14 K93 ["ReviewApproved"]
  LOADK R15 K94 ["OnSale"]
  LOADK R16 K95 ["OffSale"]
  LOADK R17 K96 ["DelayedRelease"]
  LOADK R18 K97 ["Free"]
  SETLIST R10 R11 8 [1]
  CALL R9 1 1
  SETTABLEKS R9 R8 K98 ["ASSET_STATUS"]
  MOVE R10 R5
  CALL R10 0 1
  JUMPIFNOT R10 [+17]
  MOVE R9 R6
  NEWTABLE R10 0 10
  LOADK R11 K99 ["AssetType"]
  LOADK R12 K100 ["Authorization"]
  LOADK R13 K101 ["Invalid"]
  LOADK R14 K102 ["KillSwitch"]
  LOADK R15 K103 ["Quota"]
  LOADK R16 K104 ["SafetyStatus"]
  LOADK R17 K105 ["SellerAccountNotOnboarded"]
  LOADK R18 K106 ["SellerAccountRestricted"]
  LOADK R19 K107 ["UnsupportedAssetOwner"]
  LOADK R20 K108 ["Verification"]
  SETLIST R10 R11 10 [1]
  CALL R9 1 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K109 ["RESTRICTION_TYPE"]
  MOVE R9 R6
  NEWTABLE R10 0 1
  LOADK R11 K94 ["OnSale"]
  SETLIST R10 R11 1 [1]
  CALL R9 1 1
  SETTABLEKS R9 R8 K110 ["SALES_STATUS_FOR_PRICE"]
  DUPCLOSURE R9 K111 [PROTO_0]
  DUPCLOSURE R10 K112 [PROTO_1]
  NEWTABLE R11 0 28
  GETIMPORT R13 K114 [Enum.AssetType.Hat]
  DUPTABLE R12 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R13 R12 K115 ["type"]
  LOADB R14 1
  SETTABLEKS R14 R12 K116 ["isCatalog"]
  LOADB R14 1
  SETTABLEKS R14 R12 K117 ["isUploadable"]
  GETIMPORT R14 K120 [Enum.AssetType.TShirt]
  DUPTABLE R13 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K115 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K116 ["isCatalog"]
  LOADB R15 0
  SETTABLEKS R15 R13 K117 ["isUploadable"]
  GETIMPORT R15 K122 [Enum.AssetType.Shirt]
  DUPTABLE R14 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R15 R14 K115 ["type"]
  LOADB R16 1
  SETTABLEKS R16 R14 K116 ["isCatalog"]
  LOADB R16 0
  SETTABLEKS R16 R14 K117 ["isUploadable"]
  GETIMPORT R16 K124 [Enum.AssetType.Pants]
  DUPTABLE R15 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R16 R15 K115 ["type"]
  LOADB R17 1
  SETTABLEKS R17 R15 K116 ["isCatalog"]
  LOADB R17 0
  SETTABLEKS R17 R15 K117 ["isUploadable"]
  GETIMPORT R17 K126 [Enum.AssetType.HairAccessory]
  DUPTABLE R16 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R17 R16 K115 ["type"]
  LOADB R18 1
  SETTABLEKS R18 R16 K116 ["isCatalog"]
  LOADB R18 1
  SETTABLEKS R18 R16 K117 ["isUploadable"]
  GETIMPORT R18 K128 [Enum.AssetType.FaceAccessory]
  DUPTABLE R17 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R18 R17 K115 ["type"]
  LOADB R19 1
  SETTABLEKS R19 R17 K116 ["isCatalog"]
  LOADB R19 1
  SETTABLEKS R19 R17 K117 ["isUploadable"]
  GETIMPORT R19 K130 [Enum.AssetType.NeckAccessory]
  DUPTABLE R18 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R19 R18 K115 ["type"]
  LOADB R20 1
  SETTABLEKS R20 R18 K116 ["isCatalog"]
  LOADB R20 1
  SETTABLEKS R20 R18 K117 ["isUploadable"]
  GETIMPORT R20 K132 [Enum.AssetType.ShoulderAccessory]
  DUPTABLE R19 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R20 R19 K115 ["type"]
  LOADB R21 1
  SETTABLEKS R21 R19 K116 ["isCatalog"]
  LOADB R21 1
  SETTABLEKS R21 R19 K117 ["isUploadable"]
  GETIMPORT R21 K134 [Enum.AssetType.FrontAccessory]
  DUPTABLE R20 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R21 R20 K115 ["type"]
  LOADB R22 1
  SETTABLEKS R22 R20 K116 ["isCatalog"]
  LOADB R22 1
  SETTABLEKS R22 R20 K117 ["isUploadable"]
  GETIMPORT R22 K136 [Enum.AssetType.BackAccessory]
  DUPTABLE R21 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R22 R21 K115 ["type"]
  LOADB R23 1
  SETTABLEKS R23 R21 K116 ["isCatalog"]
  LOADB R23 1
  SETTABLEKS R23 R21 K117 ["isUploadable"]
  GETIMPORT R23 K138 [Enum.AssetType.WaistAccessory]
  DUPTABLE R22 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R23 R22 K115 ["type"]
  LOADB R24 1
  SETTABLEKS R24 R22 K116 ["isCatalog"]
  LOADB R24 1
  SETTABLEKS R24 R22 K117 ["isUploadable"]
  GETIMPORT R24 K140 [Enum.AssetType.TShirtAccessory]
  DUPTABLE R23 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R24 R23 K115 ["type"]
  LOADB R25 1
  SETTABLEKS R25 R23 K116 ["isCatalog"]
  LOADB R25 1
  SETTABLEKS R25 R23 K117 ["isUploadable"]
  GETIMPORT R25 K142 [Enum.AssetType.ShirtAccessory]
  DUPTABLE R24 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R25 R24 K115 ["type"]
  LOADB R26 1
  SETTABLEKS R26 R24 K116 ["isCatalog"]
  LOADB R26 1
  SETTABLEKS R26 R24 K117 ["isUploadable"]
  GETIMPORT R26 K144 [Enum.AssetType.PantsAccessory]
  DUPTABLE R25 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R26 R25 K115 ["type"]
  LOADB R27 1
  SETTABLEKS R27 R25 K116 ["isCatalog"]
  LOADB R27 1
  SETTABLEKS R27 R25 K117 ["isUploadable"]
  GETIMPORT R27 K146 [Enum.AssetType.JacketAccessory]
  DUPTABLE R26 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R27 R26 K115 ["type"]
  LOADB R28 1
  SETTABLEKS R28 R26 K116 ["isCatalog"]
  LOADB R28 1
  SETTABLEKS R28 R26 K117 ["isUploadable"]
  GETIMPORT R28 K148 [Enum.AssetType.SweaterAccessory]
  DUPTABLE R27 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R28 R27 K115 ["type"]
  LOADB R29 1
  SETTABLEKS R29 R27 K116 ["isCatalog"]
  LOADB R29 1
  SETTABLEKS R29 R27 K117 ["isUploadable"]
  SETLIST R11 R12 16 [1]
  GETIMPORT R13 K150 [Enum.AssetType.ShortsAccessory]
  DUPTABLE R12 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R13 R12 K115 ["type"]
  LOADB R14 1
  SETTABLEKS R14 R12 K116 ["isCatalog"]
  LOADB R14 1
  SETTABLEKS R14 R12 K117 ["isUploadable"]
  GETIMPORT R14 K152 [Enum.AssetType.LeftShoeAccessory]
  DUPTABLE R13 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K115 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K116 ["isCatalog"]
  LOADB R15 1
  SETTABLEKS R15 R13 K117 ["isUploadable"]
  GETIMPORT R15 K154 [Enum.AssetType.RightShoeAccessory]
  DUPTABLE R14 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R15 R14 K115 ["type"]
  LOADB R16 1
  SETTABLEKS R16 R14 K116 ["isCatalog"]
  LOADB R16 1
  SETTABLEKS R16 R14 K117 ["isUploadable"]
  GETIMPORT R16 K156 [Enum.AssetType.DressSkirtAccessory]
  DUPTABLE R15 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R16 R15 K115 ["type"]
  LOADB R17 1
  SETTABLEKS R17 R15 K116 ["isCatalog"]
  LOADB R17 1
  SETTABLEKS R17 R15 K117 ["isUploadable"]
  GETIMPORT R17 K158 [Enum.AssetType.Model]
  DUPTABLE R16 K161 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R17 R16 K115 ["type"]
  LOADB R18 1
  SETTABLEKS R18 R16 K159 ["isMarketplace"]
  LOADB R18 0
  SETTABLEKS R18 R16 K160 ["isBuyable"]
  GETIMPORT R18 K163 [Enum.AssetType.Decal]
  DUPTABLE R17 K161 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R18 R17 K115 ["type"]
  LOADB R19 1
  SETTABLEKS R19 R17 K159 ["isMarketplace"]
  LOADB R19 0
  SETTABLEKS R19 R17 K160 ["isBuyable"]
  GETIMPORT R19 K165 [Enum.AssetType.Mesh]
  DUPTABLE R18 K161 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R19 R18 K115 ["type"]
  LOADB R20 1
  SETTABLEKS R20 R18 K159 ["isMarketplace"]
  LOADB R20 0
  SETTABLEKS R20 R18 K160 ["isBuyable"]
  GETIMPORT R20 K167 [Enum.AssetType.MeshPart]
  DUPTABLE R19 K161 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R20 R19 K115 ["type"]
  LOADB R21 1
  SETTABLEKS R21 R19 K159 ["isMarketplace"]
  LOADB R21 0
  SETTABLEKS R21 R19 K160 ["isBuyable"]
  GETIMPORT R21 K169 [Enum.AssetType.Audio]
  DUPTABLE R20 K161 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R21 R20 K115 ["type"]
  LOADB R22 1
  SETTABLEKS R22 R20 K159 ["isMarketplace"]
  LOADB R22 0
  SETTABLEKS R22 R20 K160 ["isBuyable"]
  GETIMPORT R22 K171 [Enum.AssetType.Animation]
  DUPTABLE R21 K161 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R22 R21 K115 ["type"]
  LOADB R23 1
  SETTABLEKS R23 R21 K159 ["isMarketplace"]
  LOADB R23 0
  SETTABLEKS R23 R21 K160 ["isBuyable"]
  GETIMPORT R23 K173 [Enum.AssetType.Video]
  DUPTABLE R22 K161 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R23 R22 K115 ["type"]
  LOADB R24 1
  SETTABLEKS R24 R22 K159 ["isMarketplace"]
  LOADB R24 0
  SETTABLEKS R24 R22 K160 ["isBuyable"]
  GETIMPORT R28 K175 [Enum.AssetType.Plugin]
  DUPTABLE R23 K161 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R28 R23 K115 ["type"]
  LOADB R29 1
  SETTABLEKS R29 R23 K159 ["isMarketplace"]
  LOADB R29 1
  SETTABLEKS R29 R23 K160 ["isBuyable"]
  SETLIST R11 R12 12 [17]
  SETTABLEKS R11 R8 K176 ["ASSET_TYPE_INFO"]
  GETTABLEKS R12 R8 K176 ["ASSET_TYPE_INFO"]
  GETIMPORT R14 K178 [Enum.AssetType.Package]
  DUPTABLE R13 K161 [{"type", "isMarketplace", "isBuyable"}]
  SETTABLEKS R14 R13 K115 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K159 ["isMarketplace"]
  LOADB R15 0
  SETTABLEKS R15 R13 K160 ["isBuyable"]
  FASTCALL2 TABLE_INSERT R12 R13 [+3]
  GETIMPORT R11 K181 [table.insert]
  CALL R11 2 0
  MOVE R11 R4
  CALL R11 0 1
  JUMPIFNOT R11 [+144]
  GETTABLEKS R12 R8 K176 ["ASSET_TYPE_INFO"]
  GETIMPORT R14 K183 [Enum.AssetType.Torso]
  DUPTABLE R13 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K115 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K116 ["isCatalog"]
  LOADB R15 1
  SETTABLEKS R15 R13 K117 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R12 R13 [+3]
  GETIMPORT R11 K181 [table.insert]
  CALL R11 2 0
  GETTABLEKS R12 R8 K176 ["ASSET_TYPE_INFO"]
  GETIMPORT R14 K185 [Enum.AssetType.RightArm]
  DUPTABLE R13 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K115 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K116 ["isCatalog"]
  LOADB R15 1
  SETTABLEKS R15 R13 K117 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R12 R13 [+3]
  GETIMPORT R11 K181 [table.insert]
  CALL R11 2 0
  GETTABLEKS R12 R8 K176 ["ASSET_TYPE_INFO"]
  GETIMPORT R14 K187 [Enum.AssetType.LeftArm]
  DUPTABLE R13 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K115 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K116 ["isCatalog"]
  LOADB R15 1
  SETTABLEKS R15 R13 K117 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R12 R13 [+3]
  GETIMPORT R11 K181 [table.insert]
  CALL R11 2 0
  GETTABLEKS R12 R8 K176 ["ASSET_TYPE_INFO"]
  GETIMPORT R14 K189 [Enum.AssetType.LeftLeg]
  DUPTABLE R13 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K115 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K116 ["isCatalog"]
  LOADB R15 1
  SETTABLEKS R15 R13 K117 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R12 R13 [+3]
  GETIMPORT R11 K181 [table.insert]
  CALL R11 2 0
  GETTABLEKS R12 R8 K176 ["ASSET_TYPE_INFO"]
  GETIMPORT R14 K191 [Enum.AssetType.RightLeg]
  DUPTABLE R13 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K115 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K116 ["isCatalog"]
  LOADB R15 1
  SETTABLEKS R15 R13 K117 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R12 R13 [+3]
  GETIMPORT R11 K181 [table.insert]
  CALL R11 2 0
  GETTABLEKS R12 R8 K176 ["ASSET_TYPE_INFO"]
  GETIMPORT R14 K193 [Enum.AssetType.DynamicHead]
  DUPTABLE R13 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K115 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K116 ["isCatalog"]
  LOADB R15 1
  SETTABLEKS R15 R13 K117 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R12 R13 [+3]
  GETIMPORT R11 K181 [table.insert]
  CALL R11 2 0
  GETTABLEKS R12 R8 K176 ["ASSET_TYPE_INFO"]
  GETIMPORT R14 K195 [Enum.AssetType.EyebrowAccessory]
  DUPTABLE R13 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K115 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K116 ["isCatalog"]
  LOADB R15 1
  SETTABLEKS R15 R13 K117 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R12 R13 [+3]
  GETIMPORT R11 K181 [table.insert]
  CALL R11 2 0
  GETTABLEKS R12 R8 K176 ["ASSET_TYPE_INFO"]
  GETIMPORT R14 K197 [Enum.AssetType.EyelashAccessory]
  DUPTABLE R13 K118 [{"type", "isCatalog", "isUploadable"}]
  SETTABLEKS R14 R13 K115 ["type"]
  LOADB R15 1
  SETTABLEKS R15 R13 K116 ["isCatalog"]
  LOADB R15 1
  SETTABLEKS R15 R13 K117 ["isUploadable"]
  FASTCALL2 TABLE_INSERT R12 R13 [+3]
  GETIMPORT R11 K181 [table.insert]
  CALL R11 2 0
  GETIMPORT R11 K199 [ipairs]
  GETTABLEKS R12 R8 K176 ["ASSET_TYPE_INFO"]
  CALL R11 1 3
  FORGPREP_INEXT R11
  GETIMPORT R17 K201 [next]
  MOVE R18 R15
  CALL R17 1 1
  JUMPIFNOTEQKNIL R17 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  JUMPIFNOT R16 [+40]
  GETTABLEKS R17 R15 K116 ["isCatalog"]
  JUMPIFNOT R17 [+15]
  GETTABLEKS R17 R15 K159 ["isMarketplace"]
  JUMPIFNOT R17 [+12]
  GETIMPORT R17 K203 [error]
  GETTABLEKS R22 R15 K115 ["type"]
  FASTCALL1 TOSTRING R22 [+2]
  GETIMPORT R21 K205 [tostring]
  CALL R21 1 1
  MOVE R19 R21
  LOADK R20 K206 [" cannot be both a catalog and marketplace asset"]
  CONCAT R18 R19 R20
  CALL R17 1 0
  GETTABLEKS R18 R8 K176 ["ASSET_TYPE_INFO"]
  GETTABLEKS R19 R15 K115 ["type"]
  GETTABLE R17 R18 R19
  JUMPIFNOT R17 [+11]
  GETIMPORT R17 K203 [error]
  LOADK R19 K207 ["AssetConfigConstants.ASSET_TYPE_INFO contains a duplicate of "]
  GETTABLEKS R21 R15 K115 ["type"]
  FASTCALL1 TOSTRING R21 [+2]
  GETIMPORT R20 K205 [tostring]
  CALL R20 1 1
  CONCAT R18 R19 R20
  CALL R17 1 0
  GETTABLEKS R17 R8 K176 ["ASSET_TYPE_INFO"]
  GETTABLEKS R18 R15 K115 ["type"]
  SETTABLE R15 R17 R18
  FORGLOOP R11 2 [inext] [-50]
  MOVE R11 R6
  NEWTABLE R12 0 3
  LOADK R13 K208 ["WhitelistedPlugins"]
  LOADK R14 K209 ["MyPlugins"]
  LOADK R15 K210 ["GroupPlugins"]
  SETLIST R12 R13 3 [1]
  CALL R11 1 1
  SETTABLEKS R11 R8 K211 ["developCategoryType"]
  MOVE R11 R6
  NEWTABLE R12 0 2
  LOADK R13 K212 ["MyPackages"]
  LOADK R14 K213 ["GroupPackages"]
  SETLIST R12 R13 2 [1]
  CALL R11 1 1
  SETTABLEKS R11 R8 K214 ["packagesCategoryType"]
  MOVE R11 R6
  NEWTABLE R12 0 9
  LOADK R13 K215 ["Asset"]
  LOADK R14 K216 ["Avatar"]
  LOADK R15 K217 ["AvatarHeadShot"]
  LOADK R16 K218 ["BadgeIcon"]
  LOADK R17 K219 ["BundleThumbnail"]
  LOADK R18 K220 ["GameIcon"]
  LOADK R19 K221 ["GamePass"]
  LOADK R20 K222 ["GroupIcon"]
  LOADK R21 K223 ["Outfit"]
  SETLIST R12 R13 9 [1]
  CALL R11 1 1
  SETTABLEKS R11 R8 K224 ["rbxThumbTypes"]
  DUPTABLE R11 K228 [{"AvatarHeadshotImageSize", "GroupIconImageSize", "AssetThumbnailSize"}]
  LOADN R12 60
  SETTABLEKS R12 R11 K225 ["AvatarHeadshotImageSize"]
  LOADN R12 150
  SETTABLEKS R12 R11 K226 ["GroupIconImageSize"]
  LOADN R12 164
  SETTABLEKS R12 R11 K227 ["AssetThumbnailSize"]
  SETTABLEKS R11 R8 K229 ["rbxThumbSizes"]
  DUPTABLE R11 K235 [{"MaxThumbnails", "AspectRatioHeight", "AspectRatioWidth", "RecommendedHeight", "RecommendedWidth"}]
  LOADN R12 5
  SETTABLEKS R12 R11 K230 ["MaxThumbnails"]
  LOADN R12 9
  SETTABLEKS R12 R11 K231 ["AspectRatioHeight"]
  LOADN R12 16
  SETTABLEKS R12 R11 K232 ["AspectRatioWidth"]
  LOADN R12 176
  SETTABLEKS R12 R11 K233 ["RecommendedHeight"]
  LOADN R12 0
  SETTABLEKS R12 R11 K234 ["RecommendedWidth"]
  SETTABLEKS R11 R8 K236 ["additionalImages"]
  NEWTABLE R11 0 3
  LOADK R12 K237 ["jpg"]
  LOADK R13 K238 ["jpeg"]
  LOADK R14 K239 ["png"]
  SETLIST R11 R12 3 [1]
  SETTABLEKS R11 R8 K240 ["IMAGE_TYPES"]
  LOADK R11 K241 ["Success"]
  SETTABLEKS R11 R8 K242 ["TAGS_SUGGESTION_SUCCESS"]
  LOADN R11 5
  SETTABLEKS R11 R8 K243 ["MAX_DISPLAY_SUGGESTIONS"]
  LOADN R11 10
  SETTABLEKS R11 R8 K244 ["MAX_FETCH_SUGGESTIONS"]
  LOADK R11 K245 ["avatar_meshpart_accessory"]
  SETTABLEKS R11 R8 K246 ["AVATAR_MESHPART_ACCESSORY_FORMAT"]
  LOADK R11 K247 ["EA0A21C3-8388-4038-9BD5-92C8B1B7BF8E"]
  SETTABLEKS R11 R8 K248 ["MULTIPART_FORM_BOUNDARY"]
  LOADK R11 K249 ["OverrideAssetId"]
  SETTABLEKS R11 R8 K250 ["OVERRIDE_ASSET_ID"]
  DUPTABLE R11 K253 [{"Public", "Private"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K251 ["Public"]
  LOADB R12 0
  SETTABLEKS R12 R11 K252 ["Private"]
  SETTABLEKS R11 R8 K254 ["SHARING_KEYS"]
  MOVE R11 R7
  CALL R11 0 1
  JUMPIFNOT R11 [+266]
  MOVE R11 R2
  LOADK R12 K255 ["UGCBundleTypes"]
  NEWTABLE R13 0 2
  LOADK R14 K0 ["script"]
  LOADK R15 K192 ["DynamicHead"]
  SETLIST R13 R14 2 [1]
  CALL R11 2 1
  SETTABLEKS R11 R8 K255 ["UGCBundleTypes"]
  NEWTABLE R11 2 0
  GETTABLEKS R14 R8 K255 ["UGCBundleTypes"]
  GETTABLEKS R13 R14 K256 ["Body"]
  GETTABLEKS R12 R13 K257 ["rawValue"]
  CALL R12 0 1
  GETTABLEKS R14 R8 K255 ["UGCBundleTypes"]
  GETTABLEKS R13 R14 K256 ["Body"]
  SETTABLE R13 R11 R12
  GETTABLEKS R14 R8 K255 ["UGCBundleTypes"]
  GETTABLEKS R13 R14 K192 ["DynamicHead"]
  GETTABLEKS R12 R13 K257 ["rawValue"]
  CALL R12 0 1
  GETTABLEKS R14 R8 K255 ["UGCBundleTypes"]
  GETTABLEKS R13 R14 K192 ["DynamicHead"]
  SETTABLE R13 R11 R12
  SETTABLEKS R11 R8 K258 ["UGCBundleTypeStringToEnumeration"]
  NEWTABLE R11 16 0
  GETIMPORT R12 K193 [Enum.AssetType.DynamicHead]
  SETTABLEKS R12 R11 K192 ["DynamicHead"]
  GETIMPORT R12 K187 [Enum.AssetType.LeftArm]
  SETTABLEKS R12 R11 K186 ["LeftArm"]
  GETIMPORT R12 K189 [Enum.AssetType.LeftLeg]
  SETTABLEKS R12 R11 K188 ["LeftLeg"]
  GETIMPORT R12 K185 [Enum.AssetType.RightArm]
  SETTABLEKS R12 R11 K184 ["RightArm"]
  GETIMPORT R12 K191 [Enum.AssetType.RightLeg]
  SETTABLEKS R12 R11 K190 ["RightLeg"]
  GETIMPORT R12 K183 [Enum.AssetType.Torso]
  SETTABLEKS R12 R11 K182 ["Torso"]
  GETIMPORT R12 K195 [Enum.AssetType.EyebrowAccessory]
  SETTABLEKS R12 R11 K194 ["EyebrowAccessory"]
  GETIMPORT R12 K197 [Enum.AssetType.EyelashAccessory]
  SETTABLEKS R12 R11 K196 ["EyelashAccessory"]
  GETIMPORT R12 K126 [Enum.AssetType.HairAccessory]
  SETTABLEKS R12 R11 K125 ["HairAccessory"]
  SETTABLEKS R11 R8 K259 ["AllowedAssetStringsMetadataToAssetTypeMap"]
  DUPTABLE R11 K275 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperArm", "LeftLowerArm", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
  LOADK R12 K4 [require]
  SETTABLEKS R12 R11 K260 ["Head"]
  LOADK R12 K5 ["Packages"]
  SETTABLEKS R12 R11 K261 ["UpperTorso"]
  LOADK R12 K6 ["Framework"]
  SETTABLEKS R12 R11 K262 ["LowerTorso"]
  LOADK R12 K7 ["Util"]
  SETTABLEKS R12 R11 K263 ["LeftUpperLeg"]
  LOADK R12 K8 ["enumerate"]
  SETTABLEKS R12 R11 K264 ["LeftLowerLeg"]
  LOADK R12 K9 ["Core"]
  SETTABLEKS R12 R11 K265 ["LeftHand"]
  LOADK R12 K10 ["Flags"]
  SETTABLEKS R12 R11 K266 ["RightUpperArm"]
  LOADK R12 K11 ["getFFlagToolboxAddNewUGCAssetTypes"]
  SETTABLEKS R12 R11 K267 ["RightLowerArm"]
  LOADK R12 K12 ["SharedFlags"]
  SETTABLEKS R12 R11 K268 ["RightHand"]
  LOADK R12 K13 ["getFFlagToolboxRestrictAssetConfig"]
  SETTABLEKS R12 R11 K269 ["LeftUpperArm"]
  LOADK R12 K14 ["convertArrayToTable"]
  SETTABLEKS R12 R11 K270 ["LeftLowerArm"]
  LOADK R12 K15 ["getFFlagEnableUGCBodyUploadFlow"]
  SETTABLEKS R12 R11 K271 ["LeftFoot"]
  LOADK R12 K16 ["WIDTH"]
  SETTABLEKS R12 R11 K272 ["RightUpperLeg"]
  LOADK R12 K17 ["HEIGHT"]
  SETTABLEKS R12 R11 K273 ["RightLowerLeg"]
  LOADK R12 K18 ["MIN_WIDTH"]
  SETTABLEKS R12 R11 K274 ["RightFoot"]
  LOADK R12 K194 ["EyebrowAccessory"]
  SETTABLEKS R12 R11 K194 ["EyebrowAccessory"]
  LOADK R12 K196 ["EyelashAccessory"]
  SETTABLEKS R12 R11 K196 ["EyelashAccessory"]
  LOADK R12 K125 ["HairAccessory"]
  SETTABLEKS R12 R11 K125 ["HairAccessory"]
  SETTABLEKS R11 R8 K276 ["UGC_BODY_PARTS"]
  NEWTABLE R11 32 0
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K260 ["Head"]
  GETIMPORT R13 K193 [Enum.AssetType.DynamicHead]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K261 ["UpperTorso"]
  GETIMPORT R13 K183 [Enum.AssetType.Torso]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K262 ["LowerTorso"]
  GETIMPORT R13 K183 [Enum.AssetType.Torso]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K269 ["LeftUpperArm"]
  GETIMPORT R13 K187 [Enum.AssetType.LeftArm]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K270 ["LeftLowerArm"]
  GETIMPORT R13 K187 [Enum.AssetType.LeftArm]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K265 ["LeftHand"]
  GETIMPORT R13 K187 [Enum.AssetType.LeftArm]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K266 ["RightUpperArm"]
  GETIMPORT R13 K185 [Enum.AssetType.RightArm]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K267 ["RightLowerArm"]
  GETIMPORT R13 K185 [Enum.AssetType.RightArm]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K268 ["RightHand"]
  GETIMPORT R13 K185 [Enum.AssetType.RightArm]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K263 ["LeftUpperLeg"]
  GETIMPORT R13 K189 [Enum.AssetType.LeftLeg]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K264 ["LeftLowerLeg"]
  GETIMPORT R13 K189 [Enum.AssetType.LeftLeg]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K271 ["LeftFoot"]
  GETIMPORT R13 K189 [Enum.AssetType.LeftLeg]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K272 ["RightUpperLeg"]
  GETIMPORT R13 K191 [Enum.AssetType.RightLeg]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K273 ["RightLowerLeg"]
  GETIMPORT R13 K191 [Enum.AssetType.RightLeg]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K274 ["RightFoot"]
  GETIMPORT R13 K191 [Enum.AssetType.RightLeg]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K194 ["EyebrowAccessory"]
  GETIMPORT R13 K195 [Enum.AssetType.EyebrowAccessory]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K196 ["EyelashAccessory"]
  GETIMPORT R13 K197 [Enum.AssetType.EyelashAccessory]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R8 K276 ["UGC_BODY_PARTS"]
  GETTABLEKS R12 R13 K125 ["HairAccessory"]
  GETIMPORT R13 K126 [Enum.AssetType.HairAccessory]
  SETTABLE R13 R11 R12
  SETTABLEKS R11 R8 K277 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
  RETURN R8 1
