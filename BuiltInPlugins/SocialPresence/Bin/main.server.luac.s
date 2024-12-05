PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETIMPORT R0 K5 [Instance.new]
  LOADK R1 K6 ["BindableEvent"]
  CALL R0 1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K10 [{"Plugin", "EnableSignal"}]
  GETIMPORT R4 K1 [plugin]
  SETTABLEKS R4 R3 K8 ["Plugin"]
  SETTABLEKS R0 R3 K9 ["EnableSignal"]
  CALL R1 2 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K11 ["createRoot"]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K12 ["Frame"]
  CALL R3 1 -1
  CALL R2 -1 1
  SETUPVAL R2 3
  GETUPVAL R2 3
  MOVE R4 R1
  NAMECALL R2 R2 K13 ["render"]
  CALL R2 2 0
  GETIMPORT R2 K1 [plugin]
  LOADK R4 K14 ["RibbonWidget"]
  DUPTABLE R5 K23 [{"Id", "InitialEnabled", "MinSize", "Panel", "Resizable", "Title", "Parent", "AddToParentLayout"}]
  LOADK R6 K14 ["RibbonWidget"]
  SETTABLEKS R6 R5 K15 ["Id"]
  LOADB R6 1
  SETTABLEKS R6 R5 K16 ["InitialEnabled"]
  GETIMPORT R6 K25 [Vector2.new]
  LOADN R7 27
  LOADN R8 15
  CALL R6 2 1
  SETTABLEKS R6 R5 K17 ["MinSize"]
  LOADB R6 1
  SETTABLEKS R6 R5 K18 ["Panel"]
  LOADB R6 1
  SETTABLEKS R6 R5 K19 ["Resizable"]
  LOADK R6 K14 ["RibbonWidget"]
  SETTABLEKS R6 R5 K20 ["Title"]
  LOADK R6 K26 ["socialPresenceRibbonPlaceholder"]
  SETTABLEKS R6 R5 K21 ["Parent"]
  LOADB R6 1
  SETTABLEKS R6 R5 K22 ["AddToParentLayout"]
  NAMECALL R2 R2 K27 ["CreateQWidgetPluginGui"]
  CALL R2 3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["createElement"]
  GETUPVAL R4 5
  DUPTABLE R5 K30 [{"Plugin", "Widget", "OnClick"}]
  GETIMPORT R6 K1 [plugin]
  SETTABLEKS R6 R5 K8 ["Plugin"]
  SETTABLEKS R2 R5 K28 ["Widget"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K29 ["OnClick"]
  CALL R3 2 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K11 ["createRoot"]
  MOVE R5 R2
  CALL R4 1 1
  SETUPVAL R4 6
  GETUPVAL R4 6
  MOVE R6 R3
  NAMECALL R4 R4 K13 ["render"]
  CALL R4 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 0
  LOADNIL R2
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 2 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  LOADNIL R2
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 2 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R0 K7 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K1 [require]
  GETTABLEKS R3 R0 K8 ["Packages"]
  GETTABLEKS R2 R3 K9 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K10 ["launch"]
  LOADK R3 K11 ["SocialPresence"]
  GETTABLEKS R4 R0 K12 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K13 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K14 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K15 ["ReactRoblox"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETTABLEKS R6 R0 K12 ["Src"]
  GETTABLEKS R5 R6 K16 ["MainPlugin"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETTABLEKS R7 R0 K12 ["Src"]
  GETTABLEKS R6 R7 K17 ["RibbonPlugin"]
  CALL R5 1 1
  LOADNIL R6
  LOADNIL R7
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE REF R6
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE REF R7
  GETIMPORT R10 K7 [plugin]
  GETTABLEKS R9 R10 K18 ["Unloading"]
  NEWCLOSURE R11 P1
  CAPTURE REF R6
  CAPTURE REF R7
  NAMECALL R9 R9 K19 ["Connect"]
  CALL R9 2 0
  MOVE R9 R8
  CALL R9 0 0
  CLOSEUPVALS R6
  RETURN R0 0
