PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ActiveLayersFilter"}]
  GETTABLEKS R5 R1 K2 ["activeLayersFilter"]
  SETTABLEKS R5 R4 K0 ["ActiveLayersFilter"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Actor"}]
  GETTABLEKS R5 R1 K2 ["actor"]
  JUMPIF R5 [+1]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K0 ["Actor"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Adornments"}]
  GETTABLEKS R5 R1 K2 ["adornments"]
  SETTABLEKS R5 R4 K0 ["Adornments"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"DebugDataEvent", "DebugDataConnection"}]
  GETTABLEKS R5 R1 K3 ["event"]
  SETTABLEKS R5 R4 K0 ["DebugDataEvent"]
  GETTABLEKS R5 R1 K4 ["connection"]
  SETTABLEKS R5 R4 K1 ["DebugDataConnection"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"DebugPoseEvent"}]
  GETTABLEKS R5 R1 K2 ["event"]
  SETTABLEKS R5 R4 K0 ["DebugPoseEvent"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ExpandedSections"}]
  GETTABLEKS R5 R1 K2 ["expandedSections"]
  SETTABLEKS R5 R4 K0 ["ExpandedSections"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"HistoryField"}]
  DUPTABLE R5 K5 [{"id", "section", "field"}]
  GETTABLEKS R6 R1 K2 ["id"]
  SETTABLEKS R6 R5 K2 ["id"]
  GETTABLEKS R6 R1 K3 ["section"]
  SETTABLEKS R6 R5 K3 ["section"]
  GETTABLEKS R6 R1 K4 ["field"]
  SETTABLEKS R6 R5 K4 ["field"]
  SETTABLEKS R5 R4 K0 ["HistoryField"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"HistoryFrame"}]
  GETTABLEKS R5 R1 K2 ["historyFrame"]
  SETTABLEKS R5 R4 K0 ["HistoryFrame"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"HistoryOffset"}]
  GETTABLEKS R5 R1 K2 ["historyOffset"]
  SETTABLEKS R5 R4 K0 ["HistoryOffset"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"LayerFilters"}]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K0 ["LayerFilters"]
  GETTABLEKS R7 R1 K2 ["layerFilters"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["LayerFilters"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"LayerSelectionEvent"}]
  GETTABLEKS R5 R1 K2 ["event"]
  SETTABLEKS R5 R4 K0 ["LayerSelectionEvent"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"PropertyOverridesEvent"}]
  GETTABLEKS R5 R1 K2 ["event"]
  SETTABLEKS R5 R4 K0 ["PropertyOverridesEvent"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SelectedLayer"}]
  GETTABLEKS R5 R1 K2 ["selectedLayer"]
  JUMPIF R5 [+1]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K0 ["SelectedLayer"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SendPayloadAnalytics"}]
  GETTABLEKS R5 R1 K2 ["enable"]
  SETTABLEKS R5 R4 K0 ["SendPayloadAnalytics"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_14:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SkipCounter"}]
  GETTABLEKS R5 R1 K2 ["skipCounter"]
  SETTABLEKS R5 R4 K0 ["SkipCounter"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_15:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SkipLimit"}]
  GETTABLEKS R5 R1 K2 ["skipLimit"]
  SETTABLEKS R5 R4 K0 ["SkipLimit"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["join"]
  GETTABLEKS R4 R1 K10 ["None"]
  GETTABLEKS R6 R0 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Actions"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K13 ["SetActiveLayersFilter"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K14 ["SetActor"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R5 K15 ["SetAdornments"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R5 K16 ["SetDebugDataEvent"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R5 K17 ["SetDebugPoseEvent"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R5 K18 ["SetExpandedSections"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R5 K19 ["SetHistoryField"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R5 K20 ["SetHistoryFrame"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R5 K21 ["SetHistoryOffset"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R5 K22 ["SetLayerFilter"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R5 K23 ["SetLayerSelectionEvent"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R5 K24 ["SetPropertyOverridesEvent"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R5 K25 ["SetSelectedLayer"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R5 K26 ["SetSendPayloadAnalytics"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R5 K27 ["SetSkipCounter"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R5 K28 ["SetSkipLimit"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R24 R0 K11 ["Src"]
  GETTABLEKS R23 R24 K29 ["Types"]
  CALL R22 1 1
  GETTABLEKS R23 R2 K30 ["createReducer"]
  DUPTABLE R24 K49 [{"ActiveLayersFilter", "Actor", "Adornments", "DebugDataConnection", "DebugDataEvent", "DebugPoseEvent", "ExpandedSections", "HistoryDuration", "HistoryField", "HistoryOffset", "HistoryFrame", "LayerFilters", "LayerSelectionEvent", "PropertyOverridesEvent", "SelectedLayer", "SendPayloadAnalytics", "SkipCounter", "SkipLimit"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K31 ["ActiveLayersFilter"]
  LOADNIL R25
  SETTABLEKS R25 R24 K32 ["Actor"]
  NEWTABLE R25 0 0
  SETTABLEKS R25 R24 K33 ["Adornments"]
  LOADNIL R25
  SETTABLEKS R25 R24 K34 ["DebugDataConnection"]
  LOADNIL R25
  SETTABLEKS R25 R24 K35 ["DebugDataEvent"]
  LOADNIL R25
  SETTABLEKS R25 R24 K36 ["DebugPoseEvent"]
  DUPTABLE R25 K55 [{"layerDetails", "linkData", "props", "state", "watches"}]
  LOADB R26 1
  SETTABLEKS R26 R25 K50 ["layerDetails"]
  LOADB R26 1
  SETTABLEKS R26 R25 K51 ["linkData"]
  LOADB R26 1
  SETTABLEKS R26 R25 K52 ["props"]
  LOADB R26 1
  SETTABLEKS R26 R25 K53 ["state"]
  LOADB R26 1
  SETTABLEKS R26 R25 K54 ["watches"]
  SETTABLEKS R25 R24 K37 ["ExpandedSections"]
  LOADN R25 88
  SETTABLEKS R25 R24 K38 ["HistoryDuration"]
  NEWTABLE R25 0 0
  SETTABLEKS R25 R24 K39 ["HistoryField"]
  LOADNIL R25
  SETTABLEKS R25 R24 K40 ["HistoryOffset"]
  LOADNIL R25
  SETTABLEKS R25 R24 K41 ["HistoryFrame"]
  NEWTABLE R25 0 0
  SETTABLEKS R25 R24 K42 ["LayerFilters"]
  LOADNIL R25
  SETTABLEKS R25 R24 K43 ["LayerSelectionEvent"]
  LOADNIL R25
  SETTABLEKS R25 R24 K44 ["PropertyOverridesEvent"]
  LOADNIL R25
  SETTABLEKS R25 R24 K45 ["SelectedLayer"]
  LOADB R25 0
  SETTABLEKS R25 R24 K46 ["SendPayloadAnalytics"]
  LOADN R25 0
  SETTABLEKS R25 R24 K47 ["SkipCounter"]
  LOADN R25 0
  SETTABLEKS R25 R24 K48 ["SkipLimit"]
  NEWTABLE R25 16 0
  GETTABLEKS R26 R6 K56 ["name"]
  DUPCLOSURE R27 K57 [PROTO_0]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R7 K56 ["name"]
  DUPCLOSURE R27 K58 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R8 K56 ["name"]
  DUPCLOSURE R27 K59 [PROTO_2]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R9 K56 ["name"]
  DUPCLOSURE R27 K60 [PROTO_3]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R10 K56 ["name"]
  DUPCLOSURE R27 K61 [PROTO_4]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R11 K56 ["name"]
  DUPCLOSURE R27 K62 [PROTO_5]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R12 K56 ["name"]
  DUPCLOSURE R27 K63 [PROTO_6]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R13 K56 ["name"]
  DUPCLOSURE R27 K64 [PROTO_7]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R14 K56 ["name"]
  DUPCLOSURE R27 K65 [PROTO_8]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R15 K56 ["name"]
  DUPCLOSURE R27 K66 [PROTO_9]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R16 K56 ["name"]
  DUPCLOSURE R27 K67 [PROTO_10]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R17 K56 ["name"]
  DUPCLOSURE R27 K68 [PROTO_11]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R18 K56 ["name"]
  DUPCLOSURE R27 K69 [PROTO_12]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R19 K56 ["name"]
  DUPCLOSURE R27 K70 [PROTO_13]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R20 K56 ["name"]
  DUPCLOSURE R27 K71 [PROTO_14]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R21 K56 ["name"]
  DUPCLOSURE R27 K72 [PROTO_15]
  CAPTURE VAL R3
  SETTABLE R27 R25 R26
  CALL R23 2 1
  RETURN R23 1
