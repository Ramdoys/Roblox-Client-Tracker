PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["requestId"]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["arguments"]
  NAMECALL R0 R0 K2 ["ExecuteCommandAsync"]
  CALL R0 4 -1
  RETURN R0 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["arguments"]
  FASTCALL1 TABLE_UNPACK R2 [+2]
  GETIMPORT R1 K2 [unpack]
  CALL R1 1 3
  JUMPIFNOTEQKS R1 K3 ["DisplayContent"] [+8]
  GETUPVAL R4 0
  MOVE R6 R2
  MOVE R7 R3
  NAMECALL R4 R4 K3 ["DisplayContent"]
  CALL R4 3 0
  RETURN R0 0
  GETIMPORT R4 K5 [pcall]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R3
  CALL R4 1 2
  JUMPIF R4 [+8]
  GETUPVAL R6 2
  GETTABLEKS R8 R0 K6 ["requestId"]
  MOVE R9 R1
  MOVE R10 R5
  NAMECALL R6 R6 K7 ["SendCommandErrorTelemetry"]
  CALL R6 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utils"]
  GETTABLEKS R2 R3 K8 ["CliAdapter"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["GetService"]
  LOADK R3 K10 ["ChatbotUIService"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["GetService"]
  LOADK R4 K11 ["StreamingService"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["GetService"]
  LOADK R5 K12 ["ConversationalAIAcceptanceService"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R6 1
