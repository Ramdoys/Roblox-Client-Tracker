--[[
    The Top Bar contains the buttons for displaying the overlay, going back and forwards, importing assets
        as well the search bar.

    Necessary Properties:
        OnOverlayActivated = callback, to display the overlay when the overlay button is clicked.
    Optional Properties:
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier

local UILibrary = require(Plugin.Packages.UILibrary)
local InfiniteScrollingFrame = UILibrary.Component.InfiniteScrollingFrame
local LoadingIndicator = UILibrary.Component.LoadingIndicator
local GetTextSize = UILibrary.Util.GetTextSize

local Screens = require(Plugin.Src.Util.Screens)

local Tile = require(Plugin.Src.Components.Tile)

local SetSelectedAssets = require(Plugin.Src.Actions.SetSelectedAssets)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)
local GetAssetPreviewData = require(Plugin.Src.Thunks.GetAssetPreviewData)
local OnScreenChange = require(Plugin.Src.Thunks.OnScreenChange)

local BulkImportService = game:GetService("BulkImportService")

local AssetGridContainer = Roact.Component:extend("AssetGridContainer")

function AssetGridContainer:init()
    self.state = {
        currentScreen = "",
    }

    self.layoutRef = Roact.createRef()

    self.bulkImportFinishedConnection = nil

    self.onClearSelection = function()
        self.props.dispatchSetSelectedAssets({})
    end

    self.onOpenAssetPreview = function(assetData)
        local assetPreviewData = self.props.AssetsTable.assetPreviewData[assetData.id]
        self.props.OnOpenAssetPreview(assetData, assetPreviewData)
    end
end

function AssetGridContainer:didMount()
    local props = self.props
    local screen = props.CurrentScreen
    if screen ~= Screens.MAIN.Key then
        self.bulkImportFinishedConnection = BulkImportService.BulkImportFinished:connect(function(state)
            -- state is 1 for success
            if state == 1 then
                local apiImpl = props.API:get()
                props.dispatchGetAssets(apiImpl, screen.AssetType)
            end
        end)
    end
end

function AssetGridContainer:willUnmount()
    if self.bulkImportFinishedConnection then
        self.bulkImportFinishedConnection:disconnect()
    end
end

function AssetGridContainer:createTiles(apiImpl, localization, theme,
    assets, currentScreen, searchTerm, selectedAssets)

    local numberAssets = 0
    local assetsToDisplay = {
        GridLayout = Roact.createElement("UIGridLayout", {
            CellSize = theme.Tile.Default.Size,
            CellPadding = theme.AssetGridContainer.CellPadding,
            SortOrder = Enum.SortOrder.LayoutOrder,

            [Roact.Ref] = self.layoutRef,
        })
    }

    if currentScreen.Key == Screens.MAIN.Key then
        for _, screen in pairs(Screens) do
            if screen.Key ~= Screens.MAIN.Key then
                local folderTile = Roact.createElement(Tile, {
                    AssetData = {
                        name = localization:getText("Folders", screen.Key),
                        ClassName = "Folder",
                        Screen = screen,
                    },

                    LayoutOrder = screen.LayoutOrder,
                    StyleModifier = selectedAssets[screen.Key] and StyleModifier.Selected or nil
                })
                assetsToDisplay[screen.Key] = folderTile
            end
        end
    else
        for i, asset in ipairs(assets) do
            if string.find(asset.name, searchTerm) then
                asset.key = i
                local assetTile = Roact.createElement(Tile, {
                    AssetData = asset,
                    LayoutOrder = i,
                    StyleModifier = selectedAssets[i] and StyleModifier.Selected or nil,
                    OnOpenAssetPreview = self.onOpenAssetPreview,
                })
                assetsToDisplay[i] = assetTile
                numberAssets = numberAssets + 1
            end
        end
    end

    return assetsToDisplay, numberAssets
end

function AssetGridContainer:didUpdate(lastProps, lastState)
    local props = self.props
    local apiImpl = props.API:get()
    local screen = props.CurrentScreen
    if screen ~= self.state.currentScreen then
        props.dispatchOnScreenChange(apiImpl, screen)
        self:setState({
            currentScreen = screen,
        })
    end
end

function AssetGridContainer:render()
    local props = self.props
    local apiImpl = props.API:get()
    local theme = props.Theme:get("Plugin")
    local localization = props.Localization

    local size = props.Size
    local layoutOrder = props.LayoutOrder

    local assetsTable = props.AssetsTable
    local assets = assetsTable.assets
    local nextPageCursor = assetsTable.nextPageCursor
    local nextPageNumber = assetsTable.pageNumber
    local currentScreen = props.CurrentScreen
    local isFetchingAssets = props.IsFetchingAssets
    local searchTerm = props.SearchTerm
    local selectedAssets = props.SelectedAssets
    local assetPreviewData = assetsTable.assetPreviewData

    local dispatchGetAssets = props.dispatchGetAssets
    local dispatchGetAssetPreviewData = props.dispatchGetAssetPreviewData

    local contents, assetCount = self:createTiles(apiImpl, localization, theme,
        assets, currentScreen, searchTerm, selectedAssets)

    local hasAssetsToDisplay = currentScreen.Key == Screens.MAIN.Key or assetCount ~= 0

    if hasAssetsToDisplay then
        if #assets ~= 0 and #assets ~= #assetPreviewData then
            local assetIds = {}
            for _, asset in ipairs(assets) do
                local isPlace = asset.assetType == Enum.AssetType.Place
                if not isPlace and assetPreviewData[asset.id] == nil then
                    table.insert(assetIds, asset.id)
                end
            end

            if #assetIds ~= 0 then
                dispatchGetAssetPreviewData(apiImpl, assetIds)
            end
        end
    end

    local assetTypeText = localization:getText("Folders", currentScreen.Key)
    local noResultsText = localization:getText("AssetGrid", "NoResults", {assetType = assetTypeText})
    local noResultsTextExtents = GetTextSize(noResultsText, theme.FontSizeSmall, theme.Font)

    return Roact.createElement("Frame", {
        Size = size,
        LayoutOrder = layoutOrder,

        BackgroundTransparency = 1,
    }, {
        AssetGrid = hasAssetsToDisplay and Roact.createElement(InfiniteScrollingFrame, {
            Size = UDim2.new(1, 0, 1, 0),

            BackgroundTransparency = 1,

            LayoutRef = self.layoutRef,

            NextPageRequestDistance = 100,
            NextPageFunc = function()
                if nextPageCursor then
                    dispatchGetAssets(apiImpl, currentScreen.AssetType, nextPageCursor)
                elseif nextPageNumber then
                    dispatchGetAssets(apiImpl, currentScreen.AssetType, nil, nextPageNumber)
                end
            end,
        }, contents),

        DeselectButton = hasAssetsToDisplay and Roact.createElement("ImageButton", {
            Size = UDim2.new(1, 0, 1, 0),

            BackgroundTransparency = 1,

            [Roact.Event.Activated] = self.onClearSelection,
        }),

        NoResultsText = not hasAssetsToDisplay and not isFetchingAssets and Roact.createElement("TextLabel", {
            Size = UDim2.new(0, noResultsTextExtents.X, 0, noResultsTextExtents.Y),
            Position = UDim2.new(0.5, 0, 0.3, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),

            Text = noResultsText,
            TextColor3 = theme.DisabledColor,
            Font = theme.Font,
            TextSize = theme.FontSizeSmall,

            BackgroundTransparency = 1,
        }),

        LoadingIndicator = isFetchingAssets and Roact.createElement(LoadingIndicator, {
            Position = UDim2.new(0.5, 0, 0.5, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),
            ZIndex = 2,
        }),
    })
end

ContextServices.mapToProps(AssetGridContainer,{
    API = ContextServices.API,
    Theme = ContextServices.Theme,
    Localization = ContextServices.Localization,
})

local function mapStateToProps(state, props)
    local assetManagerReducer = state.AssetManagerReducer

	return {
        AssetsTable = assetManagerReducer.assetsTable,
        CurrentScreen = state.Screen.currentScreen,
        IsFetchingAssets = assetManagerReducer.isFetchingAssets,
        SearchTerm = assetManagerReducer.searchTerm,
        SelectedAssets = assetManagerReducer.selectedAssets,
	}
end

local function mapDispatchToProps(dispatch)
	return {
        dispatchGetAssets = function(apiImpl, assetType, pageCursor, pageNumber)
            dispatch(GetAssets(apiImpl, assetType, pageCursor, pageNumber))
        end,
        dispatchOnScreenChange = function(apiImpl, screen)
            dispatch(OnScreenChange(apiImpl, screen))
        end,
        dispatchSetSelectedAssets = function(selectedAssets)
            dispatch(SetSelectedAssets(selectedAssets))
        end,
        dispatchGetAssetPreviewData = function(apiImpl, assetIds)
            dispatch(GetAssetPreviewData(apiImpl, assetIds))
        end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetGridContainer)