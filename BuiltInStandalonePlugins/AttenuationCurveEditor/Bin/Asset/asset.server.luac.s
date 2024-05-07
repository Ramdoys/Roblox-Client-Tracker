PROTO_0:
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  LOADK R8 K0 ["AudioEmitter"]
  NAMECALL R6 R5 K1 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+2]
  LOADNIL R6
  SETTABLE R6 R0 R4
  FORGLOOP R1 2 [-8]
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K2 [0] [+2]
  RETURN R0 0
  SETUPVAL R0 0
  GETTABLEN R1 R0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["getDistanceAttenuation"]
  MOVE R3 R1
  CALL R2 1 1
  LOADK R4 K4 ["%* \"%*\""]
  GETTABLEKS R6 R1 K5 ["ClassName"]
  GETTABLEKS R7 R1 K6 ["Name"]
  NAMECALL R4 R4 K7 ["format"]
  CALL R4 3 1
  MOVE R3 R4
  LENGTH R4 R0
  LOADN R5 1
  JUMPIFNOTLT R5 R4 [+9]
  LOADK R4 K8 ["%* (%* items)"]
  GETTABLEKS R6 R1 K5 ["ClassName"]
  LENGTH R7 R0
  NAMECALL R4 R4 K7 ["format"]
  CALL R4 3 1
  MOVE R3 R4
  GETIMPORT R4 K10 [plugin]
  LOADK R6 K11 ["OnOpen"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K12 ["stringifyCurveTable"]
  MOVE R8 R2
  CALL R7 1 1
  GETUPVAL R8 3
  MOVE R9 R3
  NAMECALL R4 R4 K13 ["Invoke"]
  CALL R4 5 0
  GETUPVAL R4 3
  ADDK R4 R4 K14 [1]
  SETUPVAL R4 3
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["destringifyCurveTable"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  JUMPIFNOT R6 [+11]
  LOADK R9 K1 ["AudioEmitter"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+6]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["setDistanceAttenuation"]
  MOVE R8 R6
  MOVE R9 R1
  CALL R7 2 0
  FORGLOOP R2 2 [-13]
  RETURN R0 0

PROTO_2:
  NEWTABLE R0 0 0
  SETUPVAL R0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [script]
  LOADK R2 K4 ["AttenuationCurveEditor"]
  NAMECALL R0 R0 K5 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K6 ["Bin"]
  GETTABLEKS R1 R2 K7 ["Common"]
  GETIMPORT R2 K9 [require]
  GETTABLEKS R3 R1 K10 ["defineLuaFlags"]
  CALL R2 1 0
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K11 ["Packages"]
  GETTABLEKS R3 R4 K12 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K13 ["launch"]
  LOADK R4 K4 ["AttenuationCurveEditor"]
  GETTABLEKS R5 R0 K14 ["Src"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K15 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K17 [game]
  LOADK R5 K18 ["EnableDistanceAttenuationCurveEditorLua"]
  NAMECALL R3 R3 K19 ["GetFastFlag"]
  CALL R3 2 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R0 K6 ["Bin"]
  GETTABLEKS R5 R6 K7 ["Common"]
  GETTABLEKS R4 R5 K20 ["pluginType"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K14 ["Src"]
  GETTABLEKS R5 R6 K21 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K14 ["Src"]
  GETTABLEKS R7 R8 K22 ["Util"]
  GETTABLEKS R6 R7 K23 ["DistanceAttenuationUtil"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K14 ["Src"]
  GETTABLEKS R8 R9 K22 ["Util"]
  GETTABLEKS R7 R8 K24 ["SerializationUtil"]
  CALL R6 1 1
  NEWTABLE R7 0 0
  LOADN R8 0
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE REF R8
  GETIMPORT R10 K1 [plugin]
  LOADK R12 K25 ["OnEdit"]
  NEWCLOSURE R13 P1
  CAPTURE VAL R6
  CAPTURE REF R7
  CAPTURE VAL R5
  NAMECALL R10 R10 K26 ["OnInvoke"]
  CALL R10 3 0
  GETIMPORT R10 K1 [plugin]
  LOADK R12 K27 ["OnStopEditing"]
  NEWCLOSURE R13 P2
  CAPTURE REF R7
  NAMECALL R10 R10 K26 ["OnInvoke"]
  CALL R10 3 0
  GETIMPORT R10 K17 [game]
  LOADK R12 K28 ["GuiService"]
  NAMECALL R10 R10 K29 ["GetService"]
  CALL R10 2 1
  GETTABLEKS R11 R10 K30 ["OpenAttenuationCurveEditor"]
  MOVE R13 R9
  NAMECALL R11 R11 K31 ["Connect"]
  CALL R11 2 1
  GETTABLEKS R12 R3 K32 ["get"]
  CALL R12 0 1
  GETTABLEKS R13 R3 K33 ["asset"]
  JUMPIFEQ R12 R13 [+3]
  CLOSEUPVALS R7
  RETURN R0 0
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R0 K6 ["Bin"]
  GETTABLEKS R14 R15 K7 ["Common"]
  GETTABLEKS R13 R14 K34 ["setup"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R0 K6 ["Bin"]
  GETTABLEKS R15 R16 K7 ["Common"]
  GETTABLEKS R14 R15 K35 ["setupMain"]
  CALL R13 1 1
  MOVE R14 R12
  GETIMPORT R15 K1 [plugin]
  MOVE R16 R13
  CALL R14 2 0
  CLOSEUPVALS R7
  RETURN R0 0
