PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["GetClassIcon"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIFNOT R1 [+3]
  GETTABLEKS R3 R2 K2 ["Image"]
  RETURN R3 1
  LOADNIL R3
  RETURN R3 1

PROTO_2:
  DUPTABLE R1 K4 [{"Id", "Text", "Icon", "OnItemClicked"}]
  GETTABLEKS R2 R0 K5 ["Name"]
  SETTABLEKS R2 R1 K0 ["Id"]
  GETUPVAL R2 0
  LOADK R4 K6 ["Category"]
  GETTABLEKS R5 R0 K5 ["Name"]
  NAMECALL R2 R2 K7 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["Text"]
  GETTABLEKS R2 R0 K2 ["Icon"]
  SETTABLEKS R2 R1 K2 ["Icon"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K3 ["OnItemClicked"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["ThemeCategories"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  DUPTABLE R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
  GETTABLEKS R2 R0 K6 ["Name"]
  SETTABLEKS R2 R1 K0 ["Id"]
  GETUPVAL R2 0
  LOADK R4 K7 ["Category"]
  GETTABLEKS R5 R0 K6 ["Name"]
  NAMECALL R2 R2 K8 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["Text"]
  GETTABLEKS R2 R0 K2 ["Icon"]
  SETTABLEKS R2 R1 K2 ["Icon"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K3 ["OnItemClicked"]
  DUPTABLE R2 K9 [{"Category"}]
  GETTABLEKS R3 R0 K6 ["Name"]
  SETTABLEKS R3 R2 K7 ["Category"]
  SETTABLEKS R2 R1 K4 ["Data"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["StyleSheetCategories"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  DUPTABLE R1 K4 [{"Id", "Text", "OnItemClicked", "Data"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  SETTABLEKS R0 R1 K1 ["Text"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K2 ["OnItemClicked"]
  DUPTABLE R2 K6 [{"Type"}]
  SETTABLEKS R0 R2 K5 ["Type"]
  SETTABLEKS R2 R1 K3 ["Data"]
  RETURN R1 1

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AttributeTypes"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  DUPTABLE R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  SETTABLEKS R0 R1 K1 ["Text"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["getClassIcon"]
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["Icon"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K3 ["OnItemClicked"]
  DUPTABLE R2 K8 [{"Selector"}]
  SETTABLEKS R0 R2 K7 ["Selector"]
  SETTABLEKS R2 R1 K4 ["Data"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Classes"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R1 0
  MOVE R2 R0
  DUPTABLE R3 K1 [{"Data"}]
  DUPTABLE R4 K3 [{"Selector"}]
  GETUPVAL R6 1
  GETTABLEKS R8 R0 K0 ["Data"]
  GETTABLEKS R7 R8 K2 ["Selector"]
  CONCAT R5 R6 R7
  SETTABLEKS R5 R4 K2 ["Selector"]
  SETTABLEKS R4 R3 K0 ["Data"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_11:
  GETUPVAL R2 0
  MOVE R3 R1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  DUPTABLE R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  SETTABLEKS R0 R1 K1 ["Text"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["getClassIcon"]
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["Icon"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K3 ["OnItemClicked"]
  DUPTABLE R2 K8 [{"Selector"}]
  LOADK R4 K9 ["::"]
  MOVE R5 R0
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K7 ["Selector"]
  SETTABLEKS R2 R1 K4 ["Data"]
  RETURN R1 1

PROTO_13:
  DUPTABLE R1 K5 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
  SETTABLEKS R0 R1 K0 ["Id"]
  SETTABLEKS R0 R1 K1 ["Text"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["getClassIcon"]
  MOVE R3 R0
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["Icon"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K3 ["OnItemClicked"]
  DUPTABLE R2 K8 [{"Selector"}]
  LOADK R4 K9 [":"]
  MOVE R5 R0
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K7 ["Selector"]
  SETTABLEKS R2 R1 K4 ["Data"]
  RETURN R1 1

PROTO_14:
  DUPCLOSURE R2 K0 [PROTO_11]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  GETUPVAL R3 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["PseudoInstances"]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CALL R3 2 1
  GETUPVAL R4 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["GuiStates"]
  NEWCLOSURE R6 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CALL R4 2 1
  DUPTABLE R5 K7 [{"Id", "Text", "OnItemClicked", "Data"}]
  LOADK R6 K8 ["Name"]
  SETTABLEKS R6 R5 K3 ["Id"]
  LOADK R8 K9 ["ContextMenu"]
  LOADK R9 K10 ["New.Name"]
  NAMECALL R6 R1 K11 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K4 ["Text"]
  SETTABLEKS R0 R5 K5 ["OnItemClicked"]
  DUPTABLE R6 K13 [{"Selector"}]
  LOADK R7 K14 ["#Name"]
  SETTABLEKS R7 R6 K12 ["Selector"]
  SETTABLEKS R6 R5 K6 ["Data"]
  DUPTABLE R6 K16 [{"Id", "Text", "Icon", "OnItemClicked", "Data"}]
  LOADK R7 K17 ["Tag"]
  SETTABLEKS R7 R6 K3 ["Id"]
  LOADK R9 K9 ["ContextMenu"]
  LOADK R10 K18 ["New.Tag"]
  NAMECALL R7 R1 K11 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["Text"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K19 ["Icons"]
  GETTABLEKS R7 R8 K20 ["tag"]
  SETTABLEKS R7 R6 K15 ["Icon"]
  SETTABLEKS R0 R6 K5 ["OnItemClicked"]
  DUPTABLE R7 K13 [{"Selector"}]
  LOADK R8 K21 [".Tag"]
  SETTABLEKS R8 R7 K12 ["Selector"]
  SETTABLEKS R7 R6 K6 ["Data"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K22 ["getClassTypeActions"]
  MOVE R8 R0
  MOVE R9 R1
  CALL R7 2 1
  DUPTABLE R8 K7 [{"Id", "Text", "OnItemClicked", "Data"}]
  LOADK R9 K23 ["Empty"]
  SETTABLEKS R9 R8 K3 ["Id"]
  LOADK R11 K9 ["ContextMenu"]
  LOADK R12 K24 ["New.Empty"]
  NAMECALL R9 R1 K11 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K4 ["Text"]
  SETTABLEKS R0 R8 K5 ["OnItemClicked"]
  DUPTABLE R9 K13 [{"Selector"}]
  LOADK R10 K25 [""]
  SETTABLEKS R10 R9 K12 ["Selector"]
  SETTABLEKS R9 R8 K6 ["Data"]
  DUPTABLE R9 K27 [{"Id", "Text", "Icon", "Children"}]
  LOADK R10 K28 ["New"]
  SETTABLEKS R10 R9 K3 ["Id"]
  LOADK R12 K9 ["ContextMenu"]
  LOADK R13 K28 ["New"]
  NAMECALL R10 R1 K11 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K4 ["Text"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K19 ["Icons"]
  GETTABLEKS R10 R11 K29 ["new"]
  SETTABLEKS R10 R9 K15 ["Icon"]
  NEWTABLE R10 0 8
  MOVE R11 R5
  MOVE R12 R6
  DUPTABLE R13 K30 [{"Id", "Text", "OnItemClicked", "Children"}]
  LOADK R14 K31 ["Class"]
  SETTABLEKS R14 R13 K3 ["Id"]
  LOADK R16 K9 ["ContextMenu"]
  LOADK R17 K32 ["New.Class"]
  NAMECALL R14 R1 K11 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K4 ["Text"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K33 ["noop"]
  SETTABLEKS R14 R13 K5 ["OnItemClicked"]
  SETTABLEKS R7 R13 K26 ["Children"]
  DUPTABLE R14 K34 [{"Id", "Icon", "Text", "Children"}]
  LOADK R15 K35 ["GuiState"]
  SETTABLEKS R15 R14 K3 ["Id"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K19 ["Icons"]
  GETTABLEKS R15 R16 K36 ["hover"]
  SETTABLEKS R15 R14 K15 ["Icon"]
  LOADK R17 K9 ["ContextMenu"]
  LOADK R18 K37 ["New.GuiState"]
  NAMECALL R15 R1 K11 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K4 ["Text"]
  SETTABLEKS R4 R14 K26 ["Children"]
  DUPTABLE R15 K38 [{"Id", "Text", "Children"}]
  LOADK R16 K39 ["Child"]
  SETTABLEKS R16 R15 K3 ["Id"]
  LOADK R18 K9 ["ContextMenu"]
  LOADK R19 K40 ["New.Child"]
  NAMECALL R16 R1 K11 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K4 ["Text"]
  NEWTABLE R17 0 3
  MOVE R18 R5
  MOVE R19 R6
  MOVE R20 R8
  SETLIST R17 R18 3 [1]
  GETUPVAL R18 0
  MOVE R19 R17
  LOADK R21 K41 [">"]
  NEWCLOSURE R20 P3
  CAPTURE UPVAL U1
  CAPTURE VAL R21
  CALL R18 2 1
  MOVE R16 R18
  SETTABLEKS R16 R15 K26 ["Children"]
  DUPTABLE R16 K38 [{"Id", "Text", "Children"}]
  LOADK R17 K42 ["Descendant"]
  SETTABLEKS R17 R16 K3 ["Id"]
  LOADK R19 K9 ["ContextMenu"]
  LOADK R20 K43 ["New.Descendant"]
  NAMECALL R17 R1 K11 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K4 ["Text"]
  NEWTABLE R18 0 3
  MOVE R19 R5
  MOVE R20 R6
  MOVE R21 R8
  SETLIST R18 R19 3 [1]
  GETUPVAL R19 0
  MOVE R20 R18
  LOADK R22 K44 [">>"]
  NEWCLOSURE R21 P3
  CAPTURE UPVAL U1
  CAPTURE VAL R22
  CALL R19 2 1
  MOVE R17 R19
  SETTABLEKS R17 R16 K26 ["Children"]
  DUPTABLE R17 K38 [{"Id", "Text", "Children"}]
  LOADK R18 K45 ["PseudoInstance"]
  SETTABLEKS R18 R17 K3 ["Id"]
  LOADK R20 K9 ["ContextMenu"]
  LOADK R21 K46 ["New.PseudoInstance"]
  NAMECALL R18 R1 K11 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K4 ["Text"]
  SETTABLEKS R3 R17 K26 ["Children"]
  MOVE R18 R8
  SETLIST R10 R11 8 [1]
  SETTABLEKS R10 R9 K26 ["Children"]
  RETURN R9 1

PROTO_15:
  DUPTABLE R2 K4 [{"Id", "Text", "Icon", "OnItemClicked"}]
  LOADK R3 K5 ["Rename"]
  SETTABLEKS R3 R2 K0 ["Id"]
  LOADK R5 K6 ["ContextMenu"]
  LOADK R6 K5 ["Rename"]
  NAMECALL R3 R1 K7 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K1 ["Text"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["Icons"]
  GETTABLEKS R3 R4 K9 ["edit"]
  SETTABLEKS R3 R2 K2 ["Icon"]
  SETTABLEKS R0 R2 K3 ["OnItemClicked"]
  RETURN R2 1

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["buildMenu"]
  MOVE R2 R0
  CALL R1 1 1
  MOVE R0 R1
  GETUPVAL R5 1
  GETTABLEKS R2 R5 K1 ["Id"]
  LOADK R3 K2 ["/"]
  GETTABLEKS R4 R0 K1 ["Id"]
  CONCAT R1 R2 R4
  SETTABLEKS R1 R0 K1 ["Id"]
  RETURN R0 1

PROTO_17:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["filterHiddenActions"]
  GETTABLEKS R3 R0 K1 ["Children"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 2 1
  GETUPVAL R2 2
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["Children"]
  RETURN R2 1

PROTO_18:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["buildMenu"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R2 R0 K0 ["Hidden"]
  JUMPIFNOTEQKB R2 TRUE [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_20:
  GETUPVAL R1 0
  MOVE R2 R0
  DUPCLOSURE R3 K0 [PROTO_19]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K12 ["UI"]
  GETTABLEKS R4 R5 K13 ["showContextMenu"]
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K9 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Dash"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K15 ["map"]
  GETTABLEKS R7 R5 K16 ["filter"]
  GETTABLEKS R8 R5 K17 ["join"]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R1 K18 ["Src"]
  GETTABLEKS R10 R11 K19 ["Types"]
  CALL R9 1 1
  NEWTABLE R10 32 0
  DUPTABLE R11 K37 [{"color", "copy", "delete", "dimensions", "duplicate", "edit", "elements", "folder", "hover", "link", "more", "new", "open", "paste", "size", "tag", "typography"}]
  LOADK R12 K38 ["rbxasset://textures/StyleEditor/style-color.png"]
  SETTABLEKS R12 R11 K20 ["color"]
  LOADK R12 K39 ["rbxasset://textures/StyleEditor/style-copy.png"]
  SETTABLEKS R12 R11 K21 ["copy"]
  LOADK R12 K40 ["rbxasset://textures/StyleEditor/style-bin.png"]
  SETTABLEKS R12 R11 K22 ["delete"]
  LOADK R12 K41 ["rbxasset://textures/StyleEditor/style-dimensions.png"]
  SETTABLEKS R12 R11 K23 ["dimensions"]
  LOADK R12 K42 ["rbxasset://textures/StyleEditor/style-duplicate.png"]
  SETTABLEKS R12 R11 K24 ["duplicate"]
  LOADK R12 K43 ["rbxasset://textures/StyleEditor/style-edit.png"]
  SETTABLEKS R12 R11 K25 ["edit"]
  LOADK R12 K44 ["rbxasset://textures/StyleEditor/style-elements.png"]
  SETTABLEKS R12 R11 K26 ["elements"]
  LOADK R12 K45 ["rbxasset://textures/DeveloperStorybook/Folder.png"]
  SETTABLEKS R12 R11 K27 ["folder"]
  LOADK R12 K46 ["rbxasset://textures/StyleEditor/style-hover.png"]
  SETTABLEKS R12 R11 K28 ["hover"]
  LOADK R12 K47 ["rbxasset://textures/StyleEditor/style-link.png"]
  SETTABLEKS R12 R11 K29 ["link"]
  LOADK R12 K48 ["rbxasset://textures/StyleEditor/style-more.png"]
  SETTABLEKS R12 R11 K30 ["more"]
  LOADK R12 K49 ["rbxasset://textures/StyleEditor/style-add.png"]
  SETTABLEKS R12 R11 K31 ["new"]
  LOADK R12 K50 ["rbxasset://textures/StyleEditor/style-open.png"]
  SETTABLEKS R12 R11 K32 ["open"]
  LOADK R12 K51 ["rbxasset://textures/StyleEditor/style-paste.png"]
  SETTABLEKS R12 R11 K33 ["paste"]
  LOADK R12 K41 ["rbxasset://textures/StyleEditor/style-dimensions.png"]
  SETTABLEKS R12 R11 K34 ["size"]
  LOADK R12 K52 ["rbxasset://textures/StyleEditor/style-tag.png"]
  SETTABLEKS R12 R11 K35 ["tag"]
  LOADK R12 K53 ["rbxasset://textures/StyleEditor/style-typography.png"]
  SETTABLEKS R12 R11 K36 ["typography"]
  SETTABLEKS R11 R10 K54 ["Icons"]
  NEWTABLE R11 0 8
  LOADK R12 K55 ["CanvasGroup"]
  LOADK R13 K56 ["ImageButton"]
  LOADK R14 K57 ["ImageLabel"]
  LOADK R15 K58 ["ScrollingFrame"]
  LOADK R16 K59 ["Frame"]
  LOADK R17 K60 ["TextBox"]
  LOADK R18 K61 ["TextButton"]
  LOADK R19 K62 ["TextLabel"]
  SETLIST R11 R12 8 [1]
  SETTABLEKS R11 R10 K63 ["Classes"]
  NEWTABLE R11 0 12
  LOADK R12 K64 ["UIAspectRatioConstraint"]
  LOADK R13 K65 ["UICorner"]
  LOADK R14 K66 ["UIGradient"]
  LOADK R15 K67 ["UIGridLayout"]
  LOADK R16 K68 ["UIListLayout"]
  LOADK R17 K69 ["UIPadding"]
  LOADK R18 K70 ["UIPageLayout"]
  LOADK R19 K71 ["UIScale"]
  LOADK R20 K72 ["UISizeConstraint"]
  LOADK R21 K73 ["UIStroke"]
  LOADK R22 K74 ["UITableLayout"]
  LOADK R23 K75 ["UITextSizeConstraint"]
  SETLIST R11 R12 12 [1]
  SETTABLEKS R11 R10 K76 ["PseudoInstances"]
  NEWTABLE R11 0 4
  LOADK R12 K28 ["hover"]
  LOADK R13 K77 ["idle"]
  LOADK R14 K78 ["pressed"]
  LOADK R15 K79 ["interactable"]
  SETLIST R11 R12 4 [1]
  SETTABLEKS R11 R10 K80 ["GuiStates"]
  NEWTABLE R11 0 15
  LOADK R12 K81 ["string"]
  LOADK R13 K82 ["boolean"]
  LOADK R14 K83 ["number"]
  LOADK R15 K84 ["UDim"]
  LOADK R16 K85 ["UDim2"]
  LOADK R17 K86 ["BrickColor"]
  LOADK R18 K87 ["Color3"]
  LOADK R19 K88 ["Vector2"]
  LOADK R20 K89 ["Vector3"]
  LOADK R21 K90 ["CFrame"]
  LOADK R22 K91 ["ColorSequence"]
  LOADK R23 K92 ["NumberSequence"]
  LOADK R24 K93 ["NumberRange"]
  LOADK R25 K94 ["Rect"]
  LOADK R26 K95 ["Font"]
  SETLIST R11 R12 15 [1]
  SETTABLEKS R11 R10 K96 ["AttributeTypes"]
  DUPCLOSURE R11 K97 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K98 ["getClassIcon"]
  NEWTABLE R11 0 4
  DUPTABLE R12 K101 [{"Name", "Icon"}]
  LOADK R13 K102 ["Color"]
  SETTABLEKS R13 R12 K99 ["Name"]
  GETTABLEKS R14 R10 K54 ["Icons"]
  GETTABLEKS R13 R14 K20 ["color"]
  SETTABLEKS R13 R12 K100 ["Icon"]
  DUPTABLE R13 K101 [{"Name", "Icon"}]
  LOADK R14 K103 ["Typography"]
  SETTABLEKS R14 R13 K99 ["Name"]
  GETTABLEKS R15 R10 K54 ["Icons"]
  GETTABLEKS R14 R15 K36 ["typography"]
  SETTABLEKS R14 R13 K100 ["Icon"]
  DUPTABLE R14 K101 [{"Name", "Icon"}]
  LOADK R15 K104 ["Size"]
  SETTABLEKS R15 R14 K99 ["Name"]
  GETTABLEKS R16 R10 K54 ["Icons"]
  GETTABLEKS R15 R16 K34 ["size"]
  SETTABLEKS R15 R14 K100 ["Icon"]
  DUPTABLE R15 K101 [{"Name", "Icon"}]
  LOADK R16 K105 ["Other"]
  SETTABLEKS R16 R15 K99 ["Name"]
  GETTABLEKS R17 R10 K54 ["Icons"]
  GETTABLEKS R16 R17 K27 ["folder"]
  SETTABLEKS R16 R15 K100 ["Icon"]
  SETLIST R11 R12 4 [1]
  SETTABLEKS R11 R10 K106 ["ThemeCategories"]
  NEWTABLE R11 0 3
  DUPTABLE R12 K101 [{"Name", "Icon"}]
  LOADK R13 K107 ["Tokens"]
  SETTABLEKS R13 R12 K99 ["Name"]
  LOADNIL R13
  SETTABLEKS R13 R12 K100 ["Icon"]
  DUPTABLE R13 K101 [{"Name", "Icon"}]
  LOADK R14 K108 ["Themes"]
  SETTABLEKS R14 R13 K99 ["Name"]
  GETTABLEKS R15 R10 K54 ["Icons"]
  GETTABLEKS R14 R15 K20 ["color"]
  SETTABLEKS R14 R13 K100 ["Icon"]
  DUPTABLE R14 K101 [{"Name", "Icon"}]
  LOADK R15 K109 ["Designs"]
  SETTABLEKS R15 R14 K99 ["Name"]
  GETTABLEKS R15 R10 K98 ["getClassIcon"]
  LOADK R16 K110 ["StyleSheet"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K100 ["Icon"]
  SETLIST R11 R12 3 [1]
  SETTABLEKS R11 R10 K111 ["StyleSheetCategories"]
  NEWTABLE R11 0 1
  NEWTABLE R12 4 0
  LOADK R13 K112 ["Menu"]
  SETTABLEKS R13 R12 K113 ["Id"]
  DUPTABLE R13 K115 [{"Image"}]
  GETTABLEKS R15 R10 K54 ["Icons"]
  GETTABLEKS R14 R15 K30 ["more"]
  SETTABLEKS R14 R13 K114 ["Image"]
  SETTABLEKS R13 R12 K100 ["Icon"]
  GETTABLEKS R13 R2 K116 ["Tag"]
  LOADK R14 K117 ["Contrast IconOnly"]
  SETTABLE R14 R12 R13
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K118 ["MoreAction"]
  NEWTABLE R11 0 1
  NEWTABLE R12 4 0
  LOADK R13 K112 ["Menu"]
  SETTABLEKS R13 R12 K113 ["Id"]
  DUPTABLE R13 K115 [{"Image"}]
  GETTABLEKS R15 R10 K54 ["Icons"]
  GETTABLEKS R14 R15 K30 ["more"]
  SETTABLEKS R14 R13 K114 ["Image"]
  SETTABLEKS R13 R12 K100 ["Icon"]
  GETTABLEKS R13 R2 K116 ["Tag"]
  LOADK R14 K119 ["IconOnly SecondaryHoverBackground"]
  SETTABLE R14 R12 R13
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K120 ["FullSpanMoreAction"]
  DUPCLOSURE R11 K121 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R11 R10 K122 ["getThemeCategoryActions"]
  DUPCLOSURE R11 K123 [PROTO_5]
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R11 R10 K124 ["getStyleSheetCategoryActions"]
  DUPCLOSURE R11 K125 [PROTO_7]
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R11 R10 K126 ["getAttributeTypeActions"]
  DUPCLOSURE R11 K127 [PROTO_9]
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R11 R10 K128 ["getClassTypeActions"]
  DUPCLOSURE R11 K129 [PROTO_14]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K130 ["getNewSelectorAction"]
  DUPCLOSURE R11 K131 [PROTO_15]
  CAPTURE VAL R10
  SETTABLEKS R11 R10 K132 ["getRenameAction"]
  DUPCLOSURE R11 K133 [PROTO_17]
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K134 ["buildMenu"]
  DUPCLOSURE R11 K135 [PROTO_18]
  CAPTURE VAL R10
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K13 ["showContextMenu"]
  DUPCLOSURE R11 K136 [PROTO_20]
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K137 ["filterHiddenActions"]
  RETURN R10 1
