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
var2.NoiseStrength = 0.5
var2.BlendingEdge = 0
var2.NoiseScale = 0.25
local var39 = {}
var39.FallbackMaterial = Enum.Material.Sandstone
var39.Unit = var1.MaterialUnit.Percentage
var39.Min = 0
var39.Max = 1
var39.MaterialIndex = 1
local var46 = {}
var46.Material = Enum.Material.Sandstone
var46.MinHeight = 0
var46.MaxHeight = 1
var46.MinSlope = 45
var46.MaxSlope = 90
var46.Priority = 0
local var53 = {}
var53.Material = Enum.Material.Grass
var53.MinHeight = 0
var53.MaxHeight = 1
var53.MinSlope = 0
var53.MaxSlope = 45
var53.Priority = 1
var39.MaterialList = {}
var2.Material = var39
var2.PlacementMode = true
var2.RimHeight = 0.3
var2.Size = Vector3.new(500, 200, 500)
var2.SnapToVoxels = true
var2.TopRadius = 0.1
var2.Transform = CFrame.new()
var20.Defaults = {}
var20.Id = var1.Category.BuildSettings
local var79 = {}
var79.Id = var3.Region
local var81 = {}
var81.Type = var3.Region
var81.Wireframe = false
var81.Rotation = false
var79.Schema = var81
local var7 = {}
var7.Id = var3.Placement
local var87 = {}
var87.Type = var3.Placement
var7.Schema = var87
return require(var0.Src.Tools.BaseTool):new(var1.TerrainType.Mesa, var1.Tab.None, {}, {})
