PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnClickBack"]
  JUMPIFNOT R2 [+2]
  MOVE R3 R2
  CALL R3 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Localization"]
  LOADK R3 K2 ["< "]
  LOADK R6 K3 ["General"]
  LOADK R7 K4 ["BackToHome"]
  DUPTABLE R8 K6 [{"assetType"}]
  GETUPVAL R10 1
  MOVE R11 R1
  CALL R10 1 1
  GETTABLEKS R11 R0 K7 ["CategoryName"]
  GETTABLE R9 R10 R11
  SETTABLEKS R9 R8 K5 ["assetType"]
  NAMECALL R4 R1 K8 ["getText"]
  CALL R4 4 1
  CONCAT R2 R3 R4
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R4 3
  DUPTABLE R5 K14 [{"LayoutOrder", "OnClick", "Style", "Text"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K10 ["LayoutOrder"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K15 ["onClickBack"]
  SETTABLEKS R6 R5 K11 ["OnClick"]
  LOADK R6 K16 ["Unobtrusive"]
  SETTABLEKS R6 R5 K12 ["Style"]
  SETTABLEKS R2 R5 K13 ["Text"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onClickBack"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K1 ["createTopContent"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["loading"]
  JUMPIFNOT R1 [+51]
  GETTABLEKS R2 R0 K1 ["assetIds"]
  LENGTH R1 R2
  JUMPIFNOTEQKN R1 K2 [0] [+47]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createElement"]
  LOADK R2 K4 ["Frame"]
  DUPTABLE R3 K9 [{"BackgroundColor3", "LayoutOrder", "Position", "Size"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["backgroundColor"]
  SETTABLEKS R4 R3 K5 ["BackgroundColor3"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K6 ["LayoutOrder"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K7 ["Position"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K8 ["Size"]
  DUPTABLE R4 K12 [{"LoadingIndicator"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K14 [{"AnchorPoint", "Position"}]
  GETIMPORT R8 K17 [Vector2.new]
  LOADK R9 K18 [0.5]
  LOADK R10 K18 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["AnchorPoint"]
  GETIMPORT R8 K20 [UDim2.new]
  LOADK R9 K18 [0.5]
  LOADN R10 0
  LOADK R11 K18 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K7 ["Position"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["LoadingIndicator"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K21 ["categoryIsAudio"]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K22 ["CategoryName"]
  CALL R1 1 1
  JUMPIFNOT R1 [+43]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 8
  DUPTABLE R3 K27 [{"ResultsState", "PageSize", "RenderTopContent", "AssetLogicWrapperProps"}]
  SETTABLEKS R0 R3 K23 ["ResultsState"]
  GETUPVAL R4 9
  SETTABLEKS R4 R3 K24 ["PageSize"]
  GETUPVAL R4 10
  SETTABLEKS R4 R3 K25 ["RenderTopContent"]
  DUPTABLE R4 K33 [{"CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig"}]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K28 ["CanInsertAsset"]
  SETTABLEKS R5 R4 K28 ["CanInsertAsset"]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K29 ["LogAssetImpression"]
  SETTABLEKS R5 R4 K29 ["LogAssetImpression"]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K30 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R5 R4 K30 ["OnAssetPreviewButtonClicked"]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K31 ["TryInsert"]
  SETTABLEKS R5 R4 K31 ["TryInsert"]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K32 ["TryOpenAssetConfig"]
  SETTABLEKS R5 R4 K32 ["TryOpenAssetConfig"]
  SETTABLEKS R4 R3 K26 ["AssetLogicWrapperProps"]
  CALL R1 2 -1
  RETURN R1 -1
  GETUPVAL R1 11
  DUPTABLE R2 K38 [{"AssetIds", "AssetMap", "LayoutOrder", "Position", "RenderTopContent", "RequestNextPage", "Size", "CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "OnSearchByCreator", "TryInsert", "TryOpenAssetConfig"}]
  GETTABLEKS R3 R0 K1 ["assetIds"]
  SETTABLEKS R3 R2 K34 ["AssetIds"]
  GETTABLEKS R3 R0 K39 ["assetMap"]
  SETTABLEKS R3 R2 K35 ["AssetMap"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K6 ["LayoutOrder"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K7 ["Position"]
  GETUPVAL R3 10
  SETTABLEKS R3 R2 K25 ["RenderTopContent"]
  GETTABLEKS R3 R0 K40 ["fetchNextPage"]
  SETTABLEKS R3 R2 K36 ["RequestNextPage"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K8 ["Size"]
  GETUPVAL R3 12
  SETTABLEKS R3 R2 K28 ["CanInsertAsset"]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K29 ["LogAssetImpression"]
  SETTABLEKS R3 R2 K29 ["LogAssetImpression"]
  GETUPVAL R3 13
  SETTABLEKS R3 R2 K30 ["OnAssetPreviewButtonClicked"]
  GETUPVAL R4 14
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K37 ["OnSearchByCreator"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K37 ["OnSearchByCreator"]
  GETUPVAL R3 15
  SETTABLEKS R3 R2 K31 ["TryInsert"]
  GETUPVAL R3 16
  SETTABLEKS R3 R2 K32 ["TryOpenAssetConfig"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R1 K1 ["assetsInCameraViewport"]
  JUMP [+1]
  LOADNIL R2
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R1 K2 ["assetsInCameraVicinity"]
  JUMP [+1]
  LOADNIL R3
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["Position"]
  GETTABLEKS R6 R1 K5 ["Size"]
  GETTABLEKS R7 R1 K6 ["Stylizer"]
  GETTABLEKS R8 R1 K7 ["CategoryName"]
  GETTABLEKS R9 R1 K8 ["SearchTerm"]
  GETTABLEKS R10 R1 K9 ["QueryParams"]
  GETTABLEKS R11 R1 K10 ["SectionName"]
  GETTABLEKS R12 R1 K11 ["SortName"]
  GETTABLEKS R13 R1 K12 ["IncludeUnverifiedCreators"]
  GETTABLEKS R14 R1 K13 ["CanInsertAsset"]
  GETTABLEKS R15 R1 K14 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R16 R1 K15 ["TryInsert"]
  GETTABLEKS R17 R1 K16 ["TryOpenAssetConfig"]
  GETTABLEKS R18 R1 K17 ["SearchSource"]
  GETTABLEKS R19 R0 K18 ["createTopContent"]
  CALL R19 0 1
  NEWCLOSURE R20 P0
  CAPTURE VAL R19
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K19 ["Generator"]
  DUPTABLE R22 K30 [{"assetsInCameraViewport", "assetsInCameraVicinity", "networkInterface", "categoryName", "sectionName", "sortName", "searchTerm", "queryParams", "initialPageSize", "includeUnverifiedCreators", "searchSource", "render"}]
  GETUPVAL R24 0
  CALL R24 0 1
  JUMPIFNOT R24 [+7]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K31 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R11 R24 [+3]
  MOVE R23 R2
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K1 ["assetsInCameraViewport"]
  GETUPVAL R24 0
  CALL R24 0 1
  JUMPIFNOT R24 [+7]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K31 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  JUMPIFNOTEQ R11 R24 [+3]
  MOVE R23 R3
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K2 ["assetsInCameraVicinity"]
  GETTABLEKS R24 R1 K32 ["Network"]
  GETTABLEKS R23 R24 K20 ["networkInterface"]
  SETTABLEKS R23 R22 K20 ["networkInterface"]
  SETTABLEKS R8 R22 K21 ["categoryName"]
  SETTABLEKS R11 R22 K22 ["sectionName"]
  SETTABLEKS R12 R22 K23 ["sortName"]
  SETTABLEKS R9 R22 K24 ["searchTerm"]
  SETTABLEKS R10 R22 K25 ["queryParams"]
  GETUPVAL R23 3
  SETTABLEKS R23 R22 K26 ["initialPageSize"]
  SETTABLEKS R13 R22 K27 ["includeUnverifiedCreators"]
  SETTABLEKS R18 R22 K28 ["searchSource"]
  NEWCLOSURE R23 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE VAL R20
  CAPTURE UPVAL U8
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE UPVAL U9
  CAPTURE VAL R16
  CAPTURE VAL R17
  SETTABLEKS R23 R22 K29 ["render"]
  CALL R21 1 -1
  RETURN R21 -1

PROTO_6:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["pageInfo"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  GETTABLEKS R3 R0 K1 ["contextualAssets"]
  JUMPIF R3 [+4]
  NEWTABLE R3 0 0
  JUMP [+1]
  LOADNIL R3
  DUPTABLE R4 K5 [{"assetsInCameraViewport", "assetsInCameraVicinity", "IncludeUnverifiedCreators"}]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R3 K2 ["assetsInCameraViewport"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["assetsInCameraViewport"]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R3 K3 ["assetsInCameraVicinity"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K3 ["assetsInCameraVicinity"]
  GETTABLEKS R5 R2 K6 ["includeUnverifiedCreators"]
  SETTABLEKS R5 R4 K4 ["IncludeUnverifiedCreators"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K10 ["Types"]
  GETTABLEKS R5 R6 K11 ["Sort"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K12 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R1 K13 ["Dash"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K14 ["ContextServices"]
  GETTABLEKS R8 R7 K15 ["withContext"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R0 K9 ["Core"]
  GETTABLEKS R11 R12 K14 ["ContextServices"]
  GETTABLEKS R10 R11 K16 ["NetworkContext"]
  CALL R9 1 1
  GETTABLEKS R10 R3 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["LoadingIndicator"]
  GETTABLEKS R12 R10 K19 ["LinkText"]
  GETTABLEKS R13 R10 K20 ["Pane"]
  GETTABLEKS R14 R10 K21 ["TextLabel"]
  GETIMPORT R15 K6 [require]
  GETTABLEKS R18 R0 K9 ["Core"]
  GETTABLEKS R17 R18 K22 ["Components"]
  GETTABLEKS R16 R17 K23 ["AssetLogicWrapper"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R19 R0 K9 ["Core"]
  GETTABLEKS R18 R19 K22 ["Components"]
  GETTABLEKS R17 R18 K24 ["AssetGrid"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R21 R0 K9 ["Core"]
  GETTABLEKS R20 R21 K22 ["Components"]
  GETTABLEKS R19 R20 K25 ["Audio"]
  GETTABLEKS R18 R19 K26 ["AudioScrollerWrapper"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R21 R0 K9 ["Core"]
  GETTABLEKS R20 R21 K22 ["Components"]
  GETTABLEKS R19 R20 K27 ["ResultsFetcher"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R22 R0 K9 ["Core"]
  GETTABLEKS R21 R22 K28 ["Localization"]
  GETTABLEKS R20 R21 K29 ["getLocalizedCategoryMap"]
  CALL R19 1 1
  GETTABLEKS R21 R0 K9 ["Core"]
  GETTABLEKS R20 R21 K30 ["Util"]
  GETIMPORT R21 K6 [require]
  GETTABLEKS R22 R20 K31 ["Constants"]
  CALL R21 1 1
  GETIMPORT R22 K6 [require]
  GETTABLEKS R25 R0 K9 ["Core"]
  GETTABLEKS R24 R25 K10 ["Types"]
  GETTABLEKS R23 R24 K32 ["Category"]
  CALL R22 1 1
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R0 K9 ["Core"]
  GETTABLEKS R25 R26 K10 ["Types"]
  GETTABLEKS R24 R25 K33 ["HomeTypes"]
  CALL R23 1 1
  GETIMPORT R24 K6 [require]
  GETTABLEKS R27 R0 K9 ["Core"]
  GETTABLEKS R26 R27 K34 ["Models"]
  GETTABLEKS R25 R26 K35 ["AssetInfo"]
  CALL R24 1 1
  GETIMPORT R25 K6 [require]
  GETTABLEKS R29 R0 K9 ["Core"]
  GETTABLEKS R28 R29 K30 ["Util"]
  GETTABLEKS R27 R28 K36 ["SharedFlags"]
  GETTABLEKS R26 R27 K37 ["getFFlagToolboxFixInventoryGridSearch"]
  CALL R25 1 1
  GETIMPORT R26 K6 [require]
  GETTABLEKS R30 R0 K9 ["Core"]
  GETTABLEKS R29 R30 K30 ["Util"]
  GETTABLEKS R28 R29 K36 ["SharedFlags"]
  GETTABLEKS R27 R28 K38 ["getFFlagToolboxContextualRecommendations"]
  CALL R26 1 1
  GETTABLEKS R27 R21 K39 ["TOOLBOX_ITEM_SEARCH_LIMIT"]
  GETTABLEKS R28 R2 K40 ["PureComponent"]
  LOADK R30 K41 ["ResultsView"]
  NAMECALL R28 R28 K42 ["extend"]
  CALL R28 2 1
  DUPTABLE R29 K47 [{"Size", "Category", "SearchTerm", "SectionName", "SortName"}]
  GETIMPORT R30 K50 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K43 ["Size"]
  GETTABLEKS R31 R22 K51 ["FREE_MODELS"]
  GETTABLEKS R30 R31 K52 ["name"]
  SETTABLEKS R30 R29 K32 ["Category"]
  LOADNIL R30
  SETTABLEKS R30 R29 K44 ["SearchTerm"]
  LOADNIL R30
  SETTABLEKS R30 R29 K45 ["SectionName"]
  GETTABLEKS R30 R4 K53 ["getDefaultSortNameForCategory"]
  GETTABLEKS R32 R22 K51 ["FREE_MODELS"]
  GETTABLEKS R31 R32 K52 ["name"]
  CALL R30 1 1
  SETTABLEKS R30 R29 K46 ["SortName"]
  SETTABLEKS R29 R28 K54 ["defaultProps"]
  DUPCLOSURE R29 K55 [PROTO_2]
  CAPTURE VAL R19
  CAPTURE VAL R2
  CAPTURE VAL R12
  SETTABLEKS R29 R28 K56 ["init"]
  DUPCLOSURE R29 K57 [PROTO_5]
  CAPTURE VAL R26
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R27
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R22
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R25
  SETTABLEKS R29 R28 K58 ["render"]
  DUPCLOSURE R29 K59 [PROTO_6]
  CAPTURE VAL R26
  SETGLOBAL R29 K60 ["mapStateToProps"]
  MOVE R29 R8
  DUPTABLE R30 K63 [{"Localization", "Stylizer", "Network"}]
  GETTABLEKS R31 R7 K28 ["Localization"]
  SETTABLEKS R31 R30 K28 ["Localization"]
  GETTABLEKS R31 R7 K61 ["Stylizer"]
  SETTABLEKS R31 R30 K61 ["Stylizer"]
  SETTABLEKS R9 R30 K62 ["Network"]
  CALL R29 1 1
  MOVE R30 R28
  CALL R29 1 1
  MOVE R28 R29
  GETTABLEKS R29 R5 K64 ["connect"]
  GETGLOBAL R30 K60 ["mapStateToProps"]
  CALL R29 1 1
  MOVE R30 R28
  CALL R29 1 -1
  RETURN R29 -1
