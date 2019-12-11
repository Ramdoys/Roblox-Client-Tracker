local ProgressFrame = require(script.Parent.ProgressFrame)
local ConfirmationPrompt = require(script.Parent.ConfirmationPrompt)

local coreGui = game:GetService('CoreGui')
local changeHistoryService = game:GetService('ChangeHistoryService')

local FFlagTerrainToolMetrics = settings():GetFFlag("TerrainToolMetrics")
local FFlagTerrainClearButtonMove = settings():GetFFlag("TerrainClearButtonMove")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = game:GetService("StudioService")

local terrain

local pluginGui
local screenGui

local terrainGenerationFrame
local progressFrame
local pauseButton
local cancelButton
local barFill

local kBiomesCheckboxHPadding = 24

local kBottomButtonsPadding = 20

local kProgressFrameObj = nil
local progressFrame
local pauseButton
local cancelButton
local barFill

local kConfirmationFrameObj = nil
local confirmationFrame
local messageFrame
local confirmButton
local notConfirmButton
local onConfirmationCallback

local onGenStartActiveButton

local kSelectedBiomes = {
	['Water'] = false,
	['Plains'] = true,
	['Dunes'] = false,
	['Mountains'] = true,
	['Arctic'] = false,
	['Marsh'] = false,
	['Hills'] = true,
	['Canyons'] = false,
	['Lavascape'] = false,
}

local on = false
local mouse = nil
local generating = false
local clearing = false
local paused = false
local cancelIt = false

local noise = math.noise
local min = math.min
local max = math.max
local sin = math.sin
local cos = math.cos
local floor = math.floor
local ceil = math.ceil
local sqrt = math.sqrt
local randomseed = math.randomseed
local random = math.random
local pi = math.pi
local tau = math.pi*2

---------Directly used in Generation---------
local masterSeed = 618033988
local mapWidth = 256
local mapHeight = 128
local size = Vector3.new(mapWidth, mapHeight, mapWidth)
local position = Vector3.new(0, 0, 0)
local biomeSize = 100
local generateCaves = false
local waterLevel = .48
local surfaceThickness = .018
local biomes = {}
local resolution = 4
---------------------------------------------

local textSeed = tostring(masterSeed)
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------

local rock = Enum.Material.Rock
local snow = Enum.Material.Snow
local ice = Enum.Material.Glacier
local grass = Enum.Material.Grass
local ground = Enum.Material.Ground
local mud = Enum.Material.Mud
local slate = Enum.Material.Slate
local concrete = Enum.Material.Concrete
local lava = Enum.Material.CrackedLava
local basalt = Enum.Material.Basalt
local air = Enum.Material.Air
local sand = Enum.Material.Sand
local sandstone = Enum.Material.Sandstone
local water = Enum.Material.Water

local fill = rock

local range = {}
randomseed(6180339)
theseed={}
for i=1,999 do
	table.insert(theseed,math.random())
end

local function computeMasterSeed(text)
	local compositeNumber = 0
	for i=1,#text do
		local character = string.sub(text,i,i)
		local number = tonumber(character)
		if number then
			compositeNumber = (compositeNumber+6)*(number+5)
		else
			compositeNumber = (compositeNumber+7)*(string.byte(character)+3)
		end
		compositeNumber = compositeNumber%61803	--yes, this does need to be done after every character iteration, otherwise number loses precision by the end
	end
	return compositeNumber
end
computeMasterSeed(tostring(textSeed))

module = {}
module.Init = function (toolName, theMouse)
	mouse = theMouse

	if not screenGui then
		screenGui = Instance.new("ScreenGui")
		screenGui.Name = "TerrainBrushGui"

		kProgressFrameObj = ProgressFrame.new()
		progressFrame = kProgressFrameObj:GetFrame()
		progressFrame.Parent = screenGui

		pauseButton = kProgressFrameObj:GetPauseButton()
		cancelButton = kProgressFrameObj:GetCancelButton()
		barFill = kProgressFrameObj:GetFill()

		pauseButton.MouseButton1Down:connect(function()
			paused = not paused
			updatePausedButton()
		end)

		cancelButton.MouseButton1Down:connect(function()
			if not cancelIt then
				cancelIt = true
				print('Canceled')
			end
			if onGenStartActiveButton then
				onGenStartActiveButton(true)
			end
		end)

		-- confirmation page for clear
	end
	screenGui.Parent = coreGui
end

module.ChangeProperties = function (vals)
	position = vals.position
	size = vals.size
	mapWidth = vals.size and tonumber(vals.size.X) or 0
	mapHeight = vals.size and tonumber(vals.size.Y) or 0

	biomeSize = tonumber(vals.biomeSize)
	generateCaves = vals.haveCaves

	if type(vals.biomeSelection) == "table" then
		for key,_ in pairs(kSelectedBiomes) do
			kSelectedBiomes[key] = vals.biomeSelection[key]
		end
	end

	textSeed = vals.seed
	masterSeed = computeMasterSeed(textSeed)
end

module.OnButtonClick = function ()
	print("Generation: ", size.X, size.Y, size.Z)

	if mapHeight <= 0 or mapWidth <= 0 then
		print("Size must be non-zero")
		return
	end

	print("Generating...")

	generate()
end

module.SetConfirmationVisible = function(theme, localization)
	if not kConfirmationFrameObj then
		kConfirmationFrameObj = ConfirmationPrompt.new(theme, localization)
		confirmationFrame = kConfirmationFrameObj:GetFrame()
		confirmationFrame.Parent = screenGui

		messageFrame = kConfirmationFrameObj:GetConfirmMessage()
		confirmButton = kConfirmationFrameObj:GetConfirmButton()
		notConfirmButton = kConfirmationFrameObj:GetCancelButton()

		messageFrame.Text = localization:getText("ClearTool", "ConfirmationMessage")

		confirmButton.Activated:connect(function()
			confirmationFrame.Visible = false
			module.clearTerrain()
			if onConfirmationCallback then
				onConfirmationCallback()
			end
		end)

		notConfirmButton.Activated:connect(function()
			confirmationFrame.Visible = false
			screenGui.Parent = nil
			if onConfirmationCallback then
				onConfirmationCallback()
			end
		end)
	else
		kConfirmationFrameObj:UpdateTheme(theme)
		messageFrame.Text = localization:getText("ClearTool", "ConfirmationMessage")
	end
	screenGui.Parent = coreGui
	confirmationFrame.Visible = true
end

module.OnClearConfirmedFunc = function (callback)
	onConfirmationCallback = callback
end

module.SetGenButtonStateFunc = function (callback)
	onGenStartActiveButton = callback
end

function checkRange(v)
	if not range.min or v < range.min then
		range.min = v
	end
	if not range.max or v > range.max then
		range.max = v
	end
end

local function getPerlin(x,y,z,seed,scale,raw)
	local seed = seed or 0
	local scale = scale or 1
	if not raw then
		return noise(x/scale+(seed*17)+masterSeed,y/scale-masterSeed,z/scale-seed*seed)*.5 + .5 -- accounts for bleeding from interpolated line
	else
		return noise(x/scale+(seed*17)+masterSeed,y/scale-masterSeed,z/scale-seed*seed)
	end
end

local function getNoise(x,y,z,seed1)
	local x = x or 0
	local y = y or 0
	local z = z or 0
	local seed1 = seed1 or 7
	local wtf=x+y+z+seed1+masterSeed + (masterSeed-x)*(seed1+z) + (seed1-y)*(masterSeed+z)		-- + x*(y+z) + z*(masterSeed+seed1) + seed1*(x+y)			--x+y+z+seed1+masterSeed + x*y*masterSeed-y*z+(z+masterSeed)*x	--((x+y)*(y-seed1)*seed1)-(x+z)*seed2+x*11+z*23-y*17
	return theseed[(floor(wtf%(#theseed)))+1]
end

local function thresholdFilter(value, bottom, size)
	if value <= bottom then
		return 0
	elseif value >= bottom+size then
		return 1
	else
		return (value-bottom)/size
	end
end

local function ridgedFilter(value)	--absolute and flip for ridges. and normalize
	return value<.5 and value*2 or 2-value*2
end

local function ridgedFlippedFilter(value)					--unflipped
	return value < .5 and 1-value*2 or value*2-1
end

local function advancedRidgedFilter(value, cutoff)
	local cutoff = cutoff or .5
	value = value - cutoff
	return 1 - (value < 0 and -value or value) * 1/(1-cutoff)
end

local function fractalize(operation,x,y,z, operationCount, scale, offset, gain)
	local operationCount = operationCount or 3
	local scale = scale or .5
	local offset = 0
	local gain = gain or 1
	local totalValue = 0
	local totalScale = 0
	for i=1, operationCount do
		local thisScale = scale^(i-1)
		totalScale = totalScale + thisScale
		totalValue = totalValue + (offset + gain * operation(x,y,z,i))*thisScale
	end
	return totalValue/totalScale
end

local function mountainsOperation(x,y,z,i)
	return ridgedFilter(getPerlin(x,y,z,100+i,(1/i)*160))
end

local canyonBandingMaterial = {rock,mud,sand,sand,sandstone,sandstone,sandstone,sandstone,sandstone,sandstone,}

local function findBiomeInfo(choiceBiome,x,y,z,verticalGradientTurbulence)
	local choiceBiomeValue = .5
	local choiceBiomeSurface = grass
	local choiceBiomeFill = rock
	if choiceBiome == 'City' then
		choiceBiomeValue = .55
		choiceBiomeSurface = concrete
		choiceBiomeFill = slate
	elseif choiceBiome == 'Water' then
		choiceBiomeValue = .36+getPerlin(x,y,z,2,50)*.08
		choiceBiomeSurface =
			(1-verticalGradientTurbulence < .44 and slate)
			or sand
	elseif choiceBiome == 'Marsh' then
		local preLedge = getPerlin(x+getPerlin(x,0,z,5,7,true)*10+getPerlin(x,0,z,6,30,true)*50,0,z+getPerlin(x,0,z,9,7,true)*10+getPerlin(x,0,z,10,30,true)*50,2,70)	--could use some turbulence
		local grassyLedge = thresholdFilter(preLedge,.65,0)
		local largeGradient = getPerlin(x,y,z,4,100)
		local smallGradient = getPerlin(x,y,z,3,20)
		local smallGradientThreshold = thresholdFilter(smallGradient,.5,0)
		choiceBiomeValue = waterLevel-.04
			+preLedge*grassyLedge*.025
			+largeGradient*.035
			+smallGradient*.025
		choiceBiomeSurface =
			(grassyLedge >= 1 and grass)
			or (1-verticalGradientTurbulence < waterLevel-.01 and mud)
			or (1-verticalGradientTurbulence < waterLevel+.01 and ground)
			or grass
		choiceBiomeFill = slate
	elseif choiceBiome == 'Plains' then
		local rivulet = ridgedFlippedFilter(getPerlin(x+getPerlin(x,y,z,17,40)*25,0,z+getPerlin(x,y,z,19,40)*25,2,200))
		local rivuletThreshold = thresholdFilter(rivulet,.01,0)

		local rockMap = thresholdFilter(ridgedFlippedFilter(getPerlin(x,0,z,101,7)),.3,.7)		--rocks
			 * thresholdFilter(getPerlin(x,0,z,102,50),.6,.05)									--zoning

		choiceBiomeValue = .5			--.51
		+getPerlin(x,y,z,2,100)*.02		--.05
		+rivulet*.05					--.02
		+rockMap*.05		--.03
		+rivuletThreshold*.005

		local verticalGradient = 1-((y-1)/(mapHeight-1))
		local surfaceGradient = verticalGradient*.5 + choiceBiomeValue*.5
		local thinSurface = surfaceGradient > .5-surfaceThickness*.4 and surfaceGradient < .5+surfaceThickness*.4
		choiceBiomeSurface =
			(rockMap>0 and rock)
			or (not thinSurface and mud)
			or (thinSurface and rivuletThreshold <=0 and water)
			or (1-verticalGradientTurbulence < waterLevel-.01 and sand)
			or grass
		choiceBiomeFill =
			(rockMap>0 and rock)
			or sandstone
	elseif choiceBiome == 'Canyons' then
		local canyonNoise = ridgedFlippedFilter(getPerlin(x,0,z,2,200))
		local canyonNoiseTurbed = ridgedFlippedFilter(getPerlin(x+getPerlin(x,0,z,5,20,true)*20,0,z+getPerlin(x,0,z,9,20,true)*20,2,200))
		local sandbank = thresholdFilter(canyonNoiseTurbed,0,.05)
		local canyonTop = thresholdFilter(canyonNoiseTurbed,.125,0)
		local mesaSlope = thresholdFilter(canyonNoise,.33,.12)
		local mesaTop = thresholdFilter(canyonNoiseTurbed,.49,0)
		choiceBiomeValue = .42
			+getPerlin(x,y,z,2,70)*.05
			+canyonNoise*.05
			+sandbank*.04										--canyon bottom slope
			+thresholdFilter(canyonNoiseTurbed,.05,0)*.08		--canyon cliff
			+thresholdFilter(canyonNoiseTurbed,.05,.075)*.04	--canyon cliff top slope
			+canyonTop*.01										--canyon cliff top ledge

			+thresholdFilter(canyonNoiseTurbed,.0575,.2725)*.01	--plane slope

			+mesaSlope*.06			--mesa slope
			+thresholdFilter(canyonNoiseTurbed,.45,0)*.14		--mesa cliff
			+thresholdFilter(canyonNoiseTurbed,.45,.04)*.025	--mesa cap
			+mesaTop*.02										--mesa top ledge
		choiceBiomeSurface =
			(1-verticalGradientTurbulence < waterLevel+.015 and sand)		--this for biome blending in to lakes
			or (sandbank>0 and sandbank<1 and sand)							--this for canyonbase sandbanks
			--or (canyonTop>0 and canyonTop<=1 and mesaSlope<=0 and grass)		--this for grassy canyon tops
			--or (mesaTop>0 and mesaTop<=1 and grass)							--this for grassy mesa tops
			or sandstone
		choiceBiomeFill = canyonBandingMaterial[ceil((1-getNoise(1,y,2))*10)]
	elseif choiceBiome == 'Hills' then
		local rivulet = ridgedFlippedFilter(getPerlin(x+getPerlin(x,y,z,17,20)*20,0,z+getPerlin(x,y,z,19,20)*20,2,200))^(1/2)
		local largeHills = getPerlin(x,y,z,3,60)
		choiceBiomeValue = .48
			+largeHills*.05
				+(.05
				+largeHills*.1
				+getPerlin(x,y,z,4,25)*.125)
				*rivulet
		local surfaceMaterialGradient = (1-verticalGradientTurbulence)*.9 + rivulet*.1
		choiceBiomeSurface =
			(surfaceMaterialGradient < waterLevel-.015 and mud)
			or (surfaceMaterialGradient < waterLevel and ground)
			or grass
		choiceBiomeFill = slate
	elseif choiceBiome == 'Dunes' then
		local duneTurbulence = getPerlin(x,0,z,227,20)*24
		local layer1 = ridgedFilter(getPerlin(x,0,z,201,40))
		local layer2 = ridgedFilter(getPerlin(x/10+duneTurbulence,0,z+duneTurbulence,200,48))
		choiceBiomeValue = .4+.1*(layer1 + layer2)
		choiceBiomeSurface = sand
		choiceBiomeFill = sandstone
	elseif choiceBiome == 'Mountains' then
		local rivulet = ridgedFlippedFilter(getPerlin(x+getPerlin(x,y,z,17,20)*20,0,z+getPerlin(x,y,z,19,20)*20,2,200))
		choiceBiomeValue = -.4		--.3
			+fractalize(mountainsOperation,x,y/20,z, 8, .65)*1.2
			+rivulet*.2
		choiceBiomeSurface =
			(verticalGradientTurbulence < .275 and snow)
			or (verticalGradientTurbulence < .35 and rock)
			or (verticalGradientTurbulence < .4 and ground)
			or (1-verticalGradientTurbulence < waterLevel and rock)
			or (1-verticalGradientTurbulence < waterLevel+.01 and mud)
			or (1-verticalGradientTurbulence < waterLevel+.015 and ground)
			or grass
	elseif choiceBiome == 'Lavascape' then
		local crackX = x+getPerlin(x,y*.25,z,21,8,true)*5
		local crackY = y+getPerlin(x,y*.25,z,22,8,true)*5
		local crackZ = z+getPerlin(x,y*.25,z,23,8,true)*5
		local crack1 = ridgedFilter(getPerlin(crackX+getPerlin(x,y,z,22,30,true)*30,crackY,crackZ+getPerlin(x,y,z,24,30,true)*30,2,120))
		local crack2 = ridgedFilter(getPerlin(crackX,crackY,crackZ,3,40))*(crack1*.25+.75)
		local crack3 = ridgedFilter(getPerlin(crackX,crackY,crackZ,4,20))*(crack2*.25+.75)

		local generalHills = thresholdFilter(getPerlin(x,y,z,9,40),.25,.5)*getPerlin(x,y,z,10,60)

		local cracks = max(0,1-thresholdFilter(crack1,.975,0)-thresholdFilter(crack2,.925,0)-thresholdFilter(crack3,.9,0))

		local spireVec = CFrame.Angles(.7,.7,0)*Vector3.new(crackX,crackY,crackZ)
		local spires = thresholdFilter(getPerlin(spireVec.x/40,spireVec.y/300,spireVec.z/30,123,1),.6,.4)

		choiceBiomeValue = waterLevel+.02
			+cracks*(.5+generalHills*.5)*.02
			+generalHills*.05
			+spires*.3
			+((1-verticalGradientTurbulence > waterLevel+.01 or spires>0) and .04 or 0)			--This lets it lip over water

		choiceBiomeFill = (spires>0 and rock) or (cracks<1 and lava) or basalt
		choiceBiomeSurface = (choiceBiomeFill == lava and 1-verticalGradientTurbulence < waterLevel and basalt) or choiceBiomeFill
	elseif choiceBiome == 'Arctic' then
		local preBoundary = getPerlin(x+getPerlin(x,0,z,5,8,true)*5,y/8,z+getPerlin(x,0,z,9,8,true)*5,2,20)
		--local cliffs = thresholdFilter(preBoundary,.5,0)
		local boundary = ridgedFilter(preBoundary)
		local roughChunks = getPerlin(x,y/4,z,436,2)
		local boundaryMask = thresholdFilter(boundary,.8,.1)	--,.7,.25)
		local boundaryTypeMask = getPerlin(x,0,z,6,74)-.5
		local boundaryComp = 0
		if boundaryTypeMask < 0 then							--divergent
			boundaryComp = (boundary > (1+boundaryTypeMask*.5) and -.17 or 0)
							--* boundaryTypeMask*-2
		else													--convergent
			boundaryComp = boundaryMask*.1*roughChunks
							* boundaryTypeMask
		end
		choiceBiomeValue = .55
			+boundary*.05*boundaryTypeMask		--.1	--soft slope up or down to boundary
			+boundaryComp								--convergent/divergent effects
			+getPerlin(x,0,z,123,25)*.025	--*cliffs	--gentle rolling slopes

		choiceBiomeSurface = (1-verticalGradientTurbulence < waterLevel-.1 and ice) or (boundaryMask>.6 and boundaryTypeMask>.1 and roughChunks>.5 and ice) or snow
		choiceBiomeFill = ice
	end
	return choiceBiomeValue, choiceBiomeSurface, choiceBiomeFill
end

function findBiomeTransitionValue(biome,weight,value,averageValue)
	if biome == 'Arctic' then
		return (weight>.2 and 1 or 0)*value
	elseif biome == 'Canyons' then
		return (weight>.7 and 1 or 0)*value
	elseif biome == 'Mountains' then
		local weight = weight^3			--This improves the ease of mountains transitioning to other biomes
		return averageValue*(1-weight)+value*weight
	else
		return averageValue*(1-weight)+value*weight
	end
end

function updatePausedButton()
	pauseButton.Style = paused and 'RobloxRoundButton' or 'RobloxRoundDefaultButton'
	pauseButton.Text = paused and 'Resume' or 'Pause'
end

--[[
	Generate "activation" button
]]
function generate()
	terrain = workspace.Terrain
	if not generating and not clearing and terrain then
		generating = true
		if onGenStartActiveButton then
			onGenStartActiveButton(false)
		end

		paused = false
		cancelIt = false
		updatePausedButton()
		screenGui.Parent = coreGui
		progressFrame.Visible = true

		local mapWidth = mapWidth -- REMAP
		local biomeSize = biomeSize
		local biomeBlendPercent = .25	--(biomeSize==50 or biomeSize == 100) and .5 or .25
		local biomeBlendPercentInverse = 1-biomeBlendPercent
		local biomeBlendDistortion = biomeBlendPercent
		local smoothScale = .5/(size.Y/resolution)
		local mapPosition = Vector3.new(
			position.X,
			position.Y,
			position.Z
		)
		local mapSize = Vector3.new(
			size.X,
			size.Y,
			size.Z
		)
		local mapExtents = mapSize / 2
		local mapRegion = Region3.new(mapPosition - mapExtents, mapPosition + mapExtents)
		mapRegion = mapRegion:ExpandToGrid(resolution)
		mapPosition = mapRegion.CFrame.Position

		-- convert back to voxels
		local voxelSize = mapRegion.Size / resolution
		local voxelExtents = voxelSize / 2

		if FFlagTerrainToolMetrics then
			local numVoxels = tostring(voxelSize.X * voxelSize.Y * voxelSize.Z)
			AnalyticsService:SendEventDeferred("studio", "TerrainEditorV2", "GenerateTerrain", {
				userId = StudioService:GetUserId(),
				numVoxels = numVoxels,
				biomeSize = biomeSize,
				seed = textSeed,
				studioSId = AnalyticsService:GetSessionId(),
				placeId = game.PlaceId,
			})
		end

		local startTime = tick()
		biomes = {}
		for i,v in pairs(kSelectedBiomes) do
			if v then
				table.insert(biomes,i)
			end
		end
		if #biomes<=0 then
			table.insert(biomes,'Hills')
		end

		for x = 1, voxelSize.X do  -- REMAP
			local offsetX = x - voxelSize.X / 2
			local oMapX = {}
			--oMap[x] = oMapX
			local mMapX = {}
			--mMap[x] = mMapX
			local regionStart = Vector3.new(offsetX - 1, -voxelExtents.Y, -voxelExtents.Z) * resolution + mapPosition
			local regionEnd = Vector3.new(offsetX, voxelExtents.Y, voxelExtents.Z) * resolution + mapPosition

			local sliceRegion = Region3.new(regionStart, regionEnd)

			sliceRegion = sliceRegion:ExpandToGrid(resolution)
			local slizeY = sliceRegion.Size.Y / resolution
			local slizeZ = sliceRegion.Size.Z / resolution

			for z = 1, slizeZ do
				local offsetZ = z
				local biomeNoCave = false
				local cellToBiomeX = offsetX/biomeSize + getPerlin(offsetX,0,offsetZ,233,biomeSize*.3)*.25 + getPerlin(offsetX,0,offsetZ,235,biomeSize*.05)*.075
				local cellToBiomeZ = offsetZ/biomeSize + getPerlin(offsetX,0,offsetZ,234,biomeSize*.3)*.25 + getPerlin(offsetX,0,offsetZ,236,biomeSize*.05)*.075
				local closestPoint = Vector3.new(0,0,0)
				local closestDistance = 1000000
				local biomePoints = {}
				for vx=-1,1 do
					for vz=-1,1 do
						local gridPointX = floor(cellToBiomeX+vx+.5)
						local gridPointZ = floor(cellToBiomeZ+vz+.5)
						--local pointX, pointZ = getBiomePoint(gridPointX,gridPointZ)
						local pointX = gridPointX+(getNoise(gridPointX,gridPointZ,53)-.5)*.75	--de-uniforming grid for vornonoi
						local pointZ = gridPointZ+(getNoise(gridPointX,gridPointZ,73)-.5)*.75

						local dist = sqrt((pointX-cellToBiomeX)^2 + (pointZ-cellToBiomeZ)^2)
						if dist < closestDistance then
							closestPoint = Vector3.new(pointX,0,pointZ)
							closestDistance = dist
						end
						table.insert(biomePoints,{
							x = pointX,
							z = pointZ,
							dist = dist,
							biomeNoise = getNoise(gridPointX,gridPointZ),
							weight = 0
						})
					end
				end
				local weightTotal = 0
				local weightPoints = {}
				for _,point in pairs(biomePoints) do
					local weight = point.dist == closestDistance and 1 or ((closestDistance / point.dist)-biomeBlendPercentInverse)/biomeBlendPercent
					if weight > 0 then
						local weight = weight^2.1		--this smooths the biome transition from linear to cubic InOut
						weightTotal = weightTotal + weight
						local biome = biomes[ceil(#biomes*(1-point.biomeNoise))]	--inverting the noise so that it is limited as (0,1]. One less addition operation when finding a random list index
						weightPoints[biome] = {
							weight = weightPoints[biome] and weightPoints[biome].weight + weight or weight
						}
					end
				end
				for biome,info in pairs(weightPoints) do
					info.weight = info.weight / weightTotal
					if biome == 'Arctic' then		--biomes that don't have caves that breach the surface
						biomeNoCave = true
					end
				end

				for y = 1, slizeY do
					local oMapY = oMapX[y] or {}
					oMapX[y] = oMapY
					local mMapY = mMapX[y] or {}
					mMapX[y] = mMapY

					--[[local oMapY = {}
					oMapX[y] = oMapY
					local mMapY = {}
					mMapX[z] = mMapY]]

					local verticalGradient = 1-((y-1)/(slizeY-1))
					local caves = 0
					local verticalGradientTurbulence = verticalGradient*.9 + .1*getPerlin(offsetX,y,offsetZ,107,15)
					local choiceValue = 0
					local choiceSurface = lava
					local choiceFill = rock

					if verticalGradient > .65 or verticalGradient < .1 then
						--under surface of every biome; don't get biome data; waste of time.
						choiceValue = .5
					elseif #biomes == 1 then
						choiceValue, choiceSurface, choiceFill = findBiomeInfo(biomes[1],offsetX,y,offsetZ,verticalGradientTurbulence)
					else
						local averageValue = 0
						--local findChoiceMaterial = -getNoise(x,y,z,19)
						for biome,info in pairs(weightPoints) do
							local biomeValue, biomeSurface, biomeFill = findBiomeInfo(biome,offsetX,y,offsetZ,verticalGradientTurbulence)
							info.biomeValue = biomeValue
							info.biomeSurface = biomeSurface
							info.biomeFill = biomeFill
							local value = biomeValue * info.weight
							averageValue = averageValue + value
							--[[if findChoiceMaterial < 0 and findChoiceMaterial + weight >= 0 then
								choiceMaterial = biomeMaterial
							end
							findChoiceMaterial = findChoiceMaterial + weight]]
						end
						for biome,info in pairs(weightPoints) do
							local value = findBiomeTransitionValue(biome,info.weight,info.biomeValue,averageValue)
							if value > choiceValue then
								choiceValue = value
								choiceSurface = info.biomeSurface
								choiceFill = info.biomeFill
							end
						end
					end

					local preCaveComp = verticalGradient*.5 + choiceValue*.5

					local surface = preCaveComp > .5-surfaceThickness and preCaveComp < .5+surfaceThickness

					if generateCaves																--user wants caves
						and (not biomeNoCave or verticalGradient > .65)								--biome allows caves or deep enough
							and not (surface and (1-verticalGradient) < waterLevel+.005)			--caves only breach surface above waterlevel
								and not (surface and (1-verticalGradient) > waterLevel+.58) then	--caves don't go too high so that they don't cut up mountain tops
									local ridged2 = ridgedFilter(getPerlin(offsetX,y,offsetZ,4,30))
									local caves2 = thresholdFilter(ridged2,.84,.01)
									local ridged3 = ridgedFilter(getPerlin(offsetX,y,offsetZ,5,30))
									local caves3 = thresholdFilter(ridged3,.84,.01)
									local ridged4 = ridgedFilter(getPerlin(offsetX,y,offsetZ,6,30))
									local caves4 = thresholdFilter(ridged4,.84,.01)
									local caveOpenings = (surface and 1 or 0) * thresholdFilter(getPerlin(offsetX,0,offsetZ,143,62),.35,0)	--.45
									caves = caves2 * caves3 * caves4 - caveOpenings
									caves = caves < 0 and 0 or caves > 1 and 1 or caves
					end

					local comp = preCaveComp - caves

					local smoothedResult = thresholdFilter(comp,.5,smoothScale)

					---below water level				  -above surface		-no terrain
					if 1-verticalGradient < waterLevel and preCaveComp <= .5 and smoothedResult <= 0 then
						smoothedResult = 1
						choiceSurface = water
						choiceFill = water
						surface = true
					end

					oMapY[z] = (y == 1 and 1) or smoothedResult
					mMapY[z] = (y == 1 and lava) or (smoothedResult <= 0 and air) or (surface and choiceSurface) or choiceFill
				end
			end

			local success, msg = pcall(function()
				terrain:WriteVoxels(sliceRegion, 4, {mMapX}, {oMapX})
 			end)

			if not success then
				cancelIt = true
				warn(msg)
			end

			local completionPercent = x/voxelSize.X
			barFill.Size = UDim2.new(completionPercent,0,1,0)

			wait()
			while paused and not cancelIt do
				wait()
			end

			if cancelIt then
				break
			end
		end
		changeHistoryService:SetWaypoint('Terrain Generation')
		progressFrame.Visible = false
		screenGui.Parent = nil
		generating = false
		if onGenStartActiveButton then
			onGenStartActiveButton(true)
		end
		print('Generation Complete',tick()-startTime)
	end
end

--[[
	Clear Terrain Button
]]
module.clearTerrain = function ()
	terrain = workspace.Terrain
	if not generating and not clearing and terrain then
		clearing = true
		terrain:Clear()
		changeHistoryService:SetWaypoint('Terrain Clear')
		clearing = false
	end
end

return module

