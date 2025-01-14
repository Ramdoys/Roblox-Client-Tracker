PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TutorialService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioWidgetsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  RETURN R0 0

PROTO_3:
  NEWTABLE R5 0 0
  DUPTABLE R6 K16 [{"completed", "dataModel", "currentStep", "data", "steps", "instances", "localization", "incrementing", "toolboxConnection", "toolboxLimits", "callouts", "topics", "onStepChanged", "onKeyPressed", "onCompleted", "widget"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K0 ["completed"]
  SETTABLEKS R0 R6 K1 ["dataModel"]
  LOADN R7 0
  SETTABLEKS R7 R6 K2 ["currentStep"]
  SETTABLEKS R1 R6 K3 ["data"]
  SETTABLEKS R5 R6 K4 ["steps"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K5 ["instances"]
  SETTABLEKS R2 R6 K6 ["localization"]
  LOADB R7 0
  SETTABLEKS R7 R6 K7 ["incrementing"]
  SETTABLEKS R3 R6 K8 ["toolboxConnection"]
  LOADNIL R7
  SETTABLEKS R7 R6 K9 ["toolboxLimits"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K10 ["callouts"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K11 ["topics"]
  GETUPVAL R7 0
  SETTABLEKS R7 R6 K12 ["onStepChanged"]
  GETUPVAL R7 0
  SETTABLEKS R7 R6 K13 ["onKeyPressed"]
  GETUPVAL R7 0
  SETTABLEKS R7 R6 K14 ["onCompleted"]
  LOADNIL R7
  SETTABLEKS R7 R6 K15 ["widget"]
  LOADK R9 K17 ["Panels"]
  NAMECALL R7 R4 K18 ["GetPluginComponent"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K17 ["Panels"]
  LOADK R9 K19 ["Spotlight"]
  NAMECALL R7 R4 K18 ["GetPluginComponent"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["Spotlight"]
  GETIMPORT R7 K21 [ipairs]
  GETTABLEKS R8 R1 K4 ["steps"]
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETUPVAL R13 1
  GETTABLEKS R14 R11 K22 ["kind"]
  GETTABLE R12 R13 R14
  GETTABLEKS R15 R1 K23 ["id"]
  LOADK R16 K24 ["%s_Title"]
  GETTABLEKS R18 R11 K23 ["id"]
  NAMECALL R16 R16 K25 ["format"]
  CALL R16 2 -1
  NAMECALL R13 R2 K26 ["getText"]
  CALL R13 -1 1
  GETTABLEKS R16 R1 K23 ["id"]
  LOADK R17 K27 ["%s_Description"]
  GETTABLEKS R19 R11 K23 ["id"]
  NAMECALL R17 R17 K25 ["format"]
  CALL R17 2 -1
  NAMECALL R14 R2 K26 ["getText"]
  CALL R14 -1 1
  SETTABLEKS R13 R11 K28 ["title"]
  SETTABLEKS R14 R11 K29 ["description"]
  GETTABLEKS R15 R11 K30 ["topic"]
  GETTABLEKS R17 R6 K11 ["topics"]
  GETTABLEKS R19 R6 K11 ["topics"]
  LENGTH R18 R19
  GETTABLE R16 R17 R18
  JUMPIFEQ R15 R16 [+9]
  GETTABLEKS R16 R6 K11 ["topics"]
  GETTABLEKS R17 R11 K30 ["topic"]
  FASTCALL2 TABLE_INSERT R16 R17 [+2]
  GETUPVAL R15 2
  CALL R15 2 0
  JUMPIFNOT R12 [+10]
  MOVE R16 R5
  GETTABLEKS R17 R12 K31 ["new"]
  MOVE R18 R6
  MOVE R19 R11
  CALL R17 2 -1
  FASTCALL TABLE_INSERT [+1]
  GETUPVAL R15 2
  CALL R15 -1 0
  JUMP [+21]
  GETTABLEKS R15 R11 K22 ["kind"]
  JUMPIFNOT R15 [+8]
  GETIMPORT R15 K33 [warn]
  LOADK R17 K34 ["Missing step class: "]
  GETTABLEKS R18 R11 K22 ["kind"]
  CONCAT R16 R17 R18
  CALL R15 1 0
  JUMP [+10]
  MOVE R16 R5
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K31 ["new"]
  MOVE R18 R6
  MOVE R19 R11
  CALL R17 2 -1
  FASTCALL TABLE_INSERT [+1]
  GETUPVAL R15 2
  CALL R15 -1 0
  FORGLOOP R7 2 [inext] [-81]
  GETUPVAL R9 4
  FASTCALL2 SETMETATABLE R6 R9 [+4]
  MOVE R8 R6
  GETIMPORT R7 K36 [setmetatable]
  CALL R7 2 1
  RETURN R7 1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["data"]
  GETTABLEKS R1 R2 K1 ["onStart"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R0 K0 ["data"]
  GETTABLEKS R1 R2 K1 ["onStart"]
  MOVE R2 R0
  CALL R1 1 0
  LOADN R3 1
  NAMECALL R1 R0 K2 ["setStep"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  SETTABLEKS R1 R0 K0 ["widget"]
  NAMECALL R2 R0 K1 ["resetAttachment"]
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["widget"]
  JUMPIF R1 [+1]
  RETURN R0 0
  DUPTABLE R3 K5 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K1 ["TargetWidgetUri"]
  GETIMPORT R4 K8 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["SubjectAnchorPoint"]
  GETIMPORT R4 K8 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["TargetAnchorPoint"]
  GETIMPORT R4 K8 [Vector2.new]
  LOADN R5 20
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["Offset"]
  NAMECALL R1 R0 K9 ["attachTo"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R1 K0 ["TargetWidgetUri"]
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["TargetWidgetUri"]
  GETTABLEKS R2 R1 K1 ["SubjectAnchorPoint"]
  JUMPIF R2 [+5]
  GETIMPORT R2 K4 [Vector2.new]
  LOADK R3 K5 [0.5]
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K1 ["SubjectAnchorPoint"]
  GETTABLEKS R2 R1 K6 ["TargetAnchorPoint"]
  JUMPIF R2 [+5]
  GETIMPORT R2 K4 [Vector2.new]
  LOADK R3 K5 [0.5]
  LOADN R4 1
  CALL R2 2 1
  SETTABLEKS R2 R1 K6 ["TargetAnchorPoint"]
  GETTABLEKS R2 R1 K7 ["Offset"]
  JUMPIF R2 [+5]
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K7 ["Offset"]
  GETTABLEKS R2 R0 K8 ["Panels"]
  GETUPVAL R4 1
  MOVE R5 R1
  NAMECALL R2 R2 K9 ["SetAttachmentAsync"]
  CALL R2 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["showSpotlight"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["function"] [+3]
  LOADNIL R2
  RETURN R2 1
  RETURN R0 2

PROTO_10:
  GETTABLEKS R3 R0 K0 ["steps"]
  GETTABLE R2 R3 R1
  GETTABLEKS R3 R2 K1 ["data"]
  GETTABLEKS R4 R0 K2 ["currentCallout"]
  JUMPIFNOT R4 [+8]
  GETTABLEKS R4 R0 K2 ["currentCallout"]
  NAMECALL R4 R4 K3 ["Destroy"]
  CALL R4 1 0
  LOADNIL R4
  SETTABLEKS R4 R0 K2 ["currentCallout"]
  SETTABLEKS R1 R0 K4 ["currentStep"]
  GETTABLEKS R4 R3 K5 ["hideWidgets"]
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 0
  GETTABLEKS R6 R3 K5 ["hideWidgets"]
  NAMECALL R4 R4 K6 ["HideWidgets"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K7 ["widgets"]
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 0
  GETTABLEKS R6 R3 K7 ["widgets"]
  NAMECALL R4 R4 K8 ["ShowWidgets"]
  CALL R4 2 0
  GETTABLEKS R6 R3 K9 ["toolboxLimits"]
  NAMECALL R4 R0 K10 ["setToolboxLimits"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K11 ["callout"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R6 R3 K11 ["callout"]
  NAMECALL R4 R0 K12 ["attachTo"]
  CALL R4 2 0
  JUMP [+3]
  NAMECALL R4 R0 K13 ["resetAttachment"]
  CALL R4 1 0
  GETTABLEKS R4 R0 K14 ["Spotlight"]
  NAMECALL R4 R4 K15 ["HideSpotlightAsync"]
  CALL R4 1 0
  GETUPVAL R4 1
  NAMECALL R4 R4 K16 ["HideSpotlight"]
  CALL R4 1 0
  NAMECALL R4 R2 K17 ["setCameraFocus"]
  CALL R4 1 0
  NAMECALL R4 R2 K18 ["bind"]
  CALL R4 1 0
  GETTABLEKS R4 R3 K19 ["onBind"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R4 R3 K19 ["onBind"]
  MOVE R5 R0
  CALL R4 1 0
  GETTABLEKS R4 R0 K20 ["showSpotlightTask"]
  JUMPIFNOT R4 [+5]
  GETIMPORT R4 K23 [task.cancel]
  GETTABLEKS R5 R0 K20 ["showSpotlightTask"]
  CALL R4 1 0
  GETIMPORT R4 K25 [task.delay]
  LOADK R5 K26 [0.5]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CALL R4 2 1
  SETTABLEKS R4 R0 K20 ["showSpotlightTask"]
  NAMECALL R4 R0 K27 ["getCurrentStepData"]
  CALL R4 1 1
  GETUPVAL R5 2
  MOVE R6 R3
  DUPCLOSURE R7 K28 [PROTO_9]
  CALL R5 2 1
  SETTABLEKS R5 R4 K29 ["step"]
  GETTABLEKS R5 R0 K30 ["onStepChanged"]
  MOVE R6 R4
  CALL R5 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Destroy"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["increment"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["callouts"]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLE R2 R0 R1
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R4 R1 K0 ["target"]
  NAMECALL R2 R2 K1 ["GetStudioWidgetFromLabel"]
  CALL R2 2 1
  GETIMPORT R3 K4 [Instance.new]
  LOADK R4 K5 ["StudioCallout"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K6 ["title"]
  SETTABLEKS R4 R3 K7 ["Title"]
  GETTABLEKS R4 R1 K8 ["description"]
  SETTABLEKS R4 R3 K9 ["Text"]
  GETTABLEKS R5 R1 K11 ["showNext"]
  ORK R4 R5 K10 [False]
  SETTABLEKS R4 R3 K12 ["IsNextVisible"]
  GETTABLEKS R5 R1 K13 ["hideArrow"]
  JUMPIFNOT R5 [+2]
  LOADB R4 0
  JUMP [+1]
  LOADB R4 1
  SETTABLEKS R4 R3 K14 ["IsArrowVisible"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  NAMECALL R4 R3 K15 ["SetOnNextClicked"]
  CALL R4 2 0
  GETTABLEKS R4 R1 K16 ["rowName"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R4 R1 K16 ["rowName"]
  SETTABLEKS R4 R3 K17 ["RowName"]
  GETTABLEKS R4 R1 K18 ["anchorPoint"]
  JUMPIF R4 [+5]
  GETIMPORT R4 K20 [Vector2.new]
  LOADN R5 1
  LOADK R6 K21 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K22 ["AnchorPoint"]
  SETTABLEKS R2 R3 K23 ["Parent"]
  GETTABLEKS R4 R0 K24 ["callouts"]
  LOADB R5 1
  SETTABLE R5 R4 R3
  RETURN R3 1

PROTO_13:
  GETTABLEKS R2 R0 K0 ["steps"]
  GETTABLEKS R3 R0 K1 ["currentStep"]
  GETTABLE R1 R2 R3
  RETURN R1 1

PROTO_14:
  NAMECALL R1 R0 K0 ["getCurrentStep"]
  CALL R1 1 1
  DUPTABLE R2 K4 [{"id", "currentStep", "stepCount"}]
  GETTABLEKS R4 R0 K5 ["data"]
  GETTABLEKS R3 R4 K1 ["id"]
  SETTABLEKS R3 R2 K1 ["id"]
  GETTABLEKS R3 R0 K2 ["currentStep"]
  SETTABLEKS R3 R2 K2 ["currentStep"]
  GETTABLEKS R4 R0 K6 ["steps"]
  LENGTH R3 R4
  SETTABLEKS R3 R2 K3 ["stepCount"]
  GETTABLEKS R4 R1 K5 ["data"]
  GETTABLEKS R3 R4 K7 ["showNext"]
  SETTABLEKS R3 R2 K7 ["showNext"]
  GETTABLEKS R3 R0 K8 ["topics"]
  SETTABLEKS R3 R2 K8 ["topics"]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K8 ["topics"]
  GETTABLEKS R6 R1 K5 ["data"]
  GETTABLEKS R5 R6 K9 ["topic"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K9 ["topic"]
  LOADN R3 0
  SETTABLEKS R3 R2 K10 ["topicStepCount"]
  GETTABLEKS R3 R0 K6 ["steps"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R9 R7 K5 ["data"]
  GETTABLEKS R8 R9 K9 ["topic"]
  GETTABLEKS R10 R1 K5 ["data"]
  GETTABLEKS R9 R10 K9 ["topic"]
  JUMPIFNOTEQ R8 R9 [+6]
  GETTABLEKS R8 R2 K10 ["topicStepCount"]
  ADDK R8 R8 K11 [1]
  SETTABLEKS R8 R2 K10 ["topicStepCount"]
  JUMPIFNOTEQ R7 R1 [+5]
  GETTABLEKS R8 R2 K10 ["topicStepCount"]
  SETTABLEKS R8 R2 K12 ["topicStep"]
  FORGLOOP R3 2 [-22]
  RETURN R2 1

PROTO_15:
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["skipping"]
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["finishIncrement"]
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["finishIncrement"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  DUPTABLE R1 K3 [{"id", "kind", "title"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["data"]
  GETTABLEKS R2 R3 K0 ["id"]
  SETTABLEKS R2 R1 K0 ["id"]
  LOADK R2 K5 ["Completed"]
  SETTABLEKS R2 R1 K1 ["kind"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["localization"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["data"]
  GETTABLEKS R4 R5 K0 ["id"]
  LOADK R5 K7 ["%s_Title"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K4 ["data"]
  GETTABLEKS R7 R8 K0 ["id"]
  NAMECALL R5 R5 K8 ["format"]
  CALL R5 2 -1
  NAMECALL R2 R2 K9 ["getText"]
  CALL R2 -1 1
  SETTABLEKS R2 R1 K2 ["title"]
  SETTABLEKS R1 R0 K10 ["step"]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K11 ["onStepChanged"]
  GETUPVAL R1 0
  CALL R0 1 0
  GETIMPORT R0 K14 [task.delay]
  LOADN R1 2
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CALL R0 2 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R2 R0 K0 ["incrementing"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  LOADB R2 1
  SETTABLEKS R2 R0 K0 ["incrementing"]
  NAMECALL R2 R0 K1 ["getCurrentStep"]
  CALL R2 1 1
  JUMPIFNOT R2 [+14]
  GETTABLEKS R4 R2 K2 ["data"]
  GETTABLEKS R3 R4 K3 ["onUnbind"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R4 R2 K2 ["data"]
  GETTABLEKS R3 R4 K3 ["onUnbind"]
  MOVE R4 R0
  CALL R3 1 0
  NAMECALL R3 R2 K4 ["unbind"]
  CALL R3 1 0
  NAMECALL R3 R0 K5 ["getCurrentStepData"]
  CALL R3 1 1
  LOADB R4 0
  GETTABLEKS R5 R3 K6 ["topic"]
  GETTABLEKS R7 R3 K7 ["topics"]
  LENGTH R6 R7
  JUMPIFNOTEQ R5 R6 [+9]
  GETTABLEKS R5 R3 K8 ["topicStep"]
  GETTABLEKS R6 R3 K9 ["topicStepCount"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R5 0
  JUMPIFNOT R5 [+4]
  NAMECALL R5 R0 K10 ["finishIncrement"]
  CALL R5 1 0
  RETURN R0 0
  JUMPIFNOT R1 [+54]
  GETTABLEKS R5 R0 K11 ["skipping"]
  JUMPIFNOT R5 [+1]
  RETURN R0 0
  LOADB R5 1
  SETTABLEKS R5 R0 K11 ["skipping"]
  DUPTABLE R5 K15 [{"id", "kind", "description"}]
  GETTABLEKS R7 R2 K2 ["data"]
  GETTABLEKS R6 R7 K12 ["id"]
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K16 ["Skipped"]
  SETTABLEKS R6 R5 K13 ["kind"]
  GETTABLEKS R6 R0 K17 ["localization"]
  LOADK R8 K18 ["Tutorial"]
  LOADK R9 K19 ["StepSkipped"]
  NAMECALL R6 R6 K20 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K14 ["description"]
  SETTABLEKS R5 R3 K21 ["step"]
  MOVE R7 R0
  NAMECALL R5 R2 K22 ["skip"]
  CALL R5 2 0
  GETTABLEKS R5 R0 K23 ["onStepChanged"]
  MOVE R6 R3
  CALL R5 1 0
  GETTABLEKS R5 R0 K24 ["currentCallout"]
  JUMPIFNOT R5 [+8]
  GETTABLEKS R5 R0 K24 ["currentCallout"]
  NAMECALL R5 R5 K25 ["Destroy"]
  CALL R5 1 0
  LOADNIL R5
  SETTABLEKS R5 R0 K24 ["currentCallout"]
  GETIMPORT R5 K28 [task.delay]
  LOADK R6 K29 [1.5]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CALL R5 2 0
  RETURN R0 0
  GETTABLEKS R5 R2 K30 ["showComplete"]
  JUMPIFNOT R5 [+9]
  GETIMPORT R5 K28 [task.delay]
  LOADK R6 K31 [0.4]
  NEWCLOSURE R7 P1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R0
  CALL R5 2 0
  RETURN R0 0
  NAMECALL R5 R0 K10 ["finishIncrement"]
  CALL R5 1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["currentStep"]
  JUMPIFNOTEQKN R1 K1 [1] [+2]
  RETURN R0 0
  GETTABLEKS R4 R0 K0 ["currentStep"]
  SUBK R3 R4 K1 [1]
  NAMECALL R1 R0 K2 ["setStep"]
  CALL R1 2 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["currentStep"]
  GETTABLEKS R3 R0 K1 ["steps"]
  LENGTH R2 R3
  JUMPIFNOTEQ R1 R2 [+19]
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["completed"]
  GETTABLEKS R2 R0 K3 ["data"]
  GETTABLEKS R1 R2 K4 ["onComplete"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R0 K3 ["data"]
  GETTABLEKS R1 R2 K4 ["onComplete"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K5 ["onCompleted"]
  CALL R1 0 0
  JUMP [+6]
  GETTABLEKS R4 R0 K0 ["currentStep"]
  ADDK R3 R4 K6 [1]
  NAMECALL R1 R0 K7 ["setStep"]
  CALL R1 2 0
  LOADB R1 0
  SETTABLEKS R1 R0 K8 ["incrementing"]
  RETURN R0 0

PROTO_21:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["getTopicStep"]
  CALL R2 2 1
  JUMPIFNOT R2 [+30]
  GETTABLEKS R3 R0 K1 ["currentStep"]
  JUMPIFNOTLT R2 R3 [+6]
  MOVE R5 R2
  NAMECALL R3 R0 K2 ["setStep"]
  CALL R3 2 0
  RETURN R0 0
  GETTABLEKS R3 R0 K1 ["currentStep"]
  JUMPIFNOTLT R3 R2 [+18]
  GETTABLEKS R5 R0 K1 ["currentStep"]
  SUBK R3 R2 K3 [1]
  LOADN R4 1
  FORNPREP R3
  GETTABLEKS R7 R0 K4 ["steps"]
  GETTABLE R6 R7 R5
  MOVE R8 R0
  NAMECALL R6 R6 K5 ["skip"]
  CALL R6 2 0
  FORNLOOP R3
  MOVE R5 R2
  NAMECALL R3 R0 K2 ["setStep"]
  CALL R3 2 0
  RETURN R0 0

PROTO_22:
  GETTABLEKS R3 R0 K0 ["data"]
  GETTABLEKS R2 R3 K1 ["topic"]
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_23:
  GETTABLEKS R3 R0 K0 ["topics"]
  GETTABLE R2 R3 R1
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K1 ["steps"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_24:
  NAMECALL R1 R0 K0 ["getCurrentStep"]
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K1 ["data"]
  JUMP [+1]
  LOADNIL R2
  GETTABLEKS R3 R2 K2 ["spotlight"]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R4 R2 K2 ["spotlight"]
  GETTABLEKS R3 R4 K3 ["TargetWidgetUri"]
  JUMPIFNOT R3 [+48]
  GETTABLEKS R4 R2 K2 ["spotlight"]
  GETTABLEKS R3 R4 K4 ["ShowShadows"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R3 R0 K5 ["Spotlight"]
  NAMECALL R3 R3 K6 ["ApplyShadowsAsync"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K5 ["Spotlight"]
  GETTABLEKS R6 R2 K2 ["spotlight"]
  GETTABLEKS R5 R6 K3 ["TargetWidgetUri"]
  NAMECALL R3 R3 K7 ["ApplySpotlightAsync"]
  CALL R3 2 0
  GETTABLEKS R4 R2 K2 ["spotlight"]
  GETTABLEKS R3 R4 K8 ["ShowBox"]
  JUMPIFNOT R3 [+9]
  GETTABLEKS R3 R0 K5 ["Spotlight"]
  GETTABLEKS R6 R2 K2 ["spotlight"]
  GETTABLEKS R5 R6 K3 ["TargetWidgetUri"]
  NAMECALL R3 R3 K9 ["ApplyFillInBoxAsync"]
  CALL R3 2 0
  GETTABLEKS R4 R2 K2 ["spotlight"]
  GETTABLEKS R3 R4 K10 ["ShowHighlight"]
  JUMPIFNOT R3 [+64]
  GETTABLEKS R3 R0 K5 ["Spotlight"]
  GETTABLEKS R6 R2 K2 ["spotlight"]
  GETTABLEKS R5 R6 K3 ["TargetWidgetUri"]
  NAMECALL R3 R3 K11 ["ApplyHighlightAsync"]
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R6 R2 K2 ["spotlight"]
  GETTABLEKS R5 R6 K12 ["target"]
  NAMECALL R3 R3 K13 ["GetWidgetFromLabel"]
  CALL R3 2 1
  GETTABLEKS R5 R2 K2 ["spotlight"]
  GETTABLEKS R4 R5 K14 ["showShadows"]
  JUMPIFNOT R4 [+13]
  GETUPVAL R4 0
  NAMECALL R4 R4 K15 ["ApplyShadows"]
  CALL R4 1 0
  GETUPVAL R4 0
  MOVE R6 R3
  GETTABLEKS R8 R2 K2 ["spotlight"]
  GETTABLEKS R7 R8 K16 ["rowName"]
  NAMECALL R4 R4 K17 ["ApplySpotlight"]
  CALL R4 3 0
  GETTABLEKS R5 R2 K2 ["spotlight"]
  GETTABLEKS R4 R5 K18 ["showBox"]
  JUMPIFNOT R4 [+9]
  GETUPVAL R4 0
  MOVE R6 R3
  GETTABLEKS R8 R2 K2 ["spotlight"]
  GETTABLEKS R7 R8 K16 ["rowName"]
  NAMECALL R4 R4 K19 ["ApplyFillInBox"]
  CALL R4 3 0
  GETTABLEKS R5 R2 K2 ["spotlight"]
  GETTABLEKS R4 R5 K20 ["showHighlight"]
  JUMPIFNOT R4 [+9]
  GETUPVAL R4 0
  MOVE R6 R3
  GETTABLEKS R8 R2 K2 ["spotlight"]
  GETTABLEKS R7 R8 K16 ["rowName"]
  NAMECALL R4 R4 K21 ["ApplyHighlight"]
  CALL R4 3 0
  RETURN R0 0

PROTO_25:
  GETTABLEKS R2 R0 K0 ["toolboxLimits"]
  JUMPIFNOTEQ R2 R1 [+2]
  RETURN R0 0
  SETTABLEKS R1 R0 K0 ["toolboxLimits"]
  GETTABLEKS R2 R0 K1 ["toolboxConnection"]
  NAMECALL R3 R2 K2 ["getNamespaceFolder"]
  CALL R3 1 1
  LOADK R6 K3 ["SetTutorialLimits"]
  LOADN R7 2
  NAMECALL R4 R3 K4 ["WaitForChild"]
  CALL R4 3 1
  JUMPIFNOT R4 [+21]
  LOADK R7 K3 ["SetTutorialLimits"]
  JUMPIFNOT R1 [+14]
  DUPTABLE R8 K8 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
  GETTABLEKS R9 R1 K5 ["assetIds"]
  SETTABLEKS R9 R8 K5 ["assetIds"]
  GETTABLEKS R9 R1 K6 ["positionOverride"]
  SETTABLEKS R9 R8 K6 ["positionOverride"]
  GETTABLEKS R9 R1 K7 ["scriptWarningOverride"]
  SETTABLEKS R9 R8 K7 ["scriptWarningOverride"]
  JUMP [+2]
  NEWTABLE R8 0 0
  NAMECALL R5 R2 K9 ["Invoke"]
  CALL R5 3 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R3 0
  NAMECALL R1 R0 K0 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_27:
  GETIMPORT R4 K1 [ipairs]
  NAMECALL R5 R1 K2 ["GetChildren"]
  CALL R5 1 -1
  CALL R4 -1 3
  FORGPREP_INEXT R4
  MOVE R11 R2
  NAMECALL R9 R8 K3 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+3]
  MOVE R9 R3
  MOVE R10 R8
  CALL R9 1 0
  FORGLOOP R4 2 [inext] [-9]
  GETTABLEKS R4 R1 K4 ["ChildAdded"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  CAPTURE VAL R3
  NAMECALL R4 R4 K5 ["Connect"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["collect"]
  GETTABLEKS R3 R1 K8 ["findIndex"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["TutorialTypes"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K10 ["Util"]
  GETTABLEKS R6 R7 K12 ["TutorialSteps"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K10 ["Util"]
  GETTABLEKS R8 R9 K12 ["TutorialSteps"]
  GETTABLEKS R7 R8 K13 ["TutorialStep"]
  CALL R6 1 1
  GETIMPORT R7 K15 [pcall]
  DUPCLOSURE R8 K16 [PROTO_0]
  CALL R7 1 2
  JUMPIFNOT R7 [+2]
  MOVE R9 R8
  JUMP [+1]
  LOADNIL R9
  GETIMPORT R10 K15 [pcall]
  DUPCLOSURE R11 K17 [PROTO_1]
  CALL R10 1 2
  JUMPIFNOT R10 [+2]
  MOVE R12 R11
  JUMP [+1]
  LOADNIL R12
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K18 ["Flags"]
  GETTABLEKS R14 R15 K19 ["getFFlagTutorialsUseFinishTextOnLastStep"]
  CALL R13 1 1
  CALL R13 0 1
  DUPTABLE R14 K25 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
  LOADK R15 K26 ["Edit"]
  SETTABLEKS R15 R14 K20 ["DataModel"]
  LOADK R15 K27 ["Standalone"]
  SETTABLEKS R15 R14 K21 ["PluginType"]
  LOADK R15 K28 ["Tutorials"]
  SETTABLEKS R15 R14 K22 ["PluginId"]
  LOADK R15 K29 ["Panels"]
  SETTABLEKS R15 R14 K23 ["Category"]
  LOADK R15 K30 ["TourWidget"]
  SETTABLEKS R15 R14 K24 ["ItemId"]
  DUPTABLE R15 K31 [{"PluginId", "Category", "ItemId"}]
  LOADK R16 K32 ["MainWindow"]
  SETTABLEKS R16 R15 K22 ["PluginId"]
  LOADK R16 K33 ["Widgets"]
  SETTABLEKS R16 R15 K23 ["Category"]
  LOADK R16 K34 ["Main"]
  SETTABLEKS R16 R15 K24 ["ItemId"]
  GETIMPORT R16 K37 [table.insert]
  GETIMPORT R17 K39 [table.find]
  NEWTABLE R18 32 0
  DUPTABLE R19 K41 [{"__index"}]
  SETTABLEKS R18 R19 K40 ["__index"]
  DUPCLOSURE R20 K42 [PROTO_2]
  DUPCLOSURE R21 K43 [PROTO_3]
  CAPTURE VAL R20
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R6
  CAPTURE VAL R19
  SETTABLEKS R21 R18 K44 ["new"]
  DUPCLOSURE R21 K45 [PROTO_4]
  SETTABLEKS R21 R18 K46 ["start"]
  DUPCLOSURE R21 K47 [PROTO_5]
  SETTABLEKS R21 R18 K48 ["setWidget"]
  DUPCLOSURE R21 K49 [PROTO_6]
  CAPTURE VAL R15
  SETTABLEKS R21 R18 K50 ["resetAttachment"]
  DUPCLOSURE R21 K51 [PROTO_7]
  CAPTURE VAL R15
  CAPTURE VAL R14
  SETTABLEKS R21 R18 K52 ["attachTo"]
  DUPCLOSURE R21 K53 [PROTO_10]
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R2
  SETTABLEKS R21 R18 K54 ["setStep"]
  DUPCLOSURE R21 K55 [PROTO_12]
  CAPTURE VAL R9
  SETTABLEKS R21 R18 K56 ["showCallout"]
  DUPCLOSURE R21 K57 [PROTO_13]
  SETTABLEKS R21 R18 K58 ["getCurrentStep"]
  DUPCLOSURE R21 K59 [PROTO_14]
  CAPTURE VAL R17
  SETTABLEKS R21 R18 K60 ["getCurrentStepData"]
  DUPCLOSURE R21 K61 [PROTO_18]
  CAPTURE VAL R13
  SETTABLEKS R21 R18 K62 ["increment"]
  DUPCLOSURE R21 K63 [PROTO_19]
  SETTABLEKS R21 R18 K64 ["back"]
  DUPCLOSURE R21 K65 [PROTO_20]
  SETTABLEKS R21 R18 K66 ["finishIncrement"]
  DUPCLOSURE R21 K67 [PROTO_21]
  SETTABLEKS R21 R18 K68 ["selectTopic"]
  DUPCLOSURE R21 K69 [PROTO_23]
  CAPTURE VAL R3
  SETTABLEKS R21 R18 K70 ["getTopicStep"]
  DUPCLOSURE R21 K71 [PROTO_24]
  CAPTURE VAL R12
  SETTABLEKS R21 R18 K72 ["showSpotlight"]
  DUPCLOSURE R21 K73 [PROTO_25]
  SETTABLEKS R21 R18 K74 ["setToolboxLimits"]
  DUPCLOSURE R21 K75 [PROTO_27]
  SETTABLEKS R21 R18 K76 ["syncChildren"]
  RETURN R18 1
