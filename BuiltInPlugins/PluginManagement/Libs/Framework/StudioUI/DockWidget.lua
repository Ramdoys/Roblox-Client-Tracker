--[[
	A PluginGui which can be docked to the corners of the Studio window,
	or float as a subwindow.

	Props:
		string Title = The title text displayed at the top of the widget.
		bool Enabled = Whether the widget is currently visible.
		Vector2 Size = The initial size of the widget, in pixels.
		InitialDockState InitialDockState = The initial dock position of the widget.

		function OnClose() = A function which is used to define the behavior
			when the user clicks the X button attached to this widget.

	Optional Props:
		Vector2 MinSize = The minimum size of the widget, in pixels.
		ZIndexBehavior ZIndexBehavior = The ZIndexBehavior of the widget.

		bool ShouldRestore = Whether the widget should restore to its previous
			enabled state and position on creation, if the widget was created before.

		function OnWidgetRestored(enabled) = A callback for when the widget
			is restored to its previous position and enabled state. Passes the
			new enabled state as a parameter.
]]

local expectsRestoredMessage = [[
DockWidget expects an OnWidgetRestored function if ShouldRestore is true.
This DockWidget may restore as enabled, so we need to listen for that!]]

local Framework = script.Parent.Parent
local createPluginWidget = require(Framework.StudioUI.createPluginWidget)

local DockWidget = createPluginWidget("DockWidget", function(props)
	local plugin = props.Plugin:get()
	local minSize = props.Size or props.MinSize
	local shouldRestore = props.ShouldRestore or false

	if shouldRestore then
		assert(props.OnWidgetRestored, expectsRestoredMessage)
	end

	local disregardRestoredEnabledState = not shouldRestore

	local info = DockWidgetPluginGuiInfo.new(
		props.InitialDockState,
		props.Enabled or false,
		disregardRestoredEnabledState,
		props.Size.X,
		props.Size.Y,
		minSize.X,
		minSize.Y)

	return plugin:CreateDockWidgetPluginGui(props.Title, info)
end)

return DockWidget