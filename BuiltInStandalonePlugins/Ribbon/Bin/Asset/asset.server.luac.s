PROTO_0:
  GETIMPORT R1 K1 [plugin]
  LOADK R3 K2 ["DmChanged"]
  MOVE R4 R0
  NAMECALL R1 R1 K3 ["Invoke"]
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K1 [plugin]
  GETTABLEKS R0 R1 K2 ["HostDataModelTypeIsCurrent"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K1 [plugin]
  LOADK R2 K3 ["Ribbon"]
  DUPTABLE R3 K9 [{"InitialEnabled", "MinSize", "Modal", "Size", "Title"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["InitialEnabled"]
  GETIMPORT R4 K12 [Vector2.new]
  LOADN R5 64
  LOADN R6 132
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["MinSize"]
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["Modal"]
  GETIMPORT R4 K12 [Vector2.new]
  LOADN R5 64
  LOADN R6 132
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["Size"]
  LOADK R4 K3 ["Ribbon"]
  SETTABLEKS R4 R3 K8 ["Title"]
  NAMECALL R0 R0 K13 ["CreateQWidgetPluginGui"]
  CALL R0 3 1
  LOADK R1 K3 ["Ribbon"]
  SETTABLEKS R1 R0 K14 ["Name"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K15 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K19 [{"Plugin", "Widget", "EditMode"}]
  GETIMPORT R4 K1 [plugin]
  SETTABLEKS R4 R3 K16 ["Plugin"]
  SETTABLEKS R0 R3 K17 ["Widget"]
  LOADB R4 1
  SETTABLEKS R4 R3 K18 ["EditMode"]
  CALL R1 2 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K20 ["createRoot"]
  MOVE R3 R0
  CALL R2 1 1
  SETUPVAL R2 2
  GETUPVAL R3 2
  FASTCALL2K ASSERT R3 K21 [+4]
  LOADK R4 K21 ["Luau does not refine the type of `root` to be non-nil here"]
  GETIMPORT R2 K23 [assert]
  CALL R2 2 0
  GETUPVAL R2 2
  MOVE R4 R1
  NAMECALL R2 R2 K24 ["render"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["unmount"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [require]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Packages"]
  GETTABLEKS R1 R2 K3 ["React"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Packages"]
  GETTABLEKS R2 R3 K4 ["ReactRoblox"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["MainPlugin"]
  CALL R2 1 1
  GETIMPORT R4 K8 [plugin]
  GETTABLEKS R3 R4 K9 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R4 R3 K10 ["FocusedDataModelSession"]
  LOADNIL R5
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE REF R5
  CAPTURE VAL R1
  NEWCLOSURE R7 P1
  CAPTURE REF R5
  GETTABLEKS R8 R4 K11 ["CurrentDataModelTypeAboutToChange"]
  MOVE R10 R7
  NAMECALL R8 R8 K12 ["Connect"]
  CALL R8 2 0
  GETTABLEKS R8 R4 K13 ["CurrentDataModelTypeChanged"]
  MOVE R10 R6
  NAMECALL R8 R8 K12 ["Connect"]
  CALL R8 2 0
  MOVE R8 R6
  CALL R8 0 0
  CLOSEUPVALS R5
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [script]
  LOADK R2 K4 ["Ribbon"]
  NAMECALL R0 R0 K5 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K6 ["Bin"]
  GETTABLEKS R1 R2 K7 ["Common"]
  GETIMPORT R2 K9 [require]
  GETTABLEKS R3 R1 K10 ["defineLuaFlags"]
  CALL R2 1 0
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K11 ["Packages"]
  GETTABLEKS R3 R4 K12 ["TestLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K13 ["launch"]
  LOADK R4 K4 ["Ribbon"]
  GETTABLEKS R5 R0 K14 ["Src"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K15 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K17 [game]
  LOADK R5 K18 ["EnableRibbonPlugin"]
  NAMECALL R3 R3 K19 ["GetFastFlag"]
  CALL R3 2 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R4 K1 [plugin]
  GETTABLEKS R3 R4 K20 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R4 R3 K21 ["FocusedDataModelSession"]
  GETTABLEKS R5 R4 K22 ["CurrentDataModelTypeAboutToChange"]
  DUPCLOSURE R7 K23 [PROTO_0]
  NAMECALL R5 R5 K24 ["Connect"]
  CALL R5 2 0
  GETTABLEKS R5 R4 K25 ["CurrentDataModelType"]
  GETIMPORT R6 K29 [Enum.StudioDataModelType.Edit]
  JUMPIFNOTEQ R5 R6 [+17]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R9 R0 K14 ["Src"]
  GETTABLEKS R8 R9 K30 ["Util"]
  GETTABLEKS R7 R8 K31 ["SocialPresence"]
  GETTABLEKS R6 R7 K32 ["SocialPresenceDmBridge"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K33 ["initAssetDm"]
  GETIMPORT R7 K1 [plugin]
  CALL R6 1 0
  GETIMPORT R5 K1 [plugin]
  LOADK R7 K34 ["DmChanged"]
  GETTABLEKS R8 R4 K25 ["CurrentDataModelType"]
  NAMECALL R5 R5 K35 ["Invoke"]
  CALL R5 3 0
  GETIMPORT R5 K17 [game]
  LOADK R7 K36 ["StudioService"]
  NAMECALL R5 R5 K37 ["GetService"]
  CALL R5 2 1
  NAMECALL R5 R5 K38 ["HasInternalPermission"]
  CALL R5 1 1
  JUMPIF R5 [+1]
  RETURN R0 0
  DUPCLOSURE R6 K39 [PROTO_3]
  CAPTURE VAL R0
  GETIMPORT R7 K17 [game]
  LOADK R9 K40 ["DebugTestRibbonInAssetDM"]
  NAMECALL R7 R7 K19 ["GetFastFlag"]
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  MOVE R8 R6
  CALL R8 0 0
  RETURN R0 0
