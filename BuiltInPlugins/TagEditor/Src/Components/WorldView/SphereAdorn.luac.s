PROTO_0:
  LOADNIL R1
  LOADNIL R2
  GETTABLEKS R4 R0 K0 ["Adornee"]
  GETTABLEKS R3 R4 K1 ["ClassName"]
  JUMPIFNOTEQKS R3 K2 ["Attachment"] [+10]
  GETTABLEKS R3 R0 K0 ["Adornee"]
  GETTABLEKS R1 R3 K3 ["Parent"]
  GETTABLEKS R3 R0 K0 ["Adornee"]
  GETTABLEKS R2 R3 K4 ["CFrame"]
  JUMP [+2]
  GETTABLEKS R1 R0 K0 ["Adornee"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["createElement"]
  LOADK R4 K6 ["SphereHandleAdornment"]
  DUPTABLE R5 K11 [{"Adornee", "CFrame", "Color3", "AlwaysOnTop", "Transparency", "ZIndex"}]
  SETTABLEKS R1 R5 K0 ["Adornee"]
  SETTABLEKS R2 R5 K4 ["CFrame"]
  GETTABLEKS R6 R0 K12 ["Color"]
  SETTABLEKS R6 R5 K7 ["Color3"]
  GETTABLEKS R6 R0 K8 ["AlwaysOnTop"]
  SETTABLEKS R6 R5 K8 ["AlwaysOnTop"]
  LOADK R6 K13 [0.3]
  SETTABLEKS R6 R5 K9 ["Transparency"]
  GETTABLEKS R7 R0 K8 ["AlwaysOnTop"]
  JUMPIFNOT R7 [+2]
  LOADN R6 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K10 ["ZIndex"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
