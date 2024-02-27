PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["clearChange"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["OVERRIDE_ASSET_ID"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["goToNextScreen"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["onClose"]
  CALL R1 0 0
  GETIMPORT R1 K3 [game]
  LOADK R3 K4 ["StudioAssetService"]
  NAMECALL R1 R1 K5 ["GetService"]
  CALL R1 2 1
  LOADB R3 0
  NAMECALL R1 R1 K6 ["FireOnUGCSubmitCompleted"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["constructCreatorDashboardAvatarAssetUrl"]
  CALL R0 0 1
  JUMP [+1]
  LOADNIL R0
  JUMPIFNOT R0 [+7]
  JUMPIFEQKS R0 K1 [""] [+6]
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K2 ["OpenBrowserWindow"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["constructCreatorDashboardBundleConfigureUrl"]
  MOVE R2 R0
  CALL R1 1 1
  JUMP [+1]
  LOADNIL R1
  JUMPIFNOT R1 [+7]
  JUMPIFEQKS R1 K1 [""] [+6]
  GETUPVAL R2 1
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["OpenBrowserWindow"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R2 K1 [{"isLoading"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isLoading"]
  SETTABLEKS R2 R0 K2 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K3 ["goToNextScreen"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onClose"]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+5]
  DUPCLOSURE R2 K5 [PROTO_2]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K6 ["openCreatorDashboard"]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R2 4
  JUMPIFNOT R2 [+5]
  DUPCLOSURE R2 K7 [PROTO_3]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K8 ["openCreatorDashboardBundle"]
  RETURN R0 0

PROTO_5:
  LOADNIL R3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["FLOW_TYPE"]
  GETTABLEKS R4 R5 K1 ["UPLOAD_FLOW"]
  JUMPIFNOTEQ R0 R4 [+63]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["isCatalogAsset"]
  MOVE R5 R2
  CALL R4 1 1
  JUMPIFNOT R4 [+7]
  GETUPVAL R7 2
  GETTABLEKS R4 R7 K3 ["BaseUrl"]
  LOADK R5 K4 ["catalog/"]
  MOVE R6 R1
  CONCAT R3 R4 R6
  RETURN R3 1
  GETUPVAL R4 3
  JUMPIFNOT R4 [+32]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K5 ["getCreatorMarketplaceWebBaseUrl"]
  CALL R4 0 1
  JUMPIFNOT R4 [+12]
  GETIMPORT R5 K8 [string.format]
  LOADK R6 K9 ["%sasset/%s"]
  MOVE R7 R4
  GETUPVAL R8 5
  MOVE R10 R1
  NAMECALL R8 R8 K10 ["urlEncode"]
  CALL R8 2 -1
  CALL R5 -1 1
  MOVE R3 R5
  RETURN R3 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["BaseUrl"]
  GETIMPORT R6 K8 [string.format]
  LOADK R7 K11 ["%slibrary/%s/"]
  MOVE R8 R5
  GETUPVAL R9 5
  MOVE R11 R1
  NAMECALL R9 R9 K10 ["urlEncode"]
  CALL R9 2 -1
  CALL R6 -1 1
  MOVE R3 R6
  RETURN R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["BaseUrl"]
  GETIMPORT R5 K8 [string.format]
  LOADK R6 K11 ["%slibrary/%s/"]
  MOVE R7 R4
  GETUPVAL R8 5
  MOVE R10 R1
  NAMECALL R8 R8 K10 ["urlEncode"]
  CALL R8 2 -1
  CALL R5 -1 1
  MOVE R3 R5
  RETURN R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["isCatalogAsset"]
  MOVE R5 R2
  CALL R4 1 1
  JUMPIFNOT R4 [+7]
  GETUPVAL R7 2
  GETTABLEKS R4 R7 K3 ["BaseUrl"]
  LOADK R5 K4 ["catalog/"]
  MOVE R6 R1
  CONCAT R3 R4 R6
  RETURN R3 1
  GETUPVAL R4 3
  JUMPIFNOT R4 [+32]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K5 ["getCreatorMarketplaceWebBaseUrl"]
  CALL R4 0 1
  JUMPIFNOT R4 [+12]
  GETIMPORT R5 K8 [string.format]
  LOADK R6 K9 ["%sasset/%s"]
  MOVE R7 R4
  GETUPVAL R8 5
  MOVE R10 R1
  NAMECALL R8 R8 K10 ["urlEncode"]
  CALL R8 2 -1
  CALL R5 -1 1
  MOVE R3 R5
  RETURN R3 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["BaseUrl"]
  GETIMPORT R6 K8 [string.format]
  LOADK R7 K11 ["%slibrary/%s/"]
  MOVE R8 R5
  GETUPVAL R9 5
  MOVE R11 R1
  NAMECALL R9 R9 K10 ["urlEncode"]
  CALL R9 2 -1
  CALL R6 -1 1
  MOVE R3 R6
  RETURN R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["BaseUrl"]
  GETIMPORT R5 K8 [string.format]
  LOADK R6 K11 ["%slibrary/%s/"]
  MOVE R7 R4
  GETUPVAL R8 5
  MOVE R10 R1
  NAMECALL R8 R8 K10 ["urlEncode"]
  CALL R8 2 -1
  CALL R5 -1 1
  MOVE R3 R5
  RETURN R3 1

PROTO_6:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R8 R1
  MOVE R9 R6
  GETIMPORT R7 K4 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-8]
  RETURN R1 1

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["openCreatorDashboardBundle"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["assetId"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["networkError"]
  GETTABLEKS R5 R1 K3 ["screenFlowType"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["FLOW_TYPE"]
  GETTABLEKS R6 R7 K5 ["UPLOAD_FLOW"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  MOVE R5 R4
  JUMPIFNOT R5 [+6]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["isCatalogAsset"]
  GETTABLEKS R6 R1 K7 ["assetTypeEnum"]
  CALL R5 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["getPreviewType"]
  GETTABLEKS R7 R1 K7 ["assetTypeEnum"]
  GETTABLEKS R8 R1 K9 ["instances"]
  CALL R6 2 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["ModelPreview"]
  JUMPIFEQ R6 R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  LOADB R8 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["Thumbnail"]
  JUMPIFEQ R6 R9 [+8]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K12 ["ImagePicker"]
  JUMPIFEQ R6 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETTABLEKS R10 R1 K13 ["networkTable"]
  NEWTABLE R11 0 0
  GETIMPORT R12 K15 [pairs]
  MOVE R13 R10
  CALL R12 1 3
  FORGPREP_NEXT R12
  FASTCALL2 TABLE_INSERT R11 R16 [+5]
  MOVE R18 R11
  MOVE R19 R16
  GETIMPORT R17 K18 [table.insert]
  CALL R17 2 0
  FORGLOOP R12 2 [-8]
  MOVE R9 R11
  GETTABLEKS R10 R1 K19 ["uploadSucceeded"]
  NOT R11 R10
  GETUPVAL R13 3
  JUMPIFNOT R13 [+3]
  GETTABLEKS R12 R1 K20 ["isPackageAsset"]
  JUMP [+1]
  LOADNIL R12
  GETUPVAL R14 4
  CALL R14 0 1
  JUMPIFNOT R14 [+7]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K6 ["isCatalogAsset"]
  GETTABLEKS R14 R1 K7 ["assetTypeEnum"]
  CALL R13 1 1
  JUMP [+1]
  LOADNIL R13
  LOADNIL R14
  GETUPVAL R15 4
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  AND R14 R10 R13
  JUMP [+1]
  LOADNIL R14
  LOADNIL R15
  GETUPVAL R16 4
  CALL R16 0 1
  JUMPIFNOT R16 [+6]
  JUMPIF R10 [+2]
  MOVE R16 R13
  JUMPIF R16 [+1]
  NOT R16 R13
  MOVE R15 R16
  JUMP [+1]
  LOADB R15 1
  LOADNIL R16
  GETUPVAL R17 4
  CALL R17 0 1
  JUMPIFNOT R17 [+6]
  JUMPIF R10 [+2]
  MOVE R17 R13
  JUMPIF R17 [+1]
  NOT R17 R12
  MOVE R16 R17
  JUMP [+1]
  NOT R16 R12
  LOADNIL R17
  GETTABLEKS R18 R1 K21 ["hasSubsequent"]
  JUMPIFNOT R18 [+4]
  LOADB R14 0
  LOADB R16 0
  LOADB R15 0
  LOADB R17 1
  LOADN R19 72
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K22 ["FONT_SIZE_MEDIUM"]
  ADD R18 R19 R20
  GETUPVAL R20 6
  JUMPIFNOT R20 [+17]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K6 ["isCatalogAsset"]
  GETTABLEKS R20 R1 K7 ["assetTypeEnum"]
  CALL R19 1 1
  JUMPIF R19 [+11]
  GETUPVAL R19 4
  CALL R19 0 1
  JUMPIFNOT R19 [+8]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K23 ["isUGCBundleType"]
  GETTABLEKS R20 R1 K7 ["assetTypeEnum"]
  CALL R19 1 1
  JUMP [+1]
  LOADB R19 0
  LOADNIL R20
  JUMPIF R19 [+13]
  GETTABLEKS R21 R1 K19 ["uploadSucceeded"]
  JUMPIFNOT R21 [+10]
  GETUPVAL R21 7
  GETTABLEKS R22 R1 K3 ["screenFlowType"]
  GETTABLEKS R24 R1 K25 ["assetId"]
  ORK R23 R24 K24 [0]
  GETTABLEKS R24 R1 K7 ["assetTypeEnum"]
  CALL R21 3 1
  MOVE R20 R21
  GETUPVAL R22 8
  GETTABLEKS R21 R22 K26 ["new"]
  CALL R21 0 1
  GETUPVAL R23 9
  GETTABLEKS R22 R23 K27 ["createElement"]
  LOADK R23 K28 ["Frame"]
  DUPTABLE R24 K34 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  GETIMPORT R25 K37 [Enum.AutomaticSize.Y]
  SETTABLEKS R25 R24 K29 ["AutomaticSize"]
  GETTABLEKS R26 R2 K38 ["uploadResult"]
  GETTABLEKS R25 R26 K39 ["background"]
  SETTABLEKS R25 R24 K30 ["BackgroundColor3"]
  LOADN R25 0
  SETTABLEKS R25 R24 K31 ["BackgroundTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K32 ["BorderSizePixel"]
  GETTABLEKS R25 R1 K33 ["Size"]
  SETTABLEKS R25 R24 K33 ["Size"]
  DUPTABLE R25 K45 [{"ModelPreview", "ThumbnailPreview", "CopyID", "LoadingResultSuccess", "LoadingResultFailure", "Footer"}]
  MOVE R26 R7
  JUMPIFNOT R26 [+35]
  GETUPVAL R27 9
  GETTABLEKS R26 R27 K27 ["createElement"]
  GETUPVAL R27 10
  DUPTABLE R28 K50 [{"title", "titleHeight", "titlePadding", "Position", "Size"}]
  GETTABLEKS R30 R1 K52 ["assetName"]
  ORK R29 R30 K51 []
  SETTABLEKS R29 R28 K46 ["title"]
  LOADN R29 24
  SETTABLEKS R29 R28 K47 ["titleHeight"]
  LOADN R29 12
  SETTABLEKS R29 R28 K48 ["titlePadding"]
  GETIMPORT R29 K54 [UDim2.new]
  LOADK R30 K55 [0.5]
  LOADN R31 181
  LOADN R32 0
  LOADN R33 48
  CALL R29 4 1
  SETTABLEKS R29 R28 K49 ["Position"]
  GETIMPORT R29 K54 [UDim2.new]
  LOADN R30 0
  LOADN R31 150
  LOADN R32 0
  LOADN R33 186
  CALL R29 4 1
  SETTABLEKS R29 R28 K33 ["Size"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K10 ["ModelPreview"]
  MOVE R26 R8
  JUMPIFNOT R26 [+40]
  GETUPVAL R27 9
  GETTABLEKS R26 R27 K27 ["createElement"]
  LOADK R27 K56 ["ImageLabel"]
  DUPTABLE R28 K58 [{"Position", "Size", "Image", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R29 K54 [UDim2.new]
  LOADK R30 K55 [0.5]
  LOADN R31 181
  LOADN R32 0
  LOADN R33 48
  CALL R29 4 1
  SETTABLEKS R29 R28 K49 ["Position"]
  GETIMPORT R29 K54 [UDim2.new]
  LOADN R30 0
  LOADN R31 150
  LOADN R32 0
  LOADN R33 150
  CALL R29 4 1
  SETTABLEKS R29 R28 K33 ["Size"]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K59 ["getResultThumbnail"]
  GETTABLEKS R30 R1 K25 ["assetId"]
  GETTABLEKS R31 R1 K60 ["iconFile"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K57 ["Image"]
  LOADN R29 1
  SETTABLEKS R29 R28 K31 ["BackgroundTransparency"]
  LOADN R29 0
  SETTABLEKS R29 R28 K32 ["BorderSizePixel"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K40 ["ThumbnailPreview"]
  MOVE R26 R10
  JUMPIFNOT R26 [+13]
  GETUPVAL R27 9
  GETTABLEKS R26 R27 K27 ["createElement"]
  GETUPVAL R27 11
  DUPTABLE R28 K63 [{"YPos", "AssetId"}]
  LOADN R29 240
  SETTABLEKS R29 R28 K61 ["YPos"]
  GETTABLEKS R29 R1 K25 ["assetId"]
  SETTABLEKS R29 R28 K62 ["AssetId"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K41 ["CopyID"]
  MOVE R26 R10
  JUMPIFNOT R26 [+439]
  GETUPVAL R27 9
  GETTABLEKS R26 R27 K27 ["createElement"]
  LOADK R27 K28 ["Frame"]
  DUPTABLE R28 K64 [{"Position", "Size", "BackgroundTransparency"}]
  GETIMPORT R29 K54 [UDim2.new]
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  LOADN R33 23
  CALL R29 4 1
  SETTABLEKS R29 R28 K49 ["Position"]
  GETIMPORT R29 K54 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 1
  LOADN R33 233
  CALL R29 4 1
  SETTABLEKS R29 R28 K33 ["Size"]
  LOADN R29 1
  SETTABLEKS R29 R28 K31 ["BackgroundTransparency"]
  DUPTABLE R29 K69 [{"UIListLayout", "Title", "ReasonFrame", "Rows"}]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K27 ["createElement"]
  LOADK R31 K65 ["UIListLayout"]
  DUPTABLE R32 K75 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R33 K77 [Enum.FillDirection.Vertical]
  SETTABLEKS R33 R32 K70 ["FillDirection"]
  GETIMPORT R33 K79 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R33 R32 K71 ["HorizontalAlignment"]
  GETIMPORT R33 K81 [Enum.VerticalAlignment.Top]
  SETTABLEKS R33 R32 K72 ["VerticalAlignment"]
  GETIMPORT R33 K83 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K73 ["SortOrder"]
  GETIMPORT R33 K85 [UDim.new]
  LOADN R34 0
  LOADN R35 5
  CALL R33 2 1
  SETTABLEKS R33 R32 K74 ["Padding"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K65 ["UIListLayout"]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K27 ["createElement"]
  LOADK R31 K86 ["TextLabel"]
  DUPTABLE R32 K93 [{"BackgroundTransparency", "Position", "Size", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
  LOADN R33 1
  SETTABLEKS R33 R32 K31 ["BackgroundTransparency"]
  GETIMPORT R33 K54 [UDim2.new]
  LOADK R34 K55 [0.5]
  LOADN R35 56
  LOADN R36 0
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K49 ["Position"]
  GETIMPORT R33 K54 [UDim2.new]
  LOADN R34 0
  LOADN R35 144
  LOADN R36 0
  LOADN R37 36
  CALL R33 4 1
  SETTABLEKS R33 R32 K33 ["Size"]
  GETTABLEKS R34 R1 K19 ["uploadSucceeded"]
  JUMPIFNOT R34 [+2]
  LOADK R33 K94 ["Successfully submitted!"]
  JUMP [+1]
  LOADK R33 K95 ["Submission failed"]
  SETTABLEKS R33 R32 K87 ["Text"]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K96 ["FONT"]
  SETTABLEKS R33 R32 K88 ["Font"]
  GETTABLEKS R34 R2 K38 ["uploadResult"]
  GETTABLEKS R33 R34 K97 ["greenText"]
  SETTABLEKS R33 R32 K89 ["TextColor3"]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K98 ["FONT_SIZE_TITLE"]
  SETTABLEKS R33 R32 K90 ["TextSize"]
  GETIMPORT R33 K99 [Enum.TextXAlignment.Center]
  SETTABLEKS R33 R32 K91 ["TextXAlignment"]
  GETIMPORT R33 K100 [Enum.TextYAlignment.Center]
  SETTABLEKS R33 R32 K92 ["TextYAlignment"]
  LOADN R33 1
  SETTABLEKS R33 R32 K82 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K66 ["Title"]
  LOADB R30 0
  SETTABLEKS R30 R29 K67 ["ReasonFrame"]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K27 ["createElement"]
  LOADK R31 K28 ["Frame"]
  DUPTABLE R32 K101 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
  LOADN R33 1
  SETTABLEKS R33 R32 K31 ["BackgroundTransparency"]
  GETIMPORT R33 K54 [UDim2.new]
  LOADN R34 0
  LOADN R35 144
  LOADN R36 0
  LOADN R37 72
  CALL R33 4 1
  SETTABLEKS R33 R32 K33 ["Size"]
  GETIMPORT R33 K54 [UDim2.new]
  LOADK R34 K55 [0.5]
  LOADN R35 56
  LOADN R36 0
  LOADN R37 49
  CALL R33 4 1
  SETTABLEKS R33 R32 K49 ["Position"]
  LOADN R33 3
  SETTABLEKS R33 R32 K82 ["LayoutOrder"]
  DUPTABLE R33 K106 [{"UIListLayout", "ModerationMessage", "ToolboxText", "ToolboxLink", "CreatorDashboardMsg"}]
  GETUPVAL R35 9
  GETTABLEKS R34 R35 K27 ["createElement"]
  LOADK R35 K65 ["UIListLayout"]
  DUPTABLE R36 K107 [{"Padding", "SortOrder"}]
  GETIMPORT R37 K85 [UDim.new]
  LOADN R38 0
  LOADN R39 12
  CALL R37 2 1
  SETTABLEKS R37 R36 K74 ["Padding"]
  GETIMPORT R37 K83 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R37 R36 K73 ["SortOrder"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K65 ["UIListLayout"]
  MOVE R34 R5
  JUMPIFNOT R34 [+44]
  GETUPVAL R35 9
  GETTABLEKS R34 R35 K27 ["createElement"]
  LOADK R35 K86 ["TextLabel"]
  DUPTABLE R36 K108 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
  LOADN R37 1
  SETTABLEKS R37 R36 K31 ["BackgroundTransparency"]
  GETUPVAL R38 5
  GETTABLEKS R37 R38 K96 ["FONT"]
  SETTABLEKS R37 R36 K88 ["Font"]
  LOADK R37 K109 ["Asset has been added to moderation queue."]
  SETTABLEKS R37 R36 K87 ["Text"]
  GETTABLEKS R38 R2 K38 ["uploadResult"]
  GETTABLEKS R37 R38 K110 ["text"]
  SETTABLEKS R37 R36 K89 ["TextColor3"]
  GETUPVAL R38 5
  GETTABLEKS R37 R38 K22 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R37 R36 K90 ["TextSize"]
  GETIMPORT R37 K54 [UDim2.new]
  LOADN R38 1
  LOADN R39 0
  LOADN R40 0
  LOADN R41 24
  CALL R37 4 1
  SETTABLEKS R37 R36 K33 ["Size"]
  GETIMPORT R37 K100 [Enum.TextYAlignment.Center]
  SETTABLEKS R37 R36 K92 ["TextYAlignment"]
  LOADN R37 0
  SETTABLEKS R37 R36 K82 ["LayoutOrder"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K102 ["ModerationMessage"]
  JUMPIF R19 [+45]
  GETUPVAL R35 9
  GETTABLEKS R34 R35 K27 ["createElement"]
  LOADK R35 K86 ["TextLabel"]
  DUPTABLE R36 K108 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
  LOADN R37 1
  SETTABLEKS R37 R36 K31 ["BackgroundTransparency"]
  GETUPVAL R38 5
  GETTABLEKS R37 R38 K96 ["FONT"]
  SETTABLEKS R37 R36 K88 ["Font"]
  LOADK R37 K111 ["You may find your asset in Toolbox or on web:"]
  SETTABLEKS R37 R36 K87 ["Text"]
  GETTABLEKS R38 R2 K38 ["uploadResult"]
  GETTABLEKS R37 R38 K110 ["text"]
  SETTABLEKS R37 R36 K89 ["TextColor3"]
  GETUPVAL R38 5
  GETTABLEKS R37 R38 K22 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R37 R36 K90 ["TextSize"]
  GETIMPORT R37 K54 [UDim2.new]
  LOADN R38 1
  LOADN R39 0
  LOADN R40 0
  LOADN R41 24
  CALL R37 4 1
  SETTABLEKS R37 R36 K33 ["Size"]
  GETIMPORT R37 K100 [Enum.TextYAlignment.Center]
  SETTABLEKS R37 R36 K92 ["TextYAlignment"]
  LOADN R37 1
  SETTABLEKS R37 R36 K82 ["LayoutOrder"]
  CALL R34 2 1
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K103 ["ToolboxText"]
  JUMPIF R19 [+54]
  GETUPVAL R35 9
  GETTABLEKS R34 R35 K27 ["createElement"]
  LOADK R35 K112 ["TextButton"]
  NEWTABLE R36 16 0
  LOADN R37 1
  SETTABLEKS R37 R36 K31 ["BackgroundTransparency"]
  GETUPVAL R38 5
  GETTABLEKS R37 R38 K96 ["FONT"]
  SETTABLEKS R37 R36 K88 ["Font"]
  SETTABLEKS R20 R36 K87 ["Text"]
  GETTABLEKS R38 R2 K38 ["uploadResult"]
  GETTABLEKS R37 R38 K113 ["link"]
  SETTABLEKS R37 R36 K89 ["TextColor3"]
  GETUPVAL R38 5
  GETTABLEKS R37 R38 K22 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R37 R36 K90 ["TextSize"]
  GETIMPORT R37 K54 [UDim2.new]
  LOADN R38 1
  LOADN R39 0
  LOADN R40 0
  LOADN R41 24
  CALL R37 4 1
  SETTABLEKS R37 R36 K33 ["Size"]
  GETIMPORT R37 K100 [Enum.TextYAlignment.Center]
  SETTABLEKS R37 R36 K92 ["TextYAlignment"]
  LOADN R37 2
  SETTABLEKS R37 R36 K82 ["LayoutOrder"]
  GETUPVAL R39 9
  GETTABLEKS R38 R39 K114 ["Event"]
  GETTABLEKS R37 R38 K115 ["Activated"]
  NEWCLOSURE R38 P0
  CAPTURE UPVAL U12
  CAPTURE REF R20
  SETTABLE R38 R36 R37
  CALL R34 2 1
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K104 ["ToolboxLink"]
  JUMPIFNOT R19 [+102]
  GETUPVAL R35 9
  GETTABLEKS R34 R35 K27 ["createElement"]
  GETUPVAL R35 13
  DUPTABLE R36 K121 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "AutomaticSize", "TextXAlignment", "HorizontalAlignment", "MaxWidth", "TextProps", "LayoutOrder"}]
  GETIMPORT R38 K123 [game]
  LOADK R40 K124 ["UpdateAssetUploadResultBundleConfigureLink2"]
  NAMECALL R38 R38 K125 ["GetFastFlag"]
  CALL R38 2 1
  JUMPIFNOT R38 [+14]
  GETUPVAL R38 4
  CALL R38 0 1
  JUMPIFNOT R38 [+11]
  GETUPVAL R39 1
  GETTABLEKS R38 R39 K23 ["isUGCBundleType"]
  GETTABLEKS R39 R1 K7 ["assetTypeEnum"]
  CALL R38 1 1
  JUMPIFNOT R38 [+4]
  NEWCLOSURE R37 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  JUMP [+2]
  GETTABLEKS R37 R0 K126 ["openCreatorDashboard"]
  SETTABLEKS R37 R36 K116 ["OnLinkClicked"]
  GETTABLEKS R37 R1 K127 ["Localization"]
  LOADK R39 K128 ["AssetUploadResult"]
  LOADK R40 K129 ["CreatorDashboardMessage"]
  DUPTABLE R41 K131 [{"creatorDashboardLink"}]
  GETUPVAL R43 5
  GETTABLEKS R42 R43 K132 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
  SETTABLEKS R42 R41 K130 ["creatorDashboardLink"]
  NAMECALL R37 R37 K133 ["getText"]
  CALL R37 4 1
  SETTABLEKS R37 R36 K87 ["Text"]
  GETTABLEKS R37 R1 K127 ["Localization"]
  LOADK R39 K134 ["General"]
  LOADK R40 K135 ["CreatorDashboard"]
  NAMECALL R37 R37 K133 ["getText"]
  CALL R37 3 1
  SETTABLEKS R37 R36 K117 ["LinkText"]
  GETUPVAL R38 5
  GETTABLEKS R37 R38 K132 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
  SETTABLEKS R37 R36 K118 ["LinkPlaceholder"]
  GETIMPORT R37 K37 [Enum.AutomaticSize.Y]
  SETTABLEKS R37 R36 K29 ["AutomaticSize"]
  GETIMPORT R37 K99 [Enum.TextXAlignment.Center]
  SETTABLEKS R37 R36 K91 ["TextXAlignment"]
  GETIMPORT R37 K79 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R37 R36 K71 ["HorizontalAlignment"]
  LOADN R37 144
  SETTABLEKS R37 R36 K119 ["MaxWidth"]
  DUPTABLE R37 K136 [{"Font", "TextColor3", "TextSize", "TextXAlignment"}]
  GETUPVAL R39 5
  GETTABLEKS R38 R39 K96 ["FONT"]
  SETTABLEKS R38 R37 K88 ["Font"]
  GETTABLEKS R39 R2 K38 ["uploadResult"]
  GETTABLEKS R38 R39 K110 ["text"]
  SETTABLEKS R38 R37 K89 ["TextColor3"]
  GETUPVAL R39 5
  GETTABLEKS R38 R39 K98 ["FONT_SIZE_TITLE"]
  SETTABLEKS R38 R37 K90 ["TextSize"]
  GETIMPORT R38 K99 [Enum.TextXAlignment.Center]
  SETTABLEKS R38 R37 K91 ["TextXAlignment"]
  SETTABLEKS R37 R36 K120 ["TextProps"]
  LOADN R37 3
  SETTABLEKS R37 R36 K82 ["LayoutOrder"]
  CALL R34 2 1
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K105 ["CreatorDashboardMsg"]
  CALL R30 3 1
  SETTABLEKS R30 R29 K68 ["Rows"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K42 ["LoadingResultSuccess"]
  MOVE R26 R11
  JUMPIFNOT R26 [+146]
  GETUPVAL R27 9
  GETTABLEKS R26 R27 K27 ["createElement"]
  LOADK R27 K28 ["Frame"]
  DUPTABLE R28 K64 [{"Position", "Size", "BackgroundTransparency"}]
  GETIMPORT R29 K54 [UDim2.new]
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  LOADN R33 23
  CALL R29 4 1
  SETTABLEKS R29 R28 K49 ["Position"]
  GETIMPORT R29 K54 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 1
  LOADN R33 233
  CALL R29 4 1
  SETTABLEKS R29 R28 K33 ["Size"]
  LOADN R29 1
  SETTABLEKS R29 R28 K31 ["BackgroundTransparency"]
  DUPTABLE R29 K138 [{"Title", "Reason"}]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K27 ["createElement"]
  LOADK R31 K86 ["TextLabel"]
  DUPTABLE R32 K139 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R33 1
  SETTABLEKS R33 R32 K31 ["BackgroundTransparency"]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K96 ["FONT"]
  SETTABLEKS R33 R32 K88 ["Font"]
  GETIMPORT R33 K54 [UDim2.new]
  LOADK R34 K55 [0.5]
  LOADN R35 56
  LOADN R36 0
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K49 ["Position"]
  GETIMPORT R33 K54 [UDim2.new]
  LOADN R34 0
  LOADN R35 144
  LOADN R36 0
  LOADN R37 36
  CALL R33 4 1
  SETTABLEKS R33 R32 K33 ["Size"]
  LOADK R33 K95 ["Submission failed"]
  SETTABLEKS R33 R32 K87 ["Text"]
  GETTABLEKS R34 R2 K38 ["uploadResult"]
  GETTABLEKS R33 R34 K140 ["redText"]
  SETTABLEKS R33 R32 K89 ["TextColor3"]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K98 ["FONT_SIZE_TITLE"]
  SETTABLEKS R33 R32 K90 ["TextSize"]
  GETIMPORT R33 K99 [Enum.TextXAlignment.Center]
  SETTABLEKS R33 R32 K91 ["TextXAlignment"]
  GETIMPORT R33 K100 [Enum.TextYAlignment.Center]
  SETTABLEKS R33 R32 K92 ["TextYAlignment"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K66 ["Title"]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K27 ["createElement"]
  LOADK R31 K86 ["TextLabel"]
  DUPTABLE R32 K142 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextWrapped", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R33 1
  SETTABLEKS R33 R32 K31 ["BackgroundTransparency"]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K96 ["FONT"]
  SETTABLEKS R33 R32 K88 ["Font"]
  GETIMPORT R33 K54 [UDim2.new]
  LOADK R34 K55 [0.5]
  LOADN R35 56
  LOADN R36 0
  LOADN R37 49
  CALL R33 4 1
  SETTABLEKS R33 R32 K49 ["Position"]
  GETIMPORT R33 K54 [UDim2.new]
  LOADN R34 0
  LOADN R35 144
  LOADN R36 0
  LOADN R37 72
  CALL R33 4 1
  SETTABLEKS R33 R32 K33 ["Size"]
  MOVE R33 R3
  JUMPIFNOT R33 [+2]
  GETTABLEKS R33 R3 K143 ["responseBody"]
  SETTABLEKS R33 R32 K87 ["Text"]
  LOADB R33 1
  SETTABLEKS R33 R32 K141 ["TextWrapped"]
  GETTABLEKS R34 R2 K38 ["uploadResult"]
  GETTABLEKS R33 R34 K110 ["text"]
  SETTABLEKS R33 R32 K89 ["TextColor3"]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K22 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R33 R32 K90 ["TextSize"]
  GETIMPORT R33 K99 [Enum.TextXAlignment.Center]
  SETTABLEKS R33 R32 K91 ["TextXAlignment"]
  GETIMPORT R33 K144 [Enum.TextYAlignment.Top]
  SETTABLEKS R33 R32 K92 ["TextYAlignment"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K137 ["Reason"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K43 ["LoadingResultFailure"]
  GETUPVAL R27 9
  GETTABLEKS R26 R27 K27 ["createElement"]
  LOADK R27 K28 ["Frame"]
  DUPTABLE R28 K145 [{"AutomaticSize", "BackgroundTransparency", "Position", "Size"}]
  GETIMPORT R29 K37 [Enum.AutomaticSize.Y]
  SETTABLEKS R29 R28 K29 ["AutomaticSize"]
  LOADN R29 1
  SETTABLEKS R29 R28 K31 ["BackgroundTransparency"]
  GETIMPORT R29 K54 [UDim2.new]
  LOADN R30 0
  LOADN R31 0
  LOADN R32 1
  MINUS R33 R18
  CALL R29 4 1
  SETTABLEKS R29 R28 K49 ["Position"]
  GETIMPORT R29 K54 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  MOVE R33 R18
  CALL R29 4 1
  SETTABLEKS R29 R28 K33 ["Size"]
  DUPTABLE R29 K150 [{"UIListLayout", "SubmitButton", "NextButton", "CloseLink", "CloseButton", "LinkText"}]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K27 ["createElement"]
  LOADK R31 K65 ["UIListLayout"]
  DUPTABLE R32 K151 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
  GETIMPORT R33 K77 [Enum.FillDirection.Vertical]
  SETTABLEKS R33 R32 K70 ["FillDirection"]
  GETIMPORT R33 K79 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R33 R32 K71 ["HorizontalAlignment"]
  GETIMPORT R33 K85 [UDim.new]
  LOADN R34 0
  LOADN R35 10
  CALL R33 2 1
  SETTABLEKS R33 R32 K74 ["Padding"]
  GETIMPORT R33 K83 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K73 ["SortOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K65 ["UIListLayout"]
  JUMPIFNOT R14 [+38]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K27 ["createElement"]
  GETUPVAL R31 14
  DUPTABLE R32 K154 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
  GETIMPORT R33 K156 [Enum.AutomaticSize.X]
  SETTABLEKS R33 R32 K29 ["AutomaticSize"]
  NAMECALL R33 R21 K157 ["getNextOrder"]
  CALL R33 1 1
  SETTABLEKS R33 R32 K82 ["LayoutOrder"]
  GETTABLEKS R33 R0 K158 ["goToNextScreen"]
  SETTABLEKS R33 R32 K152 ["onClick"]
  GETIMPORT R33 K54 [UDim2.new]
  LOADN R34 0
  GETUPVAL R35 15
  LOADN R36 0
  LOADN R37 32
  CALL R33 4 1
  SETTABLEKS R33 R32 K33 ["Size"]
  GETTABLEKS R33 R1 K127 ["Localization"]
  LOADK R35 K128 ["AssetUploadResult"]
  LOADK R36 K159 ["SubmitAsDevelopmentItem"]
  NAMECALL R33 R33 K133 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K153 ["titleText"]
  CALL R30 2 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K146 ["SubmitButton"]
  JUMPIFNOT R17 [+38]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K27 ["createElement"]
  GETUPVAL R31 14
  DUPTABLE R32 K154 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
  GETIMPORT R33 K156 [Enum.AutomaticSize.X]
  SETTABLEKS R33 R32 K29 ["AutomaticSize"]
  NAMECALL R33 R21 K157 ["getNextOrder"]
  CALL R33 1 1
  SETTABLEKS R33 R32 K82 ["LayoutOrder"]
  GETTABLEKS R33 R0 K160 ["onClose"]
  SETTABLEKS R33 R32 K152 ["onClick"]
  GETIMPORT R33 K54 [UDim2.new]
  LOADN R34 0
  LOADN R35 200
  LOADN R36 0
  LOADN R37 32
  CALL R33 4 1
  SETTABLEKS R33 R32 K33 ["Size"]
  GETTABLEKS R33 R1 K127 ["Localization"]
  LOADK R35 K128 ["AssetUploadResult"]
  LOADK R36 K161 ["NextSubmit"]
  NAMECALL R33 R33 K133 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K153 ["titleText"]
  CALL R30 2 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K147 ["NextButton"]
  JUMPIFNOT R14 [+25]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K27 ["createElement"]
  GETUPVAL R31 16
  DUPTABLE R32 K163 [{"LayoutOrder", "OnClick", "Text"}]
  NAMECALL R33 R21 K157 ["getNextOrder"]
  CALL R33 1 1
  SETTABLEKS R33 R32 K82 ["LayoutOrder"]
  GETTABLEKS R33 R0 K160 ["onClose"]
  SETTABLEKS R33 R32 K162 ["OnClick"]
  GETTABLEKS R33 R1 K127 ["Localization"]
  LOADK R35 K128 ["AssetUploadResult"]
  LOADK R36 K164 ["Close"]
  NAMECALL R33 R33 K133 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K87 ["Text"]
  CALL R30 2 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K148 ["CloseLink"]
  JUMPIFNOT R15 [+44]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K27 ["createElement"]
  GETUPVAL R31 14
  DUPTABLE R32 K165 [{"LayoutOrder", "onClick", "Size", "titleText"}]
  GETUPVAL R34 4
  CALL R34 0 1
  JUMPIFNOT R34 [+4]
  NAMECALL R33 R21 K157 ["getNextOrder"]
  CALL R33 1 1
  JUMP [+1]
  LOADN R33 0
  SETTABLEKS R33 R32 K82 ["LayoutOrder"]
  GETTABLEKS R33 R0 K160 ["onClose"]
  SETTABLEKS R33 R32 K152 ["onClick"]
  GETIMPORT R33 K54 [UDim2.new]
  LOADN R34 0
  LOADN R35 120
  LOADN R36 0
  LOADN R37 32
  CALL R33 4 1
  SETTABLEKS R33 R32 K33 ["Size"]
  GETUPVAL R34 4
  CALL R34 0 1
  JUMPIFNOT R34 [+8]
  GETTABLEKS R33 R1 K127 ["Localization"]
  LOADK R35 K128 ["AssetUploadResult"]
  LOADK R36 K164 ["Close"]
  NAMECALL R33 R33 K133 ["getText"]
  CALL R33 3 1
  JUMP [+1]
  LOADK R33 K164 ["Close"]
  SETTABLEKS R33 R32 K153 ["titleText"]
  CALL R30 2 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K149 ["CloseButton"]
  JUMPIFNOT R16 [+23]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K27 ["createElement"]
  GETUPVAL R31 16
  DUPTABLE R32 K163 [{"LayoutOrder", "OnClick", "Text"}]
  LOADN R33 1
  SETTABLEKS R33 R32 K82 ["LayoutOrder"]
  GETTABLEKS R33 R0 K158 ["goToNextScreen"]
  SETTABLEKS R33 R32 K162 ["OnClick"]
  GETTABLEKS R33 R1 K127 ["Localization"]
  LOADK R35 K128 ["AssetUploadResult"]
  LOADK R36 K166 ["Back"]
  NAMECALL R33 R33 K133 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K87 ["Text"]
  CALL R30 2 1
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K117 ["LinkText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K44 ["Footer"]
  CALL R22 3 -1
  CLOSEUPVALS R20
  RETURN R22 -1

PROTO_10:
  GETUPVAL R2 0
  LOADNIL R4
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["renderContent"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_12:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K13 [{"assetId", "assetName", "uploadSucceeded", "instances", "networkError", "screenFlowType", "assetConfigData", "assetTypeEnum", "thumbnailStatus", "networkTable", "iconFile", "isPackageAsset", "hasSubsequent"}]
  GETTABLEKS R3 R0 K0 ["assetId"]
  SETTABLEKS R3 R2 K0 ["assetId"]
  GETTABLEKS R4 R0 K14 ["changed"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K14 ["changed"]
  GETTABLEKS R3 R4 K15 ["AssetConfigName"]
  JUMPIF R3 [+2]
  GETTABLEKS R3 R0 K1 ["assetName"]
  SETTABLEKS R3 R2 K1 ["assetName"]
  GETTABLEKS R3 R0 K2 ["uploadSucceeded"]
  SETTABLEKS R3 R2 K2 ["uploadSucceeded"]
  GETTABLEKS R3 R0 K3 ["instances"]
  SETTABLEKS R3 R2 K3 ["instances"]
  GETTABLEKS R3 R0 K4 ["networkError"]
  SETTABLEKS R3 R2 K4 ["networkError"]
  GETTABLEKS R3 R0 K5 ["screenFlowType"]
  SETTABLEKS R3 R2 K5 ["screenFlowType"]
  GETTABLEKS R3 R0 K6 ["assetConfigData"]
  SETTABLEKS R3 R2 K6 ["assetConfigData"]
  GETTABLEKS R3 R0 K7 ["assetTypeEnum"]
  SETTABLEKS R3 R2 K7 ["assetTypeEnum"]
  GETTABLEKS R3 R0 K8 ["thumbnailStatus"]
  SETTABLEKS R3 R2 K8 ["thumbnailStatus"]
  GETTABLEKS R3 R0 K9 ["networkTable"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K9 ["networkTable"]
  GETTABLEKS R3 R0 K10 ["iconFile"]
  SETTABLEKS R3 R2 K10 ["iconFile"]
  GETUPVAL R4 0
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R0 K11 ["isPackageAsset"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K11 ["isPackageAsset"]
  GETTABLEKS R3 R0 K12 ["hasSubsequent"]
  SETTABLEKS R3 R2 K12 ["hasSubsequent"]
  RETURN R2 1

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K2 [{"clearChange", "goToNextScreen"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["clearChange"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["goToNextScreen"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContentProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["HttpService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["EnableAssetUploadCreatorDashboardMessage"]
  NAMECALL R3 R3 K7 ["GetFastFlag"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["UpdateAssetUploadResultBundleConfigureLink2"]
  NAMECALL R4 R4 K7 ["GetFastFlag"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["ToolboxUseCmwForAssetUploadLink"]
  NAMECALL R5 R5 K7 ["GetFastFlag"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K10 ["ToolboxFixSubmitDevelopmentItemWidth"]
  LOADB R9 0
  NAMECALL R6 R6 K11 ["DefineFastFlag"]
  CALL R6 3 0
  GETIMPORT R10 K13 [script]
  GETTABLEKS R9 R10 K14 ["Parent"]
  GETTABLEKS R8 R9 K14 ["Parent"]
  GETTABLEKS R7 R8 K14 ["Parent"]
  GETTABLEKS R6 R7 K14 ["Parent"]
  GETTABLEKS R7 R6 K15 ["Packages"]
  GETIMPORT R8 K17 [require]
  GETTABLEKS R9 R7 K18 ["Roact"]
  CALL R8 1 1
  GETIMPORT R9 K17 [require]
  GETTABLEKS R10 R7 K19 ["RoactRodux"]
  CALL R9 1 1
  GETTABLEKS R11 R6 K20 ["Core"]
  GETTABLEKS R10 R11 K21 ["Util"]
  GETIMPORT R11 K17 [require]
  GETTABLEKS R12 R10 K22 ["Constants"]
  CALL R11 1 1
  GETIMPORT R12 K17 [require]
  GETTABLEKS R13 R10 K23 ["AssetConfigConstants"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K24 ["PreviewTypes"]
  GETIMPORT R14 K17 [require]
  GETTABLEKS R15 R10 K25 ["ContextHelper"]
  CALL R14 1 1
  GETIMPORT R15 K17 [require]
  GETTABLEKS R16 R10 K26 ["AssetConfigUtil"]
  CALL R15 1 1
  GETIMPORT R16 K17 [require]
  GETTABLEKS R17 R10 K27 ["ToolboxUtilities"]
  CALL R16 1 1
  JUMPIFNOT R3 [+6]
  GETIMPORT R17 K17 [require]
  GETTABLEKS R18 R10 K28 ["Urls"]
  CALL R17 1 1
  JUMP [+1]
  LOADNIL R17
  GETTABLEKS R18 R14 K29 ["withLocalization"]
  GETIMPORT R20 K17 [require]
  GETTABLEKS R21 R7 K30 ["Framework"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K31 ["ContextServices"]
  GETTABLEKS R20 R19 K32 ["withContext"]
  GETTABLEKS R22 R6 K20 ["Core"]
  GETTABLEKS R21 R22 K33 ["Components"]
  GETIMPORT R22 K17 [require]
  GETTABLEKS R23 R21 K34 ["NavButton"]
  CALL R22 1 1
  GETTABLEKS R23 R21 K35 ["AssetConfiguration"]
  GETIMPORT R24 K17 [require]
  GETTABLEKS R25 R23 K36 ["AssetThumbnailPreview"]
  CALL R24 1 1
  GETIMPORT R25 K17 [require]
  GETTABLEKS R26 R23 K37 ["ReasonFrame"]
  CALL R25 1 1
  GETIMPORT R26 K17 [require]
  GETTABLEKS R27 R23 K38 ["CopyID"]
  CALL R26 1 1
  GETIMPORT R27 K17 [require]
  GETTABLEKS R28 R7 K30 ["Framework"]
  CALL R27 1 1
  GETTABLEKS R29 R27 K39 ["UI"]
  GETTABLEKS R28 R29 K40 ["LinkText"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R30 R27 K39 ["UI"]
  GETTABLEKS R29 R30 K41 ["TextWithInlineLink"]
  JUMP [+1]
  LOADNIL R29
  GETTABLEKS R31 R27 K21 ["Util"]
  GETTABLEKS R30 R31 K42 ["LayoutOrderIterator"]
  GETTABLEKS R32 R6 K20 ["Core"]
  GETTABLEKS R31 R32 K43 ["Actions"]
  GETIMPORT R32 K17 [require]
  GETTABLEKS R33 R31 K44 ["ClearChange"]
  CALL R32 1 1
  GETTABLEKS R34 R6 K20 ["Core"]
  GETTABLEKS R33 R34 K45 ["Thunks"]
  GETIMPORT R34 K17 [require]
  GETTABLEKS R36 R33 K35 ["AssetConfiguration"]
  GETTABLEKS R35 R36 K46 ["GoToNextScreen"]
  CALL R34 1 1
  GETIMPORT R35 K17 [require]
  GETTABLEKS R39 R6 K20 ["Core"]
  GETTABLEKS R38 R39 K21 ["Util"]
  GETTABLEKS R37 R38 K47 ["SharedFlags"]
  GETTABLEKS R36 R37 K48 ["getFFlagEnableUGCBodyUploadFlow"]
  CALL R35 1 1
  GETIMPORT R36 K17 [require]
  GETTABLEKS R40 R6 K20 ["Core"]
  GETTABLEKS R39 R40 K21 ["Util"]
  GETTABLEKS R38 R39 K47 ["SharedFlags"]
  GETTABLEKS R37 R38 K49 ["getFFlagToolboxCleanupLegacyContext"]
  CALL R36 1 1
  GETIMPORT R38 K1 [game]
  LOADK R40 K10 ["ToolboxFixSubmitDevelopmentItemWidth"]
  NAMECALL R38 R38 K7 ["GetFastFlag"]
  CALL R38 2 1
  JUMPIFNOT R38 [+2]
  LOADN R37 225
  JUMP [+1]
  LOADN R37 150
  GETTABLEKS R38 R8 K50 ["PureComponent"]
  LOADK R40 K51 ["AssetUploadResult"]
  NAMECALL R38 R38 K52 ["extend"]
  CALL R38 2 1
  GETIMPORT R39 K1 [game]
  LOADK R41 K53 ["UnifyModelPackagePublish3"]
  NAMECALL R39 R39 K7 ["GetFastFlag"]
  CALL R39 2 1
  DUPCLOSURE R40 K54 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R40 R38 K55 ["init"]
  DUPCLOSURE R40 K56 [PROTO_5]
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R2
  DUPCLOSURE R41 K57 [PROTO_6]
  MOVE R43 R36
  CALL R43 0 1
  JUMPIFNOT R43 [+2]
  LOADK R42 K58 ["render"]
  JUMP [+1]
  LOADK R42 K59 ["renderContent"]
  DUPCLOSURE R43 K60 [PROTO_9]
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R39
  CAPTURE VAL R35
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R40
  CAPTURE VAL R30
  CAPTURE VAL R8
  CAPTURE VAL R24
  CAPTURE VAL R26
  CAPTURE VAL R1
  CAPTURE VAL R29
  CAPTURE VAL R22
  CAPTURE VAL R37
  CAPTURE VAL R28
  SETTABLE R43 R38 R42
  MOVE R42 R36
  CALL R42 0 1
  JUMPIF R42 [+4]
  DUPCLOSURE R42 K61 [PROTO_11]
  CAPTURE VAL R18
  SETTABLEKS R42 R38 K58 ["render"]
  DUPCLOSURE R42 K62 [PROTO_12]
  CAPTURE VAL R39
  DUPCLOSURE R43 K63 [PROTO_15]
  CAPTURE VAL R32
  CAPTURE VAL R34
  MOVE R44 R20
  DUPTABLE R45 K66 [{"Stylizer", "Localization"}]
  GETTABLEKS R46 R19 K64 ["Stylizer"]
  SETTABLEKS R46 R45 K64 ["Stylizer"]
  GETTABLEKS R46 R19 K65 ["Localization"]
  SETTABLEKS R46 R45 K65 ["Localization"]
  CALL R44 1 1
  MOVE R45 R38
  CALL R44 1 1
  MOVE R38 R44
  GETTABLEKS R44 R9 K67 ["connect"]
  MOVE R45 R42
  MOVE R46 R43
  CALL R44 2 1
  MOVE R45 R38
  CALL R44 1 -1
  RETURN R44 -1
