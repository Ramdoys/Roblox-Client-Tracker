PROTO_0:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["onTooltipTriggered"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["onDropdownToggled"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["onSearchOptionsToggled"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["onSearchOptionsMouse"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isShowingModal"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isShowingSearchOptions"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isMouseInSearchOptions"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isAssetPreviewing"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_8:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["onAssetPreviewToggled"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["canHoverAsset"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_10:
  NEWTABLE R1 16 0
  SETTABLEKS R0 R1 K0 ["modalTarget"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K2 ["modalStatus"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K3 ["onTooltipTriggered"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K4 ["onDropdownToggled"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K5 ["onSearchOptionsToggled"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K6 ["onSearchOptionsMouse"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K7 ["isShowingModal"]
  NEWCLOSURE R3 P5
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K8 ["isShowingSearchOptions"]
  NEWCLOSURE R3 P6
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K9 ["isMouseInSearchOptions"]
  NEWCLOSURE R3 P7
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K10 ["isAssetPreviewing"]
  NEWCLOSURE R3 P8
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K11 ["onAssetPreviewToggled"]
  NEWCLOSURE R3 P9
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K12 ["canHoverAsset"]
  GETUPVAL R5 1
  FASTCALL2 SETMETATABLE R1 R5 [+4]
  MOVE R4 R1
  GETIMPORT R3 K14 [setmetatable]
  CALL R3 2 0
  RETURN R1 1

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
  GETTABLEKS R4 R2 K7 ["ContextServices"]
  GETTABLEKS R3 R4 K8 ["ContextItem"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K9 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Core"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["ModalStatus"]
  CALL R5 1 1
  LOADK R8 K13 ["ModalContext"]
  NAMECALL R6 R3 K14 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K15 [PROTO_10]
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K16 ["new"]
  RETURN R6 1
