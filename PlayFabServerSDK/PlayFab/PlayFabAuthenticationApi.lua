-- PlayFab Authentication API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabAuthenticationApi = require("PlayFab.PlayFabAuthenticationApi")
-- PlayFabAuthenticationApi.<AuthenticationApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabAuthenticationApi = {
    settings = PlayFabSettings.settings
}

-- Method to exchange a legacy AuthenticationTicket or title SecretKey for an Entity Token or to refresh a still valid
-- Entity Token.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/authentication/authentication/getentitytoken
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/authentication/authentication/getentitytoken#getentitytokenrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/authentication/authentication/getentitytoken#getentitytokenresponse
function PlayFabAuthenticationApi.GetEntityToken(request, onSuccess, onError)
    local authKey = nil
    local authValue = nil
    if (PlayFabSettings._internalSettings.entityToken) then
        authKey = "X-EntityToken"
        authValue = PlayFabSettings._internalSettings.entityToken
    end
    if (PlayFabSettings._internalSettings.sessionTicket) then
        authKey = "X-Authorization"
        authValue = PlayFabSettings._internalSettings.sessionTicket
    end
    if (PlayFabSettings.settings.devSecretKey) then
        authKey = "X-SecretKey"
        authValue = PlayFabSettings.settings.devSecretKey
    end

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.entityToken = result.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Authentication/GetEntityToken", request, authKey, authValue, onSuccess, onError)
end

-- Method for a server to validate a client provided EntityToken. Only callable by the title entity.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/authentication/authentication/validateentitytoken
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/authentication/authentication/validateentitytoken#validateentitytokenrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/authentication/authentication/validateentitytoken#validateentitytokenresponse
function PlayFabAuthenticationApi.ValidateEntityToken(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Authentication/ValidateEntityToken", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabAuthenticationApi
