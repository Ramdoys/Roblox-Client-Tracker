PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getPositionAndSize"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 2
  JUMPIFNOT R2 [+1]
  JUMPIF R3 [+1]
  RETURN R0 0
  DUPTABLE R4 K4 [{"x", "y", "z"}]
  GETTABLEKS R8 R2 K6 ["X"]
  MULK R7 R8 K5 [100]
  FASTCALL1 MATH_CEIL R7 [+2]
  GETIMPORT R6 K9 [math.ceil]
  CALL R6 1 1
  DIVK R5 R6 K5 [100]
  SETTABLEKS R5 R4 K1 ["x"]
  GETTABLEKS R8 R2 K10 ["Y"]
  MULK R7 R8 K5 [100]
  FASTCALL1 MATH_CEIL R7 [+2]
  GETIMPORT R6 K9 [math.ceil]
  CALL R6 1 1
  DIVK R5 R6 K5 [100]
  SETTABLEKS R5 R4 K2 ["y"]
  GETTABLEKS R8 R2 K11 ["Z"]
  MULK R7 R8 K5 [100]
  FASTCALL1 MATH_CEIL R7 [+2]
  GETIMPORT R6 K9 [math.ceil]
  CALL R6 1 1
  DIVK R5 R6 K5 [100]
  SETTABLEKS R5 R4 K3 ["z"]
  MOVE R2 R4
  DUPTABLE R4 K4 [{"x", "y", "z"}]
  GETTABLEKS R8 R3 K6 ["X"]
  MULK R7 R8 K5 [100]
  FASTCALL1 MATH_CEIL R7 [+2]
  GETIMPORT R6 K9 [math.ceil]
  CALL R6 1 1
  DIVK R5 R6 K5 [100]
  SETTABLEKS R5 R4 K1 ["x"]
  GETTABLEKS R8 R3 K10 ["Y"]
  MULK R7 R8 K5 [100]
  FASTCALL1 MATH_CEIL R7 [+2]
  GETIMPORT R6 K9 [math.ceil]
  CALL R6 1 1
  DIVK R5 R6 K5 [100]
  SETTABLEKS R5 R4 K2 ["y"]
  GETTABLEKS R8 R3 K11 ["Z"]
  MULK R7 R8 K5 [100]
  FASTCALL1 MATH_CEIL R7 [+2]
  GETIMPORT R6 K9 [math.ceil]
  CALL R6 1 1
  DIVK R5 R6 K5 [100]
  SETTABLEKS R5 R4 K3 ["z"]
  MOVE R3 R4
  RETURN R2 2

PROTO_1:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+29]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["getPositionAndSize"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 2
  JUMPIFNOT R3 [+22]
  JUMPIFNOT R4 [+21]
  GETIMPORT R7 K3 [CFrame.new]
  MOVE R8 R3
  CALL R7 1 -1
  NAMECALL R5 R2 K4 ["ToWorldSpace"]
  CALL R5 -1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["addConstraintVisualization"]
  MOVE R7 R0
  MOVE R8 R5
  MOVE R9 R4
  LOADB R10 1
  GETIMPORT R11 K8 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 170
  LOADN R14 255
  CALL R11 3 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R3 0 0
  LOADN R4 0
  MOVE R5 R0
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R10 0
  JUMPIFLE R10 R4 [+43]
  MOVE R10 R9
  GETTABLEKS R14 R10 K0 ["Size"]
  GETTABLEKS R13 R14 K1 ["X"]
  GETTABLEKS R15 R10 K0 ["Size"]
  GETTABLEKS R14 R15 K2 ["Z"]
  MUL R12 R13 R14
  DIV R11 R12 R1
  LOADN R12 1
  JUMPIFLT R12 R11 [+27]
  GETTABLEKS R12 R10 K3 ["Parent"]
  JUMPIFNOT R12 [+19]
  GETIMPORT R13 K5 [workspace]
  JUMPIFEQ R12 R13 [+16]
  GETUPVAL R13 1
  MOVE R14 R12
  MOVE R15 R2
  CALL R13 2 2
  GETTABLEKS R17 R14 K6 ["x"]
  GETTABLEKS R18 R14 K7 ["z"]
  MUL R16 R17 R18
  DIV R15 R16 R1
  GETUPVAL R16 2
  JUMPIFLT R16 R15 [+3]
  MOVE R10 R12
  JUMPBACK [-22]
  GETTABLE R12 R3 R10
  JUMPIF R12 [+2]
  SETTABLE R10 R3 R10
  ADDK R4 R4 K8 [1]
  FORGLOOP R5 2 [-44]
  RETURN R3 1

PROTO_3:
  NEWTABLE R3 0 0
  GETIMPORT R4 K1 [workspace]
  MOVE R6 R1
  MOVE R7 R2
  GETUPVAL R8 0
  NAMECALL R4 R4 K2 ["GetPartBoundsInBox"]
  CALL R4 4 1
  GETUPVAL R5 1
  MOVE R6 R4
  GETTABLEKS R8 R2 K3 ["X"]
  GETTABLEKS R9 R2 K4 ["Z"]
  MUL R7 R8 R9
  MOVE R8 R1
  CALL R5 3 1
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R11 2
  MOVE R12 R0
  MOVE R13 R10
  MOVE R14 R1
  CALL R11 3 0
  GETUPVAL R11 3
  MOVE R12 R10
  MOVE R13 R1
  CALL R11 2 2
  DUPTABLE R15 K9 [{"instanceId", "assetId", "size", "pos"}]
  SETTABLEKS R10 R15 K5 ["instanceId"]
  GETUPVAL R17 4
  JUMPIFNOT R17 [+8]
  GETTABLEKS R17 R10 K10 ["SourceAssetId"]
  LOADN R18 0
  JUMPIFNOTLT R18 R17 [+4]
  GETTABLEKS R16 R10 K10 ["SourceAssetId"]
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K6 ["assetId"]
  DUPTABLE R16 K13 [{"x", "z"}]
  GETTABLEKS R17 R12 K11 ["x"]
  SETTABLEKS R17 R16 K11 ["x"]
  GETTABLEKS R17 R12 K12 ["z"]
  SETTABLEKS R17 R16 K12 ["z"]
  SETTABLEKS R16 R15 K7 ["size"]
  DUPTABLE R16 K13 [{"x", "z"}]
  GETTABLEKS R17 R11 K11 ["x"]
  SETTABLEKS R17 R16 K11 ["x"]
  GETTABLEKS R17 R11 K12 ["z"]
  SETTABLEKS R17 R16 K12 ["z"]
  SETTABLEKS R16 R15 K8 ["pos"]
  FASTCALL2 TABLE_INSERT R3 R15 [+4]
  MOVE R14 R3
  GETIMPORT R13 K16 [table.insert]
  CALL R13 2 0
  GETUPVAL R13 5
  JUMPIFNOT R13 [+7]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K17 ["guid2instance"]
  NAMECALL R14 R10 K18 ["GetDebugId"]
  CALL R14 1 1
  SETTABLE R10 R13 R14
  FORGLOOP R6 2 [-63]
  RETURN R3 1

PROTO_4:
  NEWTABLE R1 1 0
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["Get"]
  CALL R2 1 1
  LENGTH R3 R2
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+67]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["getRequestCFrame"]
  MOVE R4 R0
  CALL R3 1 1
  NEWTABLE R4 0 0
  SETTABLEKS R4 R1 K2 ["Selected"]
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R9 2
  JUMPIFLT R9 R7 [+51]
  GETUPVAL R9 3
  MOVE R10 R8
  MOVE R11 R3
  CALL R9 2 2
  GETUPVAL R11 4
  JUMPIFNOT R11 [+7]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K3 ["guid2instance"]
  NAMECALL R12 R8 K4 ["GetDebugId"]
  CALL R12 1 1
  SETTABLE R8 R11 R12
  GETTABLEKS R12 R1 K2 ["Selected"]
  DUPTABLE R13 K11 [{"instanceId", "className", "instanceName", "assetId", "size", "pos"}]
  SETTABLEKS R8 R13 K5 ["instanceId"]
  GETTABLEKS R14 R8 K12 ["ClassName"]
  SETTABLEKS R14 R13 K6 ["className"]
  GETTABLEKS R14 R8 K13 ["Name"]
  SETTABLEKS R14 R13 K7 ["instanceName"]
  GETUPVAL R15 6
  JUMPIFNOT R15 [+8]
  GETTABLEKS R15 R8 K14 ["SourceAssetId"]
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+4]
  GETTABLEKS R14 R8 K14 ["SourceAssetId"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K8 ["assetId"]
  SETTABLEKS R10 R13 K9 ["size"]
  SETTABLEKS R9 R13 K10 ["pos"]
  FASTCALL2 TABLE_INSERT R12 R13 [+3]
  GETIMPORT R11 K17 [table.insert]
  CALL R11 2 0
  FORGLOOP R4 2 [-52]
  GETUPVAL R4 7
  NAMECALL R4 R4 K18 ["GetSettings"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K19 ["UseInventoryAssets"]
  SETTABLEKS R3 R1 K20 ["use_inventory_assets"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getRequestCFrame"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["GetRequestMetadata"]
  MOVE R2 R0
  LOADK R3 K2 ["RequestCFrame"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["GetRequestMetadata"]
  MOVE R3 R0
  LOADK R4 K3 ["PlacementSize"]
  CALL R2 2 1
  GETTABLEKS R4 R2 K4 ["X"]
  GETUPVAL R5 2
  GETTABLEKS R6 R2 K5 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K8 [Vector3.new]
  CALL R3 3 1
  GETUPVAL R4 3
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R3
  CALL R4 3 1
  DUPTABLE R5 K11 [{"placement_area", "viewport_instances"}]
  DUPTABLE R6 K14 [{"x", "z"}]
  GETTABLEKS R7 R2 K4 ["X"]
  SETTABLEKS R7 R6 K12 ["x"]
  GETTABLEKS R7 R2 K5 ["Z"]
  SETTABLEKS R7 R6 K13 ["z"]
  SETTABLEKS R6 R5 K9 ["placement_area"]
  SETTABLEKS R4 R5 K10 ["viewport_instances"]
  RETURN R5 1

PROTO_6:
  GETUPVAL R0 0
  LOADK R2 K0 ["DefaultContextCollector"]
  DUPCLOSURE R3 K1 [PROTO_4]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  NAMECALL R0 R0 K2 ["RegisterContextCollector"]
  CALL R0 3 0
  GETUPVAL R0 0
  LOADK R2 K3 ["ViewportContextCollector"]
  DUPCLOSURE R3 K4 [PROTO_5]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U6
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  NAMECALL R0 R0 K2 ["RegisterContextCollector"]
  CALL R0 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADK R2 K0 ["DefaultContextCollector"]
  NAMECALL R0 R0 K1 ["UnregisterContextCollector"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADK R2 K2 ["ViewportContextCollector"]
  NAMECALL R0 R0 K1 ["UnregisterContextCollector"]
  CALL R0 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StreamingService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ChatbotUIService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["Selection"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETIMPORT R8 K9 [script]
  GETTABLEKS R7 R8 K10 ["Parent"]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K11 ["Utils"]
  GETTABLEKS R4 R5 K11 ["Utils"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETIMPORT R10 K9 [script]
  GETTABLEKS R9 R10 K10 ["Parent"]
  GETTABLEKS R8 R9 K10 ["Parent"]
  GETTABLEKS R7 R8 K12 ["Commands"]
  GETTABLEKS R6 R7 K13 ["BuilderCommands"]
  GETTABLEKS R5 R6 K14 ["BuilderNameMap"]
  CALL R4 1 1
  NEWTABLE R5 2 0
  GETIMPORT R6 K1 [game]
  LOADK R8 K15 ["ShowViewportContextVisualization"]
  NAMECALL R6 R6 K16 ["GetFastFlag"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K17 ["ViewportContextCollectionHeight"]
  NAMECALL R7 R7 K18 ["GetFastInt"]
  CALL R7 2 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K19 ["MaxContextAllowedFromSelection"]
  NAMECALL R8 R8 K18 ["GetFastInt"]
  CALL R8 2 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K20 ["MaxContextAllowedFromViewport"]
  NAMECALL R9 R9 K18 ["GetFastInt"]
  CALL R9 2 1
  GETIMPORT R11 K1 [game]
  LOADK R13 K22 ["ViewportRootMaxAreaFactor"]
  NAMECALL R11 R11 K18 ["GetFastInt"]
  CALL R11 2 1
  DIVK R10 R11 K21 [100]
  GETIMPORT R11 K1 [game]
  LOADK R13 K23 ["ConvAIIncomingLinks"]
  NAMECALL R11 R11 K16 ["GetFastFlag"]
  CALL R11 2 1
  GETIMPORT R12 K1 [game]
  LOADK R14 K24 ["SSDRSendSourceAssetIdsWithContext"]
  NAMECALL R12 R12 K16 ["GetFastFlag"]
  CALL R12 2 1
  GETIMPORT R13 K27 [OverlapParams.new]
  CALL R13 0 1
  LOADB R14 1
  SETTABLEKS R14 R13 K28 ["BruteForceAllSlow"]
  DUPCLOSURE R14 K29 [PROTO_0]
  CAPTURE VAL R3
  DUPCLOSURE R15 K30 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R3
  DUPCLOSURE R16 K31 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R10
  DUPCLOSURE R17 K32 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R4
  DUPCLOSURE R18 K33 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R17
  SETTABLEKS R18 R5 K34 ["register"]
  DUPCLOSURE R18 K35 [PROTO_7]
  CAPTURE VAL R0
  SETTABLEKS R18 R5 K36 ["unregister"]
  RETURN R5 1
