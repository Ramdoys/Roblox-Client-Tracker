PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+4]
  NEWTABLE R0 0 0
  RETURN R0 1
  GETUPVAL R1 1
  GETUPVAL R2 0
  GETTABLE R0 R1 R2
  NEWTABLE R1 1 0
  GETTABLEKS R2 R0 K0 ["keyCode"]
  GETTABLEKS R3 R0 K1 ["direction"]
  SETTABLE R3 R1 R2
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+59]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFEQKNIL R0 [+55]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  GETTABLEKS R1 R2 K1 ["AbsoluteSize"]
  GETTABLEKS R0 R1 K2 ["Y"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["current"]
  ADDK R1 R2 K3 [30]
  JUMPIFNOTLT R0 R1 [+24]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETIMPORT R2 K6 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["current"]
  DIV R6 R7 R0
  MULK R5 R6 K7 [1.8]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K8 ["CanvasSize"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  LOADN R2 4
  SETTABLEKS R2 R1 K9 ["ScrollBarThickness"]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETIMPORT R2 K6 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K8 ["CanvasSize"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  LOADN R2 0
  SETTABLEKS R2 R1 K9 ["ScrollBarThickness"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K1 ["Y"]
  SETTABLEKS R2 R1 K2 ["current"]
  GETUPVAL R1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETTABLEKS R3 R2 K1 ["saveMappings"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["useState"]
  LOADNIL R5
  CALL R4 1 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["useCallback"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  NEWTABLE R8 0 1
  MOVE R9 R5
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["useMemo"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R4
  CAPTURE UPVAL U3
  NEWTABLE R9 0 1
  MOVE R10 R4
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["useState"]
  LOADB R9 0
  CALL R8 1 2
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["useCallback"]
  NEWCLOSURE R11 P2
  CAPTURE VAL R9
  NEWTABLE R12 0 1
  MOVE R13 R9
  SETLIST R12 R13 1 [1]
  CALL R10 2 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["useCallback"]
  NEWCLOSURE R12 P3
  CAPTURE VAL R9
  NEWTABLE R13 0 1
  MOVE R14 R9
  SETLIST R13 R14 1 [1]
  CALL R11 2 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["useRef"]
  LOADN R13 0
  CALL R12 1 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["useRef"]
  LOADNIL R14
  CALL R13 1 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K3 ["useCallback"]
  NEWCLOSURE R15 P4
  CAPTURE VAL R13
  CAPTURE VAL R12
  NEWTABLE R16 0 0
  CALL R14 2 1
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K3 ["useCallback"]
  NEWCLOSURE R16 P5
  CAPTURE VAL R12
  CAPTURE VAL R14
  NEWTABLE R17 0 0
  CALL R15 2 1
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["createElement"]
  LOADK R17 K7 ["Frame"]
  NEWTABLE R18 1 0
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K8 ["Tag"]
  LOADK R20 K9 ["Component-MappingsDialog X-Fill CX-Invisible data-testid=Component-MappingsDialog"]
  SETTABLE R20 R18 R19
  DUPTABLE R19 K12 [{"MappingsInputListener", "MappingsConfirmationDialog"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K6 ["createElement"]
  GETUPVAL R21 4
  NEWTABLE R22 1 0
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K8 ["Tag"]
  LOADK R24 K13 ["X-Fill CX-Invisible"]
  SETTABLE R24 R22 R23
  DUPTABLE R23 K15 [{"LayoutContainer"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K6 ["createElement"]
  LOADK R25 K7 ["Frame"]
  NEWTABLE R26 2 0
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K8 ["Tag"]
  LOADK R28 K16 ["X-Column X-Fill CX-Invisible"]
  SETTABLE R28 R26 R27
  GETUPVAL R27 5
  NAMECALL R27 R27 K17 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K18 ["LayoutOrder"]
  DUPTABLE R27 K21 [{"WidgetHeader", "BlueprintAndListContainer"}]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K6 ["createElement"]
  GETUPVAL R29 6
  NEWTABLE R30 4 0
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K8 ["Tag"]
  LOADK R32 K22 ["Width-Scaling"]
  SETTABLE R32 R30 R31
  GETUPVAL R31 5
  NAMECALL R31 R31 K17 ["getNextOrder"]
  CALL R31 1 1
  SETTABLEKS R31 R30 K18 ["LayoutOrder"]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K6 ["createElement"]
  GETUPVAL R32 7
  NEWTABLE R33 8 0
  GETUPVAL R35 0
  GETTABLEKS R34 R35 K8 ["Tag"]
  LOADK R35 K23 ["DeviceSelectorDropdown"]
  SETTABLE R35 R33 R34
  GETUPVAL R34 5
  NAMECALL R34 R34 K17 ["getNextOrder"]
  CALL R34 1 1
  SETTABLEKS R34 R33 K18 ["LayoutOrder"]
  GETTABLEKS R34 R2 K24 ["loadMappingsForGamepad"]
  SETTABLEKS R34 R33 K25 ["onChanged"]
  GETUPVAL R34 8
  SETTABLEKS R34 R33 K26 ["deviceIds"]
  GETTABLEKS R35 R1 K28 ["isUpdatingMappingForGamepadId"]
  ORK R34 R35 K27 [101]
  SETTABLEKS R34 R33 K29 ["selectedGamepadId"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K30 ["leftContents"]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K6 ["createElement"]
  GETUPVAL R33 0
  GETTABLEKS R32 R33 K31 ["Fragment"]
  NEWTABLE R33 0 0
  DUPTABLE R34 K34 [{"MappingsSaveButton", "MappingsRestoreDefaultsButton"}]
  GETUPVAL R36 0
  GETTABLEKS R35 R36 K6 ["createElement"]
  LOADK R36 K35 ["TextButton"]
  NEWTABLE R37 4 0
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K8 ["Tag"]
  LOADK R39 K36 ["ToolbarButton"]
  SETTABLE R39 R37 R38
  GETUPVAL R38 5
  NAMECALL R38 R38 K17 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K18 ["LayoutOrder"]
  LOADK R38 K37 ["Save"]
  SETTABLEKS R38 R37 K38 ["Text"]
  GETUPVAL R40 0
  GETTABLEKS R39 R40 K39 ["Event"]
  GETTABLEKS R38 R39 K40 ["Activated"]
  SETTABLE R3 R37 R38
  CALL R35 2 1
  SETTABLEKS R35 R34 K32 ["MappingsSaveButton"]
  GETUPVAL R36 0
  GETTABLEKS R35 R36 K6 ["createElement"]
  LOADK R36 K35 ["TextButton"]
  NEWTABLE R37 4 0
  GETUPVAL R39 0
  GETTABLEKS R38 R39 K8 ["Tag"]
  LOADK R39 K36 ["ToolbarButton"]
  SETTABLE R39 R37 R38
  GETUPVAL R38 5
  NAMECALL R38 R38 K17 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K18 ["LayoutOrder"]
  LOADK R38 K41 ["Restore Defaults"]
  SETTABLEKS R38 R37 K38 ["Text"]
  GETUPVAL R40 0
  GETTABLEKS R39 R40 K39 ["Event"]
  GETTABLEKS R38 R39 K40 ["Activated"]
  SETTABLE R11 R37 R38
  CALL R35 2 1
  SETTABLEKS R35 R34 K33 ["MappingsRestoreDefaultsButton"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K42 ["rightContents"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K19 ["WidgetHeader"]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K6 ["createElement"]
  LOADK R29 K7 ["Frame"]
  NEWTABLE R30 2 0
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K8 ["Tag"]
  LOADK R32 K43 ["X-Row X-Fill CX-Invisible"]
  SETTABLE R32 R30 R31
  GETUPVAL R31 5
  NAMECALL R31 R31 K17 ["getNextOrder"]
  CALL R31 1 1
  SETTABLEKS R31 R30 K18 ["LayoutOrder"]
  DUPTABLE R31 K46 [{"BlueprintContainer", "ListScrollingContainer"}]
  GETUPVAL R33 0
  GETTABLEKS R32 R33 K6 ["createElement"]
  LOADK R33 K7 ["Frame"]
  NEWTABLE R34 2 0
  GETUPVAL R36 0
  GETTABLEKS R35 R36 K8 ["Tag"]
  LOADK R36 K47 ["CX-Invisible"]
  SETTABLE R36 R34 R35
  GETUPVAL R35 5
  NAMECALL R35 R35 K17 ["getNextOrder"]
  CALL R35 1 1
  SETTABLEKS R35 R34 K18 ["LayoutOrder"]
  DUPTABLE R35 K49 [{"DeviceBlueprint"}]
  GETUPVAL R37 0
  GETTABLEKS R36 R37 K6 ["createElement"]
  GETUPVAL R37 9
  DUPTABLE R38 K52 [{"LayoutOrder", "selectedGamepadId", "displayMappings", "activeInputs"}]
  GETUPVAL R39 5
  NAMECALL R39 R39 K17 ["getNextOrder"]
  CALL R39 1 1
  SETTABLEKS R39 R38 K18 ["LayoutOrder"]
  GETTABLEKS R39 R1 K28 ["isUpdatingMappingForGamepadId"]
  SETTABLEKS R39 R38 K29 ["selectedGamepadId"]
  LOADB R39 0
  SETTABLEKS R39 R38 K50 ["displayMappings"]
  SETTABLEKS R7 R38 K51 ["activeInputs"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K48 ["DeviceBlueprint"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K44 ["BlueprintContainer"]
  GETUPVAL R33 0
  GETTABLEKS R32 R33 K6 ["createElement"]
  LOADK R33 K53 ["ScrollingFrame"]
  NEWTABLE R34 4 0
  GETUPVAL R36 0
  GETTABLEKS R35 R36 K8 ["Tag"]
  LOADK R36 K54 ["CX-Invisible "]
  SETTABLE R36 R34 R35
  GETUPVAL R35 5
  NAMECALL R35 R35 K17 ["getNextOrder"]
  CALL R35 1 1
  SETTABLEKS R35 R34 K18 ["LayoutOrder"]
  SETTABLEKS R13 R34 K55 ["ref"]
  GETUPVAL R37 0
  GETTABLEKS R36 R37 K56 ["Change"]
  GETTABLEKS R35 R36 K57 ["AbsoluteSize"]
  SETTABLE R14 R34 R35
  DUPTABLE R35 K59 [{"Mappings"}]
  GETUPVAL R37 0
  GETTABLEKS R36 R37 K6 ["createElement"]
  GETUPVAL R37 10
  DUPTABLE R38 K62 [{"LayoutOrder", "onAbsoluteSizeChanged", "onHoveredMappingChanged"}]
  GETUPVAL R39 5
  NAMECALL R39 R39 K17 ["getNextOrder"]
  CALL R39 1 1
  SETTABLEKS R39 R38 K18 ["LayoutOrder"]
  SETTABLEKS R15 R38 K60 ["onAbsoluteSizeChanged"]
  SETTABLEKS R6 R38 K61 ["onHoveredMappingChanged"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K58 ["Mappings"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K45 ["ListScrollingContainer"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K20 ["BlueprintAndListContainer"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K14 ["LayoutContainer"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K10 ["MappingsInputListener"]
  JUMPIFNOT R8 [+9]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K6 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K64 [{"hideConfirmationDialog"}]
  SETTABLEKS R10 R22 K63 ["hideConfirmationDialog"]
  CALL R20 2 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K11 ["MappingsConfirmationDialog"]
  CALL R16 3 -1
  RETURN R16 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["LayoutOrderIterator"]
  GETTABLEKS R4 R3 K11 ["new"]
  CALL R4 0 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K13 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K9 ["Util"]
  GETTABLEKS R7 R8 K14 ["MappingsActionsContext"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K9 ["Util"]
  GETTABLEKS R8 R9 K15 ["MappingsContext"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K16 ["Components"]
  GETTABLEKS R9 R10 K17 ["MappingsList"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K18 ["MappingsInputListener"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K16 ["Components"]
  GETTABLEKS R11 R12 K19 ["WidgetHeader"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K16 ["Components"]
  GETTABLEKS R12 R13 K20 ["DeviceDropdown"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R0 K6 ["Packages"]
  GETTABLEKS R13 R14 K21 ["Dash"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K12 ["Src"]
  GETTABLEKS R15 R16 K16 ["Components"]
  GETTABLEKS R14 R15 K22 ["DeviceBlueprint"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K23 ["ResetMappingsConfirmationDialog"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K12 ["Src"]
  GETTABLEKS R17 R18 K9 ["Util"]
  GETTABLEKS R16 R17 K24 ["AVAILABLE_MAPPINGS_CONFIG"]
  CALL R15 1 1
  GETTABLEKS R16 R12 K25 ["values"]
  GETTABLEKS R17 R5 K26 ["GAMEPAD_TYPE_TO_ID"]
  CALL R16 1 1
  DUPCLOSURE R17 K27 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R14
  GETTABLEKS R18 R1 K28 ["memo"]
  MOVE R19 R17
  CALL R18 1 -1
  RETURN R18 -1
