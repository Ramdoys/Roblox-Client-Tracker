PROTO_0:
  GETUPVAL R2 0
  LOADK R5 K0 ["StyleCategory"]
  NAMECALL R3 R0 K1 ["GetAttribute"]
  CALL R3 2 1
  LOADK R4 K2 ["Tokens"]
  CALL R2 2 1
  NOT R1 R2
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 ["StyleCategory"]
  NAMECALL R0 R0 K1 ["GetAttribute"]
  CALL R0 2 1
  JUMPIF R0 [+3]
  GETIMPORT R1 K5 [Enum.FinishRecordingOperation.Cancel]
  RETURN R1 1
  JUMPIFNOTEQKS R0 K6 ["Themes"] [+21]
  GETUPVAL R1 1
  GETUPVAL R2 0
  NAMECALL R2 R2 K7 ["GetDerives"]
  CALL R2 1 1
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE UPVAL U2
  CALL R1 2 1
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K9 ["SetDerives"]
  CALL R2 2 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["removeDerive"]
  GETUPVAL R3 4
  GETUPVAL R4 0
  CALL R2 2 0
  JUMP [+30]
  JUMPIFNOTEQKS R0 K11 ["Tokens"] [+29]
  GETUPVAL R1 5
  NAMECALL R1 R1 K12 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K13 ["StyleSheet"]
  NAMECALL R6 R5 K14 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+16]
  LOADK R8 K0 ["StyleCategory"]
  NAMECALL R6 R5 K1 ["GetAttribute"]
  CALL R6 2 1
  JUMPIFNOT R6 [+11]
  GETUPVAL R7 2
  MOVE R8 R6
  LOADK R9 K6 ["Themes"]
  CALL R7 2 1
  JUMPIFNOT R7 [+6]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["removeDerive"]
  MOVE R8 R5
  GETUPVAL R9 0
  CALL R7 2 0
  FORGLOOP R1 2 [-22]
  GETUPVAL R1 0
  LOADK R3 K0 ["StyleCategory"]
  LOADNIL R4
  NAMECALL R1 R1 K15 ["SetAttribute"]
  CALL R1 3 0
  GETIMPORT R1 K17 [Enum.FinishRecordingOperation.Commit]
  RETURN R1 1

PROTO_2:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Window"]
  GETTABLEKS R3 R4 K2 ["DesignSheet"]
  JUMPIF R3 [+1]
  RETURN R0 0
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K3 [+4]
  LOADK R6 K3 ["expecting valid design sheet"]
  GETIMPORT R4 K5 [assert]
  CALL R4 2 0
  GETTABLEKS R4 R1 K6 ["recordChange"]
  DUPTABLE R5 K10 [{"Name", "DisplayName", "DoChange"}]
  LOADK R6 K11 ["StyleEditor/ClearStyleSheetCategory"]
  SETTABLEKS R6 R5 K7 ["Name"]
  LOADK R6 K12 ["StyleEditor - Clear StyleSheet Category"]
  SETTABLEKS R6 R5 K8 ["DisplayName"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  CAPTURE UPVAL U4
  SETTABLEKS R6 R5 K9 ["DoChange"]
  CALL R4 1 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ReplicatedStorage"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["startsWith"]
  GETTABLEKS R4 R2 K12 ["filter"]
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R1 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Util"]
  GETTABLEKS R6 R7 K15 ["DesignHelpers"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R1 K13 ["Src"]
  GETTABLEKS R8 R9 K16 ["Reducers"]
  GETTABLEKS R7 R8 K17 ["RootReducer"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R1 K13 ["Src"]
  GETTABLEKS R9 R10 K18 ["Thunks"]
  GETTABLEKS R8 R9 K19 ["Types"]
  CALL R7 1 1
  DUPCLOSURE R8 K20 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R0
  RETURN R8 1
