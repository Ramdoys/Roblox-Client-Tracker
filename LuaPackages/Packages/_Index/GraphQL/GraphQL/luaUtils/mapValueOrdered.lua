--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/jsutils/mapValue.js
--[[
 * Creates an object map with the same keys as `map` and values generated by
 * running each value of `map` thru `fn`.
 ]]
local rootWorkspace = script.Parent.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Map = LuauPolyfill.Map
type Map<T, V> = LuauPolyfill.Map<T, V>

local function mapValueOrdered<T, V>(
	map: Map<string, T>,
	fn: (value: T, key: string) -> V
): Map<string, V>
	local result = Map.new() :: Map<string, V>
	for _, entry in map:ipairs() do
		local key, value = entry[1], entry[2]
		result:set(key, fn(value, key))
	end
	return result
end

return {
	mapValueOrdered = mapValueOrdered,
}
