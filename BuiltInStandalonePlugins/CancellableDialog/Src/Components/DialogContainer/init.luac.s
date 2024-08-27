PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["CancellableDialog::DialogContainer::OnClosed - Dialog closed via X button in title bar"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["OnCancel"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["OnDialogShown"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Enabled"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  JUMPIF R0 [+3]
  GETUPVAL R0 2
  CALL R0 0 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Enabled"]
  JUMPIF R0 [+7]
  GETUPVAL R0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 3
  CALL R0 0 0
  GETUPVAL R0 4
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["useState"]
  LOADB R4 0
  CALL R3 1 2
  GETUPVAL R5 3
  DUPTABLE R6 K9 [{"Size", "Modal", "Title", "OnClosed", "DisableTitleBar", "Contents"}]
  GETIMPORT R8 K11 [Vector2.new]
  LOADN R9 144
  LOADN R10 130
  CALL R8 2 1
  SETTABLEKS R8 R6 K3 ["Size"]
  LOADB R8 1
  SETTABLEKS R8 R6 K4 ["Modal"]
  LOADK R10 K12 ["Plugin"]
  LOADK R11 K5 ["Title"]
  NAMECALL R8 R2 K13 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R6 K5 ["Title"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  SETTABLEKS R8 R6 K6 ["OnClosed"]
  GETIMPORT R9 K15 [game]
  LOADK R11 K16 ["StudioPluginDisableTitleBarOption"]
  NAMECALL R9 R9 K17 ["GetFastFlag"]
  CALL R9 2 1
  JUMPIFNOT R9 [+2]
  LOADB R8 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R6 K7 ["DisableTitleBar"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K18 ["createElement"]
  LOADK R9 K19 ["Frame"]
  NEWTABLE R10 1 0
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K20 ["Tag"]
  LOADK R12 K21 ["X-FitY X-Column Component-DialogContainer"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K24 [{"ThumbnailAndTextInfo", "CancelButton"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K18 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K29 [{"LayoutOrder", "Title", "Subtitle", "Status", "OnShown"}]
  NAMECALL R15 R1 K30 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K25 ["LayoutOrder"]
  GETTABLEKS R15 R0 K5 ["Title"]
  SETTABLEKS R15 R14 K5 ["Title"]
  GETTABLEKS R15 R0 K26 ["Subtitle"]
  SETTABLEKS R15 R14 K26 ["Subtitle"]
  GETTABLEKS R15 R0 K27 ["Status"]
  SETTABLEKS R15 R14 K27 ["Status"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R4
  SETTABLEKS R15 R14 K28 ["OnShown"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["ThumbnailAndTextInfo"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K18 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K33 [{"LayoutOrder", "Enabled", "OnCancel"}]
  NAMECALL R15 R1 K30 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K25 ["LayoutOrder"]
  GETTABLEKS R15 R0 K34 ["CancelButtonEnabled"]
  SETTABLEKS R15 R14 K31 ["Enabled"]
  GETTABLEKS R15 R0 K32 ["OnCancel"]
  SETTABLEKS R15 R14 K32 ["OnCancel"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["CancelButton"]
  CALL R8 3 1
  SETTABLEKS R8 R6 K8 ["Contents"]
  CALL R5 1 3
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K35 ["useEffect"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R3
  CAPTURE VAL R0
  NEWTABLE R10 0 1
  MOVE R11 R3
  SETLIST R10 R11 1 [1]
  CALL R8 2 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K35 ["useEffect"]
  NEWCLOSURE R9 P3
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  NEWTABLE R10 0 2
  GETTABLEKS R11 R0 K31 ["Enabled"]
  MOVE R12 R7
  SETLIST R10 R11 2 [1]
  CALL R8 2 0
  LOADNIL R8
  RETURN R8 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
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
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R7 R2 K11 ["UI"]
  GETTABLEKS R6 R7 K12 ["Hooks"]
  GETTABLEKS R5 R6 K13 ["useDialogWidget"]
  GETTABLEKS R7 R2 K14 ["Util"]
  GETTABLEKS R6 R7 K15 ["LayoutOrderIterator"]
  GETTABLEKS R8 R0 K16 ["Src"]
  GETTABLEKS R7 R8 K17 ["Components"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K18 ["CancelButton"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K19 ["ThumbnailAndTextInfo"]
  CALL R9 1 1
  DUPCLOSURE R10 K20 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R8
  RETURN R10 1
