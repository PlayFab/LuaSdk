-- PlayFab Profiles API
-- This is the main file you should require in your game
-- All api calls are documented here: https://api.playfab.com/Documentation/Profiles
-- Example code:
-- local PlayFabProfilesApi = require("PlayFab.PlayFabProfilesApi")
-- PlayFabProfilesApi.<ProfilesApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabProfilesApi = {
    settings = PlayFabSettings.settings
}

-- Gets the global title access policy
-- API Method Documentation: https://api.playfab.com/Documentation/Profile/method/GetGlobalPolicy
-- Request Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.GetGlobalPolicyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.GetGlobalPolicyResponse
function PlayFabProfilesApi.GetGlobalPolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/GetGlobalPolicy", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves the entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/Profile/method/GetProfile
-- Request Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.GetEntityProfileRequest
-- Result Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.GetEntityProfileResponse
function PlayFabProfilesApi.GetProfile(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/GetProfile", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves the entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/Profile/method/GetProfiles
-- Request Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.GetEntityProfilesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.GetEntityProfilesResponse
function PlayFabProfilesApi.GetProfiles(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/GetProfiles", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets the global title access policy
-- API Method Documentation: https://api.playfab.com/Documentation/Profile/method/SetGlobalPolicy
-- Request Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.SetGlobalPolicyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.SetGlobalPolicyResponse
function PlayFabProfilesApi.SetGlobalPolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/SetGlobalPolicy", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates the entity's language. The precedence hierarchy for communication to the player is Title Player Account
-- language, Master Player Account language, and then title default language if the first two aren't set or supported.
-- API Method Documentation: https://api.playfab.com/Documentation/Profile/method/SetProfileLanguage
-- Request Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.SetProfileLanguageRequest
-- Result Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.SetProfileLanguageResponse
function PlayFabProfilesApi.SetProfileLanguage(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/SetProfileLanguage", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets the profiles access policy
-- API Method Documentation: https://api.playfab.com/Documentation/Profile/method/SetProfilePolicy
-- Request Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.SetEntityProfilePolicyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.SetEntityProfilePolicyResponse
function PlayFabProfilesApi.SetProfilePolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/SetProfilePolicy", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabProfilesApi
