PROTO_0:
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K3 ["%s+"]
  LOADK R4 K4 [""]
  CALL R1 3 1
  GETIMPORT R2 K2 [string.gsub]
  MOVE R3 R1
  LOADK R4 K5 ["
"]
  LOADK R5 K4 [""]
  CALL R2 3 1
  MOVE R1 R2
  GETIMPORT R2 K2 [string.gsub]
  MOVE R3 R1
  LOADK R4 K6 ["	"]
  LOADK R5 K4 [""]
  CALL R2 3 1
  MOVE R1 R2
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Enabled"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["StyleModifier"]
  JUMPIFNOTEQKNIL R1 [+11]
  GETUPVAL R1 0
  DUPTABLE R3 K4 [{"StyleModifier"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["Hover"]
  SETTABLEKS R4 R3 K3 ["StyleModifier"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 0
  DUPTABLE R3 K8 [{"assetPreviewButtonHovered"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K7 ["assetPreviewButtonHovered"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K9 ["AssetData"]
  GETTABLEKS R3 R1 K10 ["ClassName"]
  JUMPIFEQKS R3 K11 ["Folder"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R4 R1 K12 ["assetType"]
  GETIMPORT R5 K16 [Enum.AssetType.Place]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIF R2 [+38]
  JUMPIF R3 [+37]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K17 ["AssetsTable"]
  GETTABLEKS R5 R6 K18 ["assetPreviewData"]
  GETTABLEKS R6 R1 K19 ["id"]
  GETTABLE R4 R5 R6
  FASTCALL1 TYPE R4 [+3]
  MOVE R6 R4
  GETIMPORT R5 K21 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K22 ["table"] [+21]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K23 ["dispatchGetAssetPreviewData"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K24 ["API"]
  NAMECALL R6 R6 K25 ["get"]
  CALL R6 1 1
  NEWTABLE R7 0 1
  GETTABLEKS R8 R1 K19 ["id"]
  SETLIST R7 R8 1 [1]
  CALL R5 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Enabled"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["StyleModifier"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["Hover"]
  JUMPIFNOTEQ R1 R2 [+11]
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"StyleModifier"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["None"]
  SETTABLEKS R4 R3 K3 ["StyleModifier"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 0
  DUPTABLE R3 K9 [{"assetPreviewButtonHovered"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["assetPreviewButtonHovered"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Enabled"]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R3 R2 K2 ["AssetData"]
  JUMPIFNOTEQKN R1 K3 [0] [+7]
  GETTABLEKS R4 R2 K4 ["dispatchOnAssetSingleClick"]
  MOVE R5 R0
  MOVE R6 R3
  CALL R4 2 0
  RETURN R0 0
  JUMPIFNOTEQKN R1 K5 [1] [+7]
  GETTABLEKS R4 R2 K6 ["dispatchOnAssetDoubleClick"]
  GETTABLEKS R5 R2 K7 ["Analytics"]
  MOVE R6 R3
  CALL R4 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["AssetData"]
  GETTABLEKS R3 R1 K2 ["OnAssetDrag"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Enabled"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K2 ["AssetData"]
  GETTABLEKS R3 R1 K3 ["ClassName"]
  JUMPIFEQKS R3 K4 ["Folder"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+14]
  GETTABLEKS R4 R0 K5 ["SelectedAssets"]
  GETTABLEKS R6 R1 K6 ["Screen"]
  GETTABLEKS R5 R6 K7 ["LayoutOrder"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+17]
  GETTABLEKS R3 R0 K8 ["dispatchOnAssetSingleClick"]
  LOADNIL R4
  MOVE R5 R1
  CALL R3 2 0
  JUMP [+11]
  GETTABLEKS R4 R0 K5 ["SelectedAssets"]
  GETTABLEKS R5 R1 K9 ["key"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+5]
  GETTABLEKS R3 R0 K8 ["dispatchOnAssetSingleClick"]
  LOADNIL R4
  MOVE R5 R1
  CALL R3 2 0
  GETTABLEKS R3 R0 K10 ["dispatchOnAssetRightClick"]
  MOVE R4 R0
  CALL R3 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"assetPreviewButtonHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["assetPreviewButtonHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["AssetData"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K5 ["OnOpenAssetPreview"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["Text"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["AssetData"]
  GETTABLEKS R2 R3 K3 ["name"]
  JUMPIFEQ R1 R2 [+8]
  GETUPVAL R2 0
  DUPTABLE R4 K5 [{"editText"}]
  SETTABLEKS R1 R4 K4 ["editText"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["AssetData"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["state"]
  GETTABLEKS R5 R6 K3 ["editText"]
  GETIMPORT R6 K6 [utf8.len]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFEQKN R6 K7 [0] [+148]
  GETIMPORT R6 K6 [utf8.len]
  GETIMPORT R8 K10 [string.gsub]
  MOVE R9 R5
  LOADK R10 K11 ["%s+"]
  LOADK R11 K12 [""]
  CALL R8 3 1
  GETIMPORT R9 K10 [string.gsub]
  MOVE R10 R8
  LOADK R11 K13 ["
"]
  LOADK R12 K12 [""]
  CALL R9 3 1
  MOVE R8 R9
  GETIMPORT R9 K10 [string.gsub]
  MOVE R10 R8
  LOADK R11 K14 ["	"]
  LOADK R12 K12 [""]
  CALL R9 3 1
  MOVE R8 R9
  MOVE R7 R8
  CALL R6 1 1
  JUMPIFEQKN R6 K7 [0] [+122]
  GETTABLEKS R6 R4 K15 ["assetType"]
  GETIMPORT R7 K19 [Enum.AssetType.Place]
  JUMPIFNOTEQ R6 R7 [+9]
  GETUPVAL R6 1
  GETTABLEKS R8 R4 K20 ["id"]
  MOVE R9 R5
  NAMECALL R6 R6 K21 ["RenamePlace"]
  CALL R6 3 0
  JUMP [+107]
  GETTABLEKS R6 R4 K15 ["assetType"]
  GETIMPORT R7 K23 [Enum.AssetType.Image]
  JUMPIFEQ R6 R7 [+31]
  GETTABLEKS R6 R4 K15 ["assetType"]
  GETIMPORT R7 K25 [Enum.AssetType.MeshPart]
  JUMPIFEQ R6 R7 [+25]
  GETTABLEKS R6 R4 K15 ["assetType"]
  GETIMPORT R7 K27 [Enum.AssetType.Lua]
  JUMPIFEQ R6 R7 [+19]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+6]
  GETTABLEKS R6 R4 K15 ["assetType"]
  GETIMPORT R7 K29 [Enum.AssetType.Audio]
  JUMPIFEQ R6 R7 [+10]
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+77]
  GETTABLEKS R6 R4 K15 ["assetType"]
  GETIMPORT R7 K31 [Enum.AssetType.Video]
  JUMPIFNOTEQ R6 R7 [+72]
  LOADNIL R6
  GETTABLEKS R7 R4 K15 ["assetType"]
  GETIMPORT R8 K23 [Enum.AssetType.Image]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADK R6 K32 ["Images/"]
  JUMP [+45]
  GETTABLEKS R7 R4 K15 ["assetType"]
  GETIMPORT R8 K25 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADK R6 K33 ["Meshes/"]
  JUMP [+37]
  GETTABLEKS R7 R4 K15 ["assetType"]
  GETIMPORT R8 K27 [Enum.AssetType.Lua]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADK R6 K34 ["Scripts/"]
  JUMP [+29]
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+8]
  GETTABLEKS R7 R4 K15 ["assetType"]
  GETIMPORT R8 K29 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADK R6 K35 ["Audio/"]
  JUMP [+18]
  GETUPVAL R7 3
  CALL R7 0 1
  JUMPIFNOT R7 [+8]
  GETTABLEKS R7 R4 K15 ["assetType"]
  GETIMPORT R8 K31 [Enum.AssetType.Video]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADK R6 K36 ["Video/"]
  JUMP [+7]
  GETTABLEKS R7 R4 K15 ["assetType"]
  GETIMPORT R8 K38 [Enum.AssetType.Model]
  JUMPIFNOTEQ R7 R8 [+2]
  LOADK R6 K39 ["Models/"]
  GETUPVAL R7 1
  GETTABLEKS R10 R4 K15 ["assetType"]
  GETTABLEKS R9 R10 K40 ["Value"]
  GETTABLEKS R10 R4 K20 ["id"]
  MOVE R12 R6
  GETTABLEKS R13 R4 K41 ["name"]
  CONCAT R11 R12 R13
  MOVE R13 R6
  MOVE R14 R5
  CONCAT R12 R13 R14
  NAMECALL R7 R7 K42 ["RenameAlias"]
  CALL R7 5 0
  GETTABLEKS R6 R3 K43 ["dispatchSetEditingAssets"]
  NEWTABLE R7 0 0
  CALL R6 1 0
  GETTABLEKS R6 R3 K44 ["dispatchChangeAssetAlias"]
  GETTABLEKS R8 R4 K20 ["id"]
  FASTCALL1 TOSTRING R8 [+2]
  GETIMPORT R7 K46 [tostring]
  CALL R7 1 1
  MOVE R8 R5
  CALL R6 2 0
  GETUPVAL R6 0
  DUPTABLE R8 K47 [{"editText"}]
  GETTABLEKS R10 R3 K1 ["AssetData"]
  GETTABLEKS R9 R10 K41 ["name"]
  SETTABLEKS R9 R8 K3 ["editText"]
  NAMECALL R6 R6 K48 ["setState"]
  CALL R6 2 0
  GETUPVAL R6 0
  LOADB R7 0
  SETTABLEKS R7 R6 K49 ["editing"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  DUPTABLE R4 K1 [{"assetFetchStatus"}]
  SETTABLEKS R1 R4 K0 ["assetFetchStatus"]
  NAMECALL R2 R2 K2 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  NEWTABLE R0 0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["thumbnailUrl"]
  SETLIST R0 R1 1 [1]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["PreloadAsync"]
  CALL R2 3 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K4 [{"StyleModifier", "assetFetchStatus", "assetPreviewButtonHovered", "editText"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["StyleModifier"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["assetFetchStatus"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["assetPreviewButtonHovered"]
  LOADK R2 K5 [""]
  SETTABLEKS R2 R1 K3 ["editText"]
  SETTABLEKS R1 R0 K6 ["state"]
  LOADB R1 0
  SETTABLEKS R1 R0 K7 ["editing"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K9 ["textBoxRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K10 ["onMouseEnter"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K11 ["onMouseLeave"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["onClick"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onDragBegan"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["onRightClick"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["openAssetPreview"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["onTextChanged"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K17 ["onTextBoxFocusLost"]
  GETTABLEKS R1 R0 K18 ["props"]
  GETTABLEKS R2 R1 K19 ["AssetData"]
  GETTABLEKS R4 R2 K20 ["ClassName"]
  JUMPIFEQKS R4 K21 ["Folder"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETTABLEKS R4 R2 K22 ["id"]
  JUMPIF R3 [+31]
  GETTABLEKS R5 R2 K23 ["assetType"]
  GETIMPORT R6 K27 [Enum.AssetType.Place]
  JUMPIFNOTEQ R5 R6 [+11]
  GETIMPORT R5 K30 [string.format]
  LOADK R6 K31 ["rbxthumb://type=AutoGeneratedAsset&id=%i&w=%i&h=%i"]
  MOVE R7 R4
  LOADN R8 150
  LOADN R9 150
  CALL R5 4 1
  SETTABLEKS R5 R0 K32 ["thumbnailUrl"]
  JUMP [+9]
  GETIMPORT R5 K30 [string.format]
  LOADK R6 K33 ["rbxthumb://type=Asset&id=%i&w=%i&h=%i"]
  MOVE R7 R4
  LOADN R8 150
  LOADN R9 150
  CALL R5 4 1
  SETTABLEKS R5 R0 K32 ["thumbnailUrl"]
  GETIMPORT R5 K35 [spawn]
  NEWCLOSURE R6 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CALL R5 1 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R3 K1 [{"editText"}]
  GETTABLEKS R6 R0 K2 ["props"]
  GETTABLEKS R5 R6 K3 ["AssetData"]
  GETTABLEKS R4 R5 K4 ["name"]
  SETTABLEKS R4 R3 K0 ["editText"]
  NAMECALL R1 R0 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["AssetData"]
  GETTABLEKS R6 R3 K2 ["EditingAssets"]
  GETTABLEKS R7 R4 K3 ["id"]
  GETTABLE R5 R6 R7
  JUMPIFNOT R5 [+34]
  GETTABLEKS R6 R3 K4 ["RecentListItem"]
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  GETTABLEKS R6 R0 K5 ["textBoxRef"]
  JUMPIFNOT R6 [+27]
  GETTABLEKS R7 R0 K5 ["textBoxRef"]
  GETTABLEKS R6 R7 K6 ["current"]
  JUMPIFNOT R6 [+22]
  GETTABLEKS R6 R0 K7 ["editing"]
  JUMPIF R6 [+19]
  GETTABLEKS R7 R0 K5 ["textBoxRef"]
  GETTABLEKS R6 R7 K6 ["current"]
  NAMECALL R7 R6 K8 ["CaptureFocus"]
  CALL R7 1 0
  LOADN R7 1
  SETTABLEKS R7 R6 K9 ["SelectionStart"]
  GETTABLEKS R9 R6 K11 ["Text"]
  LENGTH R8 R9
  ADDK R7 R8 K10 [1]
  SETTABLEKS R7 R6 K12 ["CursorPosition"]
  LOADB R7 1
  SETTABLEKS R7 R0 K7 ["editing"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Enabled"]
  GETTABLEKS R5 R2 K4 ["Size"]
  GETTABLEKS R6 R1 K5 ["AssetData"]
  GETTABLEKS R7 R2 K6 ["BackgroundColor"]
  GETTABLEKS R8 R2 K7 ["BackgroundTransparency"]
  GETTABLEKS R9 R2 K8 ["BorderSizePixel"]
  GETTABLEKS R11 R2 K9 ["Text"]
  GETTABLEKS R10 R11 K10 ["Color"]
  GETTABLEKS R11 R2 K11 ["Font"]
  GETTABLEKS R13 R2 K9 ["Text"]
  GETTABLEKS R12 R13 K4 ["Size"]
  GETTABLEKS R14 R2 K9 ["Text"]
  GETTABLEKS R13 R14 K7 ["BackgroundTransparency"]
  GETTABLEKS R15 R2 K9 ["Text"]
  GETTABLEKS R14 R15 K12 ["TextTruncate"]
  GETTABLEKS R16 R2 K9 ["Text"]
  GETTABLEKS R15 R16 K13 ["XAlignment"]
  GETTABLEKS R17 R2 K9 ["Text"]
  GETTABLEKS R16 R17 K14 ["YAlignment"]
  GETTABLEKS R19 R2 K9 ["Text"]
  GETTABLEKS R18 R19 K15 ["Frame"]
  GETTABLEKS R17 R18 K4 ["Size"]
  GETTABLEKS R20 R2 K9 ["Text"]
  GETTABLEKS R19 R20 K15 ["Frame"]
  GETTABLEKS R18 R19 K16 ["Position"]
  GETTABLEKS R20 R0 K17 ["state"]
  GETTABLEKS R19 R20 K18 ["editText"]
  GETTABLEKS R21 R1 K19 ["EditingAssets"]
  GETTABLEKS R22 R6 K20 ["id"]
  GETTABLE R20 R21 R22
  GETTABLEKS R22 R2 K21 ["EditText"]
  GETTABLEKS R21 R22 K22 ["TextWrapped"]
  GETTABLEKS R23 R2 K21 ["EditText"]
  GETTABLEKS R22 R23 K23 ["ClearTextOnFocus"]
  GETTABLEKS R24 R2 K9 ["Text"]
  GETTABLEKS R23 R24 K13 ["XAlignment"]
  GETTABLEKS R26 R2 K21 ["EditText"]
  GETTABLEKS R25 R26 K15 ["Frame"]
  GETTABLEKS R24 R25 K6 ["BackgroundColor"]
  GETTABLEKS R27 R2 K21 ["EditText"]
  GETTABLEKS R26 R27 K15 ["Frame"]
  GETTABLEKS R25 R26 K24 ["BorderColor"]
  GETUPVAL R26 0
  MOVE R27 R19
  MOVE R28 R12
  MOVE R29 R11
  GETIMPORT R30 K27 [Vector2.new]
  GETTABLEKS R33 R2 K4 ["Size"]
  GETTABLEKS R32 R33 K28 ["X"]
  GETTABLEKS R31 R32 K29 ["Offset"]
  LOADK R32 K30 [∞]
  CALL R30 2 -1
  CALL R26 -1 1
  LOADNIL R27
  GETTABLEKS R28 R26 K28 ["X"]
  GETTABLEKS R31 R2 K4 ["Size"]
  GETTABLEKS R30 R31 K28 ["X"]
  GETTABLEKS R29 R30 K29 ["Offset"]
  JUMPIFNOTLT R28 R29 [+6]
  GETTABLEKS R28 R2 K21 ["EditText"]
  GETTABLEKS R27 R28 K31 ["TextPadding"]
  JUMP [+1]
  LOADN R27 0
  GETTABLEKS R28 R6 K32 ["name"]
  GETTABLEKS R29 R6 K32 ["name"]
  GETUPVAL R30 0
  GETTABLEKS R31 R6 K32 ["name"]
  MOVE R32 R12
  MOVE R33 R11
  GETIMPORT R34 K27 [Vector2.new]
  GETTABLEKS R36 R17 K28 ["X"]
  GETTABLEKS R35 R36 K29 ["Offset"]
  LOADK R36 K30 [∞]
  CALL R34 2 -1
  CALL R30 -1 1
  GETTABLEKS R31 R30 K33 ["Y"]
  GETTABLEKS R33 R17 K33 ["Y"]
  GETTABLEKS R32 R33 K29 ["Offset"]
  JUMPIFNOTLT R32 R31 [+26]
  GETTABLEKS R35 R6 K32 ["name"]
  LOADN R36 1
  LOADN R37 12
  FASTCALL STRING_SUB [+2]
  GETIMPORT R34 K36 [string.sub]
  CALL R34 3 1
  MOVE R31 R34
  LOADK R32 K37 ["..."]
  GETTABLEKS R34 R6 K32 ["name"]
  GETTABLEKS R37 R6 K32 ["name"]
  FASTCALL1 STRING_LEN R37 [+2]
  GETIMPORT R36 K40 [string.len]
  CALL R36 1 1
  SUBK R35 R36 K38 [5]
  FASTCALL2 STRING_SUB R34 R35 [+3]
  GETIMPORT R33 K36 [string.sub]
  CALL R33 2 1
  CONCAT R29 R31 R33
  GETTABLEKS R32 R6 K41 ["ClassName"]
  JUMPIFEQKS R32 K42 ["Folder"] [+2]
  LOADB R31 0 +1
  LOADB R31 1
  GETTABLEKS R33 R6 K43 ["assetType"]
  GETIMPORT R34 K47 [Enum.AssetType.Place]
  JUMPIFEQ R33 R34 [+2]
  LOADB R32 0 +1
  LOADB R32 1
  LOADNIL R33
  JUMPIFNOT R31 [+10]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K48 ["getIconForCurrentTheme"]
  GETTABLEKS R36 R6 K49 ["Screen"]
  GETTABLEKS R35 R36 K50 ["Image"]
  CALL R34 1 1
  MOVE R33 R34
  JUMP [+16]
  GETTABLEKS R36 R0 K17 ["state"]
  GETTABLEKS R35 R36 K51 ["assetFetchStatus"]
  GETIMPORT R36 K54 [Enum.AssetFetchStatus.Success]
  JUMPIFNOTEQ R35 R36 [+4]
  GETTABLEKS R34 R0 K55 ["thumbnailUrl"]
  JUMPIF R34 [+4]
  GETTABLEKS R35 R2 K50 ["Image"]
  GETTABLEKS R34 R35 K56 ["PlaceHolder"]
  MOVE R33 R34
  GETTABLEKS R35 R2 K50 ["Image"]
  GETTABLEKS R34 R35 K57 ["FrameSize"]
  GETTABLEKS R36 R2 K50 ["Image"]
  GETTABLEKS R35 R36 K58 ["ImageSize"]
  GETTABLEKS R37 R2 K50 ["Image"]
  GETTABLEKS R36 R37 K16 ["Position"]
  GETTABLEKS R38 R2 K50 ["Image"]
  GETTABLEKS R37 R38 K59 ["FolderPosition"]
  GETTABLEKS R39 R2 K50 ["Image"]
  GETTABLEKS R38 R39 K60 ["FolderAnchorPosition"]
  GETTABLEKS R40 R2 K50 ["Image"]
  GETTABLEKS R39 R40 K6 ["BackgroundColor"]
  NOT R40 R31
  JUMPIFNOT R40 [+1]
  NOT R40 R32
  GETTABLEKS R42 R0 K17 ["state"]
  GETTABLEKS R41 R42 K61 ["assetPreviewButtonHovered"]
  GETUPVAL R43 1
  GETTABLEKS R42 R43 K48 ["getIconForCurrentTheme"]
  GETUPVAL R45 1
  GETTABLEKS R44 R45 K62 ["IconEnums"]
  GETTABLEKS R43 R44 K63 ["Zoom"]
  CALL R42 1 1
  GETTABLEKS R45 R2 K64 ["AssetPreview"]
  GETTABLEKS R44 R45 K65 ["Button"]
  GETTABLEKS R43 R44 K29 ["Offset"]
  GETTABLEKS R44 R6 K66 ["isRootPlace"]
  GETTABLEKS R47 R2 K50 ["Image"]
  GETTABLEKS R46 R47 K67 ["StartingPlace"]
  GETTABLEKS R45 R46 K4 ["Size"]
  GETUPVAL R47 1
  GETTABLEKS R46 R47 K48 ["getIconForCurrentTheme"]
  GETUPVAL R49 1
  GETTABLEKS R48 R49 K62 ["IconEnums"]
  GETTABLEKS R47 R48 K68 ["Spawn"]
  CALL R46 1 1
  GETTABLEKS R49 R2 K50 ["Image"]
  GETTABLEKS R48 R49 K67 ["StartingPlace"]
  GETTABLEKS R47 R48 K69 ["XOffset"]
  GETTABLEKS R50 R2 K50 ["Image"]
  GETTABLEKS R49 R50 K67 ["StartingPlace"]
  GETTABLEKS R48 R49 K70 ["YOffset"]
  GETTABLEKS R49 R1 K71 ["LayoutOrder"]
  JUMPIFNOT R31 [+2]
  LOADK R50 K15 ["Frame"]
  JUMP [+1]
  LOADK R50 K72 ["ImageLabel"]
  DUPTABLE R51 K74 [{"Size", "Position", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
  SETTABLEKS R34 R51 K4 ["Size"]
  SETTABLEKS R36 R51 K16 ["Position"]
  LOADN R52 0
  SETTABLEKS R52 R51 K7 ["BackgroundTransparency"]
  SETTABLEKS R39 R51 K73 ["BackgroundColor3"]
  LOADN R52 0
  SETTABLEKS R52 R51 K8 ["BorderSizePixel"]
  JUMPIF R31 [+2]
  SETTABLEKS R33 R51 K50 ["Image"]
  LOADNIL R52
  LOADNIL R53
  LOADNIL R54
  LOADNIL R55
  LOADNIL R56
  LOADNIL R57
  JUMPIF R31 [+68]
  GETTABLEKS R58 R1 K75 ["ModerationData"]
  JUMPIFNOT R58 [+65]
  GETIMPORT R59 K77 [next]
  MOVE R60 R58
  CALL R59 1 1
  JUMPIFEQKNIL R59 [+60]
  GETTABLEKS R60 R58 K78 ["reviewStatus"]
  GETUPVAL R62 2
  GETTABLEKS R61 R62 K79 ["Pending"]
  JUMPIFEQ R60 R61 [+2]
  LOADB R59 0 +1
  LOADB R59 1
  GETUPVAL R61 3
  GETTABLEKS R60 R61 K80 ["isApprovedAsset"]
  MOVE R61 R58
  CALL R60 1 1
  MOVE R61 R59
  JUMPIF R61 [+1]
  NOT R61 R60
  MOVE R52 R61
  JUMPIFNOT R52 [+40]
  JUMPIFNOT R59 [+7]
  GETTABLEKS R62 R2 K50 ["Image"]
  GETTABLEKS R61 R62 K81 ["ModerationStatus"]
  GETTABLEKS R53 R61 K79 ["Pending"]
  JUMP [+7]
  JUMPIF R60 [+6]
  GETTABLEKS R62 R2 K50 ["Image"]
  GETTABLEKS R61 R62 K81 ["ModerationStatus"]
  GETTABLEKS R53 R61 K82 ["Rejected"]
  GETTABLEKS R62 R2 K50 ["Image"]
  GETTABLEKS R61 R62 K81 ["ModerationStatus"]
  GETTABLEKS R54 R61 K4 ["Size"]
  GETTABLEKS R62 R2 K50 ["Image"]
  GETTABLEKS R61 R62 K81 ["ModerationStatus"]
  GETTABLEKS R55 R61 K69 ["XOffset"]
  GETTABLEKS R62 R2 K50 ["Image"]
  GETTABLEKS R61 R62 K81 ["ModerationStatus"]
  GETTABLEKS R56 R61 K70 ["YOffset"]
  GETUPVAL R62 3
  GETTABLEKS R61 R62 K83 ["getModerationTooltip"]
  MOVE R62 R3
  MOVE R63 R58
  CALL R61 2 1
  MOVE R57 R61
  GETUPVAL R59 4
  GETTABLEKS R58 R59 K84 ["createElement"]
  GETUPVAL R59 5
  DUPTABLE R60 K89 [{"AutomaticSize", "LayoutOrder", "OnClick", "OnRightClick", "OnDragBegan"}]
  GETIMPORT R61 K91 [Enum.AutomaticSize.XY]
  SETTABLEKS R61 R60 K85 ["AutomaticSize"]
  SETTABLEKS R49 R60 K71 ["LayoutOrder"]
  GETTABLEKS R61 R0 K92 ["onClick"]
  SETTABLEKS R61 R60 K86 ["OnClick"]
  GETTABLEKS R61 R0 K93 ["onRightClick"]
  SETTABLEKS R61 R60 K87 ["OnRightClick"]
  GETTABLEKS R61 R0 K94 ["onDragBegan"]
  SETTABLEKS R61 R60 K88 ["OnDragBegan"]
  DUPTABLE R61 K95 [{"Button"}]
  GETUPVAL R63 4
  GETTABLEKS R62 R63 K84 ["createElement"]
  GETUPVAL R63 6
  NEWTABLE R64 8 0
  SETTABLEKS R7 R64 K6 ["BackgroundColor"]
  SETTABLEKS R5 R64 K4 ["Size"]
  SETTABLEKS R8 R64 K96 ["Transparency"]
  GETUPVAL R67 4
  GETTABLEKS R66 R67 K97 ["Event"]
  GETTABLEKS R65 R66 K98 ["MouseEnter"]
  GETTABLEKS R66 R0 K99 ["onMouseEnter"]
  SETTABLE R66 R64 R65
  GETUPVAL R67 4
  GETTABLEKS R66 R67 K97 ["Event"]
  GETTABLEKS R65 R66 K100 ["MouseLeave"]
  GETTABLEKS R66 R0 K101 ["onMouseLeave"]
  SETTABLE R66 R64 R65
  DUPTABLE R65 K107 [{"ThumbnailContainer", "Name", "RenameTextBox", "NameTooltip", "DEPRECATED_Tooltip"}]
  GETUPVAL R67 4
  GETTABLEKS R66 R67 K84 ["createElement"]
  MOVE R67 R50
  MOVE R68 R51
  DUPTABLE R69 K112 [{"AssetPreviewButton", "RootPlaceImage", "ModerationStatusImage", "FolderImage"}]
  MOVE R70 R40
  JUMPIFNOT R70 [+27]
  GETUPVAL R71 4
  GETTABLEKS R70 R71 K84 ["createElement"]
  GETUPVAL R71 7
  DUPTABLE R72 K114 [{"Position", "Image", "ShowIcon", "OnClick", "OnRightClick"}]
  GETIMPORT R73 K116 [UDim2.new]
  LOADN R74 1
  MINUS R75 R43
  LOADN R76 0
  MOVE R77 R43
  CALL R73 4 1
  SETTABLEKS R73 R72 K16 ["Position"]
  SETTABLEKS R42 R72 K50 ["Image"]
  SETTABLEKS R41 R72 K113 ["ShowIcon"]
  GETTABLEKS R73 R0 K117 ["openAssetPreview"]
  SETTABLEKS R73 R72 K86 ["OnClick"]
  GETTABLEKS R73 R0 K93 ["onRightClick"]
  SETTABLEKS R73 R72 K87 ["OnRightClick"]
  CALL R70 2 1
  SETTABLEKS R70 R69 K108 ["AssetPreviewButton"]
  MOVE R70 R44
  JUMPIFNOT R70 [+29]
  GETUPVAL R71 4
  GETTABLEKS R70 R71 K84 ["createElement"]
  LOADK R71 K72 ["ImageLabel"]
  DUPTABLE R72 K118 [{"Size", "Position", "Image", "BackgroundTransparency"}]
  GETIMPORT R73 K116 [UDim2.new]
  LOADN R74 0
  MOVE R75 R45
  LOADN R76 0
  MOVE R77 R45
  CALL R73 4 1
  SETTABLEKS R73 R72 K4 ["Size"]
  GETIMPORT R73 K116 [UDim2.new]
  LOADN R74 0
  MOVE R75 R47
  LOADN R76 0
  MOVE R77 R48
  CALL R73 4 1
  SETTABLEKS R73 R72 K16 ["Position"]
  SETTABLEKS R46 R72 K50 ["Image"]
  LOADN R73 1
  SETTABLEKS R73 R72 K7 ["BackgroundTransparency"]
  CALL R70 2 1
  SETTABLEKS R70 R69 K109 ["RootPlaceImage"]
  MOVE R70 R52
  JUMPIFNOT R70 [+42]
  GETUPVAL R71 4
  GETTABLEKS R70 R71 K84 ["createElement"]
  LOADK R71 K72 ["ImageLabel"]
  DUPTABLE R72 K118 [{"Size", "Position", "Image", "BackgroundTransparency"}]
  GETIMPORT R73 K116 [UDim2.new]
  LOADN R74 0
  MOVE R75 R54
  LOADN R76 0
  MOVE R77 R54
  CALL R73 4 1
  SETTABLEKS R73 R72 K4 ["Size"]
  GETIMPORT R73 K116 [UDim2.new]
  LOADN R74 0
  MOVE R75 R55
  LOADN R76 0
  MOVE R77 R56
  CALL R73 4 1
  SETTABLEKS R73 R72 K16 ["Position"]
  SETTABLEKS R53 R72 K50 ["Image"]
  LOADN R73 1
  SETTABLEKS R73 R72 K7 ["BackgroundTransparency"]
  DUPTABLE R73 K120 [{"ModerationTooltip"}]
  GETUPVAL R75 4
  GETTABLEKS R74 R75 K84 ["createElement"]
  GETUPVAL R75 8
  DUPTABLE R76 K121 [{"Text", "Enabled"}]
  SETTABLEKS R57 R76 K9 ["Text"]
  SETTABLEKS R4 R76 K3 ["Enabled"]
  CALL R74 2 1
  SETTABLEKS R74 R73 K119 ["ModerationTooltip"]
  CALL R70 3 1
  SETTABLEKS R70 R69 K110 ["ModerationStatusImage"]
  MOVE R70 R31
  JUMPIFNOT R70 [+17]
  GETUPVAL R71 4
  GETTABLEKS R70 R71 K84 ["createElement"]
  LOADK R71 K72 ["ImageLabel"]
  DUPTABLE R72 K123 [{"Size", "Image", "Position", "AnchorPoint", "BackgroundTransparency"}]
  SETTABLEKS R35 R72 K4 ["Size"]
  SETTABLEKS R33 R72 K50 ["Image"]
  SETTABLEKS R37 R72 K16 ["Position"]
  SETTABLEKS R38 R72 K122 ["AnchorPoint"]
  LOADN R73 1
  SETTABLEKS R73 R72 K7 ["BackgroundTransparency"]
  CALL R70 2 1
  SETTABLEKS R70 R69 K111 ["FolderImage"]
  CALL R66 3 1
  SETTABLEKS R66 R65 K102 ["ThumbnailContainer"]
  NOT R66 R20
  JUMPIFNOT R66 [+29]
  GETUPVAL R67 4
  GETTABLEKS R66 R67 K84 ["createElement"]
  LOADK R67 K124 ["TextLabel"]
  DUPTABLE R68 K129 [{"Size", "Position", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextTruncate", "TextWrapped"}]
  SETTABLEKS R17 R68 K4 ["Size"]
  SETTABLEKS R18 R68 K16 ["Position"]
  SETTABLEKS R29 R68 K9 ["Text"]
  SETTABLEKS R10 R68 K125 ["TextColor3"]
  SETTABLEKS R11 R68 K11 ["Font"]
  SETTABLEKS R12 R68 K126 ["TextSize"]
  SETTABLEKS R13 R68 K7 ["BackgroundTransparency"]
  SETTABLEKS R15 R68 K127 ["TextXAlignment"]
  SETTABLEKS R16 R68 K128 ["TextYAlignment"]
  SETTABLEKS R14 R68 K12 ["TextTruncate"]
  LOADB R69 1
  SETTABLEKS R69 R68 K22 ["TextWrapped"]
  CALL R66 2 1
  SETTABLEKS R66 R65 K103 ["Name"]
  MOVE R66 R20
  JUMPIFNOT R66 [+65]
  GETUPVAL R67 4
  GETTABLEKS R66 R67 K84 ["createElement"]
  LOADK R67 K130 ["TextBox"]
  NEWTABLE R68 16 0
  GETIMPORT R69 K116 [UDim2.new]
  LOADN R70 0
  GETTABLEKS R72 R26 K28 ["X"]
  ADD R71 R72 R27
  LOADN R72 0
  GETTABLEKS R73 R26 K33 ["Y"]
  CALL R69 4 1
  SETTABLEKS R69 R68 K4 ["Size"]
  SETTABLEKS R18 R68 K16 ["Position"]
  SETTABLEKS R24 R68 K73 ["BackgroundColor3"]
  SETTABLEKS R25 R68 K131 ["BorderColor3"]
  SETTABLEKS R19 R68 K9 ["Text"]
  SETTABLEKS R10 R68 K125 ["TextColor3"]
  SETTABLEKS R11 R68 K11 ["Font"]
  SETTABLEKS R12 R68 K126 ["TextSize"]
  SETTABLEKS R23 R68 K127 ["TextXAlignment"]
  GETIMPORT R69 K133 [Enum.TextTruncate.None]
  SETTABLEKS R69 R68 K12 ["TextTruncate"]
  SETTABLEKS R21 R68 K22 ["TextWrapped"]
  SETTABLEKS R22 R68 K23 ["ClearTextOnFocus"]
  GETUPVAL R70 4
  GETTABLEKS R69 R70 K134 ["Ref"]
  GETTABLEKS R70 R0 K135 ["textBoxRef"]
  SETTABLE R70 R68 R69
  GETUPVAL R71 4
  GETTABLEKS R70 R71 K136 ["Change"]
  GETTABLEKS R69 R70 K9 ["Text"]
  GETTABLEKS R70 R0 K137 ["onTextChanged"]
  SETTABLE R70 R68 R69
  GETUPVAL R71 4
  GETTABLEKS R70 R71 K97 ["Event"]
  GETTABLEKS R69 R70 K138 ["FocusLost"]
  GETTABLEKS R70 R0 K139 ["onTextBoxFocusLost"]
  SETTABLE R70 R68 R69
  CALL R66 2 1
  SETTABLEKS R66 R65 K104 ["RenameTextBox"]
  GETUPVAL R67 4
  GETTABLEKS R66 R67 K84 ["createElement"]
  GETUPVAL R67 8
  DUPTABLE R68 K121 [{"Text", "Enabled"}]
  SETTABLEKS R28 R68 K9 ["Text"]
  SETTABLEKS R4 R68 K3 ["Enabled"]
  CALL R66 2 1
  SETTABLEKS R66 R65 K105 ["NameTooltip"]
  MOVE R66 R4
  JUMPIFNOT R66 [+11]
  GETUPVAL R67 4
  GETTABLEKS R66 R67 K84 ["createElement"]
  GETUPVAL R67 8
  DUPTABLE R68 K121 [{"Text", "Enabled"}]
  SETTABLEKS R28 R68 K9 ["Text"]
  LOADB R69 1
  SETTABLEKS R69 R68 K3 ["Enabled"]
  CALL R66 2 1
  SETTABLEKS R66 R65 K106 ["DEPRECATED_Tooltip"]
  CALL R62 3 1
  SETTABLEKS R62 R61 K65 ["Button"]
  CALL R58 3 -1
  RETURN R58 -1

PROTO_15:
  GETTABLEKS R2 R0 K0 ["AssetManagerReducer"]
  DUPTABLE R3 K4 [{"AssetsTable", "EditingAssets", "SelectedAssets"}]
  GETTABLEKS R4 R2 K5 ["assetsTable"]
  SETTABLEKS R4 R3 K1 ["AssetsTable"]
  GETTABLEKS R4 R2 K6 ["editingAssets"]
  SETTABLEKS R4 R3 K2 ["EditingAssets"]
  GETTABLEKS R4 R2 K7 ["selectedAssets"]
  SETTABLEKS R4 R3 K3 ["SelectedAssets"]
  RETURN R3 1

PROTO_16:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_22:
  DUPTABLE R1 K6 [{"dispatchGetAssetPreviewData", "dispatchOnAssetDoubleClick", "dispatchOnAssetRightClick", "dispatchOnAssetSingleClick", "dispatchSetEditingAssets", "dispatchChangeAssetAlias"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchGetAssetPreviewData"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchOnAssetDoubleClick"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["dispatchOnAssetRightClick"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["dispatchOnAssetSingleClick"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["dispatchSetEditingAssets"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K5 ["dispatchChangeAssetAlias"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["Util"]
  GETTABLEKS R7 R6 K12 ["StyleModifier"]
  GETTABLEKS R8 R6 K13 ["GetTextSize"]
  GETTABLEKS R9 R3 K14 ["UI"]
  GETTABLEKS R10 R9 K15 ["DragSource"]
  GETTABLEKS R11 R9 K16 ["Pane"]
  GETTABLEKS R12 R9 K17 ["Tooltip"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K18 ["Src"]
  GETTABLEKS R15 R16 K19 ["Components"]
  GETTABLEKS R14 R15 K20 ["PopUpButton"]
  CALL R13 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K18 ["Src"]
  GETTABLEKS R17 R18 K11 ["Util"]
  GETTABLEKS R16 R17 K21 ["AssetManagerUtilities"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K22 ["enableAudioImport"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K18 ["Src"]
  GETTABLEKS R18 R19 K11 ["Util"]
  GETTABLEKS R17 R18 K21 ["AssetManagerUtilities"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K23 ["enableVideoImport"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K18 ["Src"]
  GETTABLEKS R18 R19 K24 ["Actions"]
  GETTABLEKS R17 R18 K25 ["SetEditingAssets"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K18 ["Src"]
  GETTABLEKS R19 R20 K24 ["Actions"]
  GETTABLEKS R18 R19 K26 ["ChangeAssetAlias"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K18 ["Src"]
  GETTABLEKS R20 R21 K27 ["Thunks"]
  GETTABLEKS R19 R20 K28 ["GetAssetPreviewData"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K18 ["Src"]
  GETTABLEKS R21 R22 K27 ["Thunks"]
  GETTABLEKS R20 R21 K29 ["OnAssetDoubleClick"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K18 ["Src"]
  GETTABLEKS R22 R23 K27 ["Thunks"]
  GETTABLEKS R21 R22 K30 ["OnAssetRightClick"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K18 ["Src"]
  GETTABLEKS R23 R24 K27 ["Thunks"]
  GETTABLEKS R22 R23 K31 ["OnAssetSingleClick"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R25 R0 K18 ["Src"]
  GETTABLEKS R24 R25 K11 ["Util"]
  GETTABLEKS R23 R24 K32 ["ReviewStatus"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K18 ["Src"]
  GETTABLEKS R25 R26 K11 ["Util"]
  GETTABLEKS R24 R25 K33 ["ModerationUtil"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R27 R0 K18 ["Src"]
  GETTABLEKS R26 R27 K11 ["Util"]
  GETTABLEKS R25 R26 K34 ["ModernIcons"]
  CALL R24 1 1
  GETIMPORT R25 K36 [game]
  LOADK R27 K37 ["AssetManagerService"]
  NAMECALL R25 R25 K38 ["GetService"]
  CALL R25 2 1
  GETIMPORT R26 K36 [game]
  LOADK R28 K39 ["ContentProvider"]
  NAMECALL R26 R26 K38 ["GetService"]
  CALL R26 2 1
  GETTABLEKS R27 R1 K40 ["PureComponent"]
  LOADK R29 K41 ["Tile"]
  NAMECALL R27 R27 K42 ["extend"]
  CALL R27 2 1
  DUPCLOSURE R28 K43 [PROTO_0]
  DUPCLOSURE R29 K44 [PROTO_11]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R25
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R26
  SETTABLEKS R29 R27 K45 ["init"]
  DUPCLOSURE R29 K46 [PROTO_12]
  SETTABLEKS R29 R27 K47 ["didMount"]
  DUPCLOSURE R29 K48 [PROTO_13]
  SETTABLEKS R29 R27 K49 ["didUpdate"]
  DUPCLOSURE R29 K50 [PROTO_14]
  CAPTURE VAL R8
  CAPTURE VAL R24
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETTABLEKS R29 R27 K51 ["render"]
  MOVE R29 R5
  DUPTABLE R30 K58 [{"Analytics", "API", "Localization", "Mouse", "Plugin", "Stylizer"}]
  GETTABLEKS R31 R4 K52 ["Analytics"]
  SETTABLEKS R31 R30 K52 ["Analytics"]
  GETTABLEKS R31 R4 K53 ["API"]
  SETTABLEKS R31 R30 K53 ["API"]
  GETTABLEKS R31 R4 K54 ["Localization"]
  SETTABLEKS R31 R30 K54 ["Localization"]
  GETTABLEKS R31 R4 K55 ["Mouse"]
  SETTABLEKS R31 R30 K55 ["Mouse"]
  GETTABLEKS R31 R4 K56 ["Plugin"]
  SETTABLEKS R31 R30 K56 ["Plugin"]
  GETTABLEKS R31 R4 K57 ["Stylizer"]
  SETTABLEKS R31 R30 K57 ["Stylizer"]
  CALL R29 1 1
  MOVE R30 R27
  CALL R29 1 1
  MOVE R27 R29
  DUPCLOSURE R29 K59 [PROTO_15]
  DUPCLOSURE R30 K60 [PROTO_22]
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R17
  GETTABLEKS R31 R2 K61 ["connect"]
  MOVE R32 R29
  MOVE R33 R30
  CALL R31 2 1
  MOVE R32 R27
  CALL R31 1 -1
  RETURN R31 -1
