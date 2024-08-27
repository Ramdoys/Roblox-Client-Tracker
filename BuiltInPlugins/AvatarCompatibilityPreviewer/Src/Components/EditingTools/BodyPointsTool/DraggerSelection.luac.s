PROTO_0:
  DUPTABLE R2 K4 [{"SelectionChanged", "draggerContext", "_selection", "_setSelectedPointNames"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K0 ["SelectionChanged"]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["draggerContext"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["_selection"]
  SETTABLEKS R0 R2 K3 ["_setSelectedPointNames"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K7 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["_selection"]
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K1 [0] [+9]
  NEWTABLE R1 0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["PHONY_NO_SELECTION"]
  SETLIST R1 R2 1 [1]
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["_selection"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["name"]
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["find"]
  GETTABLEKS R3 R0 K1 ["points"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K2 [+4]
  LOADK R5 K2 ["Could not find point by name"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  RETURN R2 1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["draggerContext"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R3 R0 K0 ["draggerContext"]
  GETTABLEKS R2 R3 K1 ["points"]
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  LOADB R4 0
  GETTABLEKS R5 R0 K0 ["draggerContext"]
  JUMPIFEQKNIL R5 [+5]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  LENGTH R3 R1
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+72]
  GETTABLEKS R5 R0 K0 ["draggerContext"]
  LENGTH R7 R1
  GETTABLE R6 R1 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["find"]
  GETTABLEKS R8 R5 K1 ["points"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R6
  CALL R7 2 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  FASTCALL2K ASSERT R9 K6 [+4]
  LOADK R10 K6 ["Could not find point by name"]
  GETIMPORT R8 K4 [assert]
  CALL R8 2 0
  MOVE R4 R7
  GETTABLEKS R3 R4 K7 ["limb"]
  NEWTABLE R4 0 1
  LENGTH R6 R1
  GETTABLE R5 R1 R6
  SETLIST R4 R5 1 [1]
  LENGTH R8 R1
  SUBK R7 R8 K8 [1]
  LOADN R5 1
  LOADN R6 255
  FORNPREP R5
  GETTABLEKS R9 R0 K0 ["draggerContext"]
  GETTABLE R10 R1 R7
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["find"]
  GETTABLEKS R12 R9 K1 ["points"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R10
  CALL R11 2 1
  JUMPIFNOTEQKNIL R11 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  FASTCALL2K ASSERT R13 K6 [+4]
  LOADK R14 K6 ["Could not find point by name"]
  GETIMPORT R12 K4 [assert]
  CALL R12 2 0
  MOVE R8 R11
  GETTABLEKS R9 R8 K7 ["limb"]
  JUMPIFNOTEQ R9 R3 [+8]
  MOVE R10 R4
  LOADN R11 1
  GETTABLE R12 R1 R7
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R9 K11 [table.insert]
  CALL R9 3 0
  FORNLOOP R5
  MOVE R1 R4
  MOVE R5 R1
  NAMECALL R3 R0 K12 ["_fireOnSelect"]
  CALL R3 2 0
  SETTABLEKS R1 R0 K13 ["_selection"]
  GETTABLEKS R3 R0 K14 ["_setSelectedPointNames"]
  MOVE R4 R1
  CALL R3 1 0
  GETTABLEKS R3 R0 K15 ["SelectionChanged"]
  NAMECALL R3 R3 K16 ["Fire"]
  CALL R3 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R4 R0 K0 ["draggerContext"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["_fireOnSelect called without dragger context"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R2 0
  MOVE R3 R1
  GETTABLEKS R4 R0 K4 ["_selection"]
  CALL R2 2 2
  LOADN R4 0
  GETTABLEKS R8 R0 K0 ["draggerContext"]
  GETTABLEKS R5 R8 K5 ["points"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETIMPORT R10 K8 [table.find]
  MOVE R11 R2
  GETTABLEKS R12 R9 K9 ["name"]
  CALL R10 2 1
  JUMPIFEQKNIL R10 [+9]
  GETTABLEKS R10 R9 K10 ["onSelect"]
  JUMPIFEQKNIL R10 [+22]
  GETTABLEKS R10 R9 K10 ["onSelect"]
  CALL R10 0 0
  JUMP [+17]
  GETIMPORT R10 K8 [table.find]
  MOVE R11 R3
  GETTABLEKS R12 R9 K9 ["name"]
  CALL R10 2 1
  JUMPIFEQKNIL R10 [+16]
  GETTABLEKS R10 R9 K11 ["onUnselect"]
  JUMPIFEQKNIL R10 [+6]
  GETTABLEKS R10 R9 K11 ["onUnselect"]
  CALL R10 0 0
  JUMP [+1]
  JUMP [+6]
  ADDK R4 R4 K12 [1]
  LENGTH R11 R2
  LENGTH R12 R3
  ADD R10 R11 R12
  JUMPIFEQ R4 R10 [+3]
  FORGLOOP R5 2 [-40]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["DraggerFramework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Utility"]
  GETTABLEKS R3 R4 K10 ["Signal"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["EditingTools"]
  GETTABLEKS R6 R7 K14 ["BodyPointsTool"]
  GETTABLEKS R5 R6 K15 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K16 ["Util"]
  GETTABLEKS R6 R7 K17 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K16 ["Util"]
  GETTABLEKS R7 R8 K18 ["diffArray"]
  CALL R6 1 1
  NEWTABLE R7 8 0
  SETTABLEKS R7 R7 K19 ["__index"]
  DUPCLOSURE R8 K20 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K21 ["new"]
  DUPCLOSURE R8 K22 [PROTO_1]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K23 ["Get"]
  DUPCLOSURE R8 K24 [PROTO_3]
  CAPTURE VAL R1
  DUPCLOSURE R9 K25 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R9 R7 K26 ["Set"]
  DUPCLOSURE R9 K27 [PROTO_5]
  CAPTURE VAL R6
  SETTABLEKS R9 R7 K28 ["_fireOnSelect"]
  RETURN R7 1
