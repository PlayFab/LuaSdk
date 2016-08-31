local json = require("PlayFab.json")
local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabAdminApi = {
    settings = PlayFabSettings.settings
}

-- Bans users by PlayFab ID with optional IP address, or MAC address for the provided game.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/BanUsers
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BanUsersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BanUsersResult
function BanUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/BanUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.BanUsers = BanUsers

-- Retrieves the relevant details for a specified user, based upon a match against a supplied unique identifier
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserAccountInfo
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.LookupUserAccountInfoRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.LookupUserAccountInfoResult
function GetUserAccountInfo(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserAccountInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserAccountInfo = GetUserAccountInfo

-- Gets all bans for a user.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserBans
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserBansRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserBansResult
function GetUserBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserBans = GetUserBans

-- Resets all title-specific information about a particular account, including user data, virtual currency balances, inventory, purchase history, and statistics
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ResetUsers
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResetUsersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BlankResult
function ResetUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ResetUsers = ResetUsers

-- Revoke all active bans for a user.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RevokeAllBansForUser
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeAllBansForUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeAllBansForUserResult
function RevokeAllBansForUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeAllBansForUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RevokeAllBansForUser = RevokeAllBansForUser

-- Revoke all active bans specified with BanId.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RevokeBans
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeBansRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeBansResult
function RevokeBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RevokeBans = RevokeBans

-- Forces an email to be sent to the registered email address for the specified account, with a link allowing the user to change the password
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SendAccountRecoveryEmail
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SendAccountRecoveryEmailRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SendAccountRecoveryEmailResult
function SendAccountRecoveryEmail(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SendAccountRecoveryEmail", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SendAccountRecoveryEmail = SendAccountRecoveryEmail

-- Updates information of a list of existing bans specified with Ban Ids.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateBans
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateBansRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateBansResult
function UpdateBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateBans = UpdateBans

-- Updates the title specific display name for a user
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserTitleDisplayName
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserTitleDisplayNameRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserTitleDisplayNameResult
function UpdateUserTitleDisplayName(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserTitleDisplayName", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserTitleDisplayName = UpdateUserTitleDisplayName

-- Adds a new player statistic configuration to the title, optionally allowing the developer to specify a reset interval and an aggregation method.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/CreatePlayerStatisticDefinition
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.CreatePlayerStatisticDefinitionRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.CreatePlayerStatisticDefinitionResult
function CreatePlayerStatisticDefinition(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreatePlayerStatisticDefinition", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.CreatePlayerStatisticDefinition = CreatePlayerStatisticDefinition

-- Deletes the users for the provided game. Deletes custom data, all account linkages, and statistics.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/DeleteUsers
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.DeleteUsersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.DeleteUsersResult
function DeleteUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.DeleteUsers = DeleteUsers

-- Retrieves a download URL for the requested report
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetDataReport
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetDataReportRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetDataReportResult
function GetDataReport(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetDataReport", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetDataReport = GetDataReport

-- Retrieves the configuration information for all player statistics defined in the title, regardless of whether they have a reset interval.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPlayerStatisticDefinitions
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerStatisticDefinitionsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerStatisticDefinitionsResult
function GetPlayerStatisticDefinitions(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerStatisticDefinitions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPlayerStatisticDefinitions = GetPlayerStatisticDefinitions

-- Retrieves the information on the available versions of the specified statistic.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPlayerStatisticVersions
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerStatisticVersionsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerStatisticVersionsResult
function GetPlayerStatisticVersions(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerStatisticVersions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPlayerStatisticVersions = GetPlayerStatisticVersions

-- Retrieves the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function GetUserData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserData = GetUserData

-- Retrieves the title-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function GetUserInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserInternalData = GetUserInternalData

-- Retrieves the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function GetUserPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserPublisherData = GetUserPublisherData

-- Retrieves the publisher-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserPublisherInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function GetUserPublisherInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserPublisherInternalData = GetUserPublisherInternalData

-- Retrieves the publisher-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserPublisherReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function GetUserPublisherReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserPublisherReadOnlyData = GetUserPublisherReadOnlyData

-- Retrieves the title-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function GetUserReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserReadOnlyData = GetUserReadOnlyData

-- Resets the indicated statistic, removing all player entries for it and backing up the old values.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/IncrementPlayerStatisticVersion
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.IncrementPlayerStatisticVersionRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.IncrementPlayerStatisticVersionResult
function IncrementPlayerStatisticVersion(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/IncrementPlayerStatisticVersion", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.IncrementPlayerStatisticVersion = IncrementPlayerStatisticVersion

-- Completely removes all statistics for the specified user, for the current game
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ResetUserStatistics
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResetUserStatisticsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResetUserStatisticsResult
function ResetUserStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetUserStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ResetUserStatistics = ResetUserStatistics

-- Updates a player statistic configuration for the title, optionally allowing the developer to specify a reset interval.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdatePlayerStatisticDefinition
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdatePlayerStatisticDefinitionRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdatePlayerStatisticDefinitionResult
function UpdatePlayerStatisticDefinition(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdatePlayerStatisticDefinition", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdatePlayerStatisticDefinition = UpdatePlayerStatisticDefinition

-- Updates the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function UpdateUserData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserData = UpdateUserData

-- Updates the title-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserInternalDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function UpdateUserInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserInternalData = UpdateUserInternalData

-- Updates the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function UpdateUserPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserPublisherData = UpdateUserPublisherData

-- Updates the publisher-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserPublisherInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserInternalDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function UpdateUserPublisherInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserPublisherInternalData = UpdateUserPublisherInternalData

-- Updates the publisher-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserPublisherReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function UpdateUserPublisherReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserPublisherReadOnlyData = UpdateUserPublisherReadOnlyData

-- Updates the title-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function UpdateUserReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserReadOnlyData = UpdateUserReadOnlyData

-- Adds a new news item to the title's news feed
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/AddNews
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddNewsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddNewsResult
function AddNews(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddNews", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.AddNews = AddNews

-- Adds one or more virtual currencies to the set defined for the title. Virtual Currencies have a maximum value of 2,147,483,647 when granted to a player. Any value over that will be discarded.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/AddVirtualCurrencyTypes
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddVirtualCurrencyTypesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BlankResult
function AddVirtualCurrencyTypes(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.AddVirtualCurrencyTypes = AddVirtualCurrencyTypes

-- Deletes an existing virtual item store
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/DeleteStore
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.DeleteStoreRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.DeleteStoreResult
function DeleteStore(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteStore", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.DeleteStore = DeleteStore

-- Retrieves the specified version of the title's catalog of virtual goods, including all defined properties
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetCatalogItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCatalogItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCatalogItemsResult
function GetCatalogItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetCatalogItems = GetCatalogItems

-- Retrieves the key-value store of custom publisher settings
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPublisherDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPublisherDataResult
function GetPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPublisherData = GetPublisherData

-- Retrieves the random drop table configuration for the title
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetRandomResultTables
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetRandomResultTablesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetRandomResultTablesResult
function GetRandomResultTables(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetRandomResultTables", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetRandomResultTables = GetRandomResultTables

-- Retrieves the set of items defined for the specified store, including all prices defined
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetStoreItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetStoreItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetStoreItemsResult
function GetStoreItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetStoreItems = GetStoreItems

-- Retrieves the key-value store of custom title settings which can be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetTitleData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTitleDataResult
function GetTitleData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetTitleData = GetTitleData

-- Retrieves the key-value store of custom title settings which cannot be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetTitleInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTitleDataResult
function GetTitleInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetTitleInternalData = GetTitleInternalData

-- Retuns the list of all defined virtual currencies for the title
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ListVirtualCurrencyTypes
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ListVirtualCurrencyTypesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ListVirtualCurrencyTypesResult
function ListVirtualCurrencyTypes(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ListVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ListVirtualCurrencyTypes = ListVirtualCurrencyTypes

-- Removes one or more virtual currencies from the set defined for the title.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RemoveVirtualCurrencyTypes
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RemoveVirtualCurrencyTypesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BlankResult
function RemoveVirtualCurrencyTypes(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemoveVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RemoveVirtualCurrencyTypes = RemoveVirtualCurrencyTypes

-- Creates the catalog configuration of all virtual goods for the specified catalog version
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetCatalogItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCatalogItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCatalogItemsResult
function SetCatalogItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetCatalogItems = SetCatalogItems

-- Sets all the items in one virtual store
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetStoreItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateStoreItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateStoreItemsResult
function SetStoreItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetStoreItems = SetStoreItems

-- Creates and updates the key-value store of custom title settings which can be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetTitleData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetTitleDataResult
function SetTitleData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetTitleData = SetTitleData

-- Updates the key-value store of custom title settings which cannot be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetTitleInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetTitleDataResult
function SetTitleInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetTitleInternalData = SetTitleInternalData

-- Sets the Amazon Resource Name (ARN) for iOS and Android push notifications. Documentation on the exact restrictions can be found at: http://docs.aws.amazon.com/sns/latest/api/API_CreatePlatformApplication.html. Currently, Amazon device Messaging is not supported.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetupPushNotification
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetupPushNotificationRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetupPushNotificationResult
function SetupPushNotification(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetupPushNotification", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetupPushNotification = SetupPushNotification

-- Updates the catalog configuration for virtual goods in the specified catalog version
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateCatalogItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCatalogItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCatalogItemsResult
function UpdateCatalogItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateCatalogItems = UpdateCatalogItems

-- Updates the random drop table configuration for the title
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateRandomResultTables
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateRandomResultTablesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateRandomResultTablesResult
function UpdateRandomResultTables(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateRandomResultTables", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateRandomResultTables = UpdateRandomResultTables

-- Updates an existing virtual item store with new or modified items
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateStoreItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateStoreItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateStoreItemsResult
function UpdateStoreItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateStoreItems = UpdateStoreItems

-- Increments the specified virtual currency by the stated amount
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/AddUserVirtualCurrency
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddUserVirtualCurrencyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyUserVirtualCurrencyResult
function AddUserVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.AddUserVirtualCurrency = AddUserVirtualCurrency

-- Retrieves the specified user's current inventory of virtual goods
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserInventory
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserInventoryRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserInventoryResult
function GetUserInventory(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserInventory", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserInventory = GetUserInventory

-- Adds the specified items to the specified user inventories
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GrantItemsToUsers
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GrantItemsToUsersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GrantItemsToUsersResult
function GrantItemsToUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GrantItemsToUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GrantItemsToUsers = GrantItemsToUsers

-- Revokes access to an item in a user's inventory
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RevokeInventoryItem
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeInventoryItemRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeInventoryResult
function RevokeInventoryItem(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeInventoryItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RevokeInventoryItem = RevokeInventoryItem

-- Decrements the specified virtual currency by the stated amount
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SubtractUserVirtualCurrency
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SubtractUserVirtualCurrencyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyUserVirtualCurrencyResult
function SubtractUserVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SubtractUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SubtractUserVirtualCurrency = SubtractUserVirtualCurrency

-- Retrieves the details for a specific completed session, including links to standard out and standard error logs
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetMatchmakerGameInfo
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetMatchmakerGameInfoRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetMatchmakerGameInfoResult
function GetMatchmakerGameInfo(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetMatchmakerGameInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetMatchmakerGameInfo = GetMatchmakerGameInfo

-- Retrieves the details of defined game modes for the specified game server executable
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetMatchmakerGameModes
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetMatchmakerGameModesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetMatchmakerGameModesResult
function GetMatchmakerGameModes(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetMatchmakerGameModes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetMatchmakerGameModes = GetMatchmakerGameModes

-- Updates the game server mode details for the specified game server executable
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ModifyMatchmakerGameModes
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyMatchmakerGameModesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyMatchmakerGameModesResult
function ModifyMatchmakerGameModes(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ModifyMatchmakerGameModes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ModifyMatchmakerGameModes = ModifyMatchmakerGameModes

-- Adds the game server executable specified (previously uploaded - see GetServerBuildUploadUrl) to the set of those a client is permitted to request in a call to StartGame
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/AddServerBuild
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddServerBuildRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddServerBuildResult
function AddServerBuild(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.AddServerBuild = AddServerBuild

-- Retrieves the build details for the specified game server executable
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetServerBuildInfo
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetServerBuildInfoRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetServerBuildInfoResult
function GetServerBuildInfo(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetServerBuildInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetServerBuildInfo = GetServerBuildInfo

-- Retrieves the pre-authorized URL for uploading a game server package containing a build (does not enable the build for use - see AddServerBuild)
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetServerBuildUploadUrl
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetServerBuildUploadURLRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetServerBuildUploadURLResult
function GetServerBuildUploadUrl(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetServerBuildUploadUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetServerBuildUploadUrl = GetServerBuildUploadUrl

-- Retrieves the build details for all game server executables which are currently defined for the title
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ListServerBuilds
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ListBuildsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ListBuildsResult
function ListServerBuilds(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ListServerBuilds", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ListServerBuilds = ListServerBuilds

-- Updates the build details for the specified game server executable
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ModifyServerBuild
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyServerBuildRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyServerBuildResult
function ModifyServerBuild(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ModifyServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ModifyServerBuild = ModifyServerBuild

-- Removes the game server executable specified from the set of those a client is permitted to request in a call to StartGame
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RemoveServerBuild
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RemoveServerBuildRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RemoveServerBuildResult
function RemoveServerBuild(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemoveServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RemoveServerBuild = RemoveServerBuild

-- Updates the key-value store of custom publisher settings
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetPublisherDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetPublisherDataResult
function SetPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetPublisherData = SetPublisherData

-- Gets the contents and information of a specific Cloud Script revision.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetCloudScriptRevision
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCloudScriptRevisionRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCloudScriptRevisionResult
function GetCloudScriptRevision(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCloudScriptRevision", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetCloudScriptRevision = GetCloudScriptRevision

-- Lists all the current cloud script versions. For each version, information about the current published and latest revisions is also listed.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetCloudScriptVersions
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCloudScriptVersionsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCloudScriptVersionsResult
function GetCloudScriptVersions(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCloudScriptVersions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetCloudScriptVersions = GetCloudScriptVersions

-- Sets the currently published revision of a title Cloud Script
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetPublishedRevision
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetPublishedRevisionRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetPublishedRevisionResult
function SetPublishedRevision(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetPublishedRevision", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetPublishedRevision = SetPublishedRevision

-- Creates a new Cloud Script revision and uploads source code to it. Note that at this time, only one file should be submitted in the revision.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateCloudScript
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCloudScriptRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCloudScriptResult
function UpdateCloudScript(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateCloudScript", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateCloudScript = UpdateCloudScript

-- Delete a content file from the title
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/DeleteContent
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.DeleteContentRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BlankResult
function DeleteContent(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteContent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.DeleteContent = DeleteContent

-- List all contents of the title and get statistics such as size
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetContentList
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetContentListRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetContentListResult
function GetContentList(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetContentList", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetContentList = GetContentList

-- Retrieves the pre-signed URL for uploading a content file. A subsequent HTTP PUT to the returned URL uploads the content.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetContentUploadUrl
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetContentUploadUrlRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetContentUploadUrlResult
function GetContentUploadUrl(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetContentUploadUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetContentUploadUrl = GetContentUploadUrl

-- Completely removes all statistics for the specified character, for the current game
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ResetCharacterStatistics
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResetCharacterStatisticsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResetCharacterStatisticsResult
function ResetCharacterStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetCharacterStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ResetCharacterStatistics = ResetCharacterStatistics

-- Adds a given tag to a player profile. The tag's namespace is automatically generated based on the source of the tag.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/AddPlayerTag
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddPlayerTagRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddPlayerTagResult
function AddPlayerTag(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddPlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.AddPlayerTag = AddPlayerTag

-- Retrieves an array of player segment definitions. Results from this can be used in subsequent API calls such as GetPlayersInSegment which requires a Segment ID. While segment names can change the ID for that segment will not change.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetAllSegments
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetAllSegmentsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetAllSegmentsResult
function GetAllSegments(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetAllSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetAllSegments = GetAllSegments

-- List all segments that a player currently belongs to at this moment in time.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPlayerSegments
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayersSegmentsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerSegmentsResult
function GetPlayerSegments(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPlayerSegments = GetPlayerSegments

-- Allows for paging through all players in a given segment. This API creates a snapshot of all player profiles that match the segment definition at the time of its creation and lives through the Total Seconds to Live, refreshing its life span on each subsequent use of the Continuation Token. Profiles that change during the course of paging will not be reflected in the results. AB Test segments are currently not supported by this operation.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPlayersInSegment
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayersInSegmentRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayersInSegmentResult
function GetPlayersInSegment(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayersInSegment", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPlayersInSegment = GetPlayersInSegment

-- Get all tags with a given Namespace (optional) from a player profile.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPlayerTags
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerTagsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerTagsResult
function GetPlayerTags(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerTags", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPlayerTags = GetPlayerTags

-- Remove a given tag from a player profile. The tag's namespace is automatically generated based on the source of the tag.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RemovePlayerTag
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RemovePlayerTagRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RemovePlayerTagResult
function RemovePlayerTag(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemovePlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RemovePlayerTag = RemovePlayerTag

return PlayFabAdminApi
