local json = require("json")
local IPlayFabHttps = require("IPlayFabHttps")
local PlayFabSettings = require("PlayFabSettings")

local PlayFabMatchmakerApi = {
    settings = PlayFabSettings.settings
}

-- Validates a user with the PlayFab service
-- API Method Documentation: https://api.playfab.com/Documentation/Matchmaker/method/AuthUser
-- Request Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.AuthUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.AuthUserResponse
function AuthUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/AuthUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabMatchmakerApi.AuthUser = AuthUser

-- Informs the PlayFab game server hosting service that the indicated user has joined the Game Server Instance specified
-- API Method Documentation: https://api.playfab.com/Documentation/Matchmaker/method/PlayerJoined
-- Request Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.PlayerJoinedRequest
-- Result Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.PlayerJoinedResponse
function PlayerJoined(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/PlayerJoined", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabMatchmakerApi.PlayerJoined = PlayerJoined

-- Informs the PlayFab game server hosting service that the indicated user has left the Game Server Instance specified
-- API Method Documentation: https://api.playfab.com/Documentation/Matchmaker/method/PlayerLeft
-- Request Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.PlayerLeftRequest
-- Result Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.PlayerLeftResponse
function PlayerLeft(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/PlayerLeft", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabMatchmakerApi.PlayerLeft = PlayerLeft

-- Instructs the PlayFab game server hosting service to instantiate a new Game Server Instance
-- API Method Documentation: https://api.playfab.com/Documentation/Matchmaker/method/StartGame
-- Request Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.StartGameRequest
-- Result Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.StartGameResponse
function StartGame(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/StartGame", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabMatchmakerApi.StartGame = StartGame

-- Retrieves the relevant details for a specified user, which the external match-making service can then use to compute effective matches
-- API Method Documentation: https://api.playfab.com/Documentation/Matchmaker/method/UserInfo
-- Request Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.UserInfoRequest
-- Result Documentation: https://api.playfab.com/Documentation/Matchmaker/datatype/PlayFab.Matchmaker.Models/PlayFab.Matchmaker.Models.UserInfoResponse
function UserInfo(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Matchmaker/UserInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabMatchmakerApi.UserInfo = UserInfo

return PlayFabMatchmakerApi
