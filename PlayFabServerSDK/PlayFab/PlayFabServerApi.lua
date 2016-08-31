local json = require("PlayFab.json")
local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabServerApi = {
    settings = PlayFabSettings.settings
}

-- Validated a client's session ticket, and if successful, returns details for that user
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/AuthenticateSessionTicket
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.AuthenticateSessionTicketRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.AuthenticateSessionTicketResult
function AuthenticateSessionTicket(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AuthenticateSessionTicket", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AuthenticateSessionTicket = AuthenticateSessionTicket

-- Bans users by PlayFab ID with optional IP address, or MAC address for the provided game.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/BanUsers
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.BanUsersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.BanUsersResult
function BanUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/BanUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.BanUsers = BanUsers

-- Retrieves the unique PlayFab identifiers for the given set of Facebook identifiers.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetPlayFabIDsFromFacebookIDs
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayFabIDsFromFacebookIDsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayFabIDsFromFacebookIDsResult
function GetPlayFabIDsFromFacebookIDs(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayFabIDsFromFacebookIDs", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayFabIDsFromFacebookIDs = GetPlayFabIDsFromFacebookIDs

-- Retrieves the unique PlayFab identifiers for the given set of Steam identifiers. The Steam identifiers  are the profile IDs for the user accounts, available as SteamId in the Steamworks Community API calls.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetPlayFabIDsFromSteamIDs
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayFabIDsFromSteamIDsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayFabIDsFromSteamIDsResult
function GetPlayFabIDsFromSteamIDs(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayFabIDsFromSteamIDs", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayFabIDsFromSteamIDs = GetPlayFabIDsFromSteamIDs

-- Retrieves the relevant details for a specified user
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetUserAccountInfo
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserAccountInfoRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserAccountInfoResult
function GetUserAccountInfo(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserAccountInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserAccountInfo = GetUserAccountInfo

-- Gets all bans for a user.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetUserBans
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserBansRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserBansResult
function GetUserBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserBans = GetUserBans

-- Revoke all active bans for a user.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/RevokeAllBansForUser
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RevokeAllBansForUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RevokeAllBansForUserResult
function RevokeAllBansForUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RevokeAllBansForUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RevokeAllBansForUser = RevokeAllBansForUser

-- Revoke all active bans specified with BanId.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/RevokeBans
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RevokeBansRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RevokeBansResult
function RevokeBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RevokeBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RevokeBans = RevokeBans

-- Sends an iOS/Android Push Notification to a specific user, if that user's device has been configured for Push Notifications in PlayFab. If a user has linked both Android and iOS devices, both will be notified.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/SendPushNotification
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SendPushNotificationRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SendPushNotificationResult
function SendPushNotification(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SendPushNotification", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SendPushNotification = SendPushNotification

-- Updates information of a list of existing bans specified with Ban Ids.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateBans
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateBansRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateBansResult
function UpdateBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateBans = UpdateBans

-- Deletes the users for the provided game. Deletes custom data, all account linkages, and statistics.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/DeleteUsers
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.DeleteUsersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.DeleteUsersResult
function DeleteUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/DeleteUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.DeleteUsers = DeleteUsers

-- Retrieves a list of ranked users for the given statistic, starting from the indicated point in the leaderboard
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetLeaderboard
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetLeaderboardRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetLeaderboardResult
function GetLeaderboard(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboard", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetLeaderboard = GetLeaderboard

-- Retrieves a list of ranked users for the given statistic, centered on the currently signed-in user
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetLeaderboardAroundUser
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetLeaderboardAroundUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetLeaderboardAroundUserResult
function GetLeaderboardAroundUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboardAroundUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetLeaderboardAroundUser = GetLeaderboardAroundUser

-- Returns whatever info is requested in the response for the user. Note that PII (like email address, facebook id)             may be returned. All parameters default to false.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetPlayerCombinedInfo
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayerCombinedInfoRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayerCombinedInfoResult
function GetPlayerCombinedInfo(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerCombinedInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayerCombinedInfo = GetPlayerCombinedInfo

-- Retrieves the current version and values for the indicated statistics, for the local player.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetPlayerStatistics
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayerStatisticsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayerStatisticsResult
function GetPlayerStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayerStatistics = GetPlayerStatistics

-- Retrieves the information on the available versions of the specified statistic.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetPlayerStatisticVersions
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayerStatisticVersionsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayerStatisticVersionsResult
function GetPlayerStatisticVersions(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerStatisticVersions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayerStatisticVersions = GetPlayerStatisticVersions

-- Retrieves the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetUserData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataResult
function GetUserData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserData = GetUserData

-- Retrieves the title-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetUserInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataResult
function GetUserInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserInternalData = GetUserInternalData

-- Retrieves the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetUserPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataResult
function GetUserPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserPublisherData = GetUserPublisherData

-- Retrieves the publisher-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetUserPublisherInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataResult
function GetUserPublisherInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserPublisherInternalData = GetUserPublisherInternalData

-- Retrieves the publisher-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetUserPublisherReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataResult
function GetUserPublisherReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserPublisherReadOnlyData = GetUserPublisherReadOnlyData

-- Retrieves the title-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetUserReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserDataResult
function GetUserReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserReadOnlyData = GetUserReadOnlyData

-- Retrieves the details of all title-specific statistics for the user
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetUserStatistics
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserStatisticsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserStatisticsResult
function GetUserStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserStatistics = GetUserStatistics

-- Updates the values of the specified title-specific statistics for the user
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdatePlayerStatistics
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdatePlayerStatisticsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdatePlayerStatisticsResult
function UpdatePlayerStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdatePlayerStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdatePlayerStatistics = UpdatePlayerStatistics

-- Updates the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateUserData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserDataResult
function UpdateUserData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserData = UpdateUserData

-- Updates the title-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateUserInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserInternalDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserDataResult
function UpdateUserInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserInternalData = UpdateUserInternalData

-- Updates the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateUserPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserDataResult
function UpdateUserPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserPublisherData = UpdateUserPublisherData

-- Updates the publisher-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateUserPublisherInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserInternalDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserDataResult
function UpdateUserPublisherInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserPublisherInternalData = UpdateUserPublisherInternalData

-- Updates the publisher-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateUserPublisherReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserDataResult
function UpdateUserPublisherReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserPublisherReadOnlyData = UpdateUserPublisherReadOnlyData

-- Updates the title-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateUserReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserDataResult
function UpdateUserReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserReadOnlyData = UpdateUserReadOnlyData

-- Updates the values of the specified title-specific statistics for the user. By default, clients are not permitted to update statistics. Developers may override this setting in the Game Manager > Settings > API Features.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateUserStatistics
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserStatisticsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserStatisticsResult
function UpdateUserStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserStatistics = UpdateUserStatistics

-- Retrieves the specified version of the title's catalog of virtual goods, including all defined properties
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetCatalogItems
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCatalogItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCatalogItemsResult
function GetCatalogItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCatalogItems = GetCatalogItems

-- Retrieves the key-value store of custom publisher settings
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPublisherDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPublisherDataResult
function GetPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPublisherData = GetPublisherData

-- Retrieves the key-value store of custom title settings
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetTitleData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetTitleDataResult
function GetTitleData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetTitleData = GetTitleData

-- Retrieves the key-value store of custom internal title settings
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetTitleInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetTitleDataResult
function GetTitleInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetTitleInternalData = GetTitleInternalData

-- Retrieves the title news feed, as configured in the developer portal
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetTitleNews
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetTitleNewsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetTitleNewsResult
function GetTitleNews(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetTitleNews", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetTitleNews = GetTitleNews

-- Updates the key-value store of custom publisher settings
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/SetPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SetPublisherDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SetPublisherDataResult
function SetPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SetPublisherData = SetPublisherData

-- Updates the key-value store of custom title settings
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/SetTitleData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SetTitleDataResult
function SetTitleData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SetTitleData = SetTitleData

-- Updates the key-value store of custom title settings
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/SetTitleInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SetTitleDataResult
function SetTitleInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SetTitleInternalData = SetTitleInternalData

-- Increments  the character's balance of the specified virtual currency by the stated amount
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/AddCharacterVirtualCurrency
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.AddCharacterVirtualCurrencyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ModifyCharacterVirtualCurrencyResult
function AddCharacterVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddCharacterVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AddCharacterVirtualCurrency = AddCharacterVirtualCurrency

-- Increments  the user's balance of the specified virtual currency by the stated amount
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/AddUserVirtualCurrency
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.AddUserVirtualCurrencyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ModifyUserVirtualCurrencyResult
function AddUserVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AddUserVirtualCurrency = AddUserVirtualCurrency

-- Consume uses of a consumable item. When all uses are consumed, it will be removed from the player's inventory.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/ConsumeItem
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ConsumeItemRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ConsumeItemResult
function ConsumeItem(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ConsumeItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.ConsumeItem = ConsumeItem

-- Returns the result of an evaluation of a Random Result Table - the ItemId from the game Catalog which would have been added to the player inventory, if the Random Result Table were added via a Bundle or a call to UnlockContainer.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/EvaluateRandomResultTable
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.EvaluateRandomResultTableRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.EvaluateRandomResultTableResult
function EvaluateRandomResultTable(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/EvaluateRandomResultTable", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.EvaluateRandomResultTable = EvaluateRandomResultTable

-- Retrieves the specified character's current inventory of virtual goods
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetCharacterInventory
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterInventoryRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterInventoryResult
function GetCharacterInventory(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterInventory", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterInventory = GetCharacterInventory

-- Retrieves the configuration information for the specified random results tables for the title, including all ItemId values and weights
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetRandomResultTables
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetRandomResultTablesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetRandomResultTablesResult
function GetRandomResultTables(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetRandomResultTables", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetRandomResultTables = GetRandomResultTables

-- Retrieves the specified user's current inventory of virtual goods
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetUserInventory
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserInventoryRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetUserInventoryResult
function GetUserInventory(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserInventory", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserInventory = GetUserInventory

-- Adds the specified items to the specified character's inventory
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GrantItemsToCharacter
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GrantItemsToCharacterRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GrantItemsToCharacterResult
function GrantItemsToCharacter(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantItemsToCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GrantItemsToCharacter = GrantItemsToCharacter

-- Adds the specified items to the specified user's inventory
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GrantItemsToUser
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GrantItemsToUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GrantItemsToUserResult
function GrantItemsToUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantItemsToUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GrantItemsToUser = GrantItemsToUser

-- Adds the specified items to the specified user inventories
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GrantItemsToUsers
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GrantItemsToUsersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GrantItemsToUsersResult
function GrantItemsToUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantItemsToUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GrantItemsToUsers = GrantItemsToUsers

-- Modifies the number of remaining uses of a player's inventory item
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/ModifyItemUses
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ModifyItemUsesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ModifyItemUsesResult
function ModifyItemUses(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ModifyItemUses", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.ModifyItemUses = ModifyItemUses

-- Moves an item from a character's inventory into another of the users's character's inventory.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/MoveItemToCharacterFromCharacter
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.MoveItemToCharacterFromCharacterRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.MoveItemToCharacterFromCharacterResult
function MoveItemToCharacterFromCharacter(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/MoveItemToCharacterFromCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.MoveItemToCharacterFromCharacter = MoveItemToCharacterFromCharacter

-- Moves an item from a user's inventory into their character's inventory.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/MoveItemToCharacterFromUser
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.MoveItemToCharacterFromUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.MoveItemToCharacterFromUserResult
function MoveItemToCharacterFromUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/MoveItemToCharacterFromUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.MoveItemToCharacterFromUser = MoveItemToCharacterFromUser

-- Moves an item from a character's inventory into the owning user's inventory.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/MoveItemToUserFromCharacter
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.MoveItemToUserFromCharacterRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.MoveItemToUserFromCharacterResult
function MoveItemToUserFromCharacter(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/MoveItemToUserFromCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.MoveItemToUserFromCharacter = MoveItemToUserFromCharacter

-- Adds the virtual goods associated with the coupon to the user's inventory. Coupons can be generated  via the Economy->Catalogs tab in the PlayFab Game Manager.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/RedeemCoupon
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RedeemCouponRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RedeemCouponResult
function RedeemCoupon(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RedeemCoupon", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RedeemCoupon = RedeemCoupon

-- Submit a report about a player (due to bad bahavior, etc.) on behalf of another player, so that customer service representatives for the title can take action concerning potentially toxic players.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/ReportPlayer
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ReportPlayerServerRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ReportPlayerServerResult
function ReportPlayer(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ReportPlayer", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.ReportPlayer = ReportPlayer

-- Revokes access to an item in a user's inventory
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/RevokeInventoryItem
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RevokeInventoryItemRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RevokeInventoryResult
function RevokeInventoryItem(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RevokeInventoryItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RevokeInventoryItem = RevokeInventoryItem

-- Decrements the character's balance of the specified virtual currency by the stated amount
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/SubtractCharacterVirtualCurrency
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SubtractCharacterVirtualCurrencyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ModifyCharacterVirtualCurrencyResult
function SubtractCharacterVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SubtractCharacterVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SubtractCharacterVirtualCurrency = SubtractCharacterVirtualCurrency

-- Decrements the user's balance of the specified virtual currency by the stated amount
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/SubtractUserVirtualCurrency
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SubtractUserVirtualCurrencyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ModifyUserVirtualCurrencyResult
function SubtractUserVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SubtractUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SubtractUserVirtualCurrency = SubtractUserVirtualCurrency

-- Opens a specific container (ContainerItemInstanceId), with a specific key (KeyItemInstanceId, when required), and returns the contents of the opened container. If the container (and key when relevant) are consumable (RemainingUses > 0), their RemainingUses will be decremented, consistent with the operation of ConsumeItem.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UnlockContainerInstance
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UnlockContainerInstanceRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UnlockContainerItemResult
function UnlockContainerInstance(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UnlockContainerInstance", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UnlockContainerInstance = UnlockContainerInstance

-- Searches Player or Character inventory for any ItemInstance matching the given CatalogItemId, if necessary unlocks it using any appropriate key, and returns the contents of the opened container. If the container (and key when relevant) are consumable (RemainingUses > 0), their RemainingUses will be decremented, consistent with the operation of ConsumeItem.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UnlockContainerItem
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UnlockContainerItemRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UnlockContainerItemResult
function UnlockContainerItem(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UnlockContainerItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UnlockContainerItem = UnlockContainerItem

-- Updates the key-value pair data tagged to the specified item, which is read-only from the client.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateUserInventoryItemCustomData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateUserInventoryItemDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.EmptyResult
function UpdateUserInventoryItemCustomData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserInventoryItemCustomData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserInventoryItemCustomData = UpdateUserInventoryItemCustomData

-- Informs the PlayFab match-making service that the user specified has left the Game Server Instance
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/NotifyMatchmakerPlayerLeft
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.NotifyMatchmakerPlayerLeftRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.NotifyMatchmakerPlayerLeftResult
function NotifyMatchmakerPlayerLeft(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/NotifyMatchmakerPlayerLeft", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.NotifyMatchmakerPlayerLeft = NotifyMatchmakerPlayerLeft

-- Validates a Game Server session ticket and returns details about the user
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/RedeemMatchmakerTicket
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RedeemMatchmakerTicketRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RedeemMatchmakerTicketResult
function RedeemMatchmakerTicket(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RedeemMatchmakerTicket", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RedeemMatchmakerTicket = RedeemMatchmakerTicket

-- Sets the custom data of the indicated Game Server Instance
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/SetGameServerInstanceData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SetGameServerInstanceDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SetGameServerInstanceDataResult
function SetGameServerInstanceData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetGameServerInstanceData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SetGameServerInstanceData = SetGameServerInstanceData

-- Set the state of the indicated Game Server Instance.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/SetGameServerInstanceState
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SetGameServerInstanceStateRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.SetGameServerInstanceStateResult
function SetGameServerInstanceState(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetGameServerInstanceState", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SetGameServerInstanceState = SetGameServerInstanceState

-- Awards the specified users the specified Steam achievements
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/AwardSteamAchievement
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.AwardSteamAchievementRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.AwardSteamAchievementResult
function AwardSteamAchievement(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AwardSteamAchievement", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AwardSteamAchievement = AwardSteamAchievement

-- Logs a custom analytics event
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/LogEvent
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.LogEventRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.LogEventResult
function LogEvent(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/LogEvent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.LogEvent = LogEvent

-- Writes a character-based event into PlayStream.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/WriteCharacterEvent
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.WriteServerCharacterEventRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.WriteEventResponse
function WriteCharacterEvent(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/WriteCharacterEvent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.WriteCharacterEvent = WriteCharacterEvent

-- Writes a player-based event into PlayStream.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/WritePlayerEvent
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.WriteServerPlayerEventRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.WriteEventResponse
function WritePlayerEvent(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/WritePlayerEvent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.WritePlayerEvent = WritePlayerEvent

-- Writes a title-based event into PlayStream.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/WriteTitleEvent
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.WriteTitleEventRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.WriteEventResponse
function WriteTitleEvent(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/WriteTitleEvent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.WriteTitleEvent = WriteTitleEvent

-- Adds users to the set of those able to update both the shared data, as well as the set of users in the group. Only users in the group (and the server) can add new members.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/AddSharedGroupMembers
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.AddSharedGroupMembersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.AddSharedGroupMembersResult
function AddSharedGroupMembers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddSharedGroupMembers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AddSharedGroupMembers = AddSharedGroupMembers

-- Requests the creation of a shared group object, containing key/value pairs which may be updated by all members of the group. When created by a server, the group will initially have no members.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/CreateSharedGroup
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.CreateSharedGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.CreateSharedGroupResult
function CreateSharedGroup(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/CreateSharedGroup", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.CreateSharedGroup = CreateSharedGroup

-- Deletes a shared group, freeing up the shared group ID to be reused for a new group
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/DeleteSharedGroup
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.DeleteSharedGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.EmptyResult
function DeleteSharedGroup(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/DeleteSharedGroup", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.DeleteSharedGroup = DeleteSharedGroup

-- Retrieves data stored in a shared group object, as well as the list of members in the group. The server can access all public and private group data.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetSharedGroupData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetSharedGroupDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetSharedGroupDataResult
function GetSharedGroupData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetSharedGroupData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetSharedGroupData = GetSharedGroupData

-- Removes users from the set of those able to update the shared data and the set of users in the group. Only users in the group can remove members. If as a result of the call, zero users remain with access, the group and its associated data will be deleted.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/RemoveSharedGroupMembers
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RemoveSharedGroupMembersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RemoveSharedGroupMembersResult
function RemoveSharedGroupMembers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RemoveSharedGroupMembers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RemoveSharedGroupMembers = RemoveSharedGroupMembers

-- Adds, updates, and removes data keys for a shared group object. If the permission is set to Public, all fields updated or added in this call will be readable by users not in the group. By default, data permissions are set to Private. Regardless of the permission setting, only members of the group (and the server) can update the data.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateSharedGroupData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateSharedGroupDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateSharedGroupDataResult
function UpdateSharedGroupData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateSharedGroupData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateSharedGroupData = UpdateSharedGroupData

-- Executes a CloudScript function, with the 'currentPlayerId' variable set to the specified PlayFabId parameter value.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/ExecuteCloudScript
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ExecuteCloudScriptServerRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ExecuteCloudScriptResult
function ExecuteCloudScript(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ExecuteCloudScript", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.ExecuteCloudScript = ExecuteCloudScript

-- This API retrieves a pre-signed URL for accessing a content file for the title. A subsequent  HTTP GET to the returned URL will attempt to download the content. A HEAD query to the returned URL will attempt to  retrieve the metadata of the content. Note that a successful result does not guarantee the existence of this content -  if it has not been uploaded, the query to retrieve the data will fail. See this post for more information:  https://community.playfab.com/hc/en-us/community/posts/205469488-How-to-upload-files-to-PlayFab-s-Content-Service
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetContentDownloadUrl
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetContentDownloadUrlRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetContentDownloadUrlResult
function GetContentDownloadUrl(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetContentDownloadUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetContentDownloadUrl = GetContentDownloadUrl

-- Deletes the specific character ID from the specified user.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/DeleteCharacterFromUser
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.DeleteCharacterFromUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.DeleteCharacterFromUserResult
function DeleteCharacterFromUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/DeleteCharacterFromUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.DeleteCharacterFromUser = DeleteCharacterFromUser

-- Lists all of the characters that belong to a specific user. CharacterIds are not globally unique; characterId must be evaluated with the parent PlayFabId to guarantee uniqueness.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetAllUsersCharacters
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ListUsersCharactersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.ListUsersCharactersResult
function GetAllUsersCharacters(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetAllUsersCharacters", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetAllUsersCharacters = GetAllUsersCharacters

-- Retrieves a list of ranked characters for the given statistic, starting from the indicated point in the leaderboard
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetCharacterLeaderboard
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterLeaderboardRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterLeaderboardResult
function GetCharacterLeaderboard(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterLeaderboard", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterLeaderboard = GetCharacterLeaderboard

-- Retrieves the details of all title-specific statistics for the specific character
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetCharacterStatistics
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterStatisticsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterStatisticsResult
function GetCharacterStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterStatistics = GetCharacterStatistics

-- Retrieves a list of ranked characters for the given statistic, centered on the requested user
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetLeaderboardAroundCharacter
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetLeaderboardAroundCharacterRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetLeaderboardAroundCharacterResult
function GetLeaderboardAroundCharacter(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboardAroundCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetLeaderboardAroundCharacter = GetLeaderboardAroundCharacter

-- Retrieves a list of all of the user's characters for the given statistic.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetLeaderboardForUserCharacters
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetLeaderboardForUsersCharactersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetLeaderboardForUsersCharactersResult
function GetLeaderboardForUserCharacters(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboardForUserCharacters", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetLeaderboardForUserCharacters = GetLeaderboardForUserCharacters

-- Grants the specified character type to the user. CharacterIds are not globally unique; characterId must be evaluated with the parent PlayFabId to guarantee uniqueness.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GrantCharacterToUser
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GrantCharacterToUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GrantCharacterToUserResult
function GrantCharacterToUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantCharacterToUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GrantCharacterToUser = GrantCharacterToUser

-- Updates the values of the specified title-specific statistics for the specific character
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateCharacterStatistics
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateCharacterStatisticsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateCharacterStatisticsResult
function UpdateCharacterStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateCharacterStatistics = UpdateCharacterStatistics

-- Retrieves the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetCharacterData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterDataResult
function GetCharacterData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterData = GetCharacterData

-- Retrieves the title-specific custom data for the user's character which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetCharacterInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterDataResult
function GetCharacterInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterInternalData = GetCharacterInternalData

-- Retrieves the title-specific custom data for the user's character which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetCharacterReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetCharacterDataResult
function GetCharacterReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterReadOnlyData = GetCharacterReadOnlyData

-- Updates the title-specific custom data for the user's chjaracter which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateCharacterData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateCharacterDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateCharacterDataResult
function UpdateCharacterData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateCharacterData = UpdateCharacterData

-- Updates the title-specific custom data for the user's character which cannot  be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateCharacterInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateCharacterDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateCharacterDataResult
function UpdateCharacterInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateCharacterInternalData = UpdateCharacterInternalData

-- Updates the title-specific custom data for the user's character which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/UpdateCharacterReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateCharacterDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.UpdateCharacterDataResult
function UpdateCharacterReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateCharacterReadOnlyData = UpdateCharacterReadOnlyData

-- Adds a given tag to a player profile. The tag's namespace is automatically generated based on the source of the tag.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/AddPlayerTag
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.AddPlayerTagRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.AddPlayerTagResult
function AddPlayerTag(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddPlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AddPlayerTag = AddPlayerTag

-- Retrieves an array of player segment definitions. Results from this can be used in subsequent API calls such as GetPlayersInSegment which requires a Segment ID. While segment names can change the ID for that segment will not change.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetAllSegments
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetAllSegmentsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetAllSegmentsResult
function GetAllSegments(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetAllSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetAllSegments = GetAllSegments

-- List all segments that a player currently belongs to at this moment in time.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetPlayerSegments
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayersSegmentsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayerSegmentsResult
function GetPlayerSegments(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayerSegments = GetPlayerSegments

-- Allows for paging through all players in a given segment. This API creates a snapshot of all player profiles that match the segment definition at the time of its creation and lives through the Total Seconds to Live, refreshing its life span on each subsequent use of the Continuation Token. Profiles that change during the course of paging will not be reflected in the results. AB Test segments are currently not supported by this operation.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetPlayersInSegment
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayersInSegmentRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayersInSegmentResult
function GetPlayersInSegment(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayersInSegment", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayersInSegment = GetPlayersInSegment

-- Get all tags with a given Namespace (optional) from a player profile.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/GetPlayerTags
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayerTagsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.GetPlayerTagsResult
function GetPlayerTags(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerTags", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayerTags = GetPlayerTags

-- Remove a given tag from a player profile. The tag's namespace is automatically generated based on the source of the tag.
-- API Method Documentation: https://api.playfab.com/Documentation/Server/method/RemovePlayerTag
-- Request Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RemovePlayerTagRequest
-- Result Documentation: https://api.playfab.com/Documentation/Server/datatype/PlayFab.Server.Models/PlayFab.Server.Models.RemovePlayerTagResult
function RemovePlayerTag(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RemovePlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RemovePlayerTag = RemovePlayerTag

return PlayFabServerApi
