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
  NEWTABLE R3 8 0
  JUMPIFNOT R2 [+69]
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
  LOADB R7 1
  JUMPIFEQKN R5 K6 [0] [+2]
  MOVE R7 R6
  SETTABLEKS R7 R3 K7 ["importDataError"]
  GETTABLEKS R7 R2 K8 ["ImportName"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["assetName"]
  JUMPIFEQ R7 R8 [+5]
  GETTABLEKS R7 R2 K8 ["ImportName"]
  SETTABLEKS R7 R3 K9 ["assetName"]
  GETTABLEKS R7 R3 K7 ["importDataError"]
  JUMPIF R7 [+5]
  GETUPVAL R8 4
  GETTABLEKS R9 R2 K8 ["ImportName"]
  CALL R8 1 1
  NOT R7 R8
  SETTABLEKS R7 R3 K7 ["importDataError"]
  GETUPVAL R7 5
  CALL R7 0 1
  JUMPIFNOT R7 [+15]
  GETTABLEKS R7 R2 K10 ["PreferredUploadId"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["creatorId"]
  JUMPIFEQ R7 R8 [+9]
  GETTABLEKS R7 R2 K10 ["PreferredUploadId"]
  SETTABLEKS R7 R3 K11 ["creatorId"]
  JUMP [+3]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["validSession"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K13 ["update"]
  GETUPVAL R5 0
  MOVE R6 R3
  CALL R4 2 1
  GETUPVAL R5 7
  CALL R5 0 1
  JUMPIFNOT R5 [+27]
  NAMECALL R8 R0 K14 ["getState"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K15 ["Sessions"]
  GETTABLEKS R6 R7 K16 ["sessionQueue"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K17 ["filepath"]
  GETTABLE R5 R6 R7
  GETUPVAL R8 8
  MOVE R9 R4
  CALL R8 1 -1
  NAMECALL R6 R0 K18 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R6 9
  CALL R6 0 1
  JUMPIF R6 [+7]
  GETUPVAL R8 10
  MOVE R9 R5
  MOVE R10 R4
  CALL R8 2 -1
  NAMECALL R6 R0 K18 ["dispatch"]
  CALL R6 -1 0
  NAMECALL R7 R0 K14 ["getState"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K19 ["Dialogs"]
  GETTABLEKS R5 R6 K20 ["showPreview"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R7 11
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R0 K18 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 7
  CALL R5 0 1
  JUMPIFNOT R5 [+14]
  NAMECALL R7 R0 K14 ["getState"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K19 ["Dialogs"]
  GETTABLEKS R5 R6 K21 ["showUploadWidget"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R7 12
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
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
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
  GETTABLEKS R4 R1 K9 ["SetActiveQueueItem"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R5 R1 K10 ["SetUploadWidgetItem"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R8 R0 K4 ["Src"]
  GETTABLEKS R7 R8 K11 ["DataTypes"]
  GETTABLEKS R6 R7 K12 ["QueuedSession"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R9 R0 K4 ["Src"]
  GETTABLEKS R8 R9 K13 ["Thunks"]
  GETTABLEKS R7 R8 K14 ["DEPRECATED_UpdateSessionCount"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R10 R0 K4 ["Src"]
  GETTABLEKS R9 R10 K15 ["Utility"]
  GETTABLEKS R8 R9 K16 ["GetErrorChecked"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R11 R0 K4 ["Src"]
  GETTABLEKS R10 R11 K15 ["Utility"]
  GETTABLEKS R9 R10 K17 ["GetCheckedCount"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R13 R0 K4 ["Src"]
  GETTABLEKS R12 R13 K15 ["Utility"]
  GETTABLEKS R11 R12 K18 ["Status"]
  GETTABLEKS R10 R11 K19 ["countStatusLevelsForTree"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R13 R0 K4 ["Src"]
  GETTABLEKS R12 R13 K15 ["Utility"]
  GETTABLEKS R11 R12 K20 ["isAssetNameValid"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R14 R0 K4 ["Src"]
  GETTABLEKS R13 R14 K21 ["Flags"]
  GETTABLEKS R12 R13 K22 ["getFFlagAssetImportQueuedSessionRefactor"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R15 R0 K4 ["Src"]
  GETTABLEKS R14 R15 K21 ["Flags"]
  GETTABLEKS R13 R14 K23 ["getFFlagImportQueueFixGroupFetch"]
  CALL R12 1 1
  GETIMPORT R13 K7 [require]
  GETTABLEKS R16 R0 K4 ["Src"]
  GETTABLEKS R15 R16 K21 ["Flags"]
  GETTABLEKS R14 R15 K24 ["getFFlagImportQueueFixFileMiscount"]
  CALL R13 1 1
  DUPCLOSURE R14 K25 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R14 1
