PROTO_0:
  JUMPIFNOTEQKNIL R1 [+7]
  LOADK R4 K0 ["AbuseType"]
  LOADK R5 K1 ["Other"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  LOADK R4 K0 ["AbuseType"]
  GETUPVAL R6 0
  GETTABLE R5 R6 R1
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 64 0
  LOADK R1 K0 ["Other"]
  SETTABLEKS R1 R0 K1 ["ABUSE_TYPE_NONE"]
  LOADK R1 K0 ["Other"]
  SETTABLEKS R1 R0 K2 ["ABUSE_TYPE_OTHER"]
  LOADK R1 K3 ["Swearing"]
  SETTABLEKS R1 R0 K4 ["ABUSE_TYPE_PROFANITY"]
  LOADK R1 K5 ["Harassment"]
  SETTABLEKS R1 R0 K6 ["ABUSE_TYPE_HARASSMENT"]
  LOADK R1 K7 ["Spam"]
  SETTABLEKS R1 R0 K8 ["ABUSE_TYPE_SPAM"]
  LOADK R1 K9 ["Scamming"]
  SETTABLEKS R1 R0 K10 ["ABUSE_TYPE_SCAMMING"]
  LOADK R1 K11 ["Dating"]
  SETTABLEKS R1 R0 K12 ["ABUSE_TYPE_DATING_AND_ROMANTIC_CONTENT"]
  LOADK R1 K13 ["SexualContent"]
  SETTABLEKS R1 R0 K14 ["ABUSE_TYPE_SEXUAL_CONTENT"]
  LOADK R1 K15 ["DirectingUsersOffPlatform"]
  SETTABLEKS R1 R0 K16 ["ABUSE_TYPE_DIRECTING_USERS_OFF_PLATFORM"]
  LOADK R1 K17 ["DiscriminatoryContent"]
  SETTABLEKS R1 R0 K18 ["ABUSE_TYPE_DISCRIMINATORY"]
  LOADK R1 K19 ["PrivacyAskingforPII"]
  SETTABLEKS R1 R0 K20 ["ABUSE_TYPE_PRIVACY_ASKING_FOR_PII"]
  LOADK R1 K21 ["PrivacyGivingPII"]
  SETTABLEKS R1 R0 K22 ["ABUSE_TYPE_PRIVACY_GIVING_PII"]
  LOADK R1 K0 ["Other"]
  SETTABLEKS R1 R0 K23 ["ABUSE_TYPE_IMPERSONATION"]
  LOADK R1 K24 ["EncouragingDangerousBehavior"]
  SETTABLEKS R1 R0 K25 ["ABUSE_TYPE_ENCOURAGING_DANGEROUS_BEHAVIOR"]
  LOADK R1 K26 ["ExtortionandBlackmail"]
  SETTABLEKS R1 R0 K27 ["ABUSE_TYPE_EXTORTION_AND_BLACKMAIL"]
  LOADK R1 K0 ["Other"]
  SETTABLEKS R1 R0 K28 ["ABUSE_TYPE_ILLEGAL_AND_REGULATED_CONTENT"]
  LOADK R1 K29 ["MisusingRobloxSystems"]
  SETTABLEKS R1 R0 K30 ["ABUSE_TYPE_MISUSING_ROBLOX_SYSTEMS"]
  LOADK R1 K0 ["Other"]
  SETTABLEKS R1 R0 K31 ["ABUSE_TYPE_POLITICAL_CONTENT"]
  LOADK R1 K0 ["Other"]
  SETTABLEKS R1 R0 K32 ["ABUSE_TYPE_REAL_LIFE_TRAGEDY"]
  LOADK R1 K0 ["Other"]
  SETTABLEKS R1 R0 K33 ["ABUSE_TYPE_TERRORISM_EXTREMISM"]
  LOADK R1 K34 ["SuicideSelfHarm"]
  SETTABLEKS R1 R0 K35 ["ABUSE_TYPE_SUICIDE_SELF_HARM"]
  LOADK R1 K36 ["ChildEndangerment"]
  SETTABLEKS R1 R0 K37 ["ABUSE_TYPE_CHILD_ENDANGERMENT"]
  LOADK R1 K38 ["RealLifeThreats"]
  SETTABLEKS R1 R0 K39 ["ABUSE_TYPE_REAL_LIFE_THREATS"]
  LOADK R1 K40 ["CheatandExploits"]
  SETTABLEKS R1 R0 K41 ["ABUSE_TYPE_CHEAT_AND_EXPLOITS"]
  LOADK R1 K42 ["SeekingSexualContent"]
  SETTABLEKS R1 R0 K43 ["ABUSE_TYPE_SEEKING_SEXUAL_CONTENT"]
  LOADK R1 K44 ["IrlDangerousActivities"]
  SETTABLEKS R1 R0 K45 ["ABUSE_TYPE_IRL_DANGEROUS_ACTIVITIES"]
  LOADK R1 K46 ["ViolentContentAndGore"]
  SETTABLEKS R1 R0 K47 ["ABUSE_TYPE_VIOLENT_CONTENT_AND_GORE"]
  LOADK R1 K48 ["DisruptiveAudio"]
  SETTABLEKS R1 R0 K49 ["ABUSE_TYPE_DISRUPTIVE_AUDIO"]
  LOADK R1 K50 ["RobloxEconomy"]
  SETTABLEKS R1 R0 K51 ["ABUSE_TYPE_ROBLOX_ECONOMY"]
  LOADK R1 K52 ["IpViolation"]
  SETTABLEKS R1 R0 K53 ["ABUSE_TYPE_IP_VIOLATION"]
  LOADK R1 K54 ["ContestsandSweepstakes"]
  SETTABLEKS R1 R0 K55 ["ABUSE_TYPE_CONTESTS_AND_SWEEPSTAKES"]
  LOADK R1 K56 ["Advertising"]
  SETTABLEKS R1 R0 K57 ["ABUSE_TYPE_ADVERTISING"]
  LOADK R1 K58 ["OffPlatformSpeechandBehavior"]
  SETTABLEKS R1 R0 K59 ["ABUSE_TYPE_OFF_PLATFORM_SPEECH_AND_BEHAVIOR"]
  LOADK R1 K60 ["ThreatsOrAbuseOfRobloxEmployeesOrAffiliates"]
  SETTABLEKS R1 R0 K61 ["ABUSE_TYPE_THREATS_OR_ABUSE_OF_ROBLOX_EMPLOYEES_OR_AFFILIATES"]
  LOADK R1 K62 ["Chargeback"]
  SETTABLEKS R1 R0 K63 ["ABUSE_TYPE_CHARGEBACK"]
  DUPCLOSURE R1 K64 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
