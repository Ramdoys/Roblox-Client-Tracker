--[[
	Provides a context item so that it can be used in the Roact tree.

	Props:
		ContextItem ContextItem = The context item to provide.
		Signal UpdateSignal = A signal that is fired when the context item
			is updated. This component listens to the signal to know when
			to update itself. When the signal fires, it should pass `self`.
			The Signal class can be found in Util.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local Provider = Roact.PureComponent:extend("Provider")

function Provider:init(props)
	local contextItem = props.ContextItem
	assert(contextItem ~= nil, "Provider expected a ContextItem prop.")

	local key = contextItem.Key
	assert(key ~= nil, "Provider expected the ContextItem prop to be a ContextItem.")

	local value = contextItem
	local updateSignal = props.UpdateSignal

	self.state = {
		value = value,
	}

	self._context[key] = {
		value = value,
		updateSignal = updateSignal,
	}

	if updateSignal then
		self.connection = updateSignal:Connect(function(newValue)
			self:setState({
				value = newValue,
			})
		end)
	end
end

function Provider:render()
	local props = self.props
	local state = self.state
	local contextItem = props.ContextItem
	local key = contextItem.Key
	local value = state.value

	self._context[key].value = value
	return Roact.oneChild(self.props[Roact.Children])
end

function Provider:willUnmount()
	if self.connection then
		self.connection:Disconnect()
	end
end

return Provider