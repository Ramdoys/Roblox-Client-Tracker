local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local UserInputService = game:GetService("UserInputService")
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local reverse = LuauPolyfill.Array.reverse

local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

local Signal = SignalLib.Signal
local utils = require(Root.Service.ChromeUtils)
local LocalStore = require(Root.Service.LocalStore)
local ViewportUtil = require(Root.Service.ViewportUtil)
local WindowSizeSignal = require(Root.Service.WindowSizeSignal)
local ContainerSlotSignal = require(Root.Service.ContainerSlotSignal)
local ObservableValue = utils.ObservableValue
local NotifySignal = utils.NotifySignal
local AvailabilitySignal = utils.AvailabilitySignal
local Types = require(Root.Service.Types)
local Constants = require(Root.Unibar.Constants)
local PeekService = require(Root.Service.PeekService)

local GetFFlagRefactorChromeAssert = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagRefactorChromeAssert
local ChromeEnabled
if not GetFFlagRefactorChromeAssert() then
	ChromeEnabled = require(Root.Parent.Enabled)
end

local GetFFlagEnableChromePinIntegrations =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromePinIntegrations
local GetFFlagEnableSaveUserPins = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableSaveUserPins
-- APPEXP-2053 TODO: Remove all use of RobloxGui from ChromeShared
local GetFFlagEnableUserPinPortraitFix =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableUserPinPortraitFix
local GetFFlagFixChromeReferences = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixChromeReferences
local GetFFlagChromePeekArchitecture =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromePeekArchitecture
local GetFFlagChromeTrackWindowStatus = require(Root.Parent.Flags.GetFFlagChromeTrackWindowStatus)
local GetFFlagChromeTrackWindowPosition = require(Root.Parent.Flags.GetFFlagChromeTrackWindowPosition)
local GetFFlagChromeDefaultWindowStartingPosition =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromeDefaultWindowStartingPosition

local DEFAULT_PINS = game:DefineFastString("ChromeServiceDefaultPins", "leaderboard,trust_and_safety")

local NOTIFICATION_INDICATOR_DISPLAY_TIME_SEC = 2.5
local NOTIFICATION_INDICATOR_IDLE_COOLDOWN_TIME_SEC = 10
local CHROME_INTERACTED_KEY = "ChromeInteracted3"
local CHROME_PINNED_KEY = "ChromePinned"
local CHROME_WINDOW_POSITION_KEY = "ChromeWindowPosition"
local CHROME_WINDOW_STATE_KEY = "ChromeWindowStatus"

-- todo: Consider how ChromeService could support multiple UI at the same time, not only the Unibar
--       Does there need to be another layer "IntegrationsService" that ChromeService can pull from?

local ChromeService = {} :: ChromeService
ChromeService.__index = ChromeService

ChromeService.AvailabilitySignal = utils.AvailabilitySignalState
ChromeService.MenuStatus = { Closed = 0, Open = 1 }
ChromeService.IntegrationStatus = { None = 0, Icon = 1, Window = 2 }
ChromeService.Key = {
	MostRecentlyUsed = "MRU",
	UserPinned = if GetFFlagEnableChromePinIntegrations then "UP" else nil,
}

export type UnibarLayoutInfo = {
	[number]: Rect,
}

export type ObservableMenuStatus = utils.ObservableValue<number>
export type ObservableSubMenu = utils.ObservableValue<string?>
export type ObservableMenuList = utils.ObservableValue<Types.MenuList>
export type ObservableIntegration = utils.ObservableValue<Types.IntegrationComponentProps | nil>
export type ObservableIntegrationList = utils.ObservableValue<Types.IntegrationList>
export type ObservableIntegrationId = utils.ObservableValue<string?>
export type ObservableMenuLayout = utils.ObservableValue<UnibarLayoutInfo>
export type ObservableCompactUtility = utils.ObservableValue<Types.CompactUtilityId?>
export type ObservableInFocusNav = utils.ObservableValue<boolean>

export type ObservableWindowList = utils.ObservableValue<Types.WindowList>
export type ObservablePeekList = utils.ObservableValue<Types.PeekList>
export type ObservablePeekId = utils.ObservableValue<Types.PeekId?>

export type ObservableDragConnection = utils.ObservableValue<{ current: RBXScriptConnection? }?>
type DragConnectionObjectType = any
export type ObservableAlignment = utils.ObservableValue<Enum.HorizontalAlignment>

function noop() end

export type ChromeService = {
	__index: ChromeService,

	Key: { [string]: string },
	IntegrationStatus: { [string]: number },
	MenuStatus: { [string]: number },
	AvailabilitySignal: { [string]: number },

	new: () -> ChromeService,
	toggleSubMenu: (ChromeService, subMenuId: Types.IntegrationId) -> (),
	currentSubMenu: (ChromeService) -> ObservableSubMenu,
	getLastInputToOpenMenu: (ChromeService) -> Enum.UserInputType,
	inFocusNav: (ChromeService) -> ObservableInFocusNav,
	enableFocusNav: (ChromeService) -> (),
	disableFocusNav: (ChromeService) -> (),
	status: (ChromeService) -> ObservableMenuStatus,
	layout: (ChromeService) -> ObservableMenuLayout,
	setMenuAbsolutePosition: (ChromeService, position: Vector2) -> (),
	setMenuAbsoluteSize: (ChromeService, closed: Vector2, open: Vector2) -> (),
	menuList: (ChromeService) -> ObservableMenuList,
	windowList: (ChromeService) -> ObservableWindowList,
	updateLocalization: (ChromeService, component: Types.IntegrationRegisterProps) -> Types.IntegrationRegisterProps,
	dragConnection: (ChromeService, componentId: Types.IntegrationId) -> { current: RBXScriptConnection? }?,
	register: (ChromeService, Types.IntegrationRegisterProps) -> Types.IntegrationProps,
	updateMenuList: (ChromeService) -> (),
	availabilityChanged: (ChromeService, Types.IntegrationProps) -> (),
	containerWidthSlotsChanged: (ChromeService, Types.IntegrationProps) -> (),
	subMenuNotifications: (ChromeService, subMenuId: Types.IntegrationId) -> utils.NotifySignal,
	totalNotifications: (ChromeService) -> utils.NotifySignal,
	notificationIndicator: (ChromeService) -> ObservableIntegration,
	triggerNotificationIndicator: (ChromeService, Types.IntegrationId) -> (),
	updateNotificationTotals: (ChromeService) -> (),
	configureReset: (ChromeService) -> (),
	configureMenu: (ChromeService, menuConfig: Types.MenuConfig) -> (),
	configureSubMenu: (ChromeService, parent: Types.IntegrationId, menuConfig: Types.IntegrationIdList) -> (),
	getCurrentUtility: (ChromeService) -> ObservableCompactUtility,
	gesture: (
		ChromeService,
		componentId: Types.IntegrationId,
		connection: { current: RBXScriptConnection? }?,
		inputObject: InputObject?
	) -> (),
	withinCurrentTopLevelMenu: (
		ChromeService,
		componentId: Types.IntegrationId
	) -> (Types.IntegrationComponentProps?, number),
	withinCurrentSubmenu: (ChromeService, componentId: Types.IntegrationId) -> boolean,
	removeRecentlyUsed: (ChromeService, componentId: Types.IntegrationId, force: boolean?) -> (),
	rebuildMostRecentlyUsed: (ChromeService) -> (),
	isUserPinned: (ChromeService, componentId: Types.IntegrationId) -> boolean,
	setUserPin: (ChromeService, componentId: Types.IntegrationId, force: boolean?) -> (),
	removeUserPin: (ChromeService, componentId: Types.IntegrationId, force: boolean?) -> (),
	rebuildUserPins: (ChromeService) -> (),
	areUserPinsFull: (ChromeService) -> boolean,
	storeChromeInteracted: (ChromeService) -> (),
	activate: (ChromeService, componentId: Types.IntegrationId) -> (),
	toggleWindow: (ChromeService, componentId: Types.IntegrationId) -> (),
	isWindowOpen: (ChromeService, componentId: Types.IntegrationId) -> boolean,
	updateWindowSizeSignals: (ChromeService) -> (),
	getWindowStatusFromStore: (ChromeService, componentId: Types.IntegrationId) -> boolean?,
	getWindowPositionFromStore: (ChromeService, componentId: Types.IntegrationId) -> UDim2?,
	updateContainerSlotSignals: (ChromeService) -> (),
	windowPosition: (ChromeService, componentId: Types.IntegrationId) -> UDim2?,
	updateScreenSize: (
		ChromeService,
		screenSize: Vector2,
		isMobileDevice: boolean,
		isPortrait: boolean,
		isTinyPortrait: boolean
	) -> (),
	updateWindowPosition: (ChromeService, componentId: Types.IntegrationId, position: UDim2) -> (),
	createIconProps: (ChromeService, Types.IntegrationId, number?, boolean?) -> Types.IntegrationComponentProps,
	createContainerProps: (ChromeService, Types.IntegrationId, number?, boolean?) -> Types.IntegrationComponentProps,
	orderAlignment: (ChromeService) -> ObservableAlignment,
	configureOrderAlignment: (ChromeService, alignment: Enum.HorizontalAlignment) -> (),

	configurePeek: (ChromeService, peekId: Types.PeekId, config: Types.PeekConfig) -> (),
	tryShowPeek: (ChromeService, peekId: Types.PeekId) -> boolean,
	lockCurrentPeek: (ChromeService) -> (),
	unlockCurrentPeek: (ChromeService) -> (),
	dismissPeek: (ChromeService, peekId: Types.PeekId) -> (),
	dismissCurrentPeek: (ChromeService) -> (),
	updatePeekList: (ChromeService) -> (),
	peekList: (ChromeService) -> ObservablePeekList,
	peekId: (ChromeService) -> ObservablePeekId,
	onPeekShown: SignalLib.Signal,
	onPeekHidden: SignalLib.Signal,
	_peekList: ObservablePeekList,
	_peekId: ObservablePeekId,
	_peekService: PeekService.PeekService,

	onIntegrationRegistered: (ChromeService) -> SignalLib.Signal,
	onIntegrationActivated: (ChromeService) -> SignalLib.Signal,
	onIntegrationStatusChanged: (ChromeService) -> SignalLib.Signal,
	onIntegrationHovered: (ChromeService) -> SignalLib.Signal,
	integrations: (ChromeService) -> Types.IntegrationList,
	userPins: (ChromeService) -> Types.IntegrationIdList,
	mostRecentlyUsed: (ChromeService) -> Types.IntegrationIdList,

	setSelected: (ChromeService, Types.IntegrationId?) -> (),
	selectedItem: (ChromeService, Types.IntegrationId?) -> ObservableIntegrationId,
	repairSelected: (ChromeService) -> (),
	setSelectedByOffset: (ChromeService, number) -> (),

	_status: ObservableMenuStatus,
	_layout: ObservableMenuLayout,
	_menuAbsolutePosition: Vector2,
	_menuAbsoluteSizeOpen: Vector2,
	_menuAbsoluteSizeClosed: Vector2,
	_currentSubMenu: ObservableSubMenu,

	_integrations: Types.IntegrationList,
	_integrationsConnections: { [Types.IntegrationId]: { SignalLib.SignalHandle } },
	_integrationsStatus: { [Types.IntegrationId]: number },
	_menuConfig: Types.MenuConfig,
	_subMenuConfig: { [Types.IntegrationId]: Types.IntegrationIdList },
	_subMenuNotifications: { [Types.IntegrationId]: utils.NotifySignal },
	_compactUtilityConfig: { [Types.CompactUtilityId]: Types.MenuConfig },
	_currentCompactUtility: ObservableCompactUtility,
	_menuList: ObservableMenuList,
	_dragConnection: { [Types.IntegrationId]: DragConnectionObjectType },
	_windowPositions: { [Types.IntegrationId]: UDim2? },
	_windowList: ObservableWindowList,
	_totalNotifications: utils.NotifySignal,
	_mostRecentlyUsedFullRecord: { Types.IntegrationId },
	_mostRecentlyUsed: Types.IntegrationIdList,
	_userPins: Types.IntegrationIdList,
	_mostRecentlyUsedAndPinnedLimit: number,
	_notificationIndicator: ObservableIntegration,
	_lastDisplayedNotificationTick: number,
	_lastDisplayedNotificationId: Types.IntegrationId,

	_onIntegrationRegistered: SignalLib.Signal,
	_onIntegrationActivated: SignalLib.Signal,
	_onIntegrationStatusChanged: SignalLib.Signal,
	_onIntegrationHovered: SignalLib.Signal,

	_lastInputToOpenMenu: Enum.UserInputType,

	_localization: any,
	_localizedLabelKeys: {
		[Types.IntegrationId]: { label: string?, secondaryActionLabel: string? },
	},
	_selectedItem: ObservableIntegrationId,
	_selectedItemIdx: number,
	_orderAlignment: ObservableAlignment,
	_inFocusNav: ObservableInFocusNav,
}

local DummyIntegration = {
	id = "div",
	label = "div",
	initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
	availability = AvailabilitySignal.new(ChromeService.AvailabilitySignal.Unavailable),
	notification = NotifySignal.new(),
	components = {},
	hideNotificationCountWhileOpen = false,
}

function createUnibarLayoutInfo(position: Vector2, closedSize: Vector2, openSize: Vector2): UnibarLayoutInfo
	return {
		[ChromeService.MenuStatus.Open] = Rect.new(position, (position + openSize)),
		[ChromeService.MenuStatus.Closed] = Rect.new(position, (position + closedSize)),
	}
end

function ChromeService.new(): ChromeService
	local localeId = LocalizationService.RobloxLocaleId
	local self = {}
	self._peekService = if GetFFlagChromePeekArchitecture() then PeekService.new() else nil :: never

	local status: ObservableMenuStatus = utils.ObservableValue.new(ChromeService.MenuStatus.Open)
	self._status = status
	self._layout = utils.ObservableValue.new(createUnibarLayoutInfo(Vector2.zero, Vector2.zero, Vector2.zero))
	self._menuAbsolutePosition = Vector2.zero
	self._menuAbsoluteSizeOpen = Vector2.zero
	self._menuAbsoluteSizeClosed = Vector2.zero
	self._currentSubMenu = utils.ObservableValue.new(nil)
	self._selectedItem = utils.ObservableValue.new(nil)
	self._selectedItemIdx = 0
	self._integrations = {} :: Types.IntegrationList
	self._integrationsConnections = {}
	self._integrationsStatus = {} -- Icon/Window
	self._menuConfig = {} :: Types.MenuConfig
	self._subMenuConfig = {}
	self._compactUtilityConfig = {} :: Types.CompactUtilityConfig
	self._currentCompactUtility = ObservableValue.new(nil)
	self._subMenuNotifications = {}
	self._menuList = ObservableValue.new({})
	self._windowList = ObservableValue.new({})
	self._peekList = ObservableValue.new({})
	self._peekId = ObservableValue.new(nil)
	self._dragConnection = {}
	self._windowPositions = ObservableValue.new({})
	self._totalNotifications = NotifySignal.new(true)
	self._mostRecentlyUsedFullRecord = {}
	self._mostRecentlyUsed = {}
	self._userPins = if GetFFlagEnableSaveUserPins() then getUserPinStartingState() else {}
	self._mostRecentlyUsedAndPinnedLimit = if GetFFlagEnableUserPinPortraitFix() then -1 else 1
	self._localization = Localization.new(localeId)
	self._localizedLabelKeys = {}

	self._notificationIndicator = ObservableValue.new(nil)
	self._lastDisplayedNotificationTick = 0
	self._lastDisplayedNotificationId = ""
	self._orderAlignment = ObservableValue.new(Enum.HorizontalAlignment.Left)

	self._onIntegrationRegistered = Signal.new()
	self._onIntegrationActivated = Signal.new()
	self._onIntegrationStatusChanged = Signal.new()
	self._onIntegrationHovered = Signal.new()

	-- Init last input as MouseButton1 to prevent focus navigation at startup
	self._lastInputToOpenMenu = if status:get() == ChromeService.MenuStatus.Open
		then Enum.UserInputType.MouseButton1
		else Enum.UserInputType.None
	self._inFocusNav = ObservableValue.new(false)

	local service = (setmetatable(self, ChromeService) :: any) :: ChromeService

	if not GetFFlagRefactorChromeAssert() then
		if GetFFlagFixChromeReferences() then
			--[[ If you're hitting this assert, try the following:
				local Chrome = RobloxGui.Modules.Chrome
				local ChromeEnabled = require(Chrome.Enabled)
				local ChromeService = if ChromeEnabled() then require(Chrome.Service) else nil ]]
			assert(ChromeEnabled(), "ChromeService should not be initialized when Chrome is not enabled")
		end
	end

	-- todo: Consider moving this outside of ChromeService to reduce dependency on Roblox instances
	ViewportUtil.viewport:connect(function(viewportInfo: ViewportUtil.ViewportInfo)
		service:updateScreenSize(
			viewportInfo.size,
			viewportInfo.isMobileDevice,
			viewportInfo.portraitOrientation,
			viewportInfo.tinyPortrait
		)
	end, true)

	if GetFFlagChromePeekArchitecture() then
		self._peekService.onPeekChanged:connect(function()
			service:updateMenuList()
		end)

		self._peekService.onPeekShown:connect(function(peekId)
			service._peekId:set(peekId)
		end)

		self._peekService.onPeekHidden:connect(function()
			service._peekId:set(nil)
		end)
	end

	return service
end

-- TODO APPEXP-1879: Flag off this function, as CHROME_INTERACTED_KEY is no longer read
-- store that unibar was interacted with after anything activated
function ChromeService:storeChromeInteracted()
	if LocalStore.isEnabled() then
		LocalStore.storeForLocalPlayer(CHROME_INTERACTED_KEY, true)
	end
end

function ChromeService:updateScreenSize(
	screenSize: Vector2,
	isMobileDevice: boolean,
	isPortrait: boolean,
	isTinyPortrait: boolean
)
	-- Upon screen viewport resize:

	-- 1) Configured the number of most recently used slots
	local mostRecentlyUsedAndPinnedSlots = 0

	if isMobileDevice then
		if isTinyPortrait then
			mostRecentlyUsedAndPinnedSlots = Constants.MOBILE_TINY_PORTRAIT_SLOTS - Constants.CORE_SLOTS
		elseif isPortrait then
			mostRecentlyUsedAndPinnedSlots = Constants.MOBILE_PORTRAIT_SLOTS - Constants.CORE_SLOTS
		else
			mostRecentlyUsedAndPinnedSlots = Constants.MOBILE_LANDSCAPE_SLOTS - Constants.CORE_SLOTS
		end
	else
		mostRecentlyUsedAndPinnedSlots = Constants.NON_MOBILE_SLOTS - Constants.CORE_SLOTS
	end

	-- 2) Repopulate most recently and user pin lists if the slot count changes
	if mostRecentlyUsedAndPinnedSlots ~= self._mostRecentlyUsedAndPinnedLimit then
		-- only run if slot count changes; limit updates
		self._mostRecentlyUsedAndPinnedLimit = mostRecentlyUsedAndPinnedSlots

		if GetFFlagEnableChromePinIntegrations() then
			self:rebuildUserPins()
		end
		self:rebuildMostRecentlyUsed()
	end

	-- 3) Update window size signals
	self:updateWindowSizeSignals()

	-- 4) Update container slot width signals
	self:updateContainerSlotSignals()
end

function ChromeService:rebuildMostRecentlyUsed()
	table.clear(self._mostRecentlyUsed)

	local i = #self._mostRecentlyUsedFullRecord
	if i > 0 then
		local srcStartIndex = i - self._mostRecentlyUsedAndPinnedLimit + 1
		if GetFFlagEnableChromePinIntegrations() then
			srcStartIndex = i - self._mostRecentlyUsedAndPinnedLimit + #self._userPins + 1
		end

		-- slice a subset of the full record to repopulate slots
		table.move(
			self._mostRecentlyUsedFullRecord, -- src
			math.max(1, srcStartIndex), -- src start index
			i, -- src end index
			1, -- dst insert index
			self._mostRecentlyUsed -- dst
		)
	end

	self:updateMenuList()
	self:updateNotificationTotals()
end

function getUserPinStartingState()
	if GetFFlagEnableSaveUserPins() then
		local defaultPins = {}
		for defaultPin in DEFAULT_PINS:gmatch("([^,]+),?") do
			table.insert(defaultPins, defaultPin)
		end

		local pinnedComponents = LocalStore.loadForLocalPlayer(CHROME_PINNED_KEY) or defaultPins
		return pinnedComponents
	end

	return nil
end

function ChromeService:rebuildUserPins()
	if GetFFlagEnableChromePinIntegrations() and self._mostRecentlyUsedAndPinnedLimit < #self._userPins then
		local newUserPins = {}
		local i = #self._userPins
		table.move(
			self._userPins, -- src
			math.max(1, i - self._mostRecentlyUsedAndPinnedLimit + 1), -- src start index
			i, -- src end index
			1, -- dst insert index
			newUserPins -- dst
		)

		self._userPins = newUserPins
		if GetFFlagEnableSaveUserPins() then
			LocalStore.storeForLocalPlayer(CHROME_PINNED_KEY, self._userPins)
		end

		self:updateMenuList()
		self:updateNotificationTotals()
	end
end

function ChromeService:updateWindowSizeSignals()
	for i, v in self._integrations do
		if v.windowSize then
			v.windowSize:updateConstraints()
		end
	end
end

function ChromeService:updateContainerSlotSignals()
	for i, v in self._integrations do
		if v.containerWidthSlots then
			v.containerWidthSlots:updateConstraints()
		end
	end
end

function ChromeService:triggerNotificationIndicator(id: Types.IntegrationId)
	local menuStatus: ObservableMenuStatus = self._status
	local integration = self._integrations[id]
	local integrationAvailability = integration.availability:get()

	if
		integrationAvailability == ChromeService.AvailabilitySignal.Unavailable
		or integrationAvailability == ChromeService.AvailabilitySignal.Pinned
	then
		-- Early exit for pinned and hidden items
		return
	end

	if menuStatus:get() ~= ChromeService.MenuStatus.Closed then
		-- Early out if the menu isn't closed.  We only need to show this in the closed state.
		return
	end

	local notification = integration.notification:get()
	if notification.type == "count" then
		local count: number = notification.value :: any
		-- Only run if the count is non zero.
		-- triggerNotificationIndicator will also run when notications get cleared
		if count > 0 then
			local now = tick()
			local timeSinceLastDisplay = (now - self._lastDisplayedNotificationTick)
			self._lastDisplayedNotificationTick = now

			if
				self._lastDisplayedNotificationId == id
				and timeSinceLastDisplay < NOTIFICATION_INDICATOR_IDLE_COOLDOWN_TIME_SEC
			then
				-- Early exit if within a cooloff period.
				-- We don't need to keep flashing the same icon.
				return
			end

			self._lastDisplayedNotificationId = id
			self._notificationIndicator:setMomentary(
				self:createIconProps(id, 0, false),
				NOTIFICATION_INDICATOR_DISPLAY_TIME_SEC
			)
		end
	end
end

function ChromeService:notificationIndicator()
	return self._notificationIndicator
end

function ChromeService:toggleSubMenu(subMenuId: Types.IntegrationId)
	if self._status:get() == ChromeService.MenuStatus.Closed then
		warn("Can't toggleSubMenu while menu is closed")
		return
	end

	if not self._subMenuConfig[subMenuId] then
		warn("Not a valid subMenuId:" .. subMenuId)
		return
	end

	if self._currentSubMenu:get() == subMenuId then
		-- if same ID, toggle close menu
		self._currentSubMenu:set(nil :: string?)
	else
		-- otherwise open the menu
		self._currentSubMenu:set(subMenuId)
	end
end

function ChromeService:currentSubMenu()
	return self._currentSubMenu
end

function ChromeService:inFocusNav()
	return self._inFocusNav
end

function ChromeService:enableFocusNav()
	if not self._inFocusNav:get() then
		self._inFocusNav:set(true)
	end
end

function ChromeService:disableFocusNav()
	if self._inFocusNav:get() then
		self._inFocusNav:set(false)
		self._selectedItem:set(nil)
		-- close any current submenu
		self._currentSubMenu:set(nil)
	end
end

function ChromeService:getLastInputToOpenMenu()
	return self._lastInputToOpenMenu
end

function ChromeService:toggleWindow(componentId: Types.IntegrationId)
	local window = self._integrations[componentId].components.Window
	if window then
		if
			not self._integrationsStatus[componentId]
			or self._integrationsStatus[componentId] == ChromeService.IntegrationStatus.None
			or self._integrationsStatus[componentId] == ChromeService.IntegrationStatus.Icon
		then
			self._integrationsStatus[componentId] = ChromeService.IntegrationStatus.Window
		else
			self._integrationsStatus[componentId] = ChromeService.IntegrationStatus.Icon
		end
		self._onIntegrationStatusChanged:fire(componentId, self._integrationsStatus[componentId])
	end

	if GetFFlagChromeTrackWindowStatus() and LocalStore.isEnabled() then
		if self._integrations[componentId] and self._integrations[componentId].persistWindowState then
			local windowStore = LocalStore.loadForLocalPlayer(CHROME_WINDOW_STATE_KEY) or {}
			windowStore[componentId] = self._integrationsStatus[componentId] == ChromeService.IntegrationStatus.Window
			LocalStore.storeForLocalPlayer(CHROME_WINDOW_STATE_KEY, windowStore)
		end
	end

	self:updateMenuList()
end

function ChromeService:isWindowOpen(componentId: Types.IntegrationId)
	local window = self._integrations[componentId].components.Window
	return window and self._integrationsStatus[componentId] == ChromeService.IntegrationStatus.Window
end

function ChromeService:status()
	return self._status
end

function ChromeService:menuList()
	return self._menuList
end

function ChromeService:windowList()
	return self._windowList
end

if GetFFlagChromePeekArchitecture() then
	function ChromeService:peekList()
		return self._peekList
	end

	function ChromeService:peekId()
		return self._peekId
	end
end

function ChromeService:dragConnection(componentId: Types.IntegrationId)
	if self._integrations[componentId] then
		return self._dragConnection[componentId]
	else
		return nil
	end
end

function ChromeService:updateLocalization(component: Types.IntegrationRegisterProps)
	local localizedLabel: string = ""
	local localizedSecondaryAction: string = ""
	self._localizedLabelKeys[component.id] = {}

	--Store and override original localization keys
	--Localized the string and assign back to component

	-- Localize integration label
	self._localizedLabelKeys[component.id].label = component.label
	localizedLabel = component.label
	local success, err = pcall(function()
		localizedLabel = self._localization:Format(localizedLabel)
	end)
	if not success then
		localizedLabel = component.label
		warn(err)
	end

	component.label = localizedLabel

	-- Localize integration secondaryAction label
	if component.secondaryAction then
		self._localizedLabelKeys[component.id].secondaryActionLabel = component.secondaryAction.label
		localizedSecondaryAction = component.secondaryAction.label
		local secondaryActionSuccess, secondaryActionErr = pcall(function()
			localizedSecondaryAction = self._localization:Format(localizedSecondaryAction)
		end)
		if not secondaryActionSuccess then
			localizedSecondaryAction = component.secondaryAction.label
			warn(secondaryActionErr)
		end
		component.secondaryAction.label = localizedSecondaryAction
	end

	return component :: Types.IntegrationRegisterProps
end

-- Register an integration to be shown within Chrome UIs
-- The Chrome service will monitor any changes to integration availability and notifications
function ChromeService:register(component: Types.IntegrationRegisterProps): Types.IntegrationProps
	if self._integrations[component.id] then
		warn(string.format(component.id .. "already registered", debug.traceback()))
		for _, conn in self._integrationsConnections[component.id] do
			conn:disconnect()
		end
	end

	self._integrationsConnections[component.id] = {}
	local conns = self._integrationsConnections[component.id]

	if component.initialAvailability == nil then
		component.initialAvailability = ChromeService.AvailabilitySignal.Unavailable
	end

	if component.availability == nil then
		component.availability =
			AvailabilitySignal.new(component.initialAvailability or ChromeService.AvailabilitySignal.Unavailable)
	end

	if component.notification == nil then
		component.notification = NotifySignal.new()
	end

	if component.components == nil then
		component.components = {}
	end

	if component.availability then
		conns[#conns + 1] = component.availability:connect(function()
			self:availabilityChanged(component :: Types.IntegrationProps)
		end)
	end

	if component.notification and not component.notification:excludeFromTotalCounts() then
		conns[#conns + 1] = component.notification:connect(function()
			self:triggerNotificationIndicator(component.id)
			self:updateNotificationTotals()
		end)
	end

	-- Add a windowSize signal for integrations with windows if missing
	if component.windowSize == nil and component.components and component.components.Window then
		component.windowSize = WindowSizeSignal.new()
	end

	if
		GetFFlagChromeTrackWindowStatus()
			and ChromeService:getWindowStatusFromStore(component.id)
			and component.persistWindowState
		or component.windowDefaultOpen
	then
		self._integrationsStatus[component.id] = ChromeService.IntegrationStatus.Window
		self._onIntegrationStatusChanged:fire(component.id, self._integrationsStatus[component.id])
	end

	if GetFFlagChromeDefaultWindowStartingPosition() then
		if GetFFlagChromeTrackWindowPosition() then
			local windowPos = UDim2.fromOffset(Constants.MENU_ICON_SCREEN_SIDE_OFFSET, Constants.WINDOW_DEFAULT_PADDING)
			if component.startingWindowPosition then
				if component.persistWindowState then
					windowPos = self:getWindowPositionFromStore(component.id) or component.startingWindowPosition
				else
					windowPos = component.startingWindowPosition
				end
			end
			self._windowPositions[component.id] = windowPos
		end
	else
		if GetFFlagChromeTrackWindowPosition() and component.startingWindowPosition then
			local windowPos
			if component.persistWindowState then
				windowPos = self:getWindowPositionFromStore(component.id) or component.startingWindowPosition
			else
				windowPos = component.startingWindowPosition
			end
			self._windowPositions[component.id] = windowPos
		end
	end

	-- Add a containerWidthSlots signal for integrations with containers if missing
	if component.containerWidthSlots == nil and component.components and component.components.Container then
		component.containerWidthSlots = ContainerSlotSignal.new()
	end

	if component.containerWidthSlots then
		conns[#conns + 1] = component.containerWidthSlots:connect(function()
			self:containerWidthSlotsChanged(component :: Types.IntegrationProps)
		end)
	end

	component = self:updateLocalization(component)

	local populatedComponent = component :: Types.IntegrationProps
	self._integrations[component.id] = populatedComponent

	return populatedComponent
end

function ChromeService:createIconProps(
	id: Types.IntegrationId,
	order: number?,
	recentlyUsedItem: boolean?
): Types.IntegrationComponentProps
	local iconOrder = order or 0
	if self._integrations[id] then
		return {
			id = id,
			children = {},
			order = iconOrder,
			component = self._integrations[id].components.Icon,
			integration = self._integrations[id],
			isDivider = false,
			recentlyUsedItem = recentlyUsedItem or false,
			activated = function()
				self:activate(id)
			end,
		}
	else
		return {
			id = id,
			children = {},
			order = iconOrder,
			activated = noop,
			integration = DummyIntegration,
		}
	end
end

function ChromeService:createContainerProps(
	id: Types.IntegrationId,
	order: number?,
	recentlyUsedItem: boolean?
): Types.IntegrationComponentProps
	local iconOrder = order or 0
	if self._integrations[id] then
		return {
			id = id,
			children = {},
			order = iconOrder,
			component = self._integrations[id].components.Container,
			integration = self._integrations[id],
			isDivider = false,
			recentlyUsedItem = recentlyUsedItem or false,
			activated = function()
				self:activate(id)
			end,
		}
	else
		return {
			id = id,
			children = {},
			order = iconOrder,
			activated = noop,
			integration = DummyIntegration,
		}
	end
end

function reverseOrder(t)
	local n = #t
	local revOrder = {}
	for i = 1, n do
		revOrder[i] = t[i].order
	end
	for i = 1, n do
		t[i].order = revOrder[n - i + 1]
	end
end

-- Convert the menuConfig into view-model data for the unibar
-- This incluses adding dividers between groups and child submenus
function ChromeService:updateMenuList()
	local divId = 0 -- Unique ID for divider elements
	local order = 0 -- A general order that items are adding to the menu. Can be used to control LayoutOrder

	local function iconProps(id, recentlyUsedItem: boolean?): Types.IntegrationComponentProps
		order += 1
		return self:createIconProps(id, order, recentlyUsedItem)
	end

	local function containerProps(id, recentlyUsedItem: boolean?): Types.IntegrationComponentProps
		order += 1
		return self:createContainerProps(id, order, recentlyUsedItem)
	end

	local function windowProps(id): Types.IntegrationComponentProps
		order += 1
		if self._integrations[id] then
			return {
				id = id,
				children = {},
				order = order,
				component = self._integrations[id].components.Window,
				activated = noop,
				integration = self._integrations[id],
			}
		else
			return {
				id = id,
				children = {},
				order = order,
				activated = noop,
				integration = DummyIntegration,
			}
		end
	end

	local function divider(id): Types.IntegrationComponentProps
		divId += 1
		order += 1
		return {
			id = "DIV" .. divId,
			order = order,
			isDivider = true,
			children = {},
			activated = noop,
			integration = DummyIntegration,
		}
	end

	local function valid(id: Types.IntegrationId)
		-- Only display available items
		local integration = self._integrations[id]
		if integration then
			local availability = integration.availability
			return availability and availability:get() ~= ChromeService.AvailabilitySignal.Unavailable
		else
			return false
		end
	end

	local function collectMenu(
		items: Types.MenuConfig | Types.MenuList | Types.IntegrationIdList,
		parent: any,
		windowList: Types.WindowList,
		recentlyUsedItem: boolean?
	)
		local validIconCount = 0
		for k, v in pairs(items) do
			if v == ChromeService.Key.MostRecentlyUsed then
				-- If MostRecentlyUsed special key, substitute for the MostRecentlyUsed array
				collectMenu(self._mostRecentlyUsed, parent, windowList)
			elseif GetFFlagEnableChromePinIntegrations() and v == ChromeService.Key.UserPinned then
				-- If UserPinned special key, substitute for the UserPinned array
				collectMenu(self._userPins, parent, windowList)
			elseif type(v) == "table" then
				-- A list (non-string item) is a group of items that require visual dividers to bookend
				if not #parent.children then
					table.insert(parent.children, divider(divId))
				end
				if collectMenu(v, parent, windowList) > 0 then
					table.insert(parent.children, divider(divId))
				end
			else
				if typeof(v) ~= "string" then
					error(`Only tables or strings should be passed into the items list, received {v} (at key {k})`)
				end

				if self._subMenuConfig[v] then
					-- This item has a sub-menu configured, populate the children
					if valid(v) then
						local child = iconProps(v, recentlyUsedItem)
						validIconCount += 1
						collectMenu(self._subMenuConfig[v], child, windowList)
						if #child.children > 0 then
							table.insert(parent.children, child)
						end
					end
				else
					-- Standard item addition, check for valid and add depending on integration type
					if valid(v) then
						local isWindowOpen = self:isWindowOpen(v)
						if isWindowOpen then
							table.insert(windowList, windowProps(v))

							table.insert(parent.children, iconProps(v))
							validIconCount += 1
						else
							if self._integrations[v].components.Container then
								table.insert(parent.children, containerProps(v))
							else
								table.insert(parent.children, iconProps(v))
							end
							validIconCount += 1
						end
					end
				end
			end
		end
		return validIconCount
	end

	local root = { children = {} }
	local windowList = {}
	local currentUtility = self._currentCompactUtility:get()
	-- recursively collectMenu for current unibar (compact utility or default)
	if currentUtility and self._compactUtilityConfig[currentUtility] then
		collectMenu(self._compactUtilityConfig[currentUtility], root, windowList)
	else
		collectMenu(self._menuConfig, root, windowList)
	end

	local peekRoot
	if GetFFlagChromePeekArchitecture() then
		peekRoot = { children = {} }
		local currentPeekId = self._peekService:getCurrentPeek()
		local peekConfig = if currentPeekId then self._peekService:getPeekConfig(currentPeekId) else nil

		if peekConfig then
			collectMenu(peekConfig.integrations, peekRoot, windowList)
		end
	end

	-- Remove dangling dividers
	if #root.children and root.children[#root.children] and root.children[#root.children].isDivider then
		table.remove(root.children, #root.children)
	end

	if self._orderAlignment:get() == Enum.HorizontalAlignment.Left then
		root.children = reverse(root.children)
		reverseOrder(root.children)
	end

	-- preserve any open windows when switching to a compact utility
	if currentUtility and self._compactUtilityConfig[currentUtility] then
		for k, v in self._windowList:get() do
			if self:isWindowOpen(v.integration.id) then
				table.insert(windowList, v)
			end
		end
	end

	-- todo: nice to have optimization, only update if we fail an equality check
	self._menuList:set(root.children)
	self._windowList:set(windowList)
	if GetFFlagChromePeekArchitecture() then
		self._peekList:set(peekRoot.children)
	end
	self:repairSelected()
end

function ChromeService:availabilityChanged(component: Types.IntegrationProps)
	self:updateNotificationTotals()
	self:updateMenuList()
end

-- Update menu list when visible container size changes
function ChromeService:containerWidthSlotsChanged(component: Types.IntegrationProps)
	self:updateMenuList()
end

function ChromeService:subMenuNotifications(subMenuId: Types.IntegrationId)
	if not self._subMenuNotifications[subMenuId] then
		self._subMenuNotifications[subMenuId] = NotifySignal.new(true)
	end
	return self._subMenuNotifications[subMenuId]
end

function ChromeService:totalNotifications()
	return self._totalNotifications
end

function ChromeService:onIntegrationRegistered()
	return self._onIntegrationRegistered
end

function ChromeService:onIntegrationActivated()
	return self._onIntegrationActivated
end

function ChromeService:onIntegrationHovered()
	return self._onIntegrationHovered
end

function ChromeService:onIntegrationStatusChanged()
	return self._onIntegrationStatusChanged
end

function ChromeService:integrations()
	return self._integrations
end

function ChromeService:userPins()
	return self._userPins
end

function ChromeService:mostRecentlyUsed()
	return self._mostRecentlyUsed
end

function ChromeService:updateNotificationTotals()
	local total = 0
	for i, v in self._integrations do
		if
			v.availability:get() ~= ChromeService.AvailabilitySignal.Unavailable
			and v.availability:get() ~= ChromeService.AvailabilitySignal.Pinned
			and not v.notification:excludeFromTotalCounts()
		then
			local notification = v.notification:get()
			if notification and notification.type == "count" then
				assert(typeof(notification.value) == "number", "Expected count value to be number")
				total += notification.value :: any
			end
		end
	end
	self._totalNotifications:fireCount(total)

	-- tally submenu notifications
	for id, subTotalNotification in self._subMenuNotifications do
		local submenu = self:withinCurrentTopLevelMenu(id)
		total = 0

		if submenu then
			for i, child in submenu.children do
				-- skip if featured in top level menu
				local withinCurrentTopLevelMenu = self:withinCurrentTopLevelMenu(child.id)

				if
					not withinCurrentTopLevelMenu
					and child.integration.availability:get() ~= ChromeService.AvailabilitySignal.Unavailable
					and not child.integration.notification:excludeFromTotalCounts()
				then
					local notification = child.integration.notification:get()
					if notification and notification.type == "count" then
						assert(typeof(notification.value) == "number", "Expected count value to be number")
						total += notification.value :: any
					end
				end
			end
			subTotalNotification:fireCount(total)
		end
	end
end

function ChromeService:configureReset()
	self._menuConfig = {}
	self._subMenuConfig = {}
	self._compactUtilityConfig = {}
	self._subMenuNotifications = {}
	self:updateMenuList()
end

function ChromeService:configureMenu(menuConfig: Types.MenuConfig)
	self._menuConfig = menuConfig
	self:updateNotificationTotals()
	self:updateMenuList()
end

function ChromeService:configureSubMenu(parent: Types.IntegrationId, menuConfig: Types.IntegrationIdList)
	self._subMenuConfig[parent] = menuConfig
	if not self._subMenuNotifications[parent] then
		self._subMenuNotifications[parent] = NotifySignal.new(true)
	end
	self:updateNotificationTotals()
	self:updateMenuList()
end

if GetFFlagChromePeekArchitecture() then
	function ChromeService:configurePeek(peekId: Types.PeekId, config: Types.PeekConfig)
		self._peekService:configurePeek(peekId, config)
	end

	function ChromeService:tryShowPeek(peekId: Types.PeekId)
		return self._peekService:tryShowPeek(peekId)
	end

	function ChromeService:lockCurrentPeek()
		return self._peekService:lockCurrentPeek()
	end

	function ChromeService:unlockCurrentPeek()
		return self._peekService:unlockCurrentPeek()
	end

	function ChromeService:dismissPeek(peekId: Types.PeekId)
		self._peekService:dismissPeek(peekId)
	end

	function ChromeService:dismissCurrentPeek()
		local peekId = self._peekService:getCurrentPeek()
		if peekId then
			self:dismissPeek(peekId)
		end
	end
end

function ChromeService:getCurrentUtility()
	return self._currentCompactUtility
end

function ChromeService:gesture(
	componentId: Types.IntegrationId,
	connection: { current: RBXScriptConnection? }?,
	inputObject: InputObject?
)
	if self._integrations[componentId] then
		self._dragConnection[componentId] = {
			connection = connection,
			inputObject = inputObject,
		}
	end
end

function ChromeService:withinCurrentTopLevelMenu(componentId: Types.IntegrationId)
	local menuItems = self._menuList:get()
	for i, item in menuItems do
		if item.id == componentId then
			return item, i
		end
	end
	return nil, 0
end

function ChromeService:withinCurrentSubmenu(componentId: Types.IntegrationId)
	local currentSubMenu = self._currentSubMenu:get()
	if not currentSubMenu then
		return false
	end

	local menuItems = self._menuList:get()

	local subMenuItems
	for i, item in menuItems do
		if item.id == currentSubMenu then
			subMenuItems = item.children
			break
		end
	end

	if not subMenuItems then
		return false
	end

	for i, item in subMenuItems do
		if item.id == componentId then
			return true
		end
	end

	return false
end

function ChromeService:removeRecentlyUsed(componentId: Types.IntegrationId)
	local idx = table.find(self._mostRecentlyUsedFullRecord, componentId)
	if idx then
		table.remove(self._mostRecentlyUsedFullRecord, idx)
	end

	self:rebuildMostRecentlyUsed()
end

function ChromeService:isUserPinned(componentId: Types.IntegrationId)
	return GetFFlagEnableChromePinIntegrations() and table.find(self._userPins, componentId) ~= nil
end

function ChromeService:removeUserPin(componentId: Types.IntegrationId)
	if not GetFFlagEnableChromePinIntegrations() then
		return
	end

	local idx = table.find(self._userPins, componentId)
	if idx then
		table.remove(self._userPins, idx)
	end

	if GetFFlagEnableSaveUserPins() then
		LocalStore.storeForLocalPlayer(CHROME_PINNED_KEY, self._userPins)
	end

	self:updateMenuList()
	self:updateNotificationTotals()
end

function ChromeService:setUserPin(componentId: Types.IntegrationId, force: boolean?)
	if
		(force or (self:withinCurrentSubmenu(componentId) and not self:isUserPinned(componentId)))
		and #self._userPins < self._mostRecentlyUsedAndPinnedLimit
		and GetFFlagEnableChromePinIntegrations()
	then
		table.insert(self._userPins, componentId)

		-- Storing user pins in local store is unbound, but the max number of pins displayed is limited
		if GetFFlagEnableSaveUserPins() then
			LocalStore.storeForLocalPlayer(CHROME_PINNED_KEY, self._userPins)
		end

		self:removeRecentlyUsed(componentId)
	end
end

function ChromeService:areUserPinsFull()
	return GetFFlagEnableChromePinIntegrations() and self._mostRecentlyUsedAndPinnedLimit <= #self._userPins
end

function ChromeService:windowPosition(componentId: Types.IntegrationId)
	return self._windowPositions[componentId]
end

function ChromeService:updateWindowPosition(componentId: Types.IntegrationId, position: UDim2)
	if GetFFlagChromeTrackWindowPosition() and LocalStore.isEnabled() then
		if self._integrations[componentId] and self._integrations[componentId].persistWindowState then
			local windowStore = LocalStore.loadForLocalPlayer(CHROME_WINDOW_POSITION_KEY) or {}
			-- JSON (and by extension LocalStore) doesn't play nice with UDims, so we have to encode it a bit
			windowStore[componentId] = { position.X.Scale, position.X.Offset, position.Y.Scale, position.Y.Offset }
			LocalStore.storeForLocalPlayer(CHROME_WINDOW_POSITION_KEY, windowStore)
		end
	end

	self._windowPositions[componentId] = position
end

function ChromeService:getWindowStatusFromStore(componentId: Types.IntegrationId)
	if GetFFlagChromeTrackWindowStatus() and LocalStore.isEnabled() then
		local storeStates = LocalStore.loadForLocalPlayer(CHROME_WINDOW_STATE_KEY) or {}
		local windowState = storeStates[componentId] or false

		return windowState
	end
	return nil
end

function ChromeService:getWindowPositionFromStore(componentId: Types.IntegrationId)
	if GetFFlagChromeTrackWindowPosition() and LocalStore.isEnabled() then
		local storePositions = LocalStore.loadForLocalPlayer(CHROME_WINDOW_POSITION_KEY) or {}
		local pos = storePositions[componentId] or nil
		local windowPosition = if pos then UDim2.new(pos[1], pos[2], pos[3], pos[4]) else nil

		return windowPosition
	end
	return nil
end

function ChromeService:activate(componentId: Types.IntegrationId)
	local errorMessage
	-- todo: Consider if we need to auto-close the sub-menus when items are selected
	if self._integrations[componentId] then
		local integrationActivated = self._integrations[componentId].activated
		self._onIntegrationActivated:fire(componentId)

		self:storeChromeInteracted()

		if integrationActivated then
			-- override default

			local success, err = pcall(function()
				integrationActivated(self._integrations[componentId])
			end)
			if not success then
				warn("ChromeService: activate error thrown for " .. componentId)
				errorMessage = err
			end
		else
			-- run default behavior
			if self._subMenuConfig[componentId] then
				self:toggleSubMenu(componentId)
			end
			self:toggleWindow(componentId)
		end

		if self._currentSubMenu:get() ~= componentId then
			self._currentSubMenu:set(nil)
		end
	end
	if errorMessage then
		-- defer until end of function
		error(errorMessage)
	end
end

function ChromeService:selectedItem()
	return self._selectedItem
end

function ChromeService:setSelected(componentId: Types.IntegrationId?)
	local item, idx = self:withinCurrentTopLevelMenu(componentId or "")
	if not item then
		return
	end

	local lastInput = UserInputService:GetLastInputType()
	local pressed = lastInput == Enum.UserInputType.MouseButton1 or lastInput == Enum.UserInputType.Touch

	local currentSubmenu = self._currentSubMenu:get()
	if currentSubmenu and currentSubmenu ~= componentId and not pressed then
		self:toggleSubMenu(currentSubmenu)
	end

	self._selectedItemIdx = idx
	self._selectedItem:set(componentId)
end

function ChromeService:setSelectedByOffset(offset: number)
	local menuItems = self._menuList:get()
	local _, idx = self:withinCurrentTopLevelMenu(self._selectedItem:get() or "")
	if idx > 0 then
		idx = math.clamp(idx + offset, 1, #menuItems)
		self:setSelected(menuItems[idx].id)
	end
end

-- As icons are added and removed, ensure we never have an orphan selected state
function ChromeService:repairSelected()
	local selected = self._selectedItem:get()
	if selected then
		-- is selected item still within our set
		local _, idx = self:withinCurrentTopLevelMenu(self._selectedItem:get() or "")
		if idx == 0 then
			-- if not, use the last known selected index
			idx = self._selectedItemIdx
		end
		local menuItems = self._menuList:get()
		idx = math.clamp(idx, 1, #menuItems)
		self:setSelected(menuItems[idx].id)
	end
end
function ChromeService:configureOrderAlignment(alignment: Enum.HorizontalAlignment)
	if self._orderAlignment:get() ~= alignment then
		self._orderAlignment:set(alignment)
		self:updateMenuList()
	end
end

function ChromeService:orderAlignment()
	return self._orderAlignment
end

function ChromeService:setMenuAbsolutePosition(position: Vector2)
	if position ~= self._menuAbsolutePosition then
		self._menuAbsolutePosition = position
		self._layout:set(createUnibarLayoutInfo(position, self._menuAbsoluteSizeClosed, self._menuAbsoluteSizeOpen))
	end
end

function ChromeService:setMenuAbsoluteSize(closed: Vector2, open: Vector2)
	if closed ~= self._menuAbsoluteSizeClosed or open ~= self._menuAbsoluteSizeOpen then
		self._menuAbsoluteSizeClosed = closed
		self._menuAbsoluteSizeOpen = open
		self._layout:set(createUnibarLayoutInfo(self._menuAbsolutePosition, closed, open))
	end
end

function ChromeService:layout()
	return self._layout
end

return ChromeService
