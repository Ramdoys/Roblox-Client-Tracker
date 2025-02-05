local Root = script:FindFirstAncestor("ChromeShared")

local ChromeUtils = require(Root.Service.ChromeUtils)
local WindowSizeSignal = require(Root.Service.WindowSizeSignal)
local ContainerSlotSignal = require(Root.Service.ContainerSlotSignal)

export type IntegrationComponents = {
	Icon: any?,
	Window: any?,
	Container: any?,
}

export type IntegrationId = string
export type IntegrationIdList = { [number]: string }
export type MenuConfig = { [number]: IntegrationIdList }
export type CompactUtilityId = string
export type CompactUtilityConfig = { [CompactUtilityId]: MenuConfig }
export type PeekId = string
export type PeekLifetimeConfig = {
	duration: number?,
}
export type PeekConfig = {
	integrations: IntegrationIdList,
	lifetime: PeekLifetimeConfig?,
}
export type SecondaryAction = {
	label: string,
	activated: (IntegrationComponentProps) -> (),
}

export type IntegrationProps = {
	id: IntegrationId,
	label: string,
	initialAvailability: number,
	availability: ChromeUtils.AvailabilitySignal,
	draggable: boolean?,
	components: IntegrationComponents,
	activated: (IntegrationProps) -> ()?,
	isActivated: (() -> boolean)?,
	notification: ChromeUtils.NotifySignal,
	hideNotificationCountWhileOpen: boolean,
	startingWindowPosition: UDim2?,
	windowDefaultOpen: boolean?,
	windowAnchorPoint: Vector2?,
	windowSize: WindowSizeSignal.WindowSizeSignal?,
	containerWidthSlots: ContainerSlotSignal.ContainerSlotSignal?,
	cachePosition: boolean?,
	hotkeyCodes: { [number]: Enum.KeyCode }?,
	secondaryAction: SecondaryAction?,
	flashNotificationSource: boolean?,
	persistWindowState: boolean?,
}

export type IntegrationRegisterProps = {
	id: IntegrationId,
	label: string,
	initialAvailability: number?,
	availability: ChromeUtils.AvailabilitySignal?,
	draggable: boolean?,
	components: IntegrationComponents?,
	activated: (IntegrationProps) -> ()?,
	isActivated: (() -> boolean)?,
	notification: ChromeUtils.NotifySignal?,
	hideNotificationCountWhileOpen: boolean?,
	windowSize: WindowSizeSignal.WindowSizeSignal?,
	containerWidthSlots: ContainerSlotSignal.ContainerSlotSignal?,
	cachePosition: boolean?,
	startingWindowPosition: UDim2?,
	windowDefaultOpen: boolean?,
	windowAnchorPoint: Vector2?,
	hotkeyCodes: { [number]: Enum.KeyCode }?,
	secondaryAction: SecondaryAction?,
	flashNotificationSource: boolean?,
	persistWindowState: boolean?,
}

export type IntegrationComponentProps = {
	id: IntegrationId,
	component: any,
	integration: IntegrationProps,
	activated: () -> (),
	order: number,
	children: { [number]: IntegrationComponentProps },
	isDivider: boolean?,
	recentlyUsedItem: boolean?,
}

export type IntegrationList = { [IntegrationId]: IntegrationProps }
export type MenuList = { [number]: IntegrationComponentProps }
export type WindowList = { [number]: IntegrationComponentProps }
export type PeekList = { IntegrationComponentProps }

return nil
