-- PlayFab Events API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabEventsApi = require("PlayFab.PlayFabEventsApi")
-- PlayFabEventsApi.<EventsApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabEventsApi = {
    settings = PlayFabSettings.settings
}

-- Write batches of entity based events to PlayStream. The namespace of the Event must be 'custom' or start with 'custom.'.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writeevents
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writeevents#writeeventsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writeevents#writeeventsresponse
function PlayFabEventsApi.WriteEvents(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Event/WriteEvents", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Write batches of entity based events to as Telemetry events (bypass PlayStream). The namespace must be 'custom' or start
-- with 'custom.'
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writetelemetryevents
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writetelemetryevents#writeeventsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/event/playstream-events/writetelemetryevents#writeeventsresponse
function PlayFabEventsApi.WriteTelemetryEvents(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Event/WriteTelemetryEvents", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabEventsApi
