PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R1 R2 [+3]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K3 ["current"]
  NEWTABLE R1 0 0
  GETUPVAL R5 3
  GETTABLEKS R2 R5 K4 ["equippedItems"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R8 R6 K5 ["item"]
  GETTABLEKS R7 R8 K6 ["source"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["SOURCE_INSTANCE"]
  JUMPIFNOTEQ R7 R8 [+79]
  GETTABLEKS R10 R6 K5 ["item"]
  GETTABLEKS R9 R10 K6 ["source"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["SOURCE_INSTANCE"]
  JUMPIFEQ R9 R10 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R8 R9 [+3]
  GETIMPORT R7 K2 [assert]
  CALL R7 2 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["current"]
  GETTABLE R7 R8 R6
  JUMPIFEQKNIL R7 [+23]
  GETUPVAL R7 4
  CALL R7 0 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R7 R6 K8 ["isHidden"]
  JUMPIF R7 [+47]
  GETTABLE R7 R0 R6
  SETTABLE R7 R1 R6
  GETTABLEKS R8 R6 K9 ["palette"]
  GETTABLEKS R7 R8 K10 ["UpdateInstances"]
  JUMPIFEQKNIL R7 [+40]
  GETTABLEKS R8 R6 K9 ["palette"]
  GETTABLEKS R7 R8 K10 ["UpdateInstances"]
  GETTABLE R8 R0 R6
  MOVE R9 R5
  CALL R7 2 0
  JUMP [+31]
  GETUPVAL R7 4
  CALL R7 0 1
  JUMPIFNOT R7 [+16]
  GETTABLEKS R7 R6 K8 ["isHidden"]
  JUMPIF R7 [+25]
  GETTABLEKS R8 R6 K9 ["palette"]
  GETTABLEKS R7 R8 K11 ["WearInstance"]
  GETTABLEKS R9 R6 K5 ["item"]
  GETTABLEKS R8 R9 K12 ["instance"]
  GETUPVAL R9 0
  MOVE R10 R5
  CALL R7 3 1
  SETTABLE R7 R1 R6
  JUMP [+12]
  GETTABLEKS R8 R6 K9 ["palette"]
  GETTABLEKS R7 R8 K11 ["WearInstance"]
  GETTABLEKS R9 R6 K5 ["item"]
  GETTABLEKS R8 R9 K12 ["instance"]
  GETUPVAL R9 0
  MOVE R10 R5
  CALL R7 3 1
  SETTABLE R7 R1 R6
  FORGLOOP R2 2 [-88]
  GETUPVAL R5 5
  GETTABLEKS R2 R5 K3 ["current"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLE R7 R1 R6
  JUMPIFNOTEQKNIL R7 [+21]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["current"]
  GETTABLE R7 R8 R6
  JUMPIFEQKNIL R7 [+15]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K3 ["current"]
  GETTABLE R7 R10 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  JUMPIFEQKNIL R11 [+4]
  NAMECALL R12 R11 K13 ["Destroy"]
  CALL R12 1 0
  FORGLOOP R7 2 [-6]
  FORGLOOP R2 2 [-24]
  GETUPVAL R2 5
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["equippedItems"]
  SETTABLEKS R3 R2 K3 ["current"]
  GETUPVAL R2 2
  SETTABLEKS R1 R2 K3 ["current"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R0 R3 K0 ["current"]
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  NAMECALL R10 R9 K1 ["Destroy"]
  CALL R10 1 0
  FORGLOOP R5 2 [-4]
  FORGLOOP R0 2 [-10]
  GETIMPORT R0 K4 [table.clear]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useRef"]
  NEWTABLE R3 0 0
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["useRef"]
  NEWTABLE R4 0 0
  CALL R3 1 1
  GETTABLEKS R6 R2 K2 ["current"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K5 [assert]
  CALL R4 2 0
  GETTABLEKS R6 R3 K2 ["current"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K5 [assert]
  CALL R4 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["useEffect"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  NEWTABLE R6 0 2
  MOVE R7 R0
  GETTABLEKS R8 R1 K7 ["equippedItems"]
  SETLIST R6 R7 2 [1]
  CALL R4 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["useEffect"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R2
  NEWTABLE R6 0 1
  MOVE R7 R0
  SETLIST R6 R7 1 [1]
  CALL R4 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagAvatarPreviewerEquippedHoverMenu"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K14 ["EquipmentStateContext"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R6 1
