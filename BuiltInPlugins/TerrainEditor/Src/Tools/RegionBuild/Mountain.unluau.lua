-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Src.Types)
local var2 = var1.BuildSettings
local var3 = var1.Gizmo
local var20 = {}
local var23 = {}
var2.Offset = Vector2.new(0, 0)
var2.Seed = 0.123
var23.Children = {}
var2.AdvancedNoise = var23
var2.NoiseStrength = 0.3
var2.BlendingEdge = 0
var2.NoiseScale = 0.4
local var39 = {}
var39.FallbackMaterial = Enum.Material.Rock
var39.Unit = var1.MaterialUnit.Percentage
var39.Min = 0
var39.Max = 1
var39.MaterialIndex = 1
local var46 = {}
var46.Material = Enum.Material.Rock
var46.MinHeight = 0.7
var46.MaxHeight = 1
var46.MinSlope = 45
var46.MaxSlope = 90
var46.Priority = 0
local var53 = {}
var53.Material = Enum.Material.Grass
var53.MinHeight = 0.1
var53.MaxHeight = 0.7
var53.MinSlope = 10
var53.MaxSlope = 90
var53.Priority = 1
local var5 = {}
var5.Material = Enum.Material.Ground
var5.MinHeight = 0.1
var5.MaxHeight = 0.8
var5.MinSlope = 0
var5.MaxSlope = 20
var5.Priority = 3
local var6 = {}
var6.Material = Enum.Material.Mud
var6.MinHeight = 0
var6.MaxHeight = 0.7
var6.MinSlope = 0
var6.MaxSlope = 30
var6.Priority = 2
var39.MaterialList = {}
var2.Material = var39
var2.PlacementMode = true
var2.Size = Vector3.new(200, 100, 200)
var2.SnapToVoxels = true
var2.Transform = CFrame.new()
var20.Defaults = {}
var20.Id = var1.Category.BuildSettings
local var89 = {}
var89.Id = var3.Region
local var91 = {}
var91.Type = var3.Region
var91.Wireframe = false
var91.Rotation = false
var89.Schema = var91
local var9 = {}
var9.Id = var3.Placement
local var97 = {}
var97.Type = var3.Placement
var9.Schema = var97
return require(var0.Src.Tools.BaseTool):new(var1.TerrainType.Mountain, var1.Tab.None, {}, {})
