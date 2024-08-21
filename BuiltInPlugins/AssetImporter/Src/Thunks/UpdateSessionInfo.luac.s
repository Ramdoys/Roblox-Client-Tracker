PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["session"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["session"]
  NAMECALL R2 R1 K1 ["GetImportTree"]
  CALL R2 1 1
  NEWTABLE R3 4 0
  JUMPIFNOT R2 [+34]
  GETUPVAL R4 1
  MOVE R5 R2
  CALL R4 1 1
  GETTABLE R7 R4 R2
  GETTABLEKS R6 R7 K2 ["errors"]
  GETTABLE R8 R4 R2
  GETTABLEKS R7 R8 K3 ["descErrors"]
  ADD R5 R6 R7
  SETTABLEKS R5 R3 K2 ["errors"]
  GETTABLE R7 R4 R2
  GETTABLEKS R6 R7 K4 ["warnings"]
  GETTABLE R8 R4 R2
  GETTABLEKS R7 R8 K5 ["descWarnings"]
  ADD R5 R6 R7
  SETTABLEKS R5 R3 K4 ["warnings"]
  GETUPVAL R5 2
  MOVE R6 R2
  CALL R5 1 1
  GETUPVAL R6 3
  MOVE R7 R2
  CALL R6 1 1
  LOADB R7 0
  JUMPIFEQKN R5 K6 [0] [+2]
  NOT R7 R6
  SETTABLEKS R7 R3 K7 ["isValid"]
  JUMP [+3]
  LOADB R4 0
  SETTABLEKS R4 R3 K7 ["isValid"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K8 ["update"]
  GETUPVAL R5 0
  MOVE R6 R3
  CALL R4 2 1
  GETUPVAL R5 5
  CALL R5 0 1
  JUMPIFNOT R5 [+71]
  NAMECALL R8 R0 K9 ["getState"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K10 ["Sessions"]
  GETTABLEKS R6 R7 K11 ["sessionQueue"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["filepath"]
  GETTABLE R5 R6 R7
  MOVE R6 R5
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R5 K13 ["validSession"]
  JUMPIFNOT R6 [+6]
  GETTABLEKS R6 R5 K14 ["enabled"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R7 R5 K15 ["uploaded"]
  NOT R6 R7
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["validSession"]
  JUMPIFNOT R7 [+11]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K14 ["enabled"]
  JUMPIFNOT R7 [+7]
  LOADB R7 0
  JUMPIFEQKNIL R2 [+5]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K15 ["uploaded"]
  NOT R7 R8
  NAMECALL R11 R0 K9 ["getState"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K10 ["Sessions"]
  GETTABLEKS R9 R10 K16 ["activeSessionCount"]
  ORK R8 R9 K6 [0]
  JUMPIFNOT R6 [+11]
  JUMPIF R7 [+10]
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+8]
  GETUPVAL R11 6
  SUBK R12 R8 K17 [1]
  CALL R11 1 -1
  NAMECALL R9 R0 K18 ["dispatch"]
  CALL R9 -1 0
  JUMP [+8]
  JUMPIF R6 [+7]
  JUMPIFNOT R7 [+6]
  GETUPVAL R11 6
  ADDK R12 R8 K17 [1]
  CALL R11 1 -1
  NAMECALL R9 R0 K18 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R11 7
  MOVE R12 R4
  CALL R11 1 -1
  NAMECALL R9 R0 K18 ["dispatch"]
  CALL R9 -1 0
  NAMECALL R7 R0 K9 ["getState"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K19 ["Dialogs"]
  GETTABLEKS R5 R6 K20 ["showPreview"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R7 8
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R0 K18 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Actions"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["UpdateQueueItem"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K9 ["SetActiveSessionCount"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R5 R1 K10 ["SetActiveQueueItem"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R8 R0 K4 ["Src"]
  GETTABLEKS R7 R8 K11 ["DataTypes"]
  GETTABLEKS R6 R7 K12 ["QueuedSession"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R9 R0 K4 ["Src"]
  GETTABLEKS R8 R9 K13 ["Utility"]
  GETTABLEKS R7 R8 K14 ["GetErrorChecked"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R10 R0 K4 ["Src"]
  GETTABLEKS R9 R10 K13 ["Utility"]
  GETTABLEKS R8 R9 K15 ["GetCheckedCount"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R12 R0 K4 ["Src"]
  GETTABLEKS R11 R12 K13 ["Utility"]
  GETTABLEKS R10 R11 K16 ["Status"]
  GETTABLEKS R9 R10 K17 ["countStatusLevelsForTree"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R12 R0 K4 ["Src"]
  GETTABLEKS R11 R12 K18 ["Flags"]
  GETTABLEKS R10 R11 K19 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R9 1 1
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R10 1
