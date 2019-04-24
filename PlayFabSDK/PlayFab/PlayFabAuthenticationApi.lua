-- PlayFab Authentication API
-- This is the main file you should require in your game
-- All api calls are documented here: https://api.playfab.com/Documentation/Authentication
-- Example code:
-- local PlayFabAuthenticationApi = require("PlayFab.PlayFabAuthenticationApi")
-- PlayFabAuthenticationApi.<AuthenticationApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabAuthenticationApi = {
    settings = PlayFabSettings.settings
}

-- Activates the given API key. Active keys may be used for authentication.
-- API Method Documentation: https://api.playfab.com/Documentation/APIKey/method/ActivateKey
-- Request Documentation: https://api.playfab.com/Documentation/APIKey/datatype/PlayFab.APIKey.Models/PlayFab.APIKey.Models.ActivateAPIKeyRequest
-- Result Documentation: https://api.playfab.com/Documentation/APIKey/datatype/PlayFab.APIKey.Models/PlayFab.APIKey.Models.ActivateAPIKeyResponse
function PlayFabAuthenticationApi.ActivateKey(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/APIKey/ActivateKey", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates an API key for the given entity.
-- API Method Documentation: https://api.playfab.com/Documentation/APIKey/method/CreateKey
-- Request Documentation: https://api.playfab.com/Documentation/APIKey/datatype/PlayFab.APIKey.Models/PlayFab.APIKey.Models.CreateAPIKeyRequest
-- Result Documentation: https://api.playfab.com/Documentation/APIKey/datatype/PlayFab.APIKey.Models/PlayFab.APIKey.Models.CreateAPIKeyResponse
function PlayFabAuthenticationApi.CreateKey(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/APIKey/CreateKey", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deactivates the given API key, causing subsequent authentication attempts with it to fail.Deactivating a key is a way to
-- verify that the key is not in use before deleting it.
-- API Method Documentation: https://api.playfab.com/Documentation/APIKey/method/DeactivateKey
-- Request Documentation: https://api.playfab.com/Documentation/APIKey/datatype/PlayFab.APIKey.Models/PlayFab.APIKey.Models.DeactivateAPIKeyRequest
-- Result Documentation: https://api.playfab.com/Documentation/APIKey/datatype/PlayFab.APIKey.Models/PlayFab.APIKey.Models.DeactivateAPIKeyResponse
function PlayFabAuthenticationApi.DeactivateKey(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/APIKey/DeactivateKey", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes the given API key.
-- API Method Documentation: https://api.playfab.com/Documentation/APIKey/method/DeleteKey
-- Request Documentation: https://api.playfab.com/Documentation/APIKey/datatype/PlayFab.APIKey.Models/PlayFab.APIKey.Models.DeleteAPIKeyRequest
-- Result Documentation: https://api.playfab.com/Documentation/APIKey/datatype/PlayFab.APIKey.Models/PlayFab.APIKey.Models.DeleteAPIKeyResponse
function PlayFabAuthenticationApi.DeleteKey(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/APIKey/DeleteKey", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Method to exchange a legacy AuthenticationTicket or title SecretKey for an Entity Token or to refresh a still valid
-- Entity Token.
-- API Method Documentation: https://api.playfab.com/Documentation/Authentication/method/GetEntityToken
-- Request Documentation: https://api.playfab.com/Documentation/Authentication/datatype/PlayFab.Authentication.Models/PlayFab.Authentication.Models.GetEntityTokenRequest
-- Result Documentation: https://api.playfab.com/Documentation/Authentication/datatype/PlayFab.Authentication.Models/PlayFab.Authentication.Models.GetEntityTokenResponse
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

-- Gets the API keys associated with the given entity.
-- API Method Documentation: https://api.playfab.com/Documentation/APIKey/method/GetKeys
-- Request Documentation: https://api.playfab.com/Documentation/APIKey/datatype/PlayFab.APIKey.Models/PlayFab.APIKey.Models.GetAPIKeysRequest
-- Result Documentation: https://api.playfab.com/Documentation/APIKey/datatype/PlayFab.APIKey.Models/PlayFab.APIKey.Models.GetAPIKeysResponse
function PlayFabAuthenticationApi.GetKeys(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/APIKey/GetKeys", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabAuthenticationApi
