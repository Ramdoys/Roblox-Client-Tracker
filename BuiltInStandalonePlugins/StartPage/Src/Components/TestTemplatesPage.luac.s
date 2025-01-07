PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["RootPlaceId"]
  GETTABLEKS R4 R0 K1 ["Id"]
  LOADB R5 0
  NAMECALL R1 R1 K2 ["openPlace"]
  CALL R1 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  DUPTABLE R5 K7 [{"ImageSize", "IsDescriptionVisible", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible"}]
  GETIMPORT R6 K10 [UDim2.new]
  LOADN R7 0
  LOADN R8 125
  LOADN R9 0
  LOADN R10 125
  CALL R6 4 1
  SETTABLEKS R6 R5 K1 ["ImageSize"]
  LOADB R6 1
  SETTABLEKS R6 R5 K2 ["IsDescriptionVisible"]
  DUPCLOSURE R6 K11 [PROTO_0]
  CAPTURE UPVAL U3
  SETTABLEKS R6 R5 K3 ["OnClick"]
  LOADB R6 0
  SETTABLEKS R6 R5 K4 ["IsPrivacyVisible"]
  LOADB R6 0
  SETTABLEKS R6 R5 K5 ["IsDateModifiedVisible"]
  LOADB R6 0
  SETTABLEKS R6 R5 K6 ["IsDropdownMenuVisible"]
  CALL R3 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  DUPTABLE R5 K5 [{"Query", "CellComponent", "CellSize", "FetchItems"}]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K1 ["Query"]
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K2 ["CellComponent"]
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K3 ["CellSize"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K4 ["FetchItems"]
  CALL R3 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["HasInternalPermission"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["Must enabled FFlagLuaStartPageStudioTestTemplates and have internal permission to view TestTemplatesPage"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETUPVAL R1 2
  NAMECALL R1 R1 K4 ["use"]
  CALL R1 1 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K5 ["createElement"]
  GETUPVAL R3 4
  DUPTABLE R4 K13 [{"PageName", "Tabs", "HideTabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar", "IsAlertVisible"}]
  LOADK R5 K14 ["TestTemplates"]
  SETTABLEKS R5 R4 K6 ["PageName"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K19 [{"Title", "FailedTitle", "Key", "PageComponent"}]
  LOADK R9 K20 ["Plugin"]
  LOADK R10 K21 ["TestTemplatesPage.Title"]
  NAMECALL R7 R1 K22 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K15 ["Title"]
  LOADK R9 K20 ["Plugin"]
  LOADK R10 K23 ["NoTemplatesToDisplay"]
  NAMECALL R7 R1 K22 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K16 ["FailedTitle"]
  LOADK R7 K14 ["TestTemplates"]
  SETTABLEKS R7 R6 K17 ["Key"]
  GETUPVAL R7 5
  SETTABLEKS R7 R6 K18 ["PageComponent"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K7 ["Tabs"]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["HideTabs"]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["CanSwapBetweenViews"]
  LOADB R5 1
  SETTABLEKS R5 R4 K10 ["IsDefaultGridView"]
  LOADB R5 0
  SETTABLEKS R5 R4 K11 ["HasSearchBar"]
  LOADB R5 0
  SETTABLEKS R5 R4 K12 ["IsAlertVisible"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["TypedDash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["join"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K13 ["ContextServices"]
  GETTABLEKS R5 R6 K14 ["Localization"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K15 ["Components"]
  GETTABLEKS R7 R8 K16 ["NetworkView"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETTABLEKS R8 R9 K17 ["InfoTile"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K18 ["GamePage"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K8 ["Src"]
  GETTABLEKS R11 R12 K19 ["Network"]
  GETTABLEKS R10 R11 K20 ["DiscoverTestTemplates"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K8 ["Src"]
  GETTABLEKS R12 R13 K9 ["Util"]
  GETTABLEKS R11 R12 K21 ["Services"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K22 ["StartPageManager"]
  GETTABLEKS R12 R10 K23 ["StudioService"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K8 ["Src"]
  GETTABLEKS R15 R16 K24 ["SharedFlags"]
  GETTABLEKS R14 R15 K25 ["getFFlagLuaStartPageStudioTestTemplates"]
  CALL R13 1 1
  CALL R13 0 1
  JUMPIFNOT R13 [+21]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K8 ["Src"]
  GETTABLEKS R15 R16 K24 ["SharedFlags"]
  GETTABLEKS R14 R15 K26 ["getFFlagLuaStartPageNetworkCache"]
  CALL R13 1 1
  CALL R13 0 1
  JUMPIFNOT R13 [+10]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K8 ["Src"]
  GETTABLEKS R15 R16 K24 ["SharedFlags"]
  GETTABLEKS R14 R15 K27 ["getFFlagLuaStartPageQuickLoad"]
  CALL R13 1 1
  CALL R13 0 1
  DUPTABLE R14 K30 [{"searchKey", "pageSize"}]
  LOADK R15 K31 ["TestTemplates"]
  SETTABLEKS R15 R14 K28 ["searchKey"]
  LOADN R15 30
  SETTABLEKS R15 R14 K29 ["pageSize"]
  GETIMPORT R15 K34 [UDim2.new]
  LOADN R16 0
  LOADN R17 225
  LOADN R18 0
  LOADN R19 252
  CALL R15 4 1
  DUPCLOSURE R16 K35 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R11
  DUPCLOSURE R17 K36 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R9
  DUPCLOSURE R18 K37 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R17
  RETURN R18 1
