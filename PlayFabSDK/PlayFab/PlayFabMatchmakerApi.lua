-- PlayFab Matchmaker API
-- This is the main file you should require in your game
-- All api calls are documented here: https://api.playfab.com/Documentation/Matchmaker
-- Example code:
-- local PlayFabMatchmakerApi = require("PlayFab.PlayFabMatchmakerApi")
-- PlayFabMatchmakerApi.<MatchmakerApiCall>(request, successCallbackFunc, errorCallbackFunc)

local json = require("PlayFab.json")
local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabMatchmakerApi = {
    settings = PlayFabSettings.settings
}

-- Validates a user with the PlayFab service
-- API Method Documentation: https://api.playfab.com/Documentation/Matchmaker/method/AuthUser
-- Request Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.AuthUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.AuthUserResponse
function PlayFabMatchmakerApi.AuthUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/AuthUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Informs the PlayFab game server hosting service that the indicated user has joined the Game Server Instance specified
-- API Method Documentation: https://api.playfab.com/Documentation/Matchmaker/method/PlayerJoined
-- Request Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.PlayerJoinedRequest
-- Result Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.PlayerJoinedResponse
function PlayFabMatchmakerApi.PlayerJoined(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/PlayerJoined", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Informs the PlayFab game server hosting service that the indicated user has left the Game Server Instance specified
-- API Method Documentation: https://api.playfab.com/Documentation/Matchmaker/method/PlayerLeft
-- Request Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.PlayerLeftRequest
-- Result Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.PlayerLeftResponse
function PlayFabMatchmakerApi.PlayerLeft(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/PlayerLeft", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Instructs the PlayFab game server hosting service to instantiate a new Game Server Instance
-- API Method Documentation: https://api.playfab.com/Documentation/Matchmaker/method/StartGame
-- Request Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.StartGameRequest
-- Result Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.StartGameResponse
function PlayFabMatchmakerApi.StartGame(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/StartGame", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the relevant details for a specified user, which the external match-making service can then use to compute effective matches
-- API Method Documentation: https://api.playfab.com/Documentation/Matchmaker/method/UserInfo
-- Request Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.UserInfoRequest
-- Result Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.UserInfoResponse
function PlayFabMatchmakerApi.UserInfo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/UserInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

return PlayFabMatchmakerApi
