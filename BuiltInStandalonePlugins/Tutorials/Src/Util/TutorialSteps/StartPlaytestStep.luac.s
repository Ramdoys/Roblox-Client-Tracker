PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["complete"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["tutorial"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K1 ["startPlaying"]
  GETTABLEKS R1 R0 K0 ["tutorial"]
  GETUPVAL R4 0
  JUMPIFNOT R4 [+26]
  DUPTABLE R3 K6 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K2 ["TargetWidgetUri"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["SubjectAnchorPoint"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["TargetAnchorPoint"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Offset"]
  JUMP [+25]
  DUPTABLE R3 K6 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K2 ["TargetWidgetUri"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["SubjectAnchorPoint"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["TargetAnchorPoint"]
  GETIMPORT R4 K9 [Vector2.new]
  LOADN R5 0
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Offset"]
  NAMECALL R1 R1 K10 ["attachTo"]
  CALL R1 2 0
  GETUPVAL R1 3
  JUMPIFNOT R1 [+12]
  GETTABLEKS R2 R0 K0 ["tutorial"]
  GETTABLEKS R1 R2 K11 ["Spotlight"]
  GETUPVAL R4 0
  JUMPIFNOT R4 [+2]
  GETUPVAL R3 1
  JUMP [+1]
  GETUPVAL R3 2
  NAMECALL R1 R1 K12 ["ApplyHighlightAsync"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["tutorial"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["startPlaying"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R2 K3 ["Tutorials"]
  NAMECALL R0 R0 K4 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K6 [require]
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K8 ["Flags"]
  GETTABLEKS R2 R3 K9 ["getFFlagTutorialsUseLuaRibbon"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagSpotlightManager"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K6 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K11 ["TutorialStep"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["extend"]
  LOADK R5 K13 ["StartPlaytest"]
  CALL R4 1 1
  DUPTABLE R5 K19 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R6 K20 ["Standalone"]
  SETTABLEKS R6 R5 K14 ["DataModel"]
  LOADK R6 K20 ["Standalone"]
  SETTABLEKS R6 R5 K15 ["PluginType"]
  LOADK R6 K21 ["Ribbon"]
  SETTABLEKS R6 R5 K16 ["PluginId"]
  LOADK R6 K22 ["Widgets"]
  SETTABLEKS R6 R5 K17 ["Category"]
  LOADK R6 K23 ["LeftMezzanine/PlayControls/1"]
  SETTABLEKS R6 R5 K18 ["ItemId"]
  DUPTABLE R6 K24 [{"PluginId", "Category", "ItemId"}]
  LOADK R7 K25 ["QtRibbon"]
  SETTABLEKS R7 R6 K16 ["PluginId"]
  LOADK R7 K22 ["Widgets"]
  SETTABLEKS R7 R6 K17 ["Category"]
  LOADK R7 K26 ["Play"]
  SETTABLEKS R7 R6 K18 ["ItemId"]
  DUPCLOSURE R7 K27 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R2
  SETTABLEKS R7 R4 K28 ["bind"]
  DUPCLOSURE R7 K29 [PROTO_2]
  SETTABLEKS R7 R4 K30 ["unbind"]
  RETURN R4 1
