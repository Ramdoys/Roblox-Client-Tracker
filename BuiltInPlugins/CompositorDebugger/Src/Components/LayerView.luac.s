PROTO_0:
  GETIMPORT R1 K2 [Vector2.new]
  GETTABLEN R2 R0 1
  GETTABLEN R3 R0 2
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  NEWTABLE R1 0 2
  GETTABLEKS R2 R0 K0 ["X"]
  GETTABLEKS R3 R0 K1 ["Y"]
  SETLIST R1 R2 2 [1]
  RETURN R1 1

PROTO_2:
  GETTABLEN R2 R0 1
  GETTABLEN R3 R0 2
  GETTABLEN R4 R0 3
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K2 [Vector3.new]
  CALL R1 3 1
  RETURN R1 1

PROTO_3:
  NEWTABLE R1 0 3
  GETTABLEKS R2 R0 K0 ["X"]
  GETTABLEKS R3 R0 K1 ["Y"]
  GETTABLEKS R4 R0 K2 ["Z"]
  SETLIST R1 R2 3 [1]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["children"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["id"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["SetExpandedSections"]
  GETUPVAL R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["ExpandedSections"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["hasChildren"]
  JUMPIFNOT R1 [+23]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["getItemId"]
  GETTABLEKS R2 R0 K2 ["item"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["onToggle"]
  NEWTABLE R3 1 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["props"]
  GETTABLEKS R6 R7 K5 ["ExpandedSections"]
  GETTABLE R5 R6 R1
  JUMPIFEQKB R5 FALSE [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLE R4 R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["SetOverride"]
  GETTABLEKS R3 R1 K2 ["id"]
  GETTABLEKS R4 R1 K3 ["field"]
  MOVE R5 R0
  CALL R2 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["LAYERVIEW_ACTIONS"]
  GETTABLEKS R3 R4 K2 ["Clear"]
  JUMPIFNOTEQ R0 R3 [+13]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["SetOverride"]
  GETTABLEKS R4 R1 K4 ["id"]
  GETTABLEKS R5 R1 K5 ["field"]
  LOADNIL R6
  CALL R3 3 0
  RETURN R0 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["LAYERVIEW_ACTIONS"]
  GETTABLEKS R3 R4 K6 ["History"]
  JUMPIFNOTEQ R0 R3 [+13]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K7 ["SetHistoryField"]
  GETTABLEKS R4 R1 K4 ["id"]
  GETTABLEKS R5 R1 K8 ["section"]
  GETTABLEKS R6 R1 K5 ["field"]
  CALL R3 3 0
  RETURN R0 0

PROTO_10:
  DUPCLOSURE R1 K0 [PROTO_4]
  SETTABLEKS R1 R0 K1 ["getChildren"]
  DUPCLOSURE R1 K2 [PROTO_5]
  SETTABLEKS R1 R0 K3 ["getItemId"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K4 ["onToggle"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onDoubleClick"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onCellEdited"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K7 ["onCellAction"]
  DUPTABLE R3 K9 [{"LayerData"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K8 ["LayerData"]
  NAMECALL R1 R0 K10 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  MOVE R2 R0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R8 R2
  JUMPIFNOT R8 [+1]
  GETTABLE R8 R2 R7
  MOVE R2 R8
  FORGLOOP R3 2 [-5]
  RETURN R2 1

PROTO_12:
  GETTABLEKS R3 R0 K0 ["name"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K2 [typeof]
  CALL R2 1 1
  GETTABLEKS R4 R1 K0 ["name"]
  FASTCALL1 TYPEOF R4 [+2]
  GETIMPORT R3 K2 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQ R2 R3 [+10]
  GETTABLEKS R3 R0 K0 ["name"]
  GETTABLEKS R4 R1 K0 ["name"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R4 R0 K0 ["name"]
  FASTCALL1 TYPEOF R4 [+2]
  GETIMPORT R3 K2 [typeof]
  CALL R3 1 1
  GETTABLEKS R5 R1 K0 ["name"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K2 [typeof]
  CALL R4 1 1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_13:
  JUMPIF R3 [+1]
  RETURN R0 0
  FASTCALL1 ASSERT R3 [+3]
  MOVE R7 R3
  GETIMPORT R6 K1 [assert]
  CALL R6 1 0
  GETUPVAL R7 0
  GETTABLE R6 R7 R2
  MOVE R7 R6
  JUMPIFNOT R7 [+2]
  GETTABLEKS R7 R6 K2 ["Editable"]
  MOVE R8 R6
  JUMPIFNOT R8 [+2]
  GETTABLEKS R8 R6 K3 ["Overrides"]
  MOVE R9 R6
  JUMPIFNOT R9 [+2]
  GETTABLEKS R9 R6 K4 ["History"]
  JUMPIFEQKNIL R5 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  MOVE R11 R5
  JUMPIF R11 [+2]
  NEWTABLE R11 0 0
  MOVE R5 R11
  GETIMPORT R11 K6 [pairs]
  MOVE R12 R3
  CALL R11 1 3
  FORGPREP_NEXT R11
  NEWTABLE R16 0 0
  GETUPVAL R17 1
  MOVE R18 R5
  CALL R17 1 1
  FASTCALL2 TABLE_INSERT R17 R14 [+5]
  MOVE R19 R17
  MOVE R20 R14
  GETIMPORT R18 K9 [table.insert]
  CALL R18 2 0
  JUMPIFNOT R8 [+33]
  JUMPIFNOT R4 [+32]
  MOVE R19 R4
  MOVE R20 R17
  LOADNIL R21
  LOADNIL R22
  FORGPREP R20
  MOVE R25 R19
  JUMPIFNOT R25 [+1]
  GETTABLE R25 R19 R24
  MOVE R19 R25
  FORGLOOP R20 2 [-5]
  MOVE R18 R19
  JUMPIFEQKNIL R18 [+19]
  MOVE R15 R18
  DUPTABLE R21 K12 [{"Id", "Icon"}]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K13 ["LAYERVIEW_ACTIONS"]
  GETTABLEKS R22 R23 K14 ["Clear"]
  SETTABLEKS R22 R21 K10 ["Id"]
  LOADK R22 K15 ["rbxasset://textures/CompositorDebugger/clear.png"]
  SETTABLEKS R22 R21 K11 ["Icon"]
  FASTCALL2 TABLE_INSERT R16 R21 [+4]
  MOVE R20 R16
  GETIMPORT R19 K9 [table.insert]
  CALL R19 2 0
  DUPTABLE R18 K19 [{"name", "id", "path"}]
  SETTABLEKS R14 R18 K16 ["name"]
  MOVE R20 R2
  LOADK R21 K20 ["|"]
  GETIMPORT R22 K22 [table.concat]
  MOVE R23 R17
  LOADK R24 K20 ["|"]
  CALL R22 2 1
  CONCAT R19 R20 R22
  SETTABLEKS R19 R18 K17 ["id"]
  DUPTABLE R19 K25 [{"id", "section", "field"}]
  SETTABLEKS R1 R19 K17 ["id"]
  SETTABLEKS R2 R19 K23 ["section"]
  SETTABLEKS R17 R19 K24 ["field"]
  SETTABLEKS R19 R18 K18 ["path"]
  FASTCALL1 TYPEOF R15 [+3]
  MOVE R20 R15
  GETIMPORT R19 K27 [typeof]
  CALL R19 1 1
  JUMPIFNOTEQKS R19 K7 ["table"] [+23]
  DUPTABLE R20 K30 [{"Value", "Actions"}]
  LOADK R21 K31 [""]
  SETTABLEKS R21 R20 K28 ["Value"]
  SETTABLEKS R16 R20 K29 ["Actions"]
  SETTABLEKS R20 R18 K32 ["value"]
  NEWTABLE R20 0 0
  SETTABLEKS R20 R18 K33 ["children"]
  GETUPVAL R20 3
  GETTABLEKS R21 R18 K33 ["children"]
  MOVE R22 R1
  MOVE R23 R2
  MOVE R24 R15
  MOVE R25 R4
  MOVE R26 R17
  CALL R20 6 0
  JUMP [+62]
  GETUPVAL R21 4
  GETTABLE R20 R21 R19
  JUMPIF R20 [+7]
  LOADK R21 K34 ["["]
  MOVE R22 R19
  LOADK R23 K35 ["]"]
  CONCAT R20 R21 R23
  SETTABLEKS R20 R18 K32 ["value"]
  JUMP [+52]
  JUMPIFNOT R9 [+23]
  GETUPVAL R22 4
  GETTABLE R21 R22 R19
  GETTABLEKS R20 R21 K4 ["History"]
  JUMPIFNOT R20 [+18]
  DUPTABLE R22 K12 [{"Id", "Icon"}]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K13 ["LAYERVIEW_ACTIONS"]
  GETTABLEKS R23 R24 K4 ["History"]
  SETTABLEKS R23 R22 K10 ["Id"]
  LOADK R23 K36 ["rbxasset://textures/CompositorDebugger/history.png"]
  SETTABLEKS R23 R22 K11 ["Icon"]
  FASTCALL2 TABLE_INSERT R16 R22 [+4]
  MOVE R21 R16
  GETIMPORT R20 K9 [table.insert]
  CALL R20 2 0
  JUMP [+14]
  DUPTABLE R22 K37 [{"Id"}]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K13 ["LAYERVIEW_ACTIONS"]
  GETTABLEKS R23 R24 K38 ["NoOp"]
  SETTABLEKS R23 R22 K10 ["Id"]
  FASTCALL2 TABLE_INSERT R16 R22 [+4]
  MOVE R21 R16
  GETIMPORT R20 K9 [table.insert]
  CALL R20 2 0
  DUPTABLE R20 K41 [{"Value", "Disabled", "Schema", "Actions"}]
  SETTABLEKS R15 R20 K28 ["Value"]
  NOT R21 R7
  SETTABLEKS R21 R20 K39 ["Disabled"]
  GETUPVAL R22 4
  GETTABLE R21 R22 R19
  SETTABLEKS R21 R20 K40 ["Schema"]
  SETTABLEKS R16 R20 K29 ["Actions"]
  SETTABLEKS R20 R18 K32 ["value"]
  FASTCALL2 TABLE_INSERT R0 R18 [+5]
  MOVE R21 R0
  MOVE R22 R18
  GETIMPORT R20 K9 [table.insert]
  CALL R20 2 0
  FORGLOOP R11 2 [-167]
  GETIMPORT R11 K43 [table.sort]
  MOVE R12 R0
  DUPCLOSURE R13 K44 [PROTO_12]
  CALL R11 2 0
  RETURN R0 0

PROTO_14:
  JUMPIFNOT R1 [+35]
  GETIMPORT R2 K1 [next]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+30]
  DUPTABLE R2 K5 [{"name", "children", "id"}]
  GETUPVAL R3 0
  LOADK R5 K6 ["LayerView"]
  MOVE R6 R0
  NAMECALL R3 R3 K7 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K2 ["name"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K3 ["children"]
  SETTABLEKS R0 R2 K4 ["id"]
  GETUPVAL R3 1
  GETTABLEKS R4 R2 K3 ["children"]
  GETUPVAL R5 2
  MOVE R6 R0
  MOVE R7 R1
  GETUPVAL R8 3
  CALL R3 5 0
  GETUPVAL R4 4
  FASTCALL2 TABLE_INSERT R4 R2 [+4]
  MOVE R5 R2
  GETIMPORT R3 K10 [table.insert]
  CALL R3 2 0
  RETURN R0 0

PROTO_15:
  NEWCLOSURE R4 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R0
  RETURN R4 1

PROTO_16:
  JUMPIF R0 [+2]
  LOADNIL R3
  RETURN R3 1
  NEWTABLE R3 0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["ShowLayerID"]
  JUMPIFNOT R4 [+20]
  DUPTABLE R6 K4 [{"name", "children", "id"}]
  GETTABLEKS R7 R0 K3 ["id"]
  SETTABLEKS R7 R6 K1 ["name"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K2 ["children"]
  GETTABLEKS R8 R0 K3 ["id"]
  ORK R7 R8 K5 ["uuid"]
  SETTABLEKS R7 R6 K3 ["id"]
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K8 [table.insert]
  CALL R4 2 0
  GETTABLEKS R5 R0 K3 ["id"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R3
  MOVE R5 R4
  LOADK R6 K9 ["layerDetails"]
  DUPTABLE R7 K11 [{"name", "class", "children"}]
  GETTABLEKS R9 R0 K1 ["name"]
  ORK R8 R9 K12 [""]
  SETTABLEKS R8 R7 K1 ["name"]
  GETTABLEKS R8 R0 K13 ["className"]
  SETTABLEKS R8 R7 K10 ["class"]
  GETTABLEKS R9 R0 K2 ["children"]
  JUMPIFNOT R9 [+4]
  GETTABLEKS R9 R0 K2 ["children"]
  LENGTH R8 R9
  JUMPIF R8 [+1]
  LOADN R8 0
  SETTABLEKS R8 R7 K2 ["children"]
  CALL R5 2 0
  MOVE R5 R4
  LOADK R6 K14 ["linkData"]
  GETTABLEKS R7 R0 K14 ["linkData"]
  CALL R5 2 0
  MOVE R5 R4
  LOADK R6 K15 ["props"]
  GETTABLEKS R7 R0 K15 ["props"]
  CALL R5 2 0
  MOVE R5 R4
  LOADK R6 K16 ["state"]
  GETTABLEKS R7 R0 K16 ["state"]
  CALL R5 2 0
  MOVE R5 R4
  LOADK R6 K17 ["watches"]
  GETTABLEKS R7 R0 K17 ["watches"]
  CALL R5 2 0
  RETURN R3 1

PROTO_17:
  DUPTABLE R2 K1 [{"LayerData"}]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K0 ["LayerData"]
  GETTABLEKS R5 R0 K2 ["Overrides"]
  GETTABLEKS R6 R0 K3 ["Localization"]
  CALL R3 3 1
  JUMPIF R3 [+3]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["None"]
  SETTABLEKS R3 R2 K0 ["LayerData"]
  RETURN R2 1

PROTO_18:
  SETUPVAL R0 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R3 R2 K2 ["RawMode"]
  JUMPIFNOT R3 [+85]
  LOADNIL R3
  GETIMPORT R4 K4 [require]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["Src"]
  GETTABLEKS R7 R8 K6 ["Util"]
  GETTABLEKS R6 R7 K7 ["Debug"]
  GETTABLEKS R5 R6 K8 ["dumpTable"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K9 ["LayerData"]
  JUMPIFNOT R5 [+31]
  GETUPVAL R5 1
  GETTABLEKS R6 R2 K9 ["LayerData"]
  CALL R5 1 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["ShowRawDataChildren"]
  JUMPIF R6 [+10]
  GETTABLEKS R7 R5 K11 ["children"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R7 R5 K11 ["children"]
  LENGTH R6 R7
  JUMP [+1]
  LOADN R6 0
  SETTABLEKS R6 R5 K11 ["children"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K12 ["ShowLayerID"]
  JUMPIF R6 [+3]
  LOADNIL R6
  SETTABLEKS R6 R5 K13 ["id"]
  MOVE R6 R4
  MOVE R7 R5
  NEWCLOSURE R8 P0
  CAPTURE REF R3
  CALL R6 2 0
  JUMP [+1]
  LOADK R3 K14 ["{}"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K15 ["createElement"]
  GETUPVAL R6 4
  NEWTABLE R7 8 0
  GETIMPORT R8 K18 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["Size"]
  GETTABLEKS R8 R2 K20 ["LayoutOrder"]
  SETTABLEKS R8 R7 K20 ["LayoutOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K21 ["MultiLine"]
  LOADB R8 1
  SETTABLEKS R8 R7 K22 ["Disabled"]
  SETTABLEKS R3 R7 K23 ["Text"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K24 ["Tag"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K24 ["Tag"]
  GETTABLE R9 R2 R10
  SETTABLE R9 R7 R8
  CALL R5 2 -1
  CLOSEUPVALS R3
  RETURN R5 -1
  CLOSEUPVALS R3
  GETTABLEKS R3 R1 K9 ["LayerData"]
  JUMPIFNOT R3 [+91]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K15 ["createElement"]
  GETUPVAL R4 5
  NEWTABLE R5 32 0
  GETTABLEKS R6 R2 K20 ["LayoutOrder"]
  SETTABLEKS R6 R5 K20 ["LayoutOrder"]
  NEWTABLE R6 0 2
  DUPTABLE R7 K27 [{"Name", "Key"}]
  LOADK R8 K25 ["Name"]
  SETTABLEKS R8 R7 K25 ["Name"]
  LOADK R8 K28 ["name"]
  SETTABLEKS R8 R7 K26 ["Key"]
  DUPTABLE R8 K27 [{"Name", "Key"}]
  LOADK R9 K29 ["Value"]
  SETTABLEKS R9 R8 K25 ["Name"]
  LOADK R9 K30 ["value"]
  SETTABLEKS R9 R8 K26 ["Key"]
  SETLIST R6 R7 2 [1]
  SETTABLEKS R6 R5 K31 ["Columns"]
  GETTABLEKS R6 R2 K32 ["ExpandedSections"]
  SETTABLEKS R6 R5 K33 ["Expansion"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K34 ["Selection"]
  GETTABLEKS R6 R1 K9 ["LayerData"]
  SETTABLEKS R6 R5 K35 ["RootItems"]
  LOADB R6 0
  SETTABLEKS R6 R5 K36 ["ShowHeader"]
  GETTABLEKS R6 R0 K37 ["getChildren"]
  SETTABLEKS R6 R5 K38 ["GetChildren"]
  GETTABLEKS R6 R0 K39 ["getItemId"]
  SETTABLEKS R6 R5 K40 ["GetItemId"]
  LOADB R6 1
  SETTABLEKS R6 R5 K41 ["FullSpan"]
  LOADB R6 1
  SETTABLEKS R6 R5 K42 ["FullSpanEmphasis"]
  LOADB R6 1
  SETTABLEKS R6 R5 K43 ["Scroll"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K44 ["CellComponent"]
  GETTABLEKS R6 R0 K45 ["onToggle"]
  SETTABLEKS R6 R5 K46 ["OnExpansionChange"]
  GETTABLEKS R6 R0 K47 ["onDoubleClick"]
  SETTABLEKS R6 R5 K48 ["OnDoubleClick"]
  GETTABLEKS R6 R0 K49 ["onCellEdited"]
  SETTABLEKS R6 R5 K50 ["OnCellEdited"]
  GETTABLEKS R6 R0 K51 ["onCellAction"]
  SETTABLEKS R6 R5 K52 ["OnCellAction"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K24 ["Tag"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K24 ["Tag"]
  GETTABLE R7 R2 R8
  SETTABLE R7 R5 R6
  CALL R3 2 -1
  RETURN R3 -1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K15 ["createElement"]
  GETUPVAL R4 7
  NEWTABLE R5 2 0
  GETTABLEKS R6 R2 K20 ["LayoutOrder"]
  SETTABLEKS R6 R5 K20 ["LayoutOrder"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K24 ["Tag"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K24 ["Tag"]
  GETTABLE R7 R2 R8
  SETTABLE R7 R5 R6
  CALL R3 2 -1
  RETURN R3 -1

PROTO_20:
  DUPTABLE R2 K2 [{"ExpandedSections", "HistoryField"}]
  GETTABLEKS R4 R0 K3 ["Status"]
  GETTABLEKS R3 R4 K0 ["ExpandedSections"]
  SETTABLEKS R3 R2 K0 ["ExpandedSections"]
  GETTABLEKS R4 R0 K3 ["Status"]
  GETTABLEKS R3 R4 K1 ["HistoryField"]
  SETTABLEKS R3 R2 K1 ["HistoryField"]
  RETURN R2 1

PROTO_21:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_24:
  DUPTABLE R1 K3 [{"SetExpandedSections", "SetOverride", "SetHistoryField"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetExpandedSections"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetOverride"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetHistoryField"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactRodux"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K11 ["copy"]
  GETTABLEKS R6 R1 K12 ["join"]
  GETTABLEKS R7 R2 K13 ["ContextServices"]
  GETTABLEKS R8 R7 K14 ["withContext"]
  GETTABLEKS R9 R7 K15 ["Analytics"]
  GETTABLEKS R10 R7 K16 ["Localization"]
  GETTABLEKS R11 R2 K17 ["UI"]
  GETTABLEKS R12 R11 K18 ["Pane"]
  GETTABLEKS R13 R11 K19 ["TextInput"]
  GETTABLEKS R14 R11 K20 ["TreeTable"]
  GETTABLEKS R16 R0 K21 ["Src"]
  GETTABLEKS R15 R16 K22 ["Actions"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R15 K23 ["SetExpandedSections"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R15 K24 ["SetHistoryField"]
  CALL R17 1 1
  GETTABLEKS R19 R0 K21 ["Src"]
  GETTABLEKS R18 R19 K25 ["Components"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R18 K26 ["LayerViewCell"]
  CALL R19 1 1
  GETTABLEKS R21 R0 K21 ["Src"]
  GETTABLEKS R20 R21 K27 ["Thunks"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R20 K28 ["SetOverride"]
  CALL R21 1 1
  GETTABLEKS R23 R0 K21 ["Src"]
  GETTABLEKS R22 R23 K29 ["Util"]
  GETIMPORT R23 K5 [require]
  GETTABLEKS R24 R22 K30 ["Constants"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R25 R22 K31 ["debugFlags"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R27 R0 K21 ["Src"]
  GETTABLEKS R26 R27 K32 ["Types"]
  CALL R25 1 1
  DUPTABLE R26 K36 [{"props", "state", "watches"}]
  DUPTABLE R27 K40 [{"Editable", "Overrides", "History"}]
  LOADB R28 1
  SETTABLEKS R28 R27 K37 ["Editable"]
  LOADB R28 1
  SETTABLEKS R28 R27 K38 ["Overrides"]
  LOADB R28 1
  SETTABLEKS R28 R27 K39 ["History"]
  SETTABLEKS R27 R26 K33 ["props"]
  DUPTABLE R27 K41 [{"History"}]
  LOADB R28 1
  SETTABLEKS R28 R27 K39 ["History"]
  SETTABLEKS R27 R26 K34 ["state"]
  DUPTABLE R27 K41 [{"History"}]
  LOADB R28 1
  SETTABLEKS R28 R27 K39 ["History"]
  SETTABLEKS R27 R26 K35 ["watches"]
  DUPTABLE R27 K47 [{"number", "string", "boolean", "Vector2", "Vector3"}]
  DUPTABLE R28 K49 [{"Type", "History"}]
  LOADK R29 K50 ["Number"]
  SETTABLEKS R29 R28 K48 ["Type"]
  LOADB R29 1
  SETTABLEKS R29 R28 K39 ["History"]
  SETTABLEKS R28 R27 K42 ["number"]
  DUPTABLE R28 K51 [{"Type"}]
  LOADK R29 K52 ["Text"]
  SETTABLEKS R29 R28 K48 ["Type"]
  SETTABLEKS R28 R27 K43 ["string"]
  DUPTABLE R28 K51 [{"Type"}]
  LOADK R29 K53 ["Checkbox"]
  SETTABLEKS R29 R28 K48 ["Type"]
  SETTABLEKS R28 R27 K44 ["boolean"]
  DUPTABLE R28 K56 [{"Type", "Components", "GetValue", "GetComponents", "History"}]
  LOADK R29 K57 ["Vector"]
  SETTABLEKS R29 R28 K48 ["Type"]
  NEWTABLE R29 0 2
  LOADK R30 K58 ["X"]
  LOADK R31 K59 ["Y"]
  SETLIST R29 R30 2 [1]
  SETTABLEKS R29 R28 K25 ["Components"]
  DUPCLOSURE R29 K60 [PROTO_0]
  SETTABLEKS R29 R28 K54 ["GetValue"]
  DUPCLOSURE R29 K61 [PROTO_1]
  SETTABLEKS R29 R28 K55 ["GetComponents"]
  LOADB R29 1
  SETTABLEKS R29 R28 K39 ["History"]
  SETTABLEKS R28 R27 K45 ["Vector2"]
  DUPTABLE R28 K56 [{"Type", "Components", "GetValue", "GetComponents", "History"}]
  LOADK R29 K57 ["Vector"]
  SETTABLEKS R29 R28 K48 ["Type"]
  NEWTABLE R29 0 3
  LOADK R30 K58 ["X"]
  LOADK R31 K59 ["Y"]
  LOADK R32 K62 ["Z"]
  SETLIST R29 R30 3 [1]
  SETTABLEKS R29 R28 K25 ["Components"]
  DUPCLOSURE R29 K63 [PROTO_2]
  SETTABLEKS R29 R28 K54 ["GetValue"]
  DUPCLOSURE R29 K64 [PROTO_3]
  SETTABLEKS R29 R28 K55 ["GetComponents"]
  LOADB R29 1
  SETTABLEKS R29 R28 K39 ["History"]
  SETTABLEKS R28 R27 K46 ["Vector3"]
  GETTABLEKS R28 R3 K65 ["PureComponent"]
  LOADK R30 K66 ["LayerView"]
  NAMECALL R28 R28 K67 ["extend"]
  CALL R28 2 1
  DUPCLOSURE R29 K68 [PROTO_10]
  CAPTURE VAL R6
  CAPTURE VAL R23
  SETTABLEKS R29 R28 K69 ["init"]
  DUPCLOSURE R29 K70 [PROTO_11]
  DUPCLOSURE R30 K71 [PROTO_13]
  CAPTURE VAL R26
  CAPTURE VAL R5
  CAPTURE VAL R23
  CAPTURE VAL R30
  CAPTURE VAL R27
  DUPCLOSURE R31 K72 [PROTO_15]
  CAPTURE VAL R30
  DUPCLOSURE R32 K73 [PROTO_16]
  CAPTURE VAL R24
  CAPTURE VAL R30
  DUPCLOSURE R33 K74 [PROTO_17]
  CAPTURE VAL R32
  CAPTURE VAL R3
  SETTABLEKS R33 R28 K75 ["getDerivedStateFromProps"]
  DUPCLOSURE R33 K76 [PROTO_19]
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R24
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R12
  SETTABLEKS R33 R28 K77 ["render"]
  MOVE R33 R8
  DUPTABLE R34 K78 [{"Analytics", "Localization"}]
  SETTABLEKS R9 R34 K15 ["Analytics"]
  SETTABLEKS R10 R34 K16 ["Localization"]
  CALL R33 1 1
  MOVE R34 R28
  CALL R33 1 1
  MOVE R28 R33
  DUPCLOSURE R33 K79 [PROTO_20]
  DUPCLOSURE R34 K80 [PROTO_24]
  CAPTURE VAL R16
  CAPTURE VAL R21
  CAPTURE VAL R17
  GETTABLEKS R35 R4 K81 ["connect"]
  MOVE R36 R33
  MOVE R37 R34
  CALL R35 2 1
  MOVE R36 R28
  CALL R35 1 1
  MOVE R28 R35
  RETURN R28 1
