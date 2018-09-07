-- PlayFab Localization API
-- This is the main file you should require in your game
-- All api calls are documented here: https://api.playfab.com/Documentation/Localization
-- Example code:
-- local PlayFabLocalizationApi = require("PlayFab.PlayFabLocalizationApi")
-- PlayFabLocalizationApi.<LocalizationApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabLocalizationApi = {
    settings = PlayFabSettings.settings
}

-- Retrieves the list of allowed languages, only accessible by title entities
-- API Method Documentation: https://api.playfab.com/Documentation/Locale/method/GetLanguageList
-- Request Documentation: https://api.playfab.com/Documentation/Locale/datatype/PlayFab.Locale.Models/PlayFab.Locale.Models.GetLanguageListRequest
-- Result Documentation: https://api.playfab.com/Documentation/Locale/datatype/PlayFab.Locale.Models/PlayFab.Locale.Models.GetLanguageListResponse
function PlayFabLocalizationApi.GetLanguageList(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Locale/GetLanguageList", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabLocalizationApi
