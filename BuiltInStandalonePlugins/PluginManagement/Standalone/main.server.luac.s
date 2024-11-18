PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["store"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["api"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["analytics"]
  MOVE R7 R0
  CALL R3 4 -1
  NAMECALL R1 R1 K3 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [ipairs]
  GETUPVAL R1 0
  CALL R0 1 3
  FORGPREP_INEXT R0
  NAMECALL R5 R4 K2 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [inext] [-4]
  GETUPVAL R0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K3 ["unmount"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["[FLog::PluginManagementFetching] Got InstalledPluginData changed, refreshing..."]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["store"]
  GETUPVAL R2 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["api"]
  GETUPVAL R4 3
  CALL R2 2 -1
  NAMECALL R0 R0 K5 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [plugin]
  LOADK R1 K2 ["PluginInstallation"]
  SETTABLEKS R1 R0 K3 ["Name"]
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["OnPluginInstalledFromWeb"]
  GETUPVAL R4 2
  NAMECALL R2 R2 K5 ["Connect"]
  CALL R2 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R0 K8 [table.insert]
  CALL R0 -1 0
  LOADNIL R0
  GETIMPORT R2 K1 [plugin]
  GETTABLEKS R1 R2 K9 ["Unloading"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE REF R0
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K10 ["connect"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETUPVAL R3 1
  LOADK R5 K11 ["InstalledPluginData"]
  NAMECALL R3 R3 K12 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  DUPCLOSURE R5 K13 [PROTO_2]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K8 [table.insert]
  CALL R1 -1 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K14 ["createElement"]
  GETUPVAL R2 8
  DUPTABLE R3 K18 [{"plugin", "store", "api", "analytics"}]
  GETIMPORT R4 K1 [plugin]
  SETTABLEKS R4 R3 K0 ["plugin"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K15 ["store"]
  SETTABLEKS R4 R3 K15 ["store"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K16 ["api"]
  SETTABLEKS R4 R3 K16 ["api"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K17 ["analytics"]
  SETTABLEKS R4 R3 K17 ["analytics"]
  CALL R1 2 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K19 ["mount"]
  MOVE R3 R1
  CALL R2 1 1
  MOVE R0 R2
  CLOSEUPVALS R0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["MarketplaceService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Bin"]
  GETTABLEKS R4 R5 K11 ["defineLuaFlags"]
  CALL R3 1 0
  GETIMPORT R3 K1 [game]
  LOADK R5 K12 ["DebugStudioAddPluginManagementDebugLogs"]
  NAMECALL R3 R3 K13 ["GetFastFlag"]
  CALL R3 2 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K14 ["Packages"]
  GETTABLEKS R5 R6 K15 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R2 K16 ["Src"]
  GETTABLEKS R7 R8 K17 ["Util"]
  GETTABLEKS R6 R7 K18 ["getPluginGlobals"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R2 K16 ["Src"]
  GETTABLEKS R8 R9 K17 ["Util"]
  GETTABLEKS R7 R8 K19 ["showDialog"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R2 K16 ["Src"]
  GETTABLEKS R9 R10 K20 ["Thunks"]
  GETTABLEKS R8 R9 K21 ["InstallPluginFromWeb"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R2 K16 ["Src"]
  GETTABLEKS R10 R11 K20 ["Thunks"]
  GETTABLEKS R9 R10 K22 ["RefreshPlugins"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R2 K16 ["Src"]
  GETTABLEKS R11 R12 K23 ["Components"]
  GETTABLEKS R10 R11 K24 ["ManagementApp"]
  CALL R9 1 1
  MOVE R10 R5
  GETIMPORT R11 K26 [plugin]
  CALL R10 1 1
  NEWTABLE R11 0 0
  DUPCLOSURE R12 K27 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R6
  DUPCLOSURE R13 K28 [PROTO_3]
  CAPTURE VAL R11
  CAPTURE VAL R0
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R9
  MOVE R14 R13
  CALL R14 0 0
  RETURN R0 0
