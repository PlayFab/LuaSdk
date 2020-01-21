-- PlayFab Profiles API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabProfilesApi = require("PlayFab.PlayFabProfilesApi")
-- PlayFabProfilesApi.<ProfilesApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabProfilesApi = {
    settings = PlayFabSettings.settings
}

-- Gets the global title access policy
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/getglobalpolicy
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/getglobalpolicy#getglobalpolicyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/getglobalpolicy#getglobalpolicyresponse
function PlayFabProfilesApi.GetGlobalPolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/GetGlobalPolicy", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves the entity's profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/getprofile
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/getprofile#getentityprofilerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/getprofile#getentityprofileresponse
function PlayFabProfilesApi.GetProfile(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/GetProfile", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves the entity's profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/getprofiles
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/getprofiles#getentityprofilesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/getprofiles#getentityprofilesresponse
function PlayFabProfilesApi.GetProfiles(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/GetProfiles", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves the title player accounts associated with the given master player account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/gettitleplayersfrommasterplayeraccountids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/gettitleplayersfrommasterplayeraccountids#gettitleplayersfrommasterplayeraccountidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/gettitleplayersfrommasterplayeraccountids#gettitleplayersfrommasterplayeraccountidsresponse
function PlayFabProfilesApi.GetTitlePlayersFromMasterPlayerAccountIds(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/GetTitlePlayersFromMasterPlayerAccountIds", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets the global title access policy
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/setglobalpolicy
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/setglobalpolicy#setglobalpolicyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/setglobalpolicy#setglobalpolicyresponse
function PlayFabProfilesApi.SetGlobalPolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/SetGlobalPolicy", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates the entity's language. The precedence hierarchy for communication to the player is Title Player Account
-- language, Master Player Account language, and then title default language if the first two aren't set or supported.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/setprofilelanguage
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/setprofilelanguage#setprofilelanguagerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/setprofilelanguage#setprofilelanguageresponse
function PlayFabProfilesApi.SetProfileLanguage(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/SetProfileLanguage", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets the profiles access policy
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/setprofilepolicy
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/setprofilepolicy#setentityprofilepolicyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/profile/account-management/setprofilepolicy#setentityprofilepolicyresponse
function PlayFabProfilesApi.SetProfilePolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/SetProfilePolicy", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabProfilesApi
