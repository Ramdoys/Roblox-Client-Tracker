PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["DebugData"]
  GETTABLEKS R3 R2 K2 ["FrameBuffer"]
  GETTABLEKS R4 R1 K3 ["Status"]
  GETTABLEKS R5 R4 K4 ["Adornments"]
  GETTABLEKS R6 R4 K5 ["HistoryFrame"]
  JUMPIFNOT R3 [+3]
  ORK R8 R6 K6 [1]
  GETTABLE R7 R3 R8
  JUMP [+1]
  LOADNIL R7
  JUMPIFNOT R7 [+40]
  MOVE R8 R5
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R12 K7 ["gizmo"]
  JUMPIFNOT R13 [+31]
  GETTABLEKS R15 R7 K8 ["layerMap"]
  GETTABLE R14 R15 R11
  JUMPIFNOT R14 [+22]
  GETTABLEKS R15 R14 K9 ["weight"]
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+18]
  GETTABLEKS R15 R12 K10 ["enabled"]
  JUMPIFNOT R15 [+14]
  GETTABLEKS R18 R12 K11 ["colorEntry"]
  GETTABLEKS R17 R18 K12 ["color"]
  NAMECALL R15 R13 K13 ["SetColor"]
  CALL R15 2 0
  GETTABLEKS R17 R14 K14 ["animationPose"]
  GETTABLEKS R18 R14 K15 ["animationMask"]
  NAMECALL R15 R13 K16 ["DrawPose"]
  CALL R15 3 0
  GETTABLEKS R15 R12 K7 ["gizmo"]
  NAMECALL R15 R15 K17 ["Update"]
  CALL R15 1 0
  FORGLOOP R8 2 [-35]
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_1]
  RETURN R0 1
