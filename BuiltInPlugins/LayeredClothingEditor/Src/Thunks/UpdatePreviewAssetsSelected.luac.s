PROTO_0:
  JUMPIFNOT R1 [+20]
  JUMPIFNOT R2 [+13]
  MOVE R4 R3
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  MOVE R3 R4
  FASTCALL2 TABLE_INSERT R3 R0 [+5]
  MOVE R5 R3
  MOVE R6 R0
  GETIMPORT R4 K2 [table.insert]
  CALL R4 2 0
  RETURN R3 1
  NEWTABLE R4 0 1
  MOVE R5 R0
  SETLIST R4 R5 1 [1]
  RETURN R4 1
  JUMPIFNOT R3 [+9]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["List"]
  GETTABLEKS R4 R5 K4 ["removeValue"]
  MOVE R5 R3
  MOVE R6 R0
  CALL R4 2 -1
  RETURN R4 -1
  LOADNIL R4
  RETURN R4 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["TABS_KEYS"]
  GETTABLEKS R2 R3 K1 ["Avatars"]
  GETTABLE R1 R0 R2
  JUMPIF R1 [+2]
  LOADB R2 0
  RETURN R2 1
  GETIMPORT R2 K3 [next]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_2:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["previewStatus"]
  GETTABLEKS R2 R3 K2 ["selectedTab"]
  GETUPVAL R3 0
  GETTABLEKS R5 R1 K1 ["previewStatus"]
  GETTABLEKS R4 R5 K3 ["selectedAssets"]
  CALL R3 1 1
  GETUPVAL R4 1
  JUMPIFNOT R4 [+41]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["isTabMultiSelect"]
  MOVE R5 R2
  CALL R4 1 1
  GETUPVAL R5 3
  GETUPVAL R6 1
  GETUPVAL R7 4
  MOVE R8 R4
  GETTABLE R9 R3 R2
  CALL R5 4 1
  SETTABLE R5 R3 R2
  GETUPVAL R5 4
  JUMPIFNOT R5 [+27]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K5 ["TABS_KEYS"]
  GETTABLEKS R5 R6 K6 ["Avatars"]
  JUMPIFNOTEQ R2 R5 [+8]
  GETUPVAL R5 6
  GETTABLEKS R6 R5 K7 ["TotalAvatars"]
  ADDK R6 R6 K8 [1]
  SETTABLEKS R6 R5 K7 ["TotalAvatars"]
  JUMP [+13]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K5 ["TABS_KEYS"]
  GETTABLEKS R5 R6 K9 ["Clothing"]
  JUMPIFNOTEQ R2 R5 [+7]
  GETUPVAL R5 6
  GETTABLEKS R6 R5 K10 ["TotalLayers"]
  ADDK R6 R6 K8 [1]
  SETTABLEKS R6 R5 K10 ["TotalLayers"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K5 ["TABS_KEYS"]
  GETTABLEKS R6 R7 K6 ["Avatars"]
  GETTABLE R5 R3 R6
  JUMPIF R5 [+2]
  LOADB R4 0
  JUMP [+8]
  GETIMPORT R6 K12 [next]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFNOT R6 [+2]
  LOADB R4 1
  JUMP [+1]
  LOADB R4 0
  JUMPIF R4 [+26]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K5 ["TABS_KEYS"]
  GETTABLEKS R4 R5 K6 ["Avatars"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K13 ["getTabInfo"]
  MOVE R6 R4
  CALL R5 1 1
  GETTABLE R6 R3 R4
  JUMPIF R6 [+3]
  NEWTABLE R6 0 0
  SETTABLE R6 R3 R4
  GETIMPORT R6 K12 [next]
  GETTABLEKS R7 R5 K14 ["BundleIds"]
  CALL R6 1 2
  NEWTABLE R8 0 1
  MOVE R9 R7
  SETLIST R8 R9 1 [1]
  SETTABLE R8 R3 R4
  GETUPVAL R6 7
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R0 K15 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["AvatarToolsShared"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R5 R4 K11 ["PreviewConstants"]
  GETTABLEKS R6 R4 K12 ["PreviewConstantsInterface"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Actions"]
  GETTABLEKS R8 R9 K15 ["SetPreviewAssetsSelected"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K9 ["Util"]
  GETTABLEKS R9 R10 K16 ["AnalyticsGlobals"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K9 ["Util"]
  GETTABLEKS R10 R9 K17 ["deepCopy"]
  DUPCLOSURE R11 K18 [PROTO_0]
  CAPTURE VAL R1
  DUPCLOSURE R12 K19 [PROTO_1]
  CAPTURE VAL R5
  DUPCLOSURE R13 K20 [PROTO_3]
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R7
  RETURN R13 1
