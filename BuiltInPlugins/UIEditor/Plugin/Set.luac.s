PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONEncode"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  MOVE R1 R0
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+8]
  MOVE R2 R1
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K3 ["JSONEncode"]
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["map"]
  GETTABLE R2 R3 R1
  JUMPIF R2 [+13]
  GETUPVAL R3 1
  FASTCALL2 TABLE_INSERT R3 R0 [+4]
  MOVE R4 R0
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["map"]
  GETUPVAL R4 1
  LENGTH R3 R4
  SETTABLE R3 R2 R1
  RETURN R0 0

PROTO_2:
  MOVE R1 R0
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+8]
  MOVE R2 R1
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K3 ["JSONEncode"]
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["map"]
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+35]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["map"]
  GETTABLE R2 R3 R1
  GETIMPORT R3 K6 [table.remove]
  GETUPVAL R4 2
  MOVE R5 R2
  CALL R3 2 0
  MOVE R5 R2
  GETUPVAL R6 1
  LENGTH R3 R6
  LOADN R4 1
  FORNPREP R3
  GETUPVAL R6 1
  GETTABLE R1 R6 R5
  FASTCALL1 TYPE R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K1 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K2 ["table"] [+8]
  MOVE R6 R1
  GETUPVAL R7 0
  MOVE R9 R6
  NAMECALL R7 R7 K3 ["JSONEncode"]
  CALL R7 2 1
  MOVE R1 R7
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["map"]
  SETTABLE R5 R6 R1
  FORNLOOP R3
  RETURN R0 0

PROTO_3:
  MOVE R1 R0
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+8]
  MOVE R2 R1
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K3 ["JSONEncode"]
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["map"]
  GETTABLE R3 R4 R1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  LENGTH R0 R1
  LOADN R1 0
  JUMPIFNOTLT R1 R0 [+28]
  GETUPVAL R1 0
  GETTABLEN R0 R1 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["table"] [+8]
  MOVE R1 R0
  GETUPVAL R2 1
  MOVE R4 R1
  NAMECALL R2 R2 K3 ["JSONEncode"]
  CALL R2 2 1
  MOVE R0 R2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["map"]
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETIMPORT R1 K6 [table.remove]
  GETUPVAL R2 0
  LOADN R3 1
  CALL R1 2 0
  JUMPBACK [-32]
  RETURN R0 0

PROTO_5:
  JUMPIFNOTEQKS R1 K0 ["insert"] [+5]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  RETURN R2 1
  JUMPIFNOTEQKS R1 K1 ["remove"] [+6]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  RETURN R2 1
  JUMPIFNOTEQKS R1 K2 ["exists"] [+5]
  NEWCLOSURE R2 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  RETURN R2 1
  JUMPIFNOTEQKS R1 K3 ["clear"] [+5]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  RETURN R2 1
  RETURN R0 0

PROTO_6:
  NEWTABLE R0 2 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["map"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["mt"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  GETTABLEKS R2 R0 K1 ["mt"]
  SETTABLEKS R1 R2 K2 ["__index"]
  GETTABLEKS R3 R0 K1 ["mt"]
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  NEWTABLE R2 1 0
  DUPCLOSURE R3 K5 [PROTO_6]
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K6 ["new"]
  RETURN R2 1
