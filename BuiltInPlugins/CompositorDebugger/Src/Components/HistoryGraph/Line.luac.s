PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["A"]
  GETTABLEKS R3 R1 K2 ["B"]
  GETTABLEKS R4 R2 K3 ["X"]
  GETTABLEKS R5 R3 K3 ["X"]
  JUMPIFNOTLT R5 R4 [+4]
  MOVE R4 R3
  MOVE R3 R2
  MOVE R2 R4
  GETIMPORT R4 K6 [UDim2.new]
  LOADN R5 0
  GETTABLEKS R8 R2 K3 ["X"]
  GETTABLEKS R9 R3 K3 ["X"]
  ADD R7 R8 R9
  DIVK R6 R7 K7 [2]
  LOADN R7 0
  GETTABLEKS R10 R2 K8 ["Y"]
  GETTABLEKS R11 R3 K8 ["Y"]
  ADD R9 R10 R11
  DIVK R8 R9 K7 [2]
  CALL R4 4 1
  GETTABLEKS R9 R3 K3 ["X"]
  GETTABLEKS R10 R2 K3 ["X"]
  SUB R8 R9 R10
  GETTABLEKS R10 R3 K3 ["X"]
  GETTABLEKS R11 R2 K3 ["X"]
  SUB R9 R10 R11
  MUL R7 R8 R9
  GETTABLEKS R10 R3 K8 ["Y"]
  GETTABLEKS R11 R2 K8 ["Y"]
  SUB R9 R10 R11
  GETTABLEKS R11 R3 K8 ["Y"]
  GETTABLEKS R12 R2 K8 ["Y"]
  SUB R10 R11 R12
  MUL R8 R9 R10
  ADD R6 R7 R8
  FASTCALL1 MATH_SQRT R6 [+2]
  GETIMPORT R5 K11 [math.sqrt]
  CALL R5 1 1
  GETIMPORT R6 K6 [UDim2.new]
  LOADN R7 0
  ADDK R8 R5 K12 [1]
  LOADN R9 0
  GETTABLEKS R11 R1 K13 ["Width"]
  ORK R10 R11 K12 [1]
  CALL R6 4 1
  GETTABLEKS R9 R3 K8 ["Y"]
  GETTABLEKS R10 R2 K8 ["Y"]
  SUB R8 R9 R10
  GETTABLEKS R10 R3 K3 ["X"]
  GETTABLEKS R11 R2 K3 ["X"]
  SUB R9 R10 R11
  FASTCALL2 MATH_ATAN2 R8 R9 [+3]
  GETIMPORT R7 K15 [math.atan2]
  CALL R7 2 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["createElement"]
  LOADK R9 K17 ["Frame"]
  NEWTABLE R10 16 0
  SETTABLEKS R4 R10 K18 ["Position"]
  SETTABLEKS R6 R10 K19 ["Size"]
  GETIMPORT R11 K21 [Vector2.new]
  LOADK R12 K22 [0.5]
  LOADK R13 K22 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["AnchorPoint"]
  GETTABLEKS R11 R1 K24 ["Transparency"]
  SETTABLEKS R11 R10 K25 ["BackgroundTransparency"]
  LOADN R11 0
  SETTABLEKS R11 R10 K26 ["BorderSizePixel"]
  GETTABLEKS R11 R1 K27 ["Color"]
  SETTABLEKS R11 R10 K28 ["BorderColor3"]
  FASTCALL1 MATH_DEG R7 [+3]
  MOVE R12 R7
  GETIMPORT R11 K30 [math.deg]
  CALL R11 1 1
  SETTABLEKS R11 R10 K31 ["Rotation"]
  GETTABLEKS R11 R1 K32 ["ZIndex"]
  SETTABLEKS R11 R10 K32 ["ZIndex"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K33 ["Tag"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K33 ["Tag"]
  GETTABLE R12 R1 R13
  SETTABLE R12 R10 R11
  CALL R8 2 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["PureComponent"]
  LOADK R4 K9 ["Line"]
  NAMECALL R2 R2 K10 ["extend"]
  CALL R2 2 1
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K12 ["render"]
  RETURN R2 1
