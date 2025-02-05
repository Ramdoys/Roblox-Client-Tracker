PROTO_0:
  DUPTABLE R3 K12 [{"TopFront", "BottomFront", "LeftFront", "RightFront", "TopBack", "BottomBack", "LeftBack", "RightBack", "TopLeft", "BottomLeft", "TopRight", "BottomRight"}]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  LOADN R7 0
  GETTABLEKS R9 R1 K20 ["Y"]
  DIVK R8 R9 K19 [2]
  GETTABLEKS R10 R1 K21 ["Z"]
  DIVK R9 R10 K19 [2]
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R7 R1 K22 ["X"]
  ADD R6 R7 R2
  FASTCALL3 VECTOR R6 R2 R2
  MOVE R7 R2
  MOVE R8 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K0 ["TopFront"]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  LOADN R7 0
  GETTABLEKS R10 R1 K20 ["Y"]
  MINUS R9 R10
  DIVK R8 R9 K19 [2]
  GETTABLEKS R10 R1 K21 ["Z"]
  DIVK R9 R10 K19 [2]
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R7 R1 K22 ["X"]
  ADD R6 R7 R2
  FASTCALL3 VECTOR R6 R2 R2
  MOVE R7 R2
  MOVE R8 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K1 ["BottomFront"]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  GETTABLEKS R9 R1 K22 ["X"]
  MINUS R8 R9
  DIVK R7 R8 K19 [2]
  LOADN R8 0
  GETTABLEKS R10 R1 K21 ["Z"]
  DIVK R9 R10 K19 [2]
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R8 R1 K20 ["Y"]
  ADD R7 R8 R2
  FASTCALL3 VECTOR R2 R7 R2
  MOVE R6 R2
  MOVE R8 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K2 ["LeftFront"]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  GETTABLEKS R8 R1 K22 ["X"]
  DIVK R7 R8 K19 [2]
  LOADN R8 0
  GETTABLEKS R10 R1 K21 ["Z"]
  DIVK R9 R10 K19 [2]
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R8 R1 K20 ["Y"]
  ADD R7 R8 R2
  FASTCALL3 VECTOR R2 R7 R2
  MOVE R6 R2
  MOVE R8 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K3 ["RightFront"]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  LOADN R7 0
  GETTABLEKS R9 R1 K20 ["Y"]
  DIVK R8 R9 K19 [2]
  GETTABLEKS R11 R1 K21 ["Z"]
  MINUS R10 R11
  DIVK R9 R10 K19 [2]
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R7 R1 K22 ["X"]
  ADD R6 R7 R2
  FASTCALL3 VECTOR R6 R2 R2
  MOVE R7 R2
  MOVE R8 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K4 ["TopBack"]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  LOADN R7 0
  GETTABLEKS R10 R1 K20 ["Y"]
  MINUS R9 R10
  DIVK R8 R9 K19 [2]
  GETTABLEKS R11 R1 K21 ["Z"]
  MINUS R10 R11
  DIVK R9 R10 K19 [2]
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R7 R1 K22 ["X"]
  ADD R6 R7 R2
  FASTCALL3 VECTOR R6 R2 R2
  MOVE R7 R2
  MOVE R8 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K5 ["BottomBack"]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  GETTABLEKS R9 R1 K22 ["X"]
  MINUS R8 R9
  DIVK R7 R8 K19 [2]
  LOADN R8 0
  GETTABLEKS R11 R1 K21 ["Z"]
  MINUS R10 R11
  DIVK R9 R10 K19 [2]
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R8 R1 K20 ["Y"]
  ADD R7 R8 R2
  FASTCALL3 VECTOR R2 R7 R2
  MOVE R6 R2
  MOVE R8 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K6 ["LeftBack"]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  GETTABLEKS R8 R1 K22 ["X"]
  DIVK R7 R8 K19 [2]
  LOADN R8 0
  GETTABLEKS R11 R1 K21 ["Z"]
  MINUS R10 R11
  DIVK R9 R10 K19 [2]
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R8 R1 K20 ["Y"]
  ADD R7 R8 R2
  FASTCALL3 VECTOR R2 R7 R2
  MOVE R6 R2
  MOVE R8 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K7 ["RightBack"]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  GETTABLEKS R9 R1 K22 ["X"]
  MINUS R8 R9
  DIVK R7 R8 K19 [2]
  GETTABLEKS R9 R1 K20 ["Y"]
  DIVK R8 R9 K19 [2]
  LOADN R9 0
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R9 R1 K21 ["Z"]
  ADD R8 R9 R2
  FASTCALL3 VECTOR R2 R2 R8
  MOVE R6 R2
  MOVE R7 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K8 ["TopLeft"]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  GETTABLEKS R9 R1 K22 ["X"]
  MINUS R8 R9
  DIVK R7 R8 K19 [2]
  GETTABLEKS R10 R1 K20 ["Y"]
  MINUS R9 R10
  DIVK R8 R9 K19 [2]
  LOADN R9 0
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R9 R1 K21 ["Z"]
  ADD R8 R9 R2
  FASTCALL3 VECTOR R2 R2 R8
  MOVE R6 R2
  MOVE R7 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K9 ["BottomLeft"]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  GETTABLEKS R8 R1 K22 ["X"]
  DIVK R7 R8 K19 [2]
  GETTABLEKS R9 R1 K20 ["Y"]
  DIVK R8 R9 K19 [2]
  LOADN R9 0
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R9 R1 K21 ["Z"]
  ADD R8 R9 R2
  FASTCALL3 VECTOR R2 R2 R8
  MOVE R6 R2
  MOVE R7 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K10 ["TopRight"]
  DUPTABLE R4 K15 [{"Transform", "Size"}]
  GETIMPORT R6 K18 [CFrame.new]
  GETTABLEKS R8 R1 K22 ["X"]
  DIVK R7 R8 K19 [2]
  GETTABLEKS R10 R1 K20 ["Y"]
  MINUS R9 R10
  DIVK R8 R9 K19 [2]
  LOADN R9 0
  CALL R6 3 1
  MUL R5 R0 R6
  SETTABLEKS R5 R4 K13 ["Transform"]
  GETTABLEKS R9 R1 K21 ["Z"]
  ADD R8 R9 R2
  FASTCALL3 VECTOR R2 R2 R8
  MOVE R6 R2
  MOVE R7 R2
  GETIMPORT R5 K24 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["Size"]
  SETTABLEKS R4 R3 K11 ["BottomRight"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
