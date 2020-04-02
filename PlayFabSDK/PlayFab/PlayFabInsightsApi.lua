-- PlayFab Insights API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabInsightsApi = require("PlayFab.PlayFabInsightsApi")
-- PlayFabInsightsApi.<InsightsApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabInsightsApi = {
    settings = PlayFabSettings.settings
}

-- Gets the current values for the Insights performance and data storage retention, list of pending operations, and the
-- performance and data storage retention limits.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getdetails
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getdetails#insightsemptyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getdetails#insightsgetdetailsresponse
function PlayFabInsightsApi.GetDetails(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Insights/GetDetails", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves the range of allowed values for performance and data storage retention values as well as the submeter details
-- for each performance level.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getlimits
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getlimits#insightsemptyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getlimits#insightsgetlimitsresponse
function PlayFabInsightsApi.GetLimits(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Insights/GetLimits", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the status of a SetPerformance or SetStorageRetention operation.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getoperationstatus
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getoperationstatus#insightsgetoperationstatusrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getoperationstatus#insightsgetoperationstatusresponse
function PlayFabInsightsApi.GetOperationStatus(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Insights/GetOperationStatus", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets a list of pending SetPerformance and/or SetStorageRetention operations for the title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getpendingoperations
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getpendingoperations#insightsgetpendingoperationsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/getpendingoperations#insightsgetpendingoperationsresponse
function PlayFabInsightsApi.GetPendingOperations(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Insights/GetPendingOperations", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets the Insights performance level value for the title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/setperformance
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/setperformance#insightssetperformancerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/setperformance#insightsoperationresponse
function PlayFabInsightsApi.SetPerformance(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Insights/SetPerformance", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets the Insights data storage retention days value for the title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/setstorageretention
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/setstorageretention#insightssetstorageretentionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/insights/analytics/setstorageretention#insightsoperationresponse
function PlayFabInsightsApi.SetStorageRetention(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Insights/SetStorageRetention", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabInsightsApi
