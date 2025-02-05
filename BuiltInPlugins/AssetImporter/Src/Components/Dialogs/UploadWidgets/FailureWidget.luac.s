PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["UploadWidget"]
  GETTABLEKS R3 R1 K3 ["ErrorMap"]
  GETTABLEKS R4 R1 K4 ["Localization"]
  GETTABLEKS R5 R1 K5 ["ExistingPackageId"]
  NEWTABLE R6 0 0
  LOADN R7 1
  MOVE R8 R3
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  LOADNIL R13
  LOADNIL R14
  JUMPIFNOTEQKS R12 K6 ["500"] [+10]
  JUMPIFEQKS R5 K7 [""] [+8]
  GETUPVAL R15 0
  MOVE R16 R4
  LOADK R17 K8 ["HttpError"]
  LOADK R18 K9 ["PackageError"]
  CALL R15 3 1
  MOVE R13 R15
  JUMP [+6]
  GETUPVAL R15 0
  MOVE R16 R4
  LOADK R17 K8 ["HttpError"]
  MOVE R18 R12
  CALL R15 3 1
  MOVE R13 R15
  JUMPIF R13 [+11]
  GETIMPORT R15 K12 [string.format]
  LOADK R16 K13 ["%s %s"]
  LOADK R19 K8 ["HttpError"]
  LOADK R20 K14 ["UnknownStatusCode"]
  NAMECALL R17 R4 K15 ["getText"]
  CALL R17 3 1
  MOVE R18 R12
  CALL R15 3 1
  MOVE R13 R15
  LOADK R15 K16 ["%*: %*"]
  MOVE R17 R11
  MOVE R18 R13
  NAMECALL R15 R15 K11 ["format"]
  CALL R15 3 1
  MOVE R14 R15
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K17 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K25 [{"LayoutOrder", "Text", "TextSize", "TextXAlignment", "AutomaticSize", "Size", "TextWrapped"}]
  SETTABLEKS R7 R17 K18 ["LayoutOrder"]
  SETTABLEKS R14 R17 K19 ["Text"]
  GETTABLEKS R18 R2 K26 ["SubtextSize"]
  SETTABLEKS R18 R17 K20 ["TextSize"]
  GETIMPORT R18 K29 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K21 ["TextXAlignment"]
  GETIMPORT R18 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K22 ["AutomaticSize"]
  GETIMPORT R18 K34 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K23 ["Size"]
  LOADB R18 1
  SETTABLEKS R18 R17 K24 ["TextWrapped"]
  CALL R15 2 1
  SETTABLE R15 R6 R11
  ADDK R7 R7 K35 [1]
  FORGLOOP R8 2 [-73]
  RETURN R6 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["uploadErrorsExpanded"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["update"]
  GETUPVAL R2 0
  DUPTABLE R3 K2 [{"uploadErrorsExpanded"}]
  GETUPVAL R4 2
  MOVE R5 R0
  NEWTABLE R6 1 0
  GETUPVAL R7 3
  GETUPVAL R10 3
  GETTABLE R9 R0 R10
  NOT R8 R9
  SETTABLE R8 R6 R7
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["uploadErrorsExpanded"]
  CALL R1 2 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K3 ["SetUploadWidgetItem"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R4 R2 K2 ["ErrorWidget"]
  GETTABLEKS R3 R4 K3 ["Dropdown"]
  GETTABLEKS R4 R2 K4 ["UploadWidget"]
  NEWTABLE R5 0 0
  LOADN R6 1
  GETIMPORT R7 K6 [pairs]
  GETTABLEKS R8 R1 K7 ["ErrorMap"]
  CALL R7 1 3
  FORGPREP_NEXT R7
  MOVE R12 R6
  GETTABLEKS R13 R1 K8 ["UploadWidgetItem"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K18 [{"Expanded", "OnExpandedChanged", "LayoutOrder", "Layout", "AutomaticSize", "VerticalAlignment", "Style", "Text"}]
  GETTABLEKS R18 R13 K19 ["uploadErrorsExpanded"]
  GETTABLE R17 R18 R12
  SETTABLEKS R17 R16 K10 ["Expanded"]
  NEWCLOSURE R17 P0
  CAPTURE VAL R13
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R12
  CAPTURE VAL R1
  SETTABLEKS R17 R16 K11 ["OnExpandedChanged"]
  SETTABLEKS R6 R16 K12 ["LayoutOrder"]
  GETIMPORT R17 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K13 ["Layout"]
  GETIMPORT R17 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K14 ["AutomaticSize"]
  GETIMPORT R17 K27 [Enum.VerticalAlignment.Top]
  SETTABLEKS R17 R16 K15 ["VerticalAlignment"]
  SETTABLEKS R3 R16 K16 ["Style"]
  SETTABLEKS R10 R16 K17 ["Text"]
  DUPTABLE R17 K29 [{"ErrorDetails"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K34 [{"Text", "TextWrapped", "TextSelectable", "AutomaticSize", "TextXAlignment", "TextSize", "Style"}]
  SETTABLEKS R11 R20 K17 ["Text"]
  LOADB R21 1
  SETTABLEKS R21 R20 K30 ["TextWrapped"]
  LOADB R21 1
  SETTABLEKS R21 R20 K31 ["TextSelectable"]
  GETIMPORT R21 K36 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K14 ["AutomaticSize"]
  GETIMPORT R21 K38 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K32 ["TextXAlignment"]
  GETTABLEKS R21 R4 K39 ["SubtextSize"]
  SETTABLEKS R21 R20 K33 ["TextSize"]
  LOADK R21 K40 ["Error"]
  SETTABLEKS R21 R20 K16 ["Style"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K28 ["ErrorDetails"]
  CALL R14 3 1
  SETTABLE R14 R5 R10
  ADDK R6 R6 K41 [1]
  FORGLOOP R7 2 [-75]
  RETURN R5 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R3 K3 ["UploadWidget"]
  GETTABLEKS R7 R4 K5 ["TextSize"]
  GETTABLEKS R8 R4 K6 ["SubtextSize"]
  ADD R6 R7 R8
  ADDK R5 R6 K4 [10]
  GETIMPORT R7 K8 [next]
  GETTABLEKS R8 R1 K9 ["ErrorMap"]
  CALL R7 1 1
  JUMPIFNOTEQKNIL R7 [+7]
  LOADK R8 K10 ["Upload"]
  LOADK R9 K11 ["FailureDescriptionNoError"]
  NAMECALL R6 R2 K12 ["getText"]
  CALL R6 3 1
  JUMP [+5]
  LOADK R8 K10 ["Upload"]
  LOADK R9 K13 ["FailureDescription"]
  NAMECALL R6 R2 K12 ["getText"]
  CALL R6 3 1
  GETUPVAL R8 0
  CALL R8 0 1
  JUMPIFNOT R8 [+4]
  NAMECALL R7 R0 K14 ["_getErrorSections"]
  CALL R7 1 1
  JUMP [+3]
  NAMECALL R7 R0 K15 ["_generateErrorSections"]
  CALL R7 1 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K24 [{"AutomaticSize", "LayoutOrder", "Layout", "VerticalAlignment", "HorizontalAlignment", "Size", "Padding"}]
  GETUPVAL R12 3
  CALL R12 0 1
  JUMPIFNOT R12 [+6]
  GETUPVAL R12 0
  CALL R12 0 1
  JUMPIF R12 [+3]
  GETIMPORT R11 K27 [Enum.AutomaticSize.Y]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K17 ["AutomaticSize"]
  LOADN R11 1
  SETTABLEKS R11 R10 K18 ["LayoutOrder"]
  GETIMPORT R11 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K19 ["Layout"]
  GETIMPORT R11 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K20 ["VerticalAlignment"]
  GETUPVAL R12 3
  CALL R12 0 1
  JUMPIFNOT R12 [+3]
  GETIMPORT R11 K34 [Enum.HorizontalAlignment.Center]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K21 ["HorizontalAlignment"]
  GETUPVAL R12 0
  JUMPIFNOT R12 [+8]
  GETIMPORT R11 K37 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K22 ["Size"]
  GETUPVAL R12 3
  CALL R12 0 1
  JUMPIFNOT R12 [+5]
  GETTABLEKS R12 R4 K38 ["FailureWidget"]
  GETTABLEKS R11 R12 K23 ["Padding"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K23 ["Padding"]
  DUPTABLE R11 K41 [{"Title", "Messages"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K16 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K42 [{"Layout", "VerticalAlignment", "HorizontalAlignment", "Size", "AutomaticSize", "LayoutOrder"}]
  GETIMPORT R15 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K19 ["Layout"]
  GETIMPORT R15 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K20 ["VerticalAlignment"]
  GETUPVAL R16 0
  CALL R16 0 1
  JUMPIFNOT R16 [+3]
  GETIMPORT R15 K34 [Enum.HorizontalAlignment.Center]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K21 ["HorizontalAlignment"]
  GETUPVAL R16 3
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  LOADNIL R15
  JUMP [+7]
  GETIMPORT R15 K37 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  MOVE R19 R5
  CALL R15 4 1
  SETTABLEKS R15 R14 K22 ["Size"]
  GETUPVAL R16 3
  CALL R16 0 1
  JUMPIFNOT R16 [+3]
  GETIMPORT R15 K27 [Enum.AutomaticSize.Y]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K17 ["AutomaticSize"]
  LOADN R15 1
  SETTABLEKS R15 R14 K18 ["LayoutOrder"]
  DUPTABLE R15 K45 [{"Text", "Description"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K16 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K48 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextColor"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K18 ["LayoutOrder"]
  GETTABLEKS R19 R4 K49 ["TextLabelSize"]
  SETTABLEKS R19 R18 K22 ["Size"]
  LOADK R21 K10 ["Upload"]
  LOADK R22 K50 ["Failure"]
  NAMECALL R19 R2 K12 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K43 ["Text"]
  GETTABLEKS R19 R4 K5 ["TextSize"]
  SETTABLEKS R19 R18 K5 ["TextSize"]
  GETTABLEKS R19 R4 K51 ["TextAlignment"]
  SETTABLEKS R19 R18 K46 ["TextXAlignment"]
  GETTABLEKS R19 R4 K52 ["FailureColor"]
  SETTABLEKS R19 R18 K47 ["TextColor"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K43 ["Text"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K16 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K54 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "Font"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K18 ["LayoutOrder"]
  GETTABLEKS R19 R4 K49 ["TextLabelSize"]
  SETTABLEKS R19 R18 K22 ["Size"]
  SETTABLEKS R6 R18 K43 ["Text"]
  GETTABLEKS R19 R4 K6 ["SubtextSize"]
  SETTABLEKS R19 R18 K5 ["TextSize"]
  GETTABLEKS R19 R4 K51 ["TextAlignment"]
  SETTABLEKS R19 R18 K46 ["TextXAlignment"]
  GETTABLEKS R19 R4 K55 ["BoldFont"]
  SETTABLEKS R19 R18 K53 ["Font"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K44 ["Description"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K39 ["Title"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K16 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K60 [{"LayoutOrder", "AutomaticSize", "Size", "CanvasSize", "OnCanvasResize", "ScrollingDirection", "AutomaticCanvasSize", "Layout"}]
  LOADN R15 2
  SETTABLEKS R15 R14 K18 ["LayoutOrder"]
  GETUPVAL R16 3
  CALL R16 0 1
  JUMPIFNOT R16 [+6]
  GETUPVAL R16 0
  CALL R16 0 1
  JUMPIF R16 [+3]
  GETIMPORT R15 K27 [Enum.AutomaticSize.Y]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K17 ["AutomaticSize"]
  GETIMPORT R15 K37 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  MINUS R19 R5
  CALL R15 4 1
  SETTABLEKS R15 R14 K22 ["Size"]
  GETUPVAL R16 3
  CALL R16 0 1
  JUMPIFNOT R16 [+5]
  GETUPVAL R16 0
  CALL R16 0 1
  JUMPIF R16 [+2]
  LOADNIL R15
  JUMP [+7]
  GETIMPORT R15 K37 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K56 ["CanvasSize"]
  GETUPVAL R16 0
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  LOADNIL R15
  JUMP [+2]
  GETTABLEKS R15 R0 K61 ["onContentResize"]
  SETTABLEKS R15 R14 K57 ["OnCanvasResize"]
  GETIMPORT R15 K62 [Enum.ScrollingDirection.Y]
  SETTABLEKS R15 R14 K58 ["ScrollingDirection"]
  GETIMPORT R15 K27 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K59 ["AutomaticCanvasSize"]
  GETIMPORT R15 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K19 ["Layout"]
  MOVE R15 R7
  CALL R12 3 1
  SETTABLEKS R12 R11 K40 ["Messages"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"SetUploadWidgetItem"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["SetUploadWidgetItem"]
  RETURN R1 1

PROTO_6:
  DUPTABLE R1 K1 [{"UploadWidgetItem"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K2 ["Dialogs"]
  GETTABLEKS R2 R3 K3 ["uploadWidgetItem"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["UploadWidgetItem"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactCompat"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Dash"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Utility"]
  GETTABLEKS R6 R7 K13 ["GetLocalizedString"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K14 ["ContextServices"]
  GETTABLEKS R7 R6 K15 ["withContext"]
  GETTABLEKS R8 R6 K16 ["Localization"]
  GETTABLEKS R10 R1 K17 ["Style"]
  GETTABLEKS R9 R10 K18 ["Stylizer"]
  GETTABLEKS R10 R1 K19 ["UI"]
  GETTABLEKS R11 R10 K20 ["Pane"]
  GETTABLEKS R12 R10 K21 ["ScrollingFrame"]
  GETTABLEKS R13 R10 K22 ["TextLabel"]
  GETTABLEKS R14 R10 K23 ["ExpandablePane"]
  GETTABLEKS R15 R4 K24 ["join"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K11 ["Src"]
  GETTABLEKS R18 R19 K25 ["Actions"]
  GETTABLEKS R17 R18 K26 ["SetUploadWidgetItem"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K11 ["Src"]
  GETTABLEKS R19 R20 K27 ["DataTypes"]
  GETTABLEKS R18 R19 K28 ["QueuedSession"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K11 ["Src"]
  GETTABLEKS R20 R21 K29 ["Flags"]
  GETTABLEKS R19 R20 K30 ["getFFlagAssetImportDialogButtonsAndStyling"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K11 ["Src"]
  GETTABLEKS R21 R22 K29 ["Flags"]
  GETTABLEKS R20 R21 K31 ["getFFlagAssetImportErrorMessageDialog"]
  CALL R19 1 1
  GETTABLEKS R20 R2 K32 ["PureComponent"]
  LOADK R22 K33 ["FailureWidget"]
  NAMECALL R20 R20 K34 ["extend"]
  CALL R20 2 1
  MOVE R21 R19
  CALL R21 0 1
  JUMPIF R21 [+6]
  DUPCLOSURE R21 K35 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R13
  SETTABLEKS R21 R20 K36 ["_generateErrorSections"]
  MOVE R21 R19
  CALL R21 0 1
  JUMPIFNOT R21 [+8]
  DUPCLOSURE R21 K37 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R13
  SETTABLEKS R21 R20 K38 ["_getErrorSections"]
  DUPCLOSURE R21 K39 [PROTO_3]
  CAPTURE VAL R19
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETTABLEKS R21 R20 K40 ["render"]
  MOVE R21 R7
  DUPTABLE R22 K41 [{"Localization", "Stylizer"}]
  SETTABLEKS R8 R22 K16 ["Localization"]
  SETTABLEKS R9 R22 K18 ["Stylizer"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  DUPCLOSURE R21 K42 [PROTO_5]
  CAPTURE VAL R19
  CAPTURE VAL R16
  DUPCLOSURE R22 K43 [PROTO_6]
  CAPTURE VAL R19
  GETTABLEKS R23 R3 K44 ["connect"]
  MOVE R24 R22
  MOVE R25 R21
  CALL R23 2 1
  MOVE R24 R20
  CALL R23 1 -1
  RETURN R23 -1
