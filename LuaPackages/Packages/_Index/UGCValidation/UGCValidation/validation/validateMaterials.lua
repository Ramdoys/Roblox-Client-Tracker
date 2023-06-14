local root = script.Parent.Parent

local Constants = require(root.Constants)

local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)

-- ensures no descendant of instance has a material that does not exist in Constants.MATERIAL_WHITELIST
local function validateMaterials(instance: Instance): (boolean, { string }?)
	local materialFailures = {}

	if getFFlagUGCValidateBodyParts() then
		local objects: { Instance } = instance:GetDescendants()
		table.insert(objects, instance)
		for _, descendant in objects do
			if descendant:IsA("BasePart") and not Constants.MATERIAL_WHITELIST[descendant.Material] then
				table.insert(materialFailures, descendant:GetFullName())
			end
		end
	else
		for _, descendant in pairs(instance:GetDescendants()) do
			if descendant:IsA("BasePart") and not Constants.MATERIAL_WHITELIST[descendant.Material] then
				table.insert(materialFailures, descendant:GetFullName())
			end
		end
	end

	if #materialFailures > 0 then
		local reasons = {}
		local acceptedMaterialNames = {}
		for material in pairs(Constants.MATERIAL_WHITELIST) do
			table.insert(acceptedMaterialNames, material.Name)
		end
		table.insert(reasons, "Invalid materials for")
		for _, name in pairs(materialFailures) do
			table.insert(reasons, name)
		end
		table.insert(reasons, "Accepted materials are " .. table.concat(acceptedMaterialNames, ", "))
		return false, reasons
	end

	return true
end

return validateMaterials
