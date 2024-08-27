PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["PS4"]
  JUMPIFEQ R0 R1 [+7]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["PS5"]
  JUMPIFNOTEQ R0 R1 [+29]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["keyName"]
  JUMPIFNOTEQKS R0 K3 ["Y"] [+3]
  LOADK R0 K4 ["△"]
  RETURN R0 1
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["keyName"]
  JUMPIFNOTEQKS R0 K5 ["X"] [+3]
  LOADK R0 K6 ["☐"]
  RETURN R0 1
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["keyName"]
  JUMPIFNOTEQKS R0 K7 ["B"] [+3]
  LOADK R0 K8 ["O"]
  RETURN R0 1
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["keyName"]
  JUMPIFNOTEQKS R0 K9 ["A"] [+3]
  LOADK R0 K5 ["X"]
  RETURN R0 1
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["keyName"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onHover"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onHover"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["keyName"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onHover"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onHover"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setIsUpdatingMappingFor"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setIsUpdatingMappingFor"]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["keyName"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  LOADB R3 0
  GETTABLEKS R4 R1 K1 ["isUpdatingMappingForKey"]
  JUMPIFEQKNIL R4 [+9]
  GETTABLEKS R4 R1 K1 ["isUpdatingMappingForKey"]
  GETTABLEKS R5 R0 K2 ["keyName"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETTABLEKS R4 R1 K3 ["isUpdatingMappingForGamepadId"]
  GETTABLEKS R6 R1 K4 ["mappings"]
  GETTABLE R5 R6 R4
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["useMemo"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  NEWTABLE R8 0 2
  MOVE R9 R4
  GETTABLEKS R10 R0 K2 ["keyName"]
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["useCallback"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  NEWTABLE R9 0 2
  GETTABLEKS R10 R0 K7 ["onHover"]
  GETTABLEKS R11 R0 K2 ["keyName"]
  SETLIST R9 R10 2 [1]
  CALL R7 2 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["useCallback"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R0
  NEWTABLE R10 0 1
  GETTABLEKS R11 R0 K7 ["onHover"]
  SETLIST R10 R11 1 [1]
  CALL R8 2 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K9 ["Frame"]
  NEWTABLE R11 2 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K10 ["Tag"]
  LOADK R13 K11 ["Component-MappingsListRow X-RowS CX-Invisible"]
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R0 K12 ["LayoutOrder"]
  SETTABLEKS R12 R11 K12 ["LayoutOrder"]
  DUPTABLE R12 K15 [{"DestKey", "SrcKey"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K16 ["TextButton"]
  NEWTABLE R15 4 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K10 ["Tag"]
  LOADK R17 K17 ["DestKey CX-Invisible"]
  SETTABLE R17 R15 R16
  SETTABLEKS R6 R15 K18 ["Text"]
  GETUPVAL R16 4
  NAMECALL R16 R16 K19 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K20 ["Event"]
  GETTABLEKS R16 R17 K21 ["MouseEnter"]
  SETTABLE R8 R15 R16
  CALL R13 2 1
  SETTABLEKS R13 R12 K13 ["DestKey"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K16 ["TextButton"]
  NEWTABLE R15 8 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K10 ["Tag"]
  LOADK R17 K14 ["SrcKey"]
  SETTABLE R17 R15 R16
  JUMPIFNOT R3 [+2]
  LOADK R16 K22 ["Press key(s)..."]
  JUMP [+5]
  GETUPVAL R16 5
  GETTABLEKS R18 R0 K2 ["keyName"]
  GETTABLE R17 R5 R18
  CALL R16 1 1
  SETTABLEKS R16 R15 K18 ["Text"]
  GETUPVAL R16 4
  NAMECALL R16 R16 K19 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K20 ["Event"]
  GETTABLEKS R16 R17 K23 ["Activated"]
  NEWCLOSURE R17 P3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLE R17 R15 R16
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K20 ["Event"]
  GETTABLEKS R16 R17 K21 ["MouseEnter"]
  SETTABLE R7 R15 R16
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["SrcKey"]
  CALL R9 3 -1
  RETURN R9 -1

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
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["enumToDisplayKeyCode"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K12 ["ContextServices"]
  GETTABLEKS R5 R4 K13 ["Localization"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K10 ["Util"]
  GETTABLEKS R7 R8 K14 ["MappingsContext"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K10 ["Util"]
  GETTABLEKS R8 R9 K15 ["MappingsActionsContext"]
  CALL R7 1 1
  GETTABLEKS R9 R2 K10 ["Util"]
  GETTABLEKS R8 R9 K16 ["LayoutOrderIterator"]
  GETTABLEKS R9 R8 K17 ["new"]
  CALL R9 0 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K10 ["Util"]
  GETTABLEKS R11 R12 K18 ["Constants"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K19 ["GAMEPAD_READABLE_NAME_TO_ID"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K10 ["Util"]
  GETTABLEKS R13 R14 K20 ["KeyNamesConstants"]
  CALL R12 1 1
  DUPCLOSURE R13 K21 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R3
  GETTABLEKS R14 R1 K22 ["memo"]
  MOVE R15 R13
  CALL R14 1 -1
  RETURN R14 -1
