PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showFilterMenu"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showFilterMenu"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showFilterMenu"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showFilterMenu"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"showFilterMenu"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["showFilterMenu"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["showFilterMenu"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["hideFilterMenu"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnEventRightClick"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnEventInputBegan"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnEventInputEnded"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R5 R4 K1 ["Events"]
  GETTABLEKS R6 R4 K2 ["EventFilters"]
  GETTABLEKS R9 R5 K3 ["Data"]
  GETTABLE R8 R9 R3
  JUMPIFNOT R8 [+10]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["Dictionary"]
  GETTABLEKS R7 R8 K5 ["keys"]
  GETTABLEKS R9 R5 K3 ["Data"]
  GETTABLE R8 R9 R3
  CALL R7 1 1
  JUMPIF R7 [+5]
  GETUPVAL R8 1
  JUMPIFNOT R8 [+2]
  LOADNIL R7
  JUMP [+1]
  LOADB R7 0
  GETUPVAL R8 1
  JUMPIFNOT R8 [+5]
  JUMPIFNOT R7 [+4]
  GETIMPORT R8 K8 [table.sort]
  MOVE R9 R7
  CALL R8 1 0
  JUMPIFNOT R6 [+18]
  NEWTABLE R8 0 0
  MOVE R9 R7
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLE R14 R6 R13
  JUMPIFNOT R14 [+7]
  FASTCALL2 TABLE_INSERT R8 R13 [+5]
  MOVE R15 R8
  MOVE R16 R13
  GETIMPORT R14 K10 [table.insert]
  CALL R14 2 0
  FORGLOOP R9 2 [-10]
  MOVE R7 R8
  JUMPIFNOT R7 [+47]
  GETIMPORT R9 K12 [next]
  MOVE R10 R7
  CALL R9 1 1
  JUMPIFNOT R9 [+42]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K21 [{"Selected", "Names", "Position", "ZIndex", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
  SETTABLEKS R1 R10 K14 ["Selected"]
  SETTABLEKS R7 R10 K15 ["Names"]
  GETIMPORT R11 K24 [UDim2.new]
  LOADN R12 0
  MOVE R13 R2
  LOADK R14 K25 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K16 ["Position"]
  GETTABLEKS R11 R4 K17 ["ZIndex"]
  SETTABLEKS R11 R10 K17 ["ZIndex"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K18 ["OnRightClick"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K19 ["OnInputBegan"]
  NEWCLOSURE R11 P2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K20 ["OnInputEnded"]
  CALL R8 2 1
  RETURN R8 1
  LOADNIL R8
  RETURN R8 1

PROTO_7:
  GETTABLEKS R3 R0 K0 ["props"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"Selected", "Position", "ZIndex"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K2 ["Selected"]
  GETIMPORT R7 K8 [UDim2.new]
  LOADN R8 0
  MOVE R9 R1
  LOADK R10 K9 [0.5]
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K3 ["Position"]
  GETTABLEKS R8 R3 K4 ["ZIndex"]
  ADDK R7 R8 K10 [1]
  SETTABLEKS R7 R6 K4 ["ZIndex"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Width"]
  GETTABLEKS R4 R2 K2 ["StartTick"]
  GETTABLEKS R5 R2 K3 ["EndTick"]
  GETTABLEKS R7 R2 K4 ["Events"]
  GETTABLEKS R6 R7 K5 ["Keyframes"]
  GETTABLEKS R7 R2 K6 ["SelectedEvents"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["getKeyframesExtents"]
  MOVE R9 R6
  MOVE R10 R4
  MOVE R11 R5
  CALL R8 3 2
  JUMPIFEQKNIL R8 [+27]
  JUMPIFEQKNIL R9 [+25]
  MOVE R12 R8
  MOVE R10 R9
  LOADN R11 1
  FORNPREP R10
  GETTABLE R13 R6 R12
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K8 ["getScaledKeyframePosition"]
  MOVE R15 R13
  MOVE R16 R4
  MOVE R17 R5
  MOVE R18 R3
  CALL R14 4 1
  MOVE R15 R7
  JUMPIFNOT R15 [+1]
  GETTABLE R15 R7 R13
  MOVE R18 R15
  MOVE R19 R14
  MOVE R20 R13
  NAMECALL R16 R0 K9 ["renderEvent"]
  CALL R16 4 1
  SETTABLE R16 R1 R12
  FORNLOOP R10
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ToggleEventFilter"]
  GETTABLEKS R2 R0 K1 ["Text"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  NEWTABLE R3 0 0
  GETTABLEKS R4 R1 K2 ["AvailableEvents"]
  GETTABLEKS R5 R1 K3 ["EventFilters"]
  GETIMPORT R6 K5 [ipairs]
  MOVE R7 R4
  CALL R6 1 3
  FORGPREP_INEXT R6
  DUPTABLE R13 K9 [{"Text", "Checked", "OnItemClicked"}]
  SETTABLEKS R10 R13 K6 ["Text"]
  MOVE R14 R5
  JUMPIFNOT R14 [+1]
  GETTABLE R14 R5 R10
  SETTABLEKS R14 R13 K7 ["Checked"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K8 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R3 R13 [+4]
  MOVE R12 R3
  GETIMPORT R11 K12 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [inext] [-19]
  LENGTH R6 R3
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+10]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["MENU_SEPARATOR"]
  FASTCALL2 TABLE_INSERT R3 R8 [+4]
  MOVE R7 R3
  GETIMPORT R6 K12 [table.insert]
  CALL R6 2 0
  DUPTABLE R8 K9 [{"Text", "Checked", "OnItemClicked"}]
  LOADK R11 K14 ["Menu"]
  LOADK R12 K15 ["Nothing"]
  NAMECALL R9 R2 K16 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K6 ["Text"]
  LOADB R9 0
  LENGTH R10 R4
  LOADN R11 0
  JUMPIFNOTLT R11 R10 [+15]
  NOT R9 R5
  JUMPIF R9 [+12]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K17 ["Dictionary"]
  GETTABLEKS R11 R12 K18 ["keys"]
  MOVE R12 R5
  CALL R11 1 1
  LENGTH R10 R11
  JUMPIFEQKN R10 K19 [0] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K7 ["Checked"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K20 ["ClearEventFilters"]
  SETTABLEKS R9 R8 K8 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R3 R8 [+4]
  MOVE R7 R3
  GETIMPORT R6 K12 [table.insert]
  CALL R6 2 0
  DUPTABLE R8 K9 [{"Text", "Checked", "OnItemClicked"}]
  LOADK R11 K14 ["Menu"]
  LOADK R12 K21 ["Everything"]
  NAMECALL R9 R2 K16 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K6 ["Text"]
  NOT R9 R5
  JUMPIF R9 [+13]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K17 ["Dictionary"]
  GETTABLEKS R11 R12 K18 ["keys"]
  MOVE R12 R5
  CALL R11 1 1
  LENGTH R10 R11
  LENGTH R11 R4
  JUMPIFEQ R10 R11 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K7 ["Checked"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K22 ["SetAllEventFilters"]
  SETTABLEKS R9 R8 K8 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R3 R8 [+4]
  MOVE R7 R3
  GETIMPORT R6 K12 [table.insert]
  CALL R6 2 0
  RETURN R3 1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R5 R4 K4 ["showFilterMenu"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["Children"]
  GETTABLE R6 R1 R7
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["Children"]
  LOADNIL R8
  SETTABLE R8 R1 R7
  GETTABLEKS R7 R1 K6 ["Events"]
  JUMPIFNOT R7 [+13]
  GETTABLEKS R8 R7 K7 ["Keyframes"]
  JUMPIFNOT R8 [+10]
  GETTABLEKS R9 R7 K7 ["Keyframes"]
  LENGTH R8 R9
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+5]
  MOVE R10 R6
  NAMECALL R8 R0 K8 ["renderEvents"]
  CALL R8 2 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 1
  NEWTABLE R10 0 0
  DUPTABLE R11 K12 [{"FilterButton", "Markers"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K18 [{"AnchorPoint", "Size", "Position", "Style", "OnClick"}]
  GETIMPORT R15 K21 [Vector2.new]
  LOADK R16 K22 [0.5]
  LOADK R17 K22 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K13 ["AnchorPoint"]
  GETIMPORT R15 K25 [UDim2.fromOffset]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K26 ["TOGGLE_EDITOR_BUTTON_WIDTH"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K27 ["TOGGLE_EDITOR_BUTTON_HEIGHT"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K14 ["Size"]
  GETIMPORT R15 K25 [UDim2.fromOffset]
  GETTABLEKS R18 R0 K0 ["props"]
  GETTABLEKS R17 R18 K29 ["TrackPadding"]
  DIVK R16 R17 K28 [4]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K31 ["TIMELINE_HEIGHT"]
  DIVK R17 R18 K30 [2]
  CALL R15 2 1
  SETTABLEKS R15 R14 K15 ["Position"]
  GETTABLEKS R16 R2 K32 ["button"]
  GETTABLEKS R15 R16 K33 ["EventFilter"]
  SETTABLEKS R15 R14 K16 ["Style"]
  GETTABLEKS R15 R0 K4 ["showFilterMenu"]
  SETTABLEKS R15 R14 K17 ["OnClick"]
  DUPTABLE R15 K37 [{"Image", "Tooltip", "FilterMenu"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["createElement"]
  LOADK R17 K38 ["ImageLabel"]
  DUPTABLE R18 K41 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "Image", "ImageColor3"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K39 ["BackgroundTransparency"]
  GETTABLEKS R21 R2 K42 ["eventTheme"]
  GETTABLEKS R20 R21 K43 ["filterButton"]
  GETTABLEKS R19 R20 K44 ["size"]
  SETTABLEKS R19 R18 K14 ["Size"]
  GETIMPORT R19 K45 [UDim2.new]
  LOADK R20 K22 [0.5]
  LOADN R21 0
  LOADK R22 K22 [0.5]
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K15 ["Position"]
  GETIMPORT R19 K21 [Vector2.new]
  LOADK R20 K22 [0.5]
  LOADK R21 K22 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K13 ["AnchorPoint"]
  GETTABLEKS R21 R2 K42 ["eventTheme"]
  GETTABLEKS R20 R21 K43 ["filterButton"]
  GETTABLEKS R19 R20 K46 ["image"]
  SETTABLEKS R19 R18 K34 ["Image"]
  GETTABLEKS R20 R2 K47 ["playbackTheme"]
  GETTABLEKS R19 R20 K48 ["iconColor"]
  SETTABLEKS R19 R18 K40 ["ImageColor3"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K34 ["Image"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K50 [{"Text"}]
  LOADK R21 K35 ["Tooltip"]
  LOADK R22 K51 ["FilterEvents"]
  NAMECALL R19 R3 K52 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K49 ["Text"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["Tooltip"]
  MOVE R16 R5
  JUMPIFNOT R16 [+15]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K55 [{"Actions", "OnMenuOpened"}]
  NAMECALL R19 R0 K56 ["makeFilterActions"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K53 ["Actions"]
  GETTABLEKS R19 R0 K57 ["hideFilterMenu"]
  SETTABLEKS R19 R18 K54 ["OnMenuOpened"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K36 ["FilterMenu"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K10 ["FilterButton"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 6
  MOVE R14 R1
  MOVE R15 R6
  CALL R12 3 1
  SETTABLEKS R12 R11 K11 ["Markers"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["StyleModifier"]
  GETTABLEKS R5 R3 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["withContext"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETTABLEKS R8 R9 K16 ["BaseTrack"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K17 ["EventMarker"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K15 ["Components"]
  GETTABLEKS R10 R11 K18 ["ContextMenu"]
  CALL R9 1 1
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K10 ["Util"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R10 K19 ["Constants"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R10 K20 ["TrackUtils"]
  CALL R12 1 1
  GETTABLEKS R13 R3 K21 ["UI"]
  GETTABLEKS R14 R13 K22 ["Button"]
  GETTABLEKS R15 R13 K23 ["Pane"]
  GETTABLEKS R16 R13 K24 ["Tooltip"]
  GETIMPORT R17 K26 [game]
  LOADK R19 K27 ["ACESortEventsTooltip"]
  LOADB R20 0
  NAMECALL R17 R17 K28 ["DefineFastFlag"]
  CALL R17 3 1
  GETTABLEKS R18 R1 K29 ["PureComponent"]
  LOADK R20 K30 ["EventTrack"]
  NAMECALL R18 R18 K31 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K32 [PROTO_2]
  SETTABLEKS R19 R18 K33 ["init"]
  DUPCLOSURE R19 K34 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K35 ["renderEvent"]
  DUPCLOSURE R19 K36 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K37 ["renderPreviewEvent"]
  DUPCLOSURE R19 K38 [PROTO_8]
  CAPTURE VAL R12
  SETTABLEKS R19 R18 K39 ["renderEvents"]
  DUPCLOSURE R19 K40 [PROTO_10]
  CAPTURE VAL R11
  CAPTURE VAL R2
  SETTABLEKS R19 R18 K41 ["makeFilterActions"]
  DUPCLOSURE R19 K42 [PROTO_11]
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R19 R18 K43 ["render"]
  MOVE R19 R6
  DUPTABLE R20 K46 [{"Stylizer", "Localization"}]
  GETTABLEKS R21 R5 K44 ["Stylizer"]
  SETTABLEKS R21 R20 K44 ["Stylizer"]
  GETTABLEKS R21 R5 K45 ["Localization"]
  SETTABLEKS R21 R20 K45 ["Localization"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  RETURN R18 1
