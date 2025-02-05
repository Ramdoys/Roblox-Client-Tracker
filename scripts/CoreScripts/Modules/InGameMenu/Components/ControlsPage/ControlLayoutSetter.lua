local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent

local Controls = require(InGameMenu.Resources.Controls)

local SetControlLayout = require(InGameMenu.Actions.SetControlLayout)

local ControlLayoutSetter = Roact.PureComponent:extend("ControlLayoutSetter")

function ControlLayoutSetter:init()
	local controlLayout = Controls.inputToControlTypeMap[UserInputService:GetLastInputType()]
	if controlLayout then
		self.props.dispatchSetControlLayout(controlLayout)
	end
end

function ControlLayoutSetter:render()
	return nil
end

function ControlLayoutSetter:didMount()
	self.inputChangedConnection = UserInputService.LastInputTypeChanged:Connect(function(lastInputType)
		local controlLayout = Controls.inputToControlTypeMap[lastInputType]
		if controlLayout then
			self.props.dispatchSetControlLayout(controlLayout)
		end
	end)

	-- TOUCH doesn't have a ControlLayout
	-- self.props.dispatchSetControlLayout(Controls.ControlLayouts.TOUCH)
end

function ControlLayoutSetter:willUnmount()
	if self.inputChangedConnection then
		self.inputChangedConnection:Disconnect()
	end
end

return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		dispatchSetControlLayout = function(controlLayout)
			dispatch(SetControlLayout(controlLayout))
		end,
	}
end)(ControlLayoutSetter)
