PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  LOADB R0 1
  RETURN R0 1

PROTO_5:
  RETURN R0 0

PROTO_6:
  LOADB R0 0
  RETURN R0 1

PROTO_7:
  RETURN R0 0

PROTO_8:
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K9 [{"SendGamepadEventAsync", "DEPRECATED_GetKeyboardShortcutAsync", "GetKeyboardShortcutAsync", "ConnectGamepadAsync", "UpdateKeyMappingAsync", "GetCurrentlyEmulatedDeviceAsync", "IsVREmulatorConnected", "SetActiveVRController", "DEPRECATED_SetVRActiveUserCFrameAsync"}]
  DUPCLOSURE R2 K10 [PROTO_0]
  SETTABLEKS R2 R1 K0 ["SendGamepadEventAsync"]
  DUPCLOSURE R2 K11 [PROTO_1]
  SETTABLEKS R2 R1 K1 ["DEPRECATED_GetKeyboardShortcutAsync"]
  DUPCLOSURE R2 K12 [PROTO_2]
  SETTABLEKS R2 R1 K2 ["GetKeyboardShortcutAsync"]
  DUPCLOSURE R2 K13 [PROTO_3]
  SETTABLEKS R2 R1 K3 ["ConnectGamepadAsync"]
  DUPCLOSURE R2 K14 [PROTO_4]
  SETTABLEKS R2 R1 K4 ["UpdateKeyMappingAsync"]
  DUPCLOSURE R2 K15 [PROTO_5]
  SETTABLEKS R2 R1 K5 ["GetCurrentlyEmulatedDeviceAsync"]
  DUPCLOSURE R2 K16 [PROTO_6]
  SETTABLEKS R2 R1 K6 ["IsVREmulatorConnected"]
  DUPCLOSURE R2 K17 [PROTO_7]
  SETTABLEKS R2 R1 K7 ["SetActiveVRController"]
  DUPCLOSURE R2 K18 [PROTO_8]
  SETTABLEKS R2 R1 K8 ["DEPRECATED_SetVRActiveUserCFrameAsync"]
  DUPTABLE R4 K20 [{"__index"}]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K19 ["__index"]
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K22 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_9]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  RETURN R0 1
