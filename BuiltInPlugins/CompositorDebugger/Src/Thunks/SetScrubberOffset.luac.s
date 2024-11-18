PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["DebugData"]
  GETTABLEKS R3 R1 K2 ["Status"]
  GETTABLEKS R4 R2 K3 ["FrameBuffer"]
  GETTABLEKS R5 R3 K4 ["DebugPoseEvent"]
  GETTABLEKS R6 R3 K5 ["SelectedLayer"]
  GETUPVAL R7 0
  JUMPIFNOT R7 [+62]
  GETTABLEKS R7 R4 K6 ["last"]
  JUMPIF R7 [+1]
  RETURN R0 0
  LOADN R8 1
  GETUPVAL R9 0
  JUMPIFEQKN R9 K7 [0] [+21]
  GETTABLEKS R10 R7 K8 ["timestamp"]
  GETUPVAL R11 0
  ADD R9 R10 R11
  LOADN R12 2
  NAMECALL R13 R4 K9 ["getSize"]
  CALL R13 1 1
  MOVE R10 R13
  LOADN R11 1
  FORNPREP R10
  GETTABLE R13 R4 R12
  JUMPIFNOT R13 [+6]
  GETTABLEKS R13 R7 K8 ["timestamp"]
  JUMPIFLT R13 R9 [+4]
  GETTABLE R7 R4 R12
  MOVE R8 R12
  FORNLOOP R10
  JUMPIFNOT R6 [+4]
  GETTABLEKS R10 R7 K10 ["layerMap"]
  GETTABLE R9 R10 R6
  JUMP [+2]
  GETTABLEKS R9 R7 K11 ["payload"]
  MOVE R10 R9
  JUMPIFNOT R10 [+2]
  GETTABLEKS R10 R9 K12 ["animationPose"]
  GETTABLEKS R12 R7 K11 ["payload"]
  GETTABLEKS R11 R12 K13 ["hrpCFrame"]
  JUMPIFNOT R5 [+5]
  MOVE R14 R10
  MOVE R15 R11
  NAMECALL R12 R5 K14 ["Fire"]
  CALL R12 3 0
  GETUPVAL R14 1
  GETUPVAL R15 0
  CALL R14 1 -1
  NAMECALL R12 R0 K15 ["dispatch"]
  CALL R12 -1 0
  GETUPVAL R14 2
  MOVE R15 R8
  CALL R14 1 -1
  NAMECALL R12 R0 K15 ["dispatch"]
  CALL R12 -1 0
  JUMP [+78]
  GETUPVAL R7 3
  JUMPIFNOT R7 [+58]
  GETTABLEKS R9 R3 K17 ["HistoryFrame"]
  ORK R8 R9 K16 [1]
  GETUPVAL R9 3
  ADD R7 R8 R9
  LOADN R8 1
  JUMPIFLT R7 R8 [+8]
  NAMECALL R8 R4 K9 ["getSize"]
  CALL R8 1 1
  JUMPIFLT R8 R7 [+3]
  GETTABLE R8 R4 R7
  JUMPIF R8 [+1]
  RETURN R0 0
  GETTABLE R8 R4 R7
  GETTABLEKS R10 R8 K8 ["timestamp"]
  GETTABLEKS R12 R4 K6 ["last"]
  GETTABLEKS R11 R12 K8 ["timestamp"]
  SUB R9 R10 R11
  JUMPIFNOT R6 [+4]
  GETTABLEKS R11 R8 K10 ["layerMap"]
  GETTABLE R10 R11 R6
  JUMP [+2]
  GETTABLEKS R10 R8 K11 ["payload"]
  MOVE R11 R10
  JUMPIFNOT R11 [+2]
  GETTABLEKS R11 R10 K12 ["animationPose"]
  GETTABLEKS R13 R8 K11 ["payload"]
  GETTABLEKS R12 R13 K13 ["hrpCFrame"]
  JUMPIFNOT R5 [+5]
  MOVE R15 R11
  MOVE R16 R12
  NAMECALL R13 R5 K14 ["Fire"]
  CALL R13 3 0
  GETUPVAL R15 1
  MOVE R16 R9
  CALL R15 1 -1
  NAMECALL R13 R0 K15 ["dispatch"]
  CALL R13 -1 0
  GETUPVAL R15 2
  MOVE R16 R7
  CALL R15 1 -1
  NAMECALL R13 R0 K15 ["dispatch"]
  CALL R13 -1 0
  JUMP [+18]
  JUMPIFNOT R5 [+5]
  LOADNIL R9
  LOADNIL R10
  NAMECALL R7 R5 K14 ["Fire"]
  CALL R7 3 0
  GETUPVAL R9 1
  LOADNIL R10
  CALL R9 1 -1
  NAMECALL R7 R0 K15 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 2
  LOADNIL R10
  CALL R9 1 -1
  NAMECALL R7 R0 K15 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 4
  CALL R9 0 -1
  NAMECALL R7 R0 K15 ["dispatch"]
  CALL R7 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Actions"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["SetHistoryFrame"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K9 ["SetHistoryOffset"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K4 ["Src"]
  GETTABLEKS R4 R5 K10 ["Reducers"]
  GETIMPORT R5 K7 [require]
  GETTABLEKS R6 R4 K11 ["DebugData"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R7 R4 K12 ["Status"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K4 ["Src"]
  GETTABLEKS R7 R8 K13 ["Thunks"]
  GETIMPORT R8 K7 [require]
  GETTABLEKS R9 R7 K14 ["RenderAdornments"]
  CALL R8 1 1
  DUPCLOSURE R9 K15 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R8
  RETURN R9 1
