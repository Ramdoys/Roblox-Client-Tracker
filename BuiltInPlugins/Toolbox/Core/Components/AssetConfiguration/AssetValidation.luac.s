PROTO_0:
  NEWTABLE R1 0 0
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  NAMECALL R7 R6 K0 ["Clone"]
  CALL R7 1 1
  GETUPVAL R8 0
  MOVE R9 R7
  CALL R8 1 0
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-8]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"isLoading", "reasons"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isLoading"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K1 ["reasons"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R0 [+13]
  GETUPVAL R2 0
  DUPTABLE R4 K1 [{"onFinish"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["props"]
  GETTABLEKS R5 R6 K3 ["nextScreen"]
  SETTABLEKS R5 R4 K0 ["onFinish"]
  NAMECALL R2 R2 K4 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R2 0
  DUPTABLE R4 K1 [{"onFinish"}]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K0 ["onFinish"]
  NAMECALL R2 R2 K4 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R2 K2 [{"failed", "isLoading"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["failed"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["isLoading"]
  SETTABLEKS R2 R0 K3 ["state"]
  DUPCLOSURE R2 K4 [PROTO_0]
  CAPTURE UPVAL U0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 2
  NAMECALL R3 R3 K5 ["HasInternalPermission"]
  CALL R3 1 1
  JUMPIF R3 [+59]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K6 ["isCatalogAsset"]
  GETTABLEKS R6 R0 K7 ["props"]
  GETTABLEKS R5 R6 K8 ["assetTypeEnum"]
  CALL R4 1 1
  JUMPIFNOT R4 [+50]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  GETIMPORT R5 K12 [Enum.AssetType.DynamicHead]
  GETTABLEKS R7 R0 K7 ["props"]
  GETTABLEKS R6 R7 K8 ["assetTypeEnum"]
  JUMPIFNOTEQ R5 R6 [+21]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K13 ["validateAsyncMeshPartFormat"]
  MOVE R6 R2
  GETTABLEKS R8 R0 K7 ["props"]
  GETTABLEKS R7 R8 K14 ["instances"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K7 ["props"]
  GETTABLEKS R7 R8 K8 ["assetTypeEnum"]
  MOVE R8 R4
  LOADB R9 0
  LOADB R10 0
  GETUPVAL R11 5
  CALL R11 0 -1
  CALL R5 -1 0
  RETURN R0 0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K15 ["validateAsync"]
  MOVE R6 R2
  GETTABLEKS R8 R0 K7 ["props"]
  GETTABLEKS R7 R8 K14 ["instances"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K7 ["props"]
  GETTABLEKS R7 R8 K8 ["assetTypeEnum"]
  MOVE R8 R4
  LOADB R9 0
  LOADB R10 0
  GETUPVAL R11 5
  CALL R11 0 -1
  CALL R5 -1 0
  RETURN R0 0
  GETTABLEKS R5 R0 K7 ["props"]
  GETTABLEKS R4 R5 K16 ["nextScreen"]
  CALL R4 0 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  LOADK R5 K3 ["Reason:
"]
  GETUPVAL R7 0
  JUMPIFNOT R7 [+12]
  GETIMPORT R6 K6 [table.concat]
  GETTABLEKS R8 R0 K1 ["state"]
  GETTABLEKS R7 R8 K7 ["reasons"]
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  LOADK R8 K8 ["

"]
  CALL R6 2 1
  JUMP [+11]
  GETIMPORT R6 K6 [table.concat]
  GETTABLEKS R8 R0 K1 ["state"]
  GETTABLEKS R7 R8 K7 ["reasons"]
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  LOADK R8 K9 ["
"]
  CALL R6 2 1
  CONCAT R4 R5 R6
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["createElement"]
  LOADK R6 K11 ["Frame"]
  DUPTABLE R7 K16 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  GETTABLEKS R9 R3 K17 ["typeValidation"]
  GETTABLEKS R8 R9 K18 ["background"]
  SETTABLEKS R8 R7 K12 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K13 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K14 ["BorderSizePixel"]
  GETTABLEKS R8 R1 K15 ["Size"]
  SETTABLEKS R8 R7 K15 ["Size"]
  DUPTABLE R8 K23 [{"Preview", "LoadingBar", "LoadingResult", "Footer"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K27 [{"titleHeight", "titlePadding", "Position", "Size"}]
  LOADN R12 24
  SETTABLEKS R12 R11 K24 ["titleHeight"]
  LOADN R12 12
  SETTABLEKS R12 R11 K25 ["titlePadding"]
  GETIMPORT R12 K30 [UDim2.new]
  LOADK R13 K31 [0.5]
  LOADN R14 181
  LOADN R15 0
  LOADN R16 48
  CALL R12 4 1
  SETTABLEKS R12 R11 K26 ["Position"]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 0
  LOADN R14 150
  LOADN R15 0
  LOADN R16 186
  CALL R12 4 1
  SETTABLEKS R12 R11 K15 ["Size"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["Preview"]
  GETTABLEKS R10 R0 K1 ["state"]
  GETTABLEKS R9 R10 K32 ["isLoading"]
  JUMPIFNOT R9 [+37]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K37 [{"loadingText", "loadingTime", "holdPercent", "Size", "Position", "onFinish"}]
  LOADK R12 K38 ["Validating"]
  SETTABLEKS R12 R11 K33 ["loadingText"]
  LOADK R12 K31 [0.5]
  SETTABLEKS R12 R11 K34 ["loadingTime"]
  LOADK R12 K39 [0.92]
  SETTABLEKS R12 R11 K35 ["holdPercent"]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 0
  LOADN R14 144
  LOADN R15 0
  LOADN R16 6
  CALL R12 4 1
  SETTABLEKS R12 R11 K15 ["Size"]
  GETIMPORT R12 K30 [UDim2.new]
  LOADK R13 K31 [0.5]
  LOADN R14 56
  LOADN R15 0
  LOADN R16 58
  CALL R12 4 1
  SETTABLEKS R12 R11 K26 ["Position"]
  GETTABLEKS R12 R2 K36 ["onFinish"]
  SETTABLEKS R12 R11 K36 ["onFinish"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["LoadingBar"]
  GETTABLEKS R11 R0 K1 ["state"]
  GETTABLEKS R10 R11 K32 ["isLoading"]
  NOT R9 R10
  JUMPIFNOT R9 [+250]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["createElement"]
  LOADK R10 K11 ["Frame"]
  DUPTABLE R11 K40 [{"Position", "Size", "BackgroundTransparency"}]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 23
  CALL R12 4 1
  SETTABLEKS R12 R11 K26 ["Position"]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 233
  CALL R12 4 1
  SETTABLEKS R12 R11 K15 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K13 ["BackgroundTransparency"]
  DUPTABLE R12 K44 [{"Title", "Reason", "ScrollingFrame"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["createElement"]
  LOADK R14 K45 ["TextLabel"]
  DUPTABLE R15 K52 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K13 ["BackgroundTransparency"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K53 ["FONT"]
  SETTABLEKS R16 R15 K46 ["Font"]
  GETIMPORT R16 K30 [UDim2.new]
  LOADK R17 K31 [0.5]
  LOADN R18 56
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K26 ["Position"]
  GETIMPORT R16 K30 [UDim2.new]
  LOADN R17 0
  LOADN R18 144
  LOADN R19 0
  LOADN R20 36
  CALL R16 4 1
  SETTABLEKS R16 R15 K15 ["Size"]
  LOADK R16 K54 ["Validation Failed"]
  SETTABLEKS R16 R15 K47 ["Text"]
  GETTABLEKS R17 R3 K55 ["loading"]
  GETTABLEKS R16 R17 K56 ["text"]
  SETTABLEKS R16 R15 K48 ["TextColor3"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K57 ["FONT_SIZE_TITLE"]
  SETTABLEKS R16 R15 K49 ["TextSize"]
  GETIMPORT R16 K60 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K50 ["TextXAlignment"]
  GETIMPORT R16 K61 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K51 ["TextYAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K41 ["Title"]
  GETUPVAL R14 0
  NOT R13 R14
  JUMPIFNOT R13 [+58]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["createElement"]
  LOADK R14 K45 ["TextLabel"]
  DUPTABLE R15 K63 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextWrapped", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K13 ["BackgroundTransparency"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K53 ["FONT"]
  SETTABLEKS R16 R15 K46 ["Font"]
  GETIMPORT R16 K30 [UDim2.new]
  LOADK R17 K31 [0.5]
  GETUPVAL R20 5
  MINUS R19 R20
  DIVK R18 R19 K64 [2]
  LOADN R19 0
  LOADN R20 49
  CALL R16 4 1
  SETTABLEKS R16 R15 K26 ["Position"]
  GETIMPORT R16 K30 [UDim2.new]
  LOADN R17 0
  GETUPVAL R18 5
  LOADN R19 0
  GETUPVAL R20 6
  CALL R16 4 1
  SETTABLEKS R16 R15 K15 ["Size"]
  SETTABLEKS R4 R15 K47 ["Text"]
  LOADB R16 1
  SETTABLEKS R16 R15 K62 ["TextWrapped"]
  GETTABLEKS R17 R3 K55 ["loading"]
  GETTABLEKS R16 R17 K56 ["text"]
  SETTABLEKS R16 R15 K48 ["TextColor3"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K65 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R16 R15 K49 ["TextSize"]
  GETIMPORT R16 K60 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K50 ["TextXAlignment"]
  GETIMPORT R16 K67 [Enum.TextYAlignment.Top]
  SETTABLEKS R16 R15 K51 ["TextYAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K42 ["Reason"]
  GETUPVAL R13 0
  JUMPIFNOT R13 [+99]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K69 [{"BackgroundTransparency", "Position", "Size", "CanvasSize"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K13 ["BackgroundTransparency"]
  GETIMPORT R16 K30 [UDim2.new]
  LOADK R17 K31 [0.5]
  GETUPVAL R20 5
  MINUS R19 R20
  DIVK R18 R19 K64 [2]
  LOADN R19 0
  LOADN R20 49
  CALL R16 4 1
  SETTABLEKS R16 R15 K26 ["Position"]
  GETIMPORT R16 K30 [UDim2.new]
  LOADN R17 0
  GETUPVAL R18 5
  LOADN R19 1
  LOADN R20 145
  CALL R16 4 1
  SETTABLEKS R16 R15 K15 ["Size"]
  GETIMPORT R16 K30 [UDim2.new]
  LOADN R17 0
  GETUPVAL R18 5
  LOADN R19 0
  GETUPVAL R20 6
  CALL R16 4 1
  SETTABLEKS R16 R15 K68 ["CanvasSize"]
  DUPTABLE R16 K70 [{"Reason"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K10 ["createElement"]
  LOADK R18 K45 ["TextLabel"]
  DUPTABLE R19 K63 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextWrapped", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K13 ["BackgroundTransparency"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K53 ["FONT"]
  SETTABLEKS R20 R19 K46 ["Font"]
  GETIMPORT R20 K30 [UDim2.new]
  LOADK R21 K31 [0.5]
  GETUPVAL R24 5
  MINUS R23 R24
  DIVK R22 R23 K64 [2]
  LOADN R23 0
  LOADN R24 49
  CALL R20 4 1
  SETTABLEKS R20 R19 K26 ["Position"]
  GETIMPORT R20 K30 [UDim2.new]
  LOADN R21 0
  GETUPVAL R22 5
  LOADN R23 0
  GETUPVAL R24 6
  CALL R20 4 1
  SETTABLEKS R20 R19 K15 ["Size"]
  SETTABLEKS R4 R19 K47 ["Text"]
  LOADB R20 1
  SETTABLEKS R20 R19 K62 ["TextWrapped"]
  GETTABLEKS R21 R3 K55 ["loading"]
  GETTABLEKS R20 R21 K56 ["text"]
  SETTABLEKS R20 R19 K48 ["TextColor3"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K65 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R20 R19 K49 ["TextSize"]
  GETIMPORT R20 K72 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K50 ["TextXAlignment"]
  GETIMPORT R20 K67 [Enum.TextYAlignment.Top]
  SETTABLEKS R20 R19 K51 ["TextYAlignment"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K42 ["Reason"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K43 ["ScrollingFrame"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K21 ["LoadingResult"]
  GETTABLEKS R11 R0 K1 ["state"]
  GETTABLEKS R10 R11 K32 ["isLoading"]
  NOT R9 R10
  JUMPIFNOT R9 [+64]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["createElement"]
  LOADK R10 K11 ["Frame"]
  DUPTABLE R11 K73 [{"BackgroundTransparency", "Position", "Size"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K13 ["BackgroundTransparency"]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  LOADN R16 194
  CALL R12 4 1
  SETTABLEKS R12 R11 K26 ["Position"]
  GETIMPORT R12 K30 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 62
  CALL R12 4 1
  SETTABLEKS R12 R11 K15 ["Size"]
  DUPTABLE R12 K75 [{"CloseButton"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 8
  DUPTABLE R15 K79 [{"onClick", "titleText", "LayoutOrder", "Position", "Size"}]
  GETTABLEKS R16 R1 K80 ["onClose"]
  SETTABLEKS R16 R15 K76 ["onClick"]
  LOADK R16 K81 ["Close"]
  SETTABLEKS R16 R15 K77 ["titleText"]
  LOADN R16 0
  SETTABLEKS R16 R15 K78 ["LayoutOrder"]
  GETIMPORT R16 K30 [UDim2.new]
  LOADK R17 K31 [0.5]
  LOADN R18 196
  LOADK R19 K31 [0.5]
  LOADN R20 240
  CALL R16 4 1
  SETTABLEKS R16 R15 K26 ["Position"]
  GETIMPORT R16 K30 [UDim2.new]
  LOADN R17 0
  LOADN R18 120
  LOADN R19 0
  LOADN R20 32
  CALL R16 4 1
  SETTABLEKS R16 R15 K15 ["Size"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K74 ["CloseButton"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K22 ["Footer"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_5:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K2 [{"instances", "assetTypeEnum"}]
  GETTABLEKS R3 R0 K0 ["instances"]
  SETTABLEKS R3 R2 K0 ["instances"]
  GETTABLEKS R3 R0 K1 ["assetTypeEnum"]
  SETTABLEKS R3 R2 K1 ["assetTypeEnum"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["SCREENS"]
  GETTABLEKS R2 R3 K1 ["CONFIGURE_ASSET"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"nextScreen"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K0 ["nextScreen"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugDisableLocalUGCValidation"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StudioService"]
  NAMECALL R1 R1 K5 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["ToolboxAdjustValidationReasonSize"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R7 K8 [script]
  GETTABLEKS R6 R7 K9 ["Parent"]
  GETTABLEKS R5 R6 K9 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Parent"]
  GETTABLEKS R4 R3 K10 ["Packages"]
  GETIMPORT R5 K12 [require]
  GETTABLEKS R6 R4 K13 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R7 R4 K14 ["RoactRodux"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R8 R4 K15 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K16 ["UI"]
  GETTABLEKS R9 R8 K17 ["ScrollingFrame"]
  GETTABLEKS R11 R3 K18 ["Core"]
  GETTABLEKS R10 R11 K19 ["Util"]
  GETIMPORT R11 K12 [require]
  GETTABLEKS R12 R10 K20 ["Constants"]
  CALL R11 1 1
  GETIMPORT R12 K12 [require]
  GETTABLEKS R13 R10 K21 ["AssetConfigConstants"]
  CALL R12 1 1
  GETIMPORT R13 K12 [require]
  GETTABLEKS R14 R10 K22 ["AssetConfigUtil"]
  CALL R13 1 1
  GETIMPORT R14 K12 [require]
  GETTABLEKS R15 R10 K23 ["fixUpPreValidation"]
  CALL R14 1 1
  GETIMPORT R15 K12 [require]
  GETTABLEKS R16 R10 K24 ["getUGCValidationRestrictedUserTable"]
  CALL R15 1 1
  GETIMPORT R16 K12 [require]
  GETTABLEKS R17 R4 K25 ["UGCValidation"]
  CALL R16 1 1
  GETIMPORT R18 K12 [require]
  GETTABLEKS R19 R4 K15 ["Framework"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K26 ["ContextServices"]
  GETTABLEKS R18 R17 K27 ["withContext"]
  GETTABLEKS R20 R3 K18 ["Core"]
  GETTABLEKS R19 R20 K28 ["Actions"]
  GETIMPORT R20 K12 [require]
  GETTABLEKS R21 R19 K29 ["SetCurrentScreen"]
  CALL R20 1 1
  GETTABLEKS R22 R3 K18 ["Core"]
  GETTABLEKS R21 R22 K30 ["Components"]
  GETIMPORT R22 K12 [require]
  GETTABLEKS R24 R21 K31 ["AssetConfiguration"]
  GETTABLEKS R23 R24 K32 ["LoadingBarWrapper"]
  CALL R22 1 1
  GETIMPORT R23 K12 [require]
  GETTABLEKS R25 R21 K31 ["AssetConfiguration"]
  GETTABLEKS R24 R25 K33 ["AssetThumbnailPreview"]
  CALL R23 1 1
  GETIMPORT R24 K12 [require]
  GETTABLEKS R25 R21 K34 ["NavButton"]
  CALL R24 1 1
  JUMPIFNOT R2 [+2]
  LOADN R25 88
  JUMP [+1]
  LOADN R25 144
  JUMPIFNOT R2 [+2]
  LOADN R26 144
  JUMP [+1]
  LOADN R26 72
  GETTABLEKS R27 R5 K35 ["PureComponent"]
  LOADK R29 K36 ["AssetValidation"]
  NAMECALL R27 R27 K37 ["extend"]
  CALL R27 2 1
  DUPCLOSURE R28 K38 [PROTO_3]
  CAPTURE VAL R14
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R15
  SETTABLEKS R28 R27 K39 ["init"]
  DUPCLOSURE R28 K40 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R11
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R9
  CAPTURE VAL R24
  SETTABLEKS R28 R27 K41 ["render"]
  DUPCLOSURE R28 K42 [PROTO_5]
  DUPCLOSURE R29 K43 [PROTO_7]
  CAPTURE VAL R20
  CAPTURE VAL R12
  MOVE R30 R18
  DUPTABLE R31 K45 [{"Stylizer"}]
  GETTABLEKS R32 R17 K44 ["Stylizer"]
  SETTABLEKS R32 R31 K44 ["Stylizer"]
  CALL R30 1 1
  MOVE R31 R27
  CALL R30 1 1
  MOVE R27 R30
  GETTABLEKS R30 R6 K46 ["connect"]
  MOVE R31 R28
  MOVE R32 R29
  CALL R30 2 1
  MOVE R31 R27
  CALL R30 1 -1
  RETURN R30 -1
