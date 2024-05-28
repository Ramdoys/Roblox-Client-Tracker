PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["FileController"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["Row"]
  GETTABLEKS R2 R3 K3 ["session"]
  NAMECALL R0 R0 K4 ["requestPreview"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["Model"]
  NAMECALL R1 R0 K5 ["GetClassIcon"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_1]
  CALL R0 1 2
  JUMPIFNOT R0 [+1]
  RETURN R1 1
  DUPTABLE R2 K6 [{"Image", "ImageRectOffset", "ImageRectSize"}]
  LOADK R3 K7 ["rbxasset://textures/ClassImages.png"]
  SETTABLEKS R3 R2 K3 ["Image"]
  GETIMPORT R3 K10 [Vector2.new]
  LOADN R4 0
  LOADN R5 0
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["ImageRectOffset"]
  GETIMPORT R3 K10 [Vector2.new]
  LOADN R4 16
  LOADN R5 16
  CALL R3 2 1
  SETTABLEKS R3 R2 K5 ["ImageRectSize"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["CellProps"]
  GETTABLEKS R1 R2 K2 ["OnCheckboxToggle"]
  MOVE R2 R1
  GETTABLEKS R4 R0 K3 ["Row"]
  GETTABLEKS R3 R4 K4 ["filepath"]
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["openImportPreview"]
  DUPCLOSURE R1 K1 [PROTO_2]
  SETTABLEKS R1 R0 K2 ["getModelIcon"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["toggleCheckbox"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Row"]
  GETTABLEKS R2 R3 K2 ["validSession"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R4 R1 K1 ["Row"]
  GETTABLEKS R3 R4 K3 ["uploaded"]
  NOT R2 R3
  JUMPIFNOT R2 [+48]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createFragment"]
  DUPTABLE R4 K7 [{"Layout", "Checkbox"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["createElement"]
  LOADK R6 K9 ["UIListLayout"]
  DUPTABLE R7 K13 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R8 K16 [Enum.FillDirection.Horizontal]
  SETTABLEKS R8 R7 K10 ["FillDirection"]
  GETIMPORT R8 K18 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R8 R7 K11 ["HorizontalAlignment"]
  GETIMPORT R8 K19 [Enum.VerticalAlignment.Center]
  SETTABLEKS R8 R7 K12 ["VerticalAlignment"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Layout"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K23 [{"OnClick", "Key", "Checked"}]
  GETTABLEKS R8 R0 K24 ["toggleCheckbox"]
  SETTABLEKS R8 R7 K20 ["OnClick"]
  GETTABLEKS R8 R1 K25 ["RowIndex"]
  SETTABLEKS R8 R7 K21 ["Key"]
  GETTABLEKS R9 R1 K1 ["Row"]
  GETTABLEKS R8 R9 K26 ["enabled"]
  SETTABLEKS R8 R7 K22 ["Checked"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Checkbox"]
  CALL R3 1 1
  RETURN R3 1
  LOADNIL R3
  RETURN R3 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Style"]
  GETTABLEKS R2 R3 K2 ["ImportQueue"]
  GETTABLEKS R3 R2 K3 ["Padding"]
  GETTABLEKS R4 R2 K4 ["DisabledTransparancy"]
  GETTABLEKS R7 R1 K5 ["Row"]
  GETTABLEKS R6 R7 K6 ["enabled"]
  NOT R5 R6
  JUMPIF R5 [+4]
  GETTABLEKS R6 R1 K5 ["Row"]
  GETTABLEKS R5 R6 K7 ["uploaded"]
  GETTABLEKS R7 R1 K5 ["Row"]
  GETTABLEKS R6 R7 K8 ["topStatus"]
  GETTABLEKS R7 R0 K9 ["getModelIcon"]
  CALL R7 0 1
  GETTABLEKS R9 R7 K10 ["ImageRectSize"]
  GETTABLEKS R8 R9 K11 ["X"]
  GETTABLEKS R10 R1 K12 ["CellProps"]
  GETTABLEKS R9 R10 K13 ["StatusIconSize"]
  JUMPIFNOT R6 [+2]
  ADD R10 R9 R3
  JUMP [+1]
  LOADN R10 0
  ADD R12 R8 R3
  ADD R11 R12 R10
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K14 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K18 [{"Layout", "HorizontalAlignment", "Padding", "Spacing"}]
  GETIMPORT R15 K22 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K15 ["Layout"]
  GETIMPORT R15 K24 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K16 ["HorizontalAlignment"]
  DUPTABLE R15 K26 [{"Left", "Right"}]
  SETTABLEKS R3 R15 K23 ["Left"]
  SETTABLEKS R3 R15 K25 ["Right"]
  SETTABLEKS R15 R14 K3 ["Padding"]
  SETTABLEKS R3 R14 K17 ["Spacing"]
  DUPTABLE R15 K30 [{"Icon", "AssetName", "Status"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 1
  DUPTABLE R18 K34 [{"Size", "Image", "ImageTransparency"}]
  GETIMPORT R19 K37 [UDim2.fromOffset]
  GETTABLEKS R21 R7 K10 ["ImageRectSize"]
  GETTABLEKS R20 R21 K11 ["X"]
  GETTABLEKS R22 R7 K10 ["ImageRectSize"]
  GETTABLEKS R21 R22 K38 ["Y"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K31 ["Size"]
  GETTABLEKS R19 R7 K32 ["Image"]
  SETTABLEKS R19 R18 K32 ["Image"]
  JUMPIFNOT R5 [+2]
  MOVE R19 R4
  JUMP [+1]
  LOADN R19 0
  SETTABLEKS R19 R18 K33 ["ImageTransparency"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K27 ["Icon"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K44 [{"LayoutOrder", "TextXAlignment", "OnClick", "Text", "Size", "TextTruncate", "Style"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K39 ["LayoutOrder"]
  GETIMPORT R19 K45 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K40 ["TextXAlignment"]
  GETTABLEKS R19 R0 K46 ["openImportPreview"]
  SETTABLEKS R19 R18 K41 ["OnClick"]
  GETTABLEKS R20 R1 K5 ["Row"]
  GETTABLEKS R19 R20 K47 ["assetName"]
  SETTABLEKS R19 R18 K42 ["Text"]
  GETIMPORT R19 K49 [UDim2.new]
  LOADN R20 1
  MINUS R21 R11
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K31 ["Size"]
  GETIMPORT R19 K51 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R19 R18 K43 ["TextTruncate"]
  JUMPIFNOT R5 [+2]
  LOADK R19 K52 ["Disabled"]
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K1 ["Style"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K28 ["AssetName"]
  JUMPIFNOT R6 [+22]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K56 [{"LayoutOrder", "StatusLevel", "StatusMessage", "StatusContext"}]
  LOADN R19 3
  SETTABLEKS R19 R18 K39 ["LayoutOrder"]
  GETTABLEKS R19 R6 K57 ["Level"]
  SETTABLEKS R19 R18 K53 ["StatusLevel"]
  GETTABLEKS R19 R6 K58 ["Type"]
  SETTABLEKS R19 R18 K54 ["StatusMessage"]
  GETTABLEKS R19 R6 K59 ["Context"]
  SETTABLEKS R19 R18 K55 ["StatusContext"]
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K29 ["Status"]
  CALL R12 3 -1
  RETURN R12 -1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Row"]
  GETTABLEKS R3 R1 K2 ["Style"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createFragment"]
  DUPTABLE R5 K6 [{"PresetSelector", "Padding"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K10 [{"CurrentPreset", "Enabled"}]
  GETTABLEKS R9 R2 K11 ["currentPreset"]
  SETTABLEKS R9 R8 K8 ["CurrentPreset"]
  GETTABLEKS R9 R2 K12 ["enabled"]
  SETTABLEKS R9 R8 K9 ["Enabled"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["PresetSelector"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["createElement"]
  LOADK R7 K13 ["UIPadding"]
  GETTABLEKS R9 R3 K14 ["AssetListCell"]
  GETTABLEKS R8 R9 K5 ["Padding"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["Padding"]
  CALL R4 1 -1
  RETURN R4 -1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  CALL R1 1 -1
  RETURN R1 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R4 R1 K1 ["Columns"]
  GETTABLEKS R5 R1 K2 ["ColumnIndex"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K3 ["Key"]
  JUMPIFNOTEQKS R2 K4 ["Checkbox"] [+5]
  NAMECALL R3 R0 K5 ["renderCheckboxCell"]
  CALL R3 1 -1
  RETURN R3 -1
  JUMPIFNOTEQKS R2 K6 ["Asset"] [+5]
  NAMECALL R3 R0 K7 ["renderAssetCell"]
  CALL R3 1 -1
  RETURN R3 -1
  JUMPIFNOTEQKS R2 K8 ["Preset"] [+5]
  NAMECALL R3 R0 K9 ["renderPresetCell"]
  CALL R3 1 -1
  RETURN R3 -1
  JUMPIFNOTEQKS R2 K10 ["Path"] [+5]
  NAMECALL R3 R0 K11 ["renderPathCell"]
  CALL R3 1 -1
  RETURN R3 -1
  LOADNIL R3
  RETURN R3 1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Style"]
  GETTABLEKS R3 R1 K2 ["Width"]
  JUMPIF R3 [+9]
  GETIMPORT R3 K5 [UDim.new]
  LOADN R5 1
  GETTABLEKS R7 R1 K6 ["Columns"]
  LENGTH R6 R7
  DIV R4 R5 R6
  LOADN R5 0
  CALL R3 2 1
  GETTABLEKS R4 R2 K7 ["BackgroundOdd"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K15 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
  GETTABLEKS R8 R1 K16 ["ColumnIndex"]
  SETTABLEKS R8 R7 K9 ["LayoutOrder"]
  SETTABLEKS R4 R7 K10 ["BackgroundColor3"]
  LOADN R8 1
  SETTABLEKS R8 R7 K11 ["BorderSizePixel"]
  GETTABLEKS R8 R2 K17 ["Border"]
  SETTABLEKS R8 R7 K12 ["BorderColor3"]
  GETIMPORT R8 K19 [UDim2.new]
  GETTABLEKS R9 R3 K20 ["Scale"]
  GETTABLEKS R10 R3 K21 ["Offset"]
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K13 ["Size"]
  LOADB R8 1
  SETTABLEKS R8 R7 K14 ["ClipsDescendants"]
  DUPTABLE R8 K23 [{"Content"}]
  NAMECALL R9 R0 K24 ["getContent"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K22 ["Content"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R5 R2 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["LinkText"]
  GETTABLEKS R8 R5 K14 ["Checkbox"]
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K16 ["Components"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R9 K17 ["Properties"]
  GETTABLEKS R11 R12 K18 ["PropertyStatus"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R9 K19 ["Presets"]
  GETTABLEKS R12 R13 K20 ["PresetSelector"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K15 ["Src"]
  GETTABLEKS R14 R15 K21 ["Controllers"]
  GETTABLEKS R13 R14 K22 ["FileController"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K23 ["PureComponent"]
  LOADK R15 K24 ["AssetListCell"]
  NAMECALL R13 R13 K25 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K26 [PROTO_4]
  SETTABLEKS R14 R13 K27 ["init"]
  DUPCLOSURE R14 K28 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R14 R13 K29 ["renderCheckboxCell"]
  DUPCLOSURE R14 K30 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K31 ["renderAssetCell"]
  DUPCLOSURE R14 K32 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R11
  SETTABLEKS R14 R13 K33 ["renderPresetCell"]
  DUPCLOSURE R14 K34 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R14 R13 K35 ["renderPathCell"]
  DUPCLOSURE R14 K36 [PROTO_9]
  SETTABLEKS R14 R13 K37 ["getContent"]
  DUPCLOSURE R14 K38 [PROTO_10]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R14 R13 K39 ["render"]
  GETTABLEKS R14 R3 K40 ["withContext"]
  DUPTABLE R15 K41 [{"Localization", "FileController"}]
  SETTABLEKS R4 R15 K10 ["Localization"]
  SETTABLEKS R12 R15 K22 ["FileController"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
