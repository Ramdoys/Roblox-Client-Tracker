local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local RecursiveEquals = require(Plugin.Src.Util.RecursiveEquals)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local LoadAllLocales = require(Plugin.Src.Actions.LoadAllLocales)
local SetCloudTableId = require(Plugin.Src.Actions.SetCloudTableId)
local LoadManageTranslationPermission =
	require(Plugin.Src.Actions.LoadManageTranslationPermission)

local PluginMetadata = require(script.Parent.PluginMetadata)

return function()
	it("should return a table with the correct members", function()
		local state = PluginMetadata(nil, {})
		expect(type(state)).to.equal("table")
		expect(state).to.be.ok()
	end)

	describe("LoadAllLocales", function()
		it("should validate input", function()
			expect(function()
				LoadAllLocales(nil)
			end).to.throw()
			expect(function()
				LoadAllLocales(true)
			end).to.throw()
			expect(function()
				LoadAllLocales("")
			end).to.throw()
		end)

		it("should set state", function()
			local locales = {
				en = true,
				es = true,
			}
			local r = Rodux.Store.new(PluginMetadata)
			local state = r:getState()
			expect(type(state.AllLanguageCodes)).to.equal("table")
			expect(isEmpty(state.AllLanguageCodes)).to.equal(true)

			state = PluginMetadata(state, LoadAllLocales(locales))
			expect(RecursiveEquals(state.AllLanguageCodes, locales)).to.equal(true)
		end)
	end)

	describe("SetCloudTableId", function()
		it("should validate input", function()
			expect(function()
				SetCloudTableId(true)
			end).to.throw()
			expect(function()
				SetCloudTableId({})
			end).to.throw()
		end)

		it("should set state", function()
			local tableId = "tableId"
			local r = Rodux.Store.new(PluginMetadata)
			local state = r:getState()
			expect(state.CloudTableId).to.equal("")

			state = PluginMetadata(state, SetCloudTableId(tableId))
			expect(state.CloudTableId).to.equal(tableId)

			state = PluginMetadata(state, SetCloudTableId(""))
			expect(state.CloudTableId).to.equal("")
		end)
	end)

	describe("LoadManageTranslationPermission", function()
		it("should validate input", function()
			expect(function()
				LoadManageTranslationPermission(nil)
			end).to.throw()
			expect(function()
				LoadManageTranslationPermission("")
			end).to.throw()
			expect(function()
				LoadManageTranslationPermission({})
			end).to.throw()
		end)

		it("should set state", function()
			local r = Rodux.Store.new(PluginMetadata)
			local state = r:getState()
			expect(state.CanManageTranslation).to.equal(nil)

			state = PluginMetadata(state, LoadManageTranslationPermission(true))
			expect(state.CanManageTranslation).to.equal(true)

			state = PluginMetadata(state, LoadManageTranslationPermission(false))
			expect(state.CanManageTranslation).to.equal(false)
		end)
	end)


end