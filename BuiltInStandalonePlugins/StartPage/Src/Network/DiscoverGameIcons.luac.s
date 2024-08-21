PROTO_0:
  GETTABLEKS R1 R0 K0 ["data"]
  JUMPIF R1 [+3]
  NEWTABLE R1 0 0
  RETURN R1 1
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["data"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K1 ["targetId"]
  JUMPIFNOT R7 [+8]
  GETTABLEKS R7 R6 K2 ["imageUrl"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R6 K1 ["targetId"]
  GETTABLEKS R8 R6 K2 ["imageUrl"]
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-12]
  RETURN R1 1

PROTO_1:
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R8 R5 K0 ["IsPlaceholder"]
  NOT R7 R8
  FASTCALL2K ASSERT R7 K1 [+4]
  LOADK R8 K1 ["Data returned from network should not be a placeholder sentinel value"]
  GETIMPORT R6 K3 [assert]
  CALL R6 2 0
  GETTABLEKS R6 R5 K4 ["Id"]
  JUMPIFNOT R6 [+11]
  GETUPVAL R7 0
  GETTABLEKS R8 R5 K4 ["Id"]
  GETTABLE R6 R7 R8
  JUMPIFNOT R6 [+6]
  GETUPVAL R7 0
  GETTABLEKS R8 R5 K4 ["Id"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K5 ["CDNUrl"]
  FORGLOOP R1 2 [-24]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R6 1
  MOVE R8 R5
  NAMECALL R6 R6 K0 ["generateTempUrlInContentProvider"]
  CALL R6 2 0
  FORGLOOP R1 2 [-6]
  RETURN R0 0

PROTO_3:
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R8 R5 K0 ["IsPlaceholder"]
  NOT R7 R8
  FASTCALL2K ASSERT R7 K1 [+4]
  LOADK R8 K1 ["Data cannot be a placeholder here"]
  GETIMPORT R6 K3 [assert]
  CALL R6 2 0
  LOADK R6 K4 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
  SETTABLEKS R6 R5 K5 ["ImageUrl"]
  FORGLOOP R1 2 [-13]
  RETURN R0 1

PROTO_4:
  GETIMPORT R1 K1 [warn]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 0
  DUPCLOSURE R2 K2 [PROTO_3]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  GETTABLEKS R3 R2 K1 ["composeUrl"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["EXPERIENCES_ICON_URL"]
  GETTABLEKS R4 R5 K3 ["Prefix"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["EXPERIENCES_ICON_URL"]
  GETTABLEKS R5 R6 K4 ["Url"]
  CALL R5 0 1
  MOVE R6 R1
  CALL R3 3 1
  GETUPVAL R4 2
  MOVE R6 R3
  NAMECALL R4 R4 K5 ["get"]
  CALL R4 2 1
  GETUPVAL R5 2
  MOVE R7 R4
  NAMECALL R5 R5 K6 ["parseJson"]
  CALL R5 2 1
  GETUPVAL R7 3
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K7 ["validate"]
  CALL R7 1 -1
  NAMECALL R5 R5 K8 ["andThen"]
  CALL R5 -1 1
  DUPCLOSURE R7 K9 [PROTO_0]
  NAMECALL R5 R5 K8 ["andThen"]
  CALL R5 2 1
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  NAMECALL R5 R5 K8 ["andThen"]
  CALL R5 2 1
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  NAMECALL R5 R5 K10 ["catch"]
  CALL R5 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K10 ["Models"]
  GETTABLEKS R4 R5 K11 ["ApiArrayResponseThumbnailResponse"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K12 ["Network"]
  GETTABLEKS R5 R6 K13 ["Urls"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K14 ["Util"]
  GETTABLEKS R6 R7 K15 ["TypedNetworking"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K16 ["createResponseValidator"]
  CALL R6 1 1
  GETTABLEKS R8 R1 K17 ["RobloxAPI"]
  GETTABLEKS R7 R8 K18 ["Url"]
  GETTABLEKS R8 R5 K19 ["new"]
  DUPTABLE R9 K22 [{"isInternal", "loggingLevel"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K20 ["isInternal"]
  LOADN R10 0
  SETTABLEKS R10 R9 K21 ["loggingLevel"]
  CALL R8 1 1
  GETIMPORT R9 K24 [game]
  LOADK R11 K25 ["StartPageService"]
  NAMECALL R9 R9 K26 ["GetService"]
  CALL R9 2 1
  DUPCLOSURE R10 K27 [PROTO_5]
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R9
  RETURN R10 1
