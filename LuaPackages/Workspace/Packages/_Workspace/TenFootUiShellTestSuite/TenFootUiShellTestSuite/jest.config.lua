local Root = script.Parent
local Packages = Root.Parent

return {
	projects = {
		require(Packages.TenFootUiShell)["jest.config"],
	},
}
