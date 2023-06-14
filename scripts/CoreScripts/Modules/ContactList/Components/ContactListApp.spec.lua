return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local ContactListApp = require(script.Parent.ContactListApp)
	local Reducer = require(script.Parent.Parent.Reducer)

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList
	local Pages = require(ContactList.Enums.Pages)
	local dependencies = require(ContactList.dependencies)
	local RoduxCall = dependencies.RoduxCall

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	it("should mount and unmount without errors", function()
		local mockState = {
			Call = {
				callHistory = {
					callRecords = {
						{
							callId = "test_call_Id",
							callerId = 1,
							participants = {
								{
									userId = 1,
									displayName = "testuser_0",
									userName = "testuser_0",
								},
								{
									userId = 2,
									displayName = "testuser_1",
									userName = "testuser_1",
								},
							},
							status = "CallFinished",
							startUtc = 1681338167883,
							endUtc = 1681338335366,
							universeId = 123,
							placeId = 456,
						},
					},
				},
				currentCall = {
					status = RoduxCall.Enums.Status.Active.rawValue(),
					callerId = 11111111,
					calleeId = 12345678,
					placeId = 789,
					callId = "123456",
					callerDisplayName = "Display Name 1",
					calleeDisplayName = "Display Name 2",
					gameInstanceId = "gameId",
				},
			},
			Navigation = {
				currentPage = Pages.FriendList,
				callDetailParticipants = { { userId = 1, username = "TestUser" } },
			},
		}

		local store = Rodux.Store.new(Reducer, mockState, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				ContactListApp = Roact.createElement(ContactListApp),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local contactListContainer = folder:FindFirstChild("ContactListContainer", true) :: Frame
		expect(contactListContainer).never.toBeNull()

		local callBarContainer = folder:FindFirstChild("CallBarContainer", true) :: Frame
		expect(callBarContainer).never.toBeNull()

		Roact.unmount(instance)
	end)
end
