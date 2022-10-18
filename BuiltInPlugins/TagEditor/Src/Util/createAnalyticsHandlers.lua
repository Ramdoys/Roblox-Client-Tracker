local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local TAG_EDITOR_EVENT_NAME = "TagEditorUsage"

return function(analyticsService)
    local function sendPoint(pointName, additionalArgs)
        additionalArgs = additionalArgs or {}

        local args = Cryo.Dictionary.join({
            placeId = game.PlaceId,
            calledFrom = pointName
        }, additionalArgs)

        analyticsService:ReportInfluxSeries(TAG_EDITOR_EVENT_NAME, args, game:GetFastInt("ReportTagEditorEventsThrottleHundrethsPercent2")) 
    end

    local function reportCounter(counterName)
        analyticsService:ReportCounter(counterName)
    end

    return {
        opened = function()
            sendPoint("Opened")
        end,

        worldVisualization = function()
            sendPoint("WorldVisualization")
        end,

        colorChanged = function()
            sendPoint("ColorChanged")
        end,

        iconChanged = function()
            sendPoint("IconChanged")
        end,

        tagCreated = function()
            sendPoint("TagCreated")
        end,

        objectTagged = function()
            sendPoint("ObjectTagged")
        end,

        toggleWidget = function()
            reportCounter("TagEditorToggleWidget")
        end,

        openWidget = function()
            reportCounter("TagEditorOpenWidget")
        end,

        closeWidget = function()
            reportCounter("TagEditorCloseWidget")
        end,
    }
end
