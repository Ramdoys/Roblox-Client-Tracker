PROTO_0:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R9 R7 K2 ["notificationType"]
  GETTABLE R8 R2 R9
  JUMPIFNOT R8 [+11]
  GETTABLEKS R10 R7 K2 ["notificationType"]
  GETTABLE R9 R2 R10
  GETTABLEKS R10 R7 K3 ["notificationId"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K6 [table.insert]
  CALL R8 2 0
  JUMP [+9]
  GETTABLEKS R8 R7 K2 ["notificationType"]
  NEWTABLE R9 0 1
  GETTABLEKS R10 R7 K3 ["notificationId"]
  SETLIST R9 R10 1 [1]
  SETTABLE R9 R2 R8
  FORGLOOP R3 2 [-25]
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K7 ["JSONEncode"]
  CALL R3 2 1
  JUMPIFNOT R1 [+8]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["trayVisible"]
  JUMPIF R4 [+4]
  GETUPVAL R4 2
  SETTABLEKS R3 R4 K9 ["current"]
  RETURN R0 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K10 ["eventHandlers"]
  GETTABLEKS R4 R5 K11 ["logNotificationImpressions"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["trayVisible"]
  JUMPIFNOT R0 [+18]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIFEQKS R0 K2 [""] [+14]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["eventHandlers"]
  GETTABLEKS R0 R1 K4 ["logNotificationImpressions"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["current"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R1 K2 [""]
  SETTABLEKS R1 R0 K1 ["current"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLE R2 R0 R3
  CALL R1 1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["read"]
  NEWTABLE R2 0 0
  GETIMPORT R3 K2 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  FASTCALL2 TABLE_INSERT R2 R7 [+5]
  MOVE R9 R2
  MOVE R10 R7
  GETIMPORT R8 K5 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-8]
  GETUPVAL R3 1
  SETTABLE R1 R2 R3
  RETURN R2 1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  MOVE R8 R6
  CALL R7 1 1
  LOADB R8 1
  SETTABLEKS R8 R7 K2 ["read"]
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R9 R1
  MOVE R10 R7
  GETIMPORT R8 K5 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 2 [-14]
  RETURN R1 1

PROTO_5:
  GETUPVAL R1 0
  DUPCLOSURE R2 K0 [PROTO_4]
  CAPTURE UPVAL U1
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R0 K10 [{"notifications", "cursor", "allLoaded", "setNotifications", "setCursor", "setAllLoaded", "markNotificationRead", "markAllNotificationsRead", "logNotificationImpressions", "notificationClient"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["notifications"]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K1 ["cursor"]
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K2 ["allLoaded"]
  GETUPVAL R1 3
  SETTABLEKS R1 R0 K3 ["setNotifications"]
  GETUPVAL R1 4
  SETTABLEKS R1 R0 K4 ["setCursor"]
  GETUPVAL R1 5
  SETTABLEKS R1 R0 K5 ["setAllLoaded"]
  GETUPVAL R1 6
  SETTABLEKS R1 R0 K6 ["markNotificationRead"]
  GETUPVAL R1 7
  SETTABLEKS R1 R0 K7 ["markAllNotificationsRead"]
  GETUPVAL R1 8
  SETTABLEKS R1 R0 K8 ["logNotificationImpressions"]
  GETUPVAL R2 9
  GETTABLEKS R1 R2 K9 ["notificationClient"]
  SETTABLEKS R1 R0 K9 ["notificationClient"]
  RETURN R0 1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["useState"]
  NEWTABLE R4 0 0
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["useState"]
  LOADNIL R6
  CALL R5 1 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["useState"]
  LOADB R8 0
  CALL R7 1 2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["useRef"]
  LOADK R10 K4 [""]
  CALL R9 1 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["useCallback"]
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R2
  NEWTABLE R12 0 2
  MOVE R13 R2
  GETTABLEKS R14 R1 K6 ["trayVisible"]
  SETLIST R12 R13 2 [1]
  CALL R10 2 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K7 ["useEffect"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R2
  NEWTABLE R13 0 1
  GETTABLEKS R14 R1 K6 ["trayVisible"]
  SETLIST R13 R14 1 [1]
  CALL R11 2 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["useCallback"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  NEWTABLE R13 0 2
  MOVE R14 R3
  MOVE R15 R4
  SETLIST R13 R14 2 [1]
  CALL R11 2 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["useCallback"]
  NEWCLOSURE R13 P3
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  NEWTABLE R14 0 2
  MOVE R15 R3
  MOVE R16 R4
  SETLIST R14 R15 2 [1]
  CALL R12 2 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["useMemo"]
  NEWCLOSURE R14 P4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R0
  NEWTABLE R15 0 10
  MOVE R16 R3
  MOVE R17 R5
  MOVE R18 R7
  MOVE R19 R4
  MOVE R20 R6
  MOVE R21 R8
  MOVE R22 R11
  MOVE R23 R12
  MOVE R24 R10
  GETUPVAL R25 5
  SETLIST R15 R16 10 [1]
  CALL R13 2 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K10 ["Provider"]
  DUPTABLE R16 K12 [{"value"}]
  SETTABLEKS R13 R16 K11 ["value"]
  GETTABLEKS R17 R0 K13 ["children"]
  CALL R14 3 -1
  RETURN R14 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K9 [game]
  LOADK R5 K10 ["HttpService"]
  NAMECALL R3 R3 K11 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R5 R2 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["deepCopy"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Contexts"]
  GETTABLEKS R6 R7 K16 ["TrayVisibleContext"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Contexts"]
  GETTABLEKS R7 R8 K17 ["AnalyticsContext"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K18 ["Clients"]
  GETTABLEKS R8 R9 K19 ["NotificationClient"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K20 ["NotificationsContext"]
  CALL R8 1 1
  DUPCLOSURE R9 K21 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R9 1
