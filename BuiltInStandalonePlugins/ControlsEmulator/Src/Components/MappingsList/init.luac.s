PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onHoveredMappingChanged"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"key", "keyName", "LayoutOrder", "onHover"}]
  SETTABLEKS R0 R3 K1 ["key"]
  SETTABLEKS R0 R3 K2 ["keyName"]
  GETUPVAL R4 2
  NAMECALL R4 R4 K6 ["getNextOrder"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["onHoveredMappingChanged"]
  SETTABLEKS R4 R3 K4 ["onHover"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["mappings"]
  GETTABLEKS R4 R1 K2 ["isUpdatingMappingForGamepadId"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["useCallback"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K4 ["onHoveredMappingChanged"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createElement"]
  LOADK R5 K6 ["TextButton"]
  NEWTABLE R6 8 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["Tag"]
  LOADK R8 K8 ["Component-MappingsList CX-Invisible X-ColumnS"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R0 K9 ["LayoutOrder"]
  SETTABLEKS R7 R6 K9 ["LayoutOrder"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K10 ["Change"]
  GETTABLEKS R7 R8 K11 ["AbsoluteSize"]
  GETTABLEKS R9 R0 K12 ["onAbsoluteSizeChanged"]
  JUMPIFEQKNIL R9 [+4]
  GETTABLEKS R8 R0 K12 ["onAbsoluteSizeChanged"]
  JUMP [+1]
  LOADNIL R8
  SETTABLE R8 R6 R7
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["Event"]
  GETTABLEKS R7 R8 K14 ["MouseLeave"]
  SETTABLE R3 R6 R7
  LOADK R7 K15 [""]
  SETTABLEKS R7 R6 K16 ["Text"]
  GETUPVAL R7 2
  GETUPVAL R8 3
  GETUPVAL R9 4
  NEWCLOSURE R10 P1
  CAPTURE VAL R2
  CALL R8 2 1
  NEWCLOSURE R9 P2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CALL R7 2 -1
  CALL R4 -1 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Dash"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["map"]
  GETTABLEKS R5 R3 K11 ["filter"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["MappingsContext"]
  CALL R6 1 1
  GETTABLEKS R8 R2 K13 ["Util"]
  GETTABLEKS R7 R8 K15 ["LayoutOrderIterator"]
  GETTABLEKS R8 R7 K16 ["new"]
  CALL R8 0 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K17 ["Components"]
  GETTABLEKS R10 R11 K18 ["MappingsListRow"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K13 ["Util"]
  GETTABLEKS R11 R12 K19 ["KeyNamesConstants"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K20 ["KEY_NAMES_LIST_DISPLAY_ORDER"]
  DUPCLOSURE R12 K21 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R8
  GETTABLEKS R13 R1 K22 ["memo"]
  MOVE R14 R12
  CALL R13 1 -1
  RETURN R13 -1
