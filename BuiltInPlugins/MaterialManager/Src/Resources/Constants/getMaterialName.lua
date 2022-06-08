local Plugin = script.Parent.Parent.Parent.Parent

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)

local enumToName = {
	[Enum.Material.Air] = "Air",
	[Enum.Material.Asphalt] = "Asphalt",
	[Enum.Material.Basalt] = "Basalt",
	[Enum.Material.Brick] = "Brick",
	[Enum.Material.Cobblestone] = "Cobblestone",
	[Enum.Material.Concrete] = "Concrete",
	[Enum.Material.CorrodedMetal] = "CorrodedMetal",
	[Enum.Material.CrackedLava] = "CrackedLava",
	[Enum.Material.DiamondPlate] = "DiamondPlate",
	[Enum.Material.Fabric] = "Fabric",
	[Enum.Material.Foil] = "Foil",
	[Enum.Material.ForceField] = if getFFlagMaterialManagerGlassNeonForceField() then "ForceField" else nil,
	[Enum.Material.Glacier] = "Glacier",
	[Enum.Material.Glass] = "Glass",
	[Enum.Material.Granite] = "Granite",
	[Enum.Material.Grass] = "Grass",
	[Enum.Material.Ground] = "Ground",
	[Enum.Material.Ice] = "Ice",
	[Enum.Material.LeafyGrass] = "LeafyGrass",
	[Enum.Material.Limestone] = "Limestone",
	[Enum.Material.Marble] = "Marble",
	[Enum.Material.Metal] = "Metal",
	[Enum.Material.Mud] = "Mud",
	[Enum.Material.Neon] = "Neon",
	[Enum.Material.Pavement] = "Pavement",
	[Enum.Material.Pebble] = "Pebble",
	[Enum.Material.Plastic] = "Plastic",
	[Enum.Material.Rock] = "Rock",
	[Enum.Material.Salt] = "Salt",
	[Enum.Material.Sand] = "Sand",
	[Enum.Material.Slate] = "Slate",
	[Enum.Material.Sandstone] = "Sandstone",
	[Enum.Material.SmoothPlastic] = "SmoothPlastic",
	[Enum.Material.Snow] = "Snow",
	[Enum.Material.Water] = "Water",
	[Enum.Material.Wood] = "Wood",
	[Enum.Material.WoodPlanks] = "WoodPlanks",
}

return function(material: Enum.Material): string
	return enumToName[material]
end
