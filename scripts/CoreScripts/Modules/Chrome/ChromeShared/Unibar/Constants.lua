local CorePackages = game:GetService("CorePackages")
local ReactOtter = require(CorePackages.Packages.ReactOtter)
local UIBlox = require(CorePackages.Packages.UIBlox)

local GetFFlagPostLaunchUnibarDesignTweaks =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPostLaunchUnibarDesignTweaks
local GetFFlagSongbirdWindowResponsiveSizing =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSongbirdWindowResponsiveSizing

type SpringOptions = ReactOtter.SpringOptions
local IconSize = UIBlox.App.ImageSet.Enum.IconSize

local InputTypes = {
	MouseAndKeyboard = "MouseAndKeyboard",
	Touch = "Touch",
	Gamepad = "Gamepad",
}

local ScreenOrientations = {
	Landscape = "Landscape",
	Portrait = "Portrait",
	Sensor = "Sensor",
}

local socialSlots = 3
local toggleSlots = 1
local nineDotSlots = 1

return {
	ICON_CELL_WIDTH = 44,
	DIVIDER_CELL_WIDTH = 5,
	ICON_SIZE = 36,
	MEDIUM_ICON_SIZE = 28,
	UNIBAR_END_PADDING = 4,
	-- Duplicate of TopBarConstants.Padding
	UNIBAR_LEFT_MARGIN = if GetFFlagPostLaunchUnibarDesignTweaks() then 8 else 12,
	-- Duplicate of TopBarConstants.ScreenSideOffset
	MENU_ICON_SCREEN_SIDE_OFFSET = 16,
	SUB_MENU_ROW_HEIGHT = 56,
	SUBMENU_PADDING = 8,
	CONTAINER_PADDING_TOP_BOTTOM = UDim.new(0, 4),
	CONTAINER_PADDING_LEFT_RIGHT = UDim.new(0, 2),
	PIN_ICON_SIZE = UDim2.new(0, 18, 0, 18),
	PIN_BUTTON_SIZE = 40,
	PIN_RIGHT_PADDING = 13,
	NEW_BADGE_SIZE = 66,
	MENU_ANIMATION_SPRING = {
		dampingRatio = 1.1,
		frequency = 1 / 0.15, -- @150ms size anim
		restingPositionLimit = 0.1,
		restingVelocityLimit = 0.05,
	} :: SpringOptions,
	UNIBAR_KEEP_OUT_AREA_ID = "unibar",
	SELFIE_VIEW_ID = "selfie_view",

	-- WindowHost constants
	WINDOW_HOST_GUI_NAME = "WindowHost",
	CLOSE_BUTTON_FRAME = UDim2.fromOffset(44, 44),
	CLOSE_BUTTON_SIZE = UDim2.fromOffset(22, 22),
	CLOSE_ICON_SIZE = IconSize.Small,
	CORNER_RADIUS = UDim.new(0, 8),
	WINDOW_DEFAULT_PADDING = 8,

	WINDOW_ACTIVE_SECONDS = 2,

	-- the amount of travel to activate a WindowHost from dragging an icon
	DRAG_MAGNITUDE_THRESHOLD = 10,

	DEFAULT_HEIGHT_LARGE = 285,
	DEFAULT_WIDTH_LARGE = 176,
	DEFAULT_HEIGHT = 130,
	DEFAULT_WIDTH = 176,

	MAX_HEIGHT_PORTRAIT = 285,
	MAX_WIDTH_PORTRAIT = if GetFFlagSongbirdWindowResponsiveSizing() then 260 else 176,
	MAX_HEIGHT_LANDSCAPE = 285,
	MAX_WIDTH_LANDSCAPE = if GetFFlagSongbirdWindowResponsiveSizing() then 260 else 176,

	-- Integration Constraints per device type
	SOCIAL_SLOTS = socialSlots, -- Chat, mic, and self view always present in open standard unibar (when available)
	TOGGLE_SLOTS = toggleSlots, -- Unibar or back button present in every unibar/compact utility state
	NINE_DOT_SLOTS = nineDotSlots, -- Nine dot always present in open unibar
	CORE_SLOTS = socialSlots + toggleSlots + nineDotSlots, -- Slots always present in open Unibar
	MOBILE_TINY_PORTRAIT_SLOTS = 5,
	MOBILE_PORTRAIT_SLOTS = 6,
	MOBILE_LANDSCAPE_SLOTS = 7,
	NON_MOBILE_SLOTS = 9,

	MAX_NUM_UNIVERSES_SHOWN = 5,

	HEALTH = {
		RED = Color3.fromRGB(255, 28, 0),
		YELLOW = Color3.fromRGB(250, 235, 0),
		GREEN = Color3.fromRGB(27, 252, 107),
		RED_THRESHOLD = 0.1,
		YELLOW_THRESHOLD = 0.5,
		GREEN_THRESHOLD = 0.8,
	},

	ANALYTICS = {
		SCREEN_ORIENTATION_MAP = {
			[Enum.ScreenOrientation.LandscapeLeft] = ScreenOrientations.Landscape,
			[Enum.ScreenOrientation.LandscapeRight] = ScreenOrientations.Landscape,
			[Enum.ScreenOrientation.LandscapeSensor] = ScreenOrientations.Landscape,
			[Enum.ScreenOrientation.Portrait] = ScreenOrientations.Portrait,
			[Enum.ScreenOrientation.Sensor] = ScreenOrientations.Sensor,
		},
		INPUT_TYPE_MAP = {
			[Enum.UserInputType.MouseButton1] = InputTypes.MouseAndKeyboard,
			[Enum.UserInputType.MouseButton2] = InputTypes.MouseAndKeyboard,
			[Enum.UserInputType.MouseButton3] = InputTypes.MouseAndKeyboard,
			[Enum.UserInputType.MouseWheel] = InputTypes.MouseAndKeyboard,
			[Enum.UserInputType.MouseMovement] = InputTypes.MouseAndKeyboard,
			[Enum.UserInputType.Keyboard] = InputTypes.MouseAndKeyboard,

			[Enum.UserInputType.Gamepad1] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad2] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad3] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad4] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad5] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad6] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad7] = InputTypes.Gamepad,
			[Enum.UserInputType.Gamepad8] = InputTypes.Gamepad,

			[Enum.UserInputType.Touch] = InputTypes.Touch,
		},
		UNIBAR_OPENED = "chrome_unibar_opened",
		UNIBAR_CLOSED = "chrome_unibar_closed",
		ICON_ACTIVATED = "chrome_unibar_icon_activated",
		ICON_DRAG_START = "chrome_unibar_icon_drag_started",
		ICON_DRAG_END = "chrome_unibar_icon_drag_ended",
		WINDOW_DRAG_START = "chrome_unibar_window_drag_started",
		WINDOW_DRAG_END = "chrome_unibar_window_drag_ended",
		WINDOW_RESIZE = "chrome_unibar_window_resized",
		WINDOW_OPENED = "chrome_unibar_window_opened",
		WINDOW_CLOSED = "chrome_unibar_window_closed",
		PIN_ADDED = "chrome_unibar_pin_added",
		PIN_REMOVED = "chrome_unibar_pin_removed",
	},
}
