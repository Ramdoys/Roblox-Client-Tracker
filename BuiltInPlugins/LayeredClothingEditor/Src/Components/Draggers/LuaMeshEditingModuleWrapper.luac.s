PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"temp"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["temp"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K0 ["Activate"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["LuaMeshEditingModuleContext"]
  NAMECALL R1 R1 K2 ["getCurrentTool"]
  CALL R1 1 1
  GETIMPORT R2 K6 [Enum.RibbonTool.Select]
  JUMPIFEQ R0 R2 [+13]
  GETIMPORT R2 K8 [Enum.RibbonTool.Rotate]
  JUMPIFEQ R0 R2 [+9]
  GETIMPORT R2 K10 [Enum.RibbonTool.Move]
  JUMPIFEQ R0 R2 [+5]
  GETIMPORT R2 K12 [Enum.RibbonTool.Scale]
  JUMPIFNOTEQ R0 R2 [+37]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+20]
  JUMPIF R1 [+2]
  LOADB R2 0
  RETURN R2 1
  NAMECALL R2 R1 K13 ["getCurrentHandle"]
  CALL R2 1 1
  JUMPIFNOTEQ R2 R0 [+3]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R2 2
  LOADB R4 1
  NAMECALL R2 R2 K14 ["Activate"]
  CALL R2 2 0
  MOVE R4 R0
  NAMECALL R2 R1 K15 ["setCurrentHandle"]
  CALL R2 2 0
  JUMP [+11]
  GETIMPORT R2 K18 [task.delay]
  LOADN R3 0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CALL R2 2 0
  JUMPIFNOT R1 [+4]
  MOVE R4 R0
  NAMECALL R2 R1 K15 ["setCurrentHandle"]
  CALL R2 2 0
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["LuaMeshEditingModuleContext"]
  NAMECALL R0 R0 K2 ["disableEditing"]
  CALL R0 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K3 ["SetControlsPanelBlockerMessage"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K4 ["Localization"]
  LOADK R3 K5 ["Editor"]
  LOADK R4 K6 ["ResumeEditing"]
  NAMECALL R1 R1 K7 ["getText"]
  CALL R1 3 -1
  CALL R0 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K8 ["SetControlsPanelBlockerActivity"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Heartbeat"]
  NAMECALL R0 R0 K1 ["Wait"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Heartbeat"]
  NAMECALL R0 R0 K1 ["Wait"]
  CALL R0 1 0
  GETIMPORT R1 K3 [next]
  GETUPVAL R2 1
  NAMECALL R2 R2 K4 ["Get"]
  CALL R2 1 -1
  CALL R1 -1 1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["disableEditing"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R1 3
  NAMECALL R1 R1 K6 ["GetSelectedRibbonTool"]
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["onToolSelected"]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["disableEditing"]
  CALL R2 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+62]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["GetSelectedRibbonTool"]
  CALL R0 1 1
  GETIMPORT R1 K4 [Enum.RibbonTool.None]
  JUMPIFEQ R0 R1 [+54]
  GETIMPORT R1 K6 [next]
  GETIMPORT R2 K8 [game]
  LOADK R4 K9 ["Selection"]
  NAMECALL R2 R2 K10 ["GetService"]
  CALL R2 2 1
  NAMECALL R2 R2 K11 ["Get"]
  CALL R2 1 -1
  CALL R1 -1 1
  JUMPIFNOTEQKNIL R1 [+9]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K12 ["onToolSelected"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+33]
  RETURN R0 0
  RETURN R0 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K13 ["props"]
  GETTABLEKS R1 R2 K14 ["LuaMeshEditingModuleContext"]
  NAMECALL R1 R1 K15 ["disableEditing"]
  CALL R1 1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K13 ["props"]
  GETTABLEKS R1 R2 K16 ["SetControlsPanelBlockerMessage"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K13 ["props"]
  GETTABLEKS R2 R3 K17 ["Localization"]
  LOADK R4 K18 ["Editor"]
  LOADK R5 K19 ["ResumeEditing"]
  NAMECALL R2 R2 K20 ["getText"]
  CALL R2 3 -1
  CALL R1 -1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K13 ["props"]
  GETTABLEKS R1 R2 K21 ["SetControlsPanelBlockerActivity"]
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0
  GETIMPORT R0 K24 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["LuaMeshEditingModuleContext"]
  NAMECALL R0 R0 K2 ["getCurrentTool"]
  CALL R0 1 1
  JUMPIFNOT R0 [+3]
  NAMECALL R1 R0 K3 ["undo"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["LuaMeshEditingModuleContext"]
  NAMECALL R0 R0 K2 ["getCurrentTool"]
  CALL R0 1 1
  JUMPIFNOT R0 [+3]
  NAMECALL R1 R0 K3 ["redo"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  LOADB R5 1
  NAMECALL R3 R2 K3 ["Activate"]
  CALL R3 2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K4 ["LuaMeshEditingModuleContext"]
  NAMECALL R3 R3 K5 ["getToolChangedSignal"]
  CALL R3 1 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K7 ["toolChangedHandle"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  SETTABLEKS R3 R0 K8 ["onToolSelected"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K9 ["disableEditing"]
  GETTABLEKS R3 R2 K10 ["Deactivation"]
  NEWCLOSURE R5 P3
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K11 ["deactivationListener"]
  GETTABLEKS R3 R1 K12 ["PluginActions"]
  LOADK R5 K13 ["Undo"]
  NAMECALL R3 R3 K2 ["get"]
  CALL R3 2 1
  JUMPIFNOT R3 [+12]
  LOADB R4 1
  SETTABLEKS R4 R3 K14 ["Enabled"]
  GETTABLEKS R4 R3 K15 ["Triggered"]
  NEWCLOSURE R6 P4
  CAPTURE VAL R0
  NAMECALL R4 R4 K6 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K16 ["undoHandle"]
  GETTABLEKS R4 R1 K12 ["PluginActions"]
  LOADK R6 K17 ["Redo"]
  NAMECALL R4 R4 K2 ["get"]
  CALL R4 2 1
  JUMPIFNOT R4 [+12]
  LOADB R5 1
  SETTABLEKS R5 R4 K14 ["Enabled"]
  GETTABLEKS R5 R4 K15 ["Triggered"]
  NEWCLOSURE R7 P5
  CAPTURE VAL R0
  NAMECALL R5 R5 K6 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K18 ["redoHandle"]
  GETUPVAL R5 3
  LOADB R7 0
  NAMECALL R5 R5 K19 ["SetEnabled"]
  CALL R5 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Mouse"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K3 ["Plugin"]
  NAMECALL R3 R3 K2 ["get"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K4 ["LuaMeshEditingModuleContext"]
  NAMECALL R4 R4 K5 ["getCurrentTool"]
  CALL R4 1 1
  JUMPIFEQKNIL R4 [+14]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K8 [{"Mouse", "Plugin", "VertexToolBase"}]
  SETTABLEKS R2 R7 K1 ["Mouse"]
  SETTABLEKS R3 R7 K3 ["Plugin"]
  SETTABLEKS R4 R7 K7 ["VertexToolBase"]
  CALL R5 2 -1
  RETURN R5 -1
  LOADNIL R5
  RETURN R5 1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["PluginActions"]
  LOADK R4 K2 ["Undo"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K1 ["PluginActions"]
  LOADK R5 K4 ["Redo"]
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 2 1
  JUMPIFNOT R2 [+3]
  LOADB R4 0
  SETTABLEKS R4 R2 K5 ["Enabled"]
  JUMPIFNOT R3 [+3]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["Enabled"]
  GETTABLEKS R4 R0 K6 ["deactivationListener"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K6 ["deactivationListener"]
  NAMECALL R4 R4 K7 ["Disconnect"]
  CALL R4 1 0
  GETTABLEKS R4 R0 K8 ["undoHandle"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K8 ["undoHandle"]
  NAMECALL R4 R4 K7 ["Disconnect"]
  CALL R4 1 0
  GETTABLEKS R4 R0 K9 ["redoHandle"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K9 ["redoHandle"]
  NAMECALL R4 R4 K7 ["Disconnect"]
  CALL R4 1 0
  GETTABLEKS R4 R0 K10 ["toolChangedHandle"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K10 ["toolChangedHandle"]
  NAMECALL R4 R4 K7 ["Disconnect"]
  CALL R4 1 0
  GETUPVAL R4 0
  LOADB R6 1
  NAMECALL R4 R4 K11 ["SetEnabled"]
  CALL R4 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["selectItem"]
  DUPTABLE R3 K2 [{"EditingCage"}]
  GETTABLEKS R4 R2 K3 ["editingCage"]
  SETTABLEKS R4 R3 K1 ["EditingCage"]
  RETURN R3 1

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R1 K2 [{"SetControlsPanelBlockerActivity", "SetControlsPanelBlockerMessage"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetControlsPanelBlockerActivity"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetControlsPanelBlockerMessage"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["RunService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["Selection"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K4 [game]
  LOADK R5 K8 ["ChangeHistoryService"]
  NAMECALL R3 R3 K6 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R0 K11 ["Packages"]
  GETTABLEKS R6 R7 K13 ["RoactRodux"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["LuaMeshEditingModule"]
  GETIMPORT R7 K10 [require]
  GETTABLEKS R9 R0 K11 ["Packages"]
  GETTABLEKS R8 R9 K15 ["AvatarToolsShared"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R10 R0 K11 ["Packages"]
  GETTABLEKS R9 R10 K16 ["Framework"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K17 ["ContextServices"]
  GETTABLEKS R10 R9 K18 ["withContext"]
  GETIMPORT R11 K10 [require]
  GETTABLEKS R13 R6 K19 ["Components"]
  GETTABLEKS R12 R13 K20 ["MeshEditingComponent"]
  CALL R11 1 1
  GETTABLEKS R13 R7 K21 ["Contexts"]
  GETTABLEKS R12 R13 K22 ["LuaMeshEditingModuleContext"]
  GETIMPORT R13 K10 [require]
  GETTABLEKS R16 R0 K23 ["Src"]
  GETTABLEKS R15 R16 K24 ["Actions"]
  GETTABLEKS R14 R15 K25 ["SetControlsPanelBlockerActivity"]
  CALL R13 1 1
  GETIMPORT R14 K10 [require]
  GETTABLEKS R17 R0 K23 ["Src"]
  GETTABLEKS R16 R17 K24 ["Actions"]
  GETTABLEKS R15 R16 K26 ["SetControlsPanelBlockerMessage"]
  CALL R14 1 1
  GETIMPORT R15 K10 [require]
  GETTABLEKS R18 R0 K23 ["Src"]
  GETTABLEKS R17 R18 K27 ["Flags"]
  GETTABLEKS R16 R17 K28 ["getFFlagStudioLuaMeshEditingModuleActivatesTool"]
  CALL R15 1 1
  GETTABLEKS R16 R4 K29 ["PureComponent"]
  LOADK R18 K30 ["LuaMeshEditingModuleWrapper"]
  NAMECALL R16 R16 K31 ["extend"]
  CALL R16 2 1
  NEWTABLE R17 0 4
  GETIMPORT R18 K35 [Enum.RibbonTool.Select]
  GETIMPORT R19 K37 [Enum.RibbonTool.Move]
  GETIMPORT R20 K39 [Enum.RibbonTool.Scale]
  GETIMPORT R21 K41 [Enum.RibbonTool.Rotate]
  SETLIST R17 R18 4 [1]
  NEWTABLE R18 0 0
  GETIMPORT R19 K43 [ipairs]
  MOVE R20 R17
  CALL R19 1 3
  FORGPREP_INEXT R19
  SETTABLE R22 R18 R23
  FORGLOOP R19 2 [inext] [-2]
  DUPCLOSURE R19 K44 [PROTO_8]
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R19 R16 K45 ["didMount"]
  DUPCLOSURE R19 K46 [PROTO_9]
  CAPTURE VAL R4
  CAPTURE VAL R11
  SETTABLEKS R19 R16 K47 ["render"]
  DUPCLOSURE R19 K48 [PROTO_10]
  CAPTURE VAL R3
  SETTABLEKS R19 R16 K49 ["willUnmount"]
  DUPCLOSURE R19 K50 [PROTO_11]
  DUPCLOSURE R20 K51 [PROTO_14]
  CAPTURE VAL R13
  CAPTURE VAL R14
  MOVE R21 R10
  DUPTABLE R22 K56 [{"Plugin", "PluginActions", "Localization", "LuaMeshEditingModuleContext", "Mouse"}]
  GETTABLEKS R23 R9 K52 ["Plugin"]
  SETTABLEKS R23 R22 K52 ["Plugin"]
  GETTABLEKS R23 R9 K53 ["PluginActions"]
  SETTABLEKS R23 R22 K53 ["PluginActions"]
  GETTABLEKS R23 R9 K54 ["Localization"]
  SETTABLEKS R23 R22 K54 ["Localization"]
  SETTABLEKS R12 R22 K22 ["LuaMeshEditingModuleContext"]
  GETTABLEKS R23 R9 K55 ["Mouse"]
  SETTABLEKS R23 R22 K55 ["Mouse"]
  CALL R21 1 1
  MOVE R22 R16
  CALL R21 1 1
  MOVE R16 R21
  GETTABLEKS R21 R5 K57 ["connect"]
  MOVE R22 R19
  MOVE R23 R20
  CALL R21 2 1
  MOVE R22 R16
  CALL R21 1 -1
  RETURN R21 -1
