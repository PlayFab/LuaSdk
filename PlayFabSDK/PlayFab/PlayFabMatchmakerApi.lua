-- PlayFab Matchmaker API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabMatchmakerApi = require("PlayFab.PlayFabMatchmakerApi")
-- PlayFabMatchmakerApi.<MatchmakerApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabMatchmakerApi = {
    settings = PlayFabSettings.settings
}

-- Validates a user with the PlayFab service
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/authuser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/authuser#authuserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/authuser#authuserresponse
function PlayFabMatchmakerApi.AuthUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/AuthUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Informs the PlayFab game server hosting service that the indicated user has joined the Game Server Instance specified
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/playerjoined
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/playerjoined#playerjoinedrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/playerjoined#playerjoinedresponse
function PlayFabMatchmakerApi.PlayerJoined(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/PlayerJoined", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Informs the PlayFab game server hosting service that the indicated user has left the Game Server Instance specified
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/playerleft
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/playerleft#playerleftrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/playerleft#playerleftresponse
function PlayFabMatchmakerApi.PlayerLeft(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/PlayerLeft", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Instructs the PlayFab game server hosting service to instantiate a new Game Server Instance
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/startgame
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/startgame#startgamerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/startgame#startgameresponse
function PlayFabMatchmakerApi.StartGame(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/StartGame", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the relevant details for a specified user, which the external match-making service can then use to compute
-- effective matches
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/userinfo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/userinfo#userinforequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/matchmaker/matchmaking/userinfo#userinforesponse
function PlayFabMatchmakerApi.UserInfo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/UserInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

return PlayFabMatchmakerApi
