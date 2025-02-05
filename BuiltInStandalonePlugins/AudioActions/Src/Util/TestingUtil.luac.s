PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["register"]
  GETIMPORT R1 K2 [plugin]
  CALL R0 1 0
  GETUPVAL R0 1
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["deregister"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["resolve"]
  CALL R0 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K1 ["andThen"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

PROTO_3:
  LOADB R0 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_4:
  LOADB R1 0
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["BindToActivatedAsync"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE REF R1
  NAMECALL R2 R2 K1 ["Once"]
  CALL R2 2 0
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K2 ["ActivateAsync"]
  CALL R2 2 0
  JUMPIF R1 [+4]
  GETIMPORT R2 K5 [task.wait]
  CALL R2 0 0
  JUMPBACK [-5]
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_5:
  LOADB R0 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_6:
  LOADB R1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["SelectionChanged"]
  NEWCLOSURE R4 P0
  CAPTURE REF R1
  NAMECALL R2 R2 K1 ["Once"]
  CALL R2 2 0
  GETUPVAL R2 1
  MOVE R4 R0
  NAMECALL R2 R2 K2 ["ActivateAsync"]
  CALL R2 2 0
  JUMPIF R1 [+4]
  GETIMPORT R2 K5 [task.wait]
  CALL R2 0 0
  JUMPBACK [-5]
  CLOSEUPVALS R1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioActions"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["Promise"]
  GETIMPORT R3 K11 [plugin]
  LOADK R5 K12 ["Actions"]
  NAMECALL R3 R3 K13 ["GetPluginComponent"]
  CALL R3 2 1
  GETIMPORT R4 K15 [game]
  LOADK R6 K16 ["Selection"]
  NAMECALL R4 R4 K17 ["GetService"]
  CALL R4 2 1
  NEWTABLE R5 4 0
  DUPCLOSURE R6 K18 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K19 ["testAsync"]
  DUPCLOSURE R6 K20 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K21 ["act"]
  DUPCLOSURE R6 K22 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K23 ["actUntilSelected"]
  RETURN R5 1
