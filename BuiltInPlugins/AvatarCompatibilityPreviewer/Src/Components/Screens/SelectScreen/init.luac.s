PROTO_0:
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEN R0 R1 1
  GETTABLEKS R2 R0 K0 ["Name"]
  LOADK R3 K1 ["_Geo"]
  CONCAT R1 R2 R3
  SETTABLEKS R1 R0 K0 ["Name"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["selectScreenChoice"]
  LOADK R3 K1 ["CurrentPlace"]
  NAMECALL R0 R0 K2 ["report"]
  CALL R0 3 0
  GETUPVAL R0 1
  LOADK R1 K1 ["CurrentPlace"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 2
  LOADK R4 K1 ["SelectScreen"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["useState"]
  LOADNIL R4
  CALL R3 1 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["useCallback"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  NEWTABLE R7 0 0
  CALL R5 2 1
  LOADNIL R6
  GETUPVAL R7 4
  JUMPIFNOT R7 [+3]
  GETUPVAL R7 5
  CALL R7 0 1
  MOVE R6 R7
  JUMPIFNOTEQKS R3 K4 ["CurrentPlace"] [+11]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K7 [{"GoBack"}]
  SETTABLEKS R5 R9 K6 ["GoBack"]
  CALL R7 2 -1
  CLOSEUPVALS R6
  RETURN R7 -1
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K8 ["new"]
  CALL R7 0 1
  GETUPVAL R9 8
  CALL R9 0 1
  JUMPIFNOT R9 [+10]
  LOADB R8 0
  LENGTH R9 R6
  JUMPIFNOTEQKN R9 K9 [1] [+8]
  GETTABLEN R8 R6 1
  LOADK R10 K10 ["MeshPart"]
  NAMECALL R8 R8 K11 ["IsA"]
  CALL R8 2 1
  JUMP [+1]
  LOADB R8 0
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 9
  DUPTABLE R11 K16 [{"Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R12 K20 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K12 ["Layout"]
  GETTABLEKS R12 R2 K13 ["Spacing"]
  SETTABLEKS R12 R11 K13 ["Spacing"]
  GETIMPORT R12 K22 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K14 ["HorizontalAlignment"]
  GETIMPORT R12 K23 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K15 ["VerticalAlignment"]
  DUPTABLE R12 K26 [{"ImportCharacterFrom", "Buttons"}]
  GETUPVAL R14 8
  CALL R14 0 1
  JUMPIF R14 [+23]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 10
  DUPTABLE R15 K30 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R16 K32 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K27 ["AutomaticSize"]
  NAMECALL R16 R7 K33 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K28 ["LayoutOrder"]
  LOADK R18 K1 ["SelectScreen"]
  LOADK R19 K24 ["ImportCharacterFrom"]
  NAMECALL R16 R1 K34 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K29 ["Text"]
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K24 ["ImportCharacterFrom"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 9
  DUPTABLE R15 K35 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
  GETIMPORT R16 K32 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K27 ["AutomaticSize"]
  GETUPVAL R17 8
  CALL R17 0 1
  JUMPIFNOT R17 [+3]
  GETIMPORT R16 K20 [Enum.FillDirection.Vertical]
  JUMP [+2]
  GETIMPORT R16 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K12 ["Layout"]
  GETUPVAL R17 8
  CALL R17 0 1
  JUMPIFNOT R17 [+3]
  GETTABLEKS R16 R2 K13 ["Spacing"]
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K13 ["Spacing"]
  GETIMPORT R16 K22 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K14 ["HorizontalAlignment"]
  NAMECALL R16 R7 K33 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K28 ["LayoutOrder"]
  DUPTABLE R16 K39 [{"AddSelected", "CurrentPlace"}]
  GETUPVAL R18 8
  CALL R18 0 1
  JUMPIFNOT R18 [+48]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K5 ["createElement"]
  GETUPVAL R18 11
  DUPTABLE R19 K43 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Text", "TooltipText"}]
  GETIMPORT R20 K45 [Enum.AutomaticSize.X]
  SETTABLEKS R20 R19 K27 ["AutomaticSize"]
  NAMECALL R20 R7 K33 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K28 ["LayoutOrder"]
  JUMPIFNOT R8 [+3]
  NEWCLOSURE R20 P1
  CAPTURE REF R6
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K40 ["OnClick"]
  GETIMPORT R20 K48 [UDim2.fromOffset]
  LOADN R21 0
  GETTABLEKS R22 R2 K49 ["ButtonHeight"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K41 ["Size"]
  LOADK R22 K1 ["SelectScreen"]
  LOADK R23 K38 ["AddSelected"]
  NAMECALL R20 R1 K34 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K29 ["Text"]
  JUMPIF R8 [+6]
  LOADK R22 K1 ["SelectScreen"]
  LOADK R23 K50 ["AddSelectedTooltip"]
  NAMECALL R20 R1 K34 ["getText"]
  CALL R20 3 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K42 ["TooltipText"]
  CALL R17 2 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K38 ["AddSelected"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K5 ["createElement"]
  GETUPVAL R18 11
  DUPTABLE R19 K51 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Text"}]
  GETIMPORT R20 K45 [Enum.AutomaticSize.X]
  SETTABLEKS R20 R19 K27 ["AutomaticSize"]
  NAMECALL R20 R7 K33 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K28 ["LayoutOrder"]
  NEWCLOSURE R20 P2
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R20 R19 K40 ["OnClick"]
  GETIMPORT R20 K48 [UDim2.fromOffset]
  LOADN R21 0
  GETTABLEKS R22 R2 K49 ["ButtonHeight"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K41 ["Size"]
  GETUPVAL R21 8
  CALL R21 0 1
  JUMPIFNOT R21 [+6]
  LOADK R22 K1 ["SelectScreen"]
  LOADK R23 K52 ["BrowseCurrentPlace"]
  NAMECALL R20 R1 K34 ["getText"]
  CALL R20 3 1
  JUMP [+5]
  LOADK R22 K1 ["SelectScreen"]
  LOADK R23 K4 ["CurrentPlace"]
  NAMECALL R20 R1 K34 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K29 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K4 ["CurrentPlace"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K25 ["Buttons"]
  CALL R9 3 -1
  CLOSEUPVALS R6
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Flags"]
  GETTABLEKS R4 R5 K11 ["getFFlagAvatarPreviewerAddGeoToSelection"]
  CALL R3 1 1
  MOVE R4 R3
  CALL R4 0 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K12 ["Hooks"]
  GETTABLEKS R6 R7 K13 ["useSelection"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K14 ["Resources"]
  GETTABLEKS R7 R8 K15 ["Theme"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K16 ["CurrentPlacePage"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K17 ["UI"]
  GETTABLEKS R9 R8 K18 ["IconButton"]
  GETTABLEKS R10 R8 K19 ["Pane"]
  GETTABLEKS R11 R8 K20 ["TextLabel"]
  GETTABLEKS R13 R1 K21 ["ContextServices"]
  GETTABLEKS R12 R13 K22 ["Analytics"]
  GETTABLEKS R14 R1 K21 ["ContextServices"]
  GETTABLEKS R13 R14 K23 ["Localization"]
  GETTABLEKS R15 R1 K21 ["ContextServices"]
  GETTABLEKS R14 R15 K24 ["Stylizer"]
  GETTABLEKS R16 R1 K25 ["Util"]
  GETTABLEKS R15 R16 K26 ["LayoutOrderIterator"]
  DUPCLOSURE R16 K27 [PROTO_3]
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R9
  RETURN R16 1
