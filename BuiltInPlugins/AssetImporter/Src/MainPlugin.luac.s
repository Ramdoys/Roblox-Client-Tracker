PROTO_0:
  GETUPVAL R2 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R7 1
  MOVE R8 R1
  LOADK R9 K0 ["Callouts"]
  GETTABLEKS R10 R6 K1 ["Title"]
  CALL R7 3 1
  GETUPVAL R8 1
  MOVE R9 R1
  LOADK R10 K0 ["Callouts"]
  GETTABLEKS R11 R6 K2 ["Description"]
  CALL R8 3 1
  JUMPIFNOT R7 [+9]
  JUMPIFNOT R8 [+8]
  MOVE R11 R5
  MOVE R12 R7
  MOVE R13 R8
  GETTABLEKS R14 R6 K3 ["Link"]
  NAMECALL R9 R0 K4 ["defineCallout"]
  CALL R9 5 0
  FORGLOOP R2 2 [-23]
  RETURN R0 0

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["promptRequested"]
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K3 [assert]
  CALL R2 1 0
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+18]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+9]
  JUMPIFNOT R0 [+14]
  JUMPIF R1 [+13]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K4 ["PresetController"]
  NAMECALL R2 R2 K5 ["initializePresets"]
  CALL R2 1 0
  JUMP [+6]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K4 ["PresetController"]
  NAMECALL R2 R2 K5 ["initializePresets"]
  CALL R2 1 0
  GETUPVAL R2 0
  DUPTABLE R4 K8 [{"sessionStarted", "importOpenError", "promptRequested"}]
  MOVE R5 R0
  JUMPIFNOT R5 [+1]
  NOT R5 R1
  SETTABLEKS R5 R4 K6 ["sessionStarted"]
  NOT R5 R0
  JUMPIFNOT R5 [+1]
  NOT R5 R1
  SETTABLEKS R5 R4 K7 ["importOpenError"]
  LOADB R5 0
  SETTABLEKS R5 R4 K1 ["promptRequested"]
  NAMECALL R2 R2 K9 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["promptRequested"]
  NOT R1 R2
  FASTCALL2K ASSERT R1 K2 [+4]
  LOADK R2 K2 ["Import prompt already requested"]
  GETIMPORT R0 K4 [assert]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K5 ["sessionStarted"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K6 ["onClose"]
  CALL R0 0 0
  RETURN R0 0
  GETUPVAL R0 0
  DUPTABLE R2 K7 [{"promptRequested"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["promptRequested"]
  NAMECALL R0 R0 K8 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K4 [{"sessionStarted", "promptRequested", "uploadInProgress", "importOpenError"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["sessionStarted"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["promptRequested"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["uploadInProgress"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["importOpenError"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["onClose"]
  CALL R1 0 0
  NAMECALL R1 R0 K1 ["Cancel"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+10]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["PresetController"]
  NAMECALL R3 R0 K1 ["GetImportTree"]
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["createPresetFromLastImport"]
  CALL R1 -1 0
  JUMP [+7]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["createTemplateFromLastImport"]
  NAMECALL R2 R0 K1 ["GetImportTree"]
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["onClose"]
  CALL R1 0 0
  GETUPVAL R1 3
  DUPTABLE R3 K6 [{"uploadInProgress"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["uploadInProgress"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  NAMECALL R1 R0 K8 ["Upload"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R2 K4 [{"sessionStarted", "promptRequested", "uploadInProgress", "importOpenError"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["sessionStarted"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["promptRequested"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["uploadInProgress"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["importOpenError"]
  SETTABLEKS R2 R0 K5 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K6 ["promptClosed"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["toggleEnabled"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["onClose"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K9 ["onCancel"]
  NEWCLOSURE R2 P4
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K10 ["onImport"]
  GETUPVAL R2 3
  JUMPIFNOT R2 [+9]
  GETTABLEKS R3 R1 K11 ["PluginLoaderContextItem"]
  GETTABLEKS R2 R3 K12 ["mainButtonClickedSignal"]
  GETTABLEKS R4 R0 K7 ["toggleEnabled"]
  NAMECALL R2 R2 K13 ["Connect"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["sessionStarted"]
  GETTABLEKS R5 R0 K0 ["state"]
  GETTABLEKS R4 R5 K2 ["promptRequested"]
  NOT R3 R4
  DUPTABLE R4 K4 [{"Toggle"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K15 [{"Id", "Active", "Enabled", "Toolbar", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
  GETUPVAL R9 2
  JUMPIFNOT R9 [+2]
  LOADK R8 K16 ["Import"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K6 ["Id"]
  SETTABLEKS R2 R7 K7 ["Active"]
  SETTABLEKS R3 R7 K8 ["Enabled"]
  SETTABLEKS R1 R7 K9 ["Toolbar"]
  GETTABLEKS R9 R0 K17 ["props"]
  GETTABLEKS R8 R9 K18 ["Localization"]
  LOADK R10 K19 ["Plugin"]
  LOADK R11 K20 ["Button"]
  NAMECALL R8 R8 K21 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Title"]
  GETTABLEKS R9 R0 K17 ["props"]
  GETTABLEKS R8 R9 K18 ["Localization"]
  LOADK R10 K19 ["Plugin"]
  LOADK R11 K22 ["Description"]
  NAMECALL R8 R8 K21 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["Tooltip"]
  LOADK R8 K23 ["rbxlocaltheme://MeshImporter"]
  SETTABLEKS R8 R7 K12 ["Icon"]
  GETTABLEKS R8 R0 K24 ["toggleEnabled"]
  SETTABLEKS R8 R7 K13 ["OnClick"]
  LOADB R8 1
  SETTABLEKS R8 R7 K14 ["ClickableWhenViewportHidden"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["Toggle"]
  RETURN R4 1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["PluginLoaderContextItem"]
  GETTABLEKS R1 R2 K2 ["mainButton"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["promptRequested"]
  NAMECALL R1 R1 K5 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R2 K3 ["sessionStarted"]
  GETTABLEKS R6 R2 K3 ["sessionStarted"]
  NOT R5 R6
  JUMPIFNOT R5 [+2]
  GETTABLEKS R5 R2 K4 ["promptRequested"]
  GETTABLEKS R6 R2 K5 ["uploadInProgress"]
  GETTABLEKS R7 R2 K6 ["importOpenError"]
  NEWTABLE R8 0 8
  GETTABLEKS R9 R1 K7 ["Plugin"]
  GETTABLEKS R10 R1 K8 ["Mouse"]
  GETTABLEKS R11 R1 K9 ["Store"]
  GETTABLEKS R12 R1 K10 ["Theme"]
  MOVE R13 R3
  GETTABLEKS R14 R1 K11 ["Analytics"]
  GETTABLEKS R15 R1 K12 ["CalloutController"]
  GETTABLEKS R16 R1 K13 ["PresetController"]
  SETLIST R8 R9 8 [1]
  GETUPVAL R9 0
  CALL R9 0 1
  JUMPIFNOT R9 [+3]
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIF R9 [+3]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+5]
  GETUPVAL R9 3
  GETTABLEKS R10 R1 K12 ["CalloutController"]
  MOVE R11 R3
  CALL R9 2 0
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K14 ["provide"]
  MOVE R10 R8
  DUPTABLE R11 K20 [{"Toolbar", "Dialog", "Prompt", "ProgressWidget", "ErrorWidget"}]
  GETUPVAL R13 5
  JUMPIF R13 [+22]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K21 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K24 [{"Title", "RenderButtons"}]
  GETUPVAL R16 8
  JUMPIFNOT R16 [+2]
  LOADK R15 K25 ["Mesh Importer"]
  JUMP [+5]
  LOADK R17 K7 ["Plugin"]
  LOADK R18 K15 ["Toolbar"]
  NAMECALL R15 R3 K26 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K22 ["Title"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K23 ["RenderButtons"]
  CALL R12 2 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K15 ["Toolbar"]
  MOVE R12 R4
  JUMPIFNOT R12 [+26]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K21 ["createElement"]
  GETUPVAL R13 9
  DUPTABLE R14 K30 [{"Resizable", "Title", "OnClose", "OnImport", "Localization"}]
  LOADB R15 1
  SETTABLEKS R15 R14 K27 ["Resizable"]
  LOADK R17 K7 ["Plugin"]
  LOADK R18 K31 ["WindowTitle"]
  NAMECALL R15 R3 K26 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K22 ["Title"]
  GETTABLEKS R15 R0 K32 ["onCancel"]
  SETTABLEKS R15 R14 K28 ["OnClose"]
  GETTABLEKS R15 R0 K33 ["onImport"]
  SETTABLEKS R15 R14 K29 ["OnImport"]
  SETTABLEKS R3 R14 K2 ["Localization"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["Dialog"]
  MOVE R12 R5
  JUMPIFNOT R12 [+10]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K21 ["createElement"]
  GETUPVAL R13 10
  DUPTABLE R14 K35 [{"OnPromptClosed"}]
  GETTABLEKS R15 R0 K36 ["promptClosed"]
  SETTABLEKS R15 R14 K34 ["OnPromptClosed"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["Prompt"]
  MOVE R12 R6
  JUMPIFNOT R12 [+17]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K21 ["createElement"]
  GETUPVAL R13 11
  DUPTABLE R14 K37 [{"OnClose", "Title"}]
  GETTABLEKS R15 R0 K38 ["onClose"]
  SETTABLEKS R15 R14 K28 ["OnClose"]
  LOADK R17 K39 ["Upload"]
  LOADK R18 K31 ["WindowTitle"]
  NAMECALL R15 R3 K26 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K22 ["Title"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["ProgressWidget"]
  MOVE R12 R7
  JUMPIFNOT R12 [+17]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K21 ["createElement"]
  GETUPVAL R13 12
  DUPTABLE R14 K37 [{"OnClose", "Title"}]
  GETTABLEKS R15 R0 K38 ["onClose"]
  SETTABLEKS R15 R14 K28 ["OnClose"]
  LOADK R17 K40 ["Error"]
  LOADK R18 K31 ["WindowTitle"]
  NAMECALL R15 R3 K26 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K22 ["Title"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["ErrorWidget"]
  CALL R9 2 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["PluginButton"]
  GETTABLEKS R6 R4 K11 ["PluginToolbar"]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Components"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R7 K14 ["Dialogs"]
  GETTABLEKS R9 R10 K15 ["ImportPrompt"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R7 K14 ["Dialogs"]
  GETTABLEKS R10 R11 K16 ["MeshImportDialog"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R7 K14 ["Dialogs"]
  GETTABLEKS R11 R12 K17 ["ProgressWidget"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R7 K14 ["Dialogs"]
  GETTABLEKS R12 R13 K18 ["ErrorWidget"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K12 ["Src"]
  GETTABLEKS R14 R15 K19 ["Utility"]
  GETTABLEKS R13 R14 K20 ["TemplateUtils"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K12 ["Src"]
  GETTABLEKS R15 R16 K21 ["Resources"]
  GETTABLEKS R14 R15 K22 ["CalloutList"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K12 ["Src"]
  GETTABLEKS R16 R17 K19 ["Utility"]
  GETTABLEKS R15 R16 K23 ["GetLocalizedString"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R17 R0 K24 ["Bin"]
  GETTABLEKS R16 R17 K25 ["defineLuaFlags"]
  CALL R15 1 0
  GETIMPORT R15 K27 [game]
  LOADK R17 K28 ["ImprovePluginSpeed_AssetImporter3"]
  NAMECALL R15 R15 K29 ["GetFastFlag"]
  CALL R15 2 1
  GETIMPORT R16 K27 [game]
  LOADK R18 K30 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R16 R16 K29 ["GetFastFlag"]
  CALL R16 2 1
  GETTABLEKS R18 R0 K12 ["Src"]
  GETTABLEKS R17 R18 K31 ["Flags"]
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R17 K32 ["getFFlagAssetImporterCustomPresets"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R17 K33 ["getFFlagImporterOpensAvatarPreviewer2"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R17 K34 ["getFFlagImporterOpensAvatarPreviewerBetaCheck"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R17 K35 ["getFFlagAssetImportFixErrorOnCorruptedFilesPlugin"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R17 K36 ["getFFlagAssetImporterApplyToAllFixes"]
  CALL R22 1 1
  GETTABLEKS R23 R1 K37 ["PureComponent"]
  LOADK R25 K38 ["MainPlugin"]
  NAMECALL R23 R23 K39 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K40 [PROTO_0]
  CAPTURE VAL R13
  CAPTURE VAL R14
  DUPCLOSURE R25 K41 [PROTO_6]
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R12
  CAPTURE VAL R15
  SETTABLEKS R25 R23 K42 ["init"]
  JUMPIF R15 [+6]
  DUPCLOSURE R25 K43 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R16
  SETTABLEKS R25 R23 K44 ["renderButtons"]
  JUMPIFNOT R15 [+3]
  DUPCLOSURE R25 K45 [PROTO_8]
  SETTABLEKS R25 R23 K46 ["didUpdate"]
  DUPCLOSURE R25 K47 [PROTO_10]
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R24
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R25 R23 K48 ["render"]
  RETURN R23 1
