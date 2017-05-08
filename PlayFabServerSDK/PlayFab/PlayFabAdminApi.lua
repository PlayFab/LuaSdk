-- PlayFab Admin API
-- This is the main file you should require in your game
-- All api calls are documented here: https://api.playfab.com/Documentation/Admin
-- Example code:
-- local PlayFabAdminApi = require("PlayFab.PlayFabAdminApi")
-- PlayFabAdminApi.<AdminApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabAdminApi = {
    settings = PlayFabSettings.settings
}

-- Gets the requested policy.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPolicy
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPolicyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPolicyResponse
function PlayFabAdminApi.GetPolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPolicy", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Changes a policy for a title
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdatePolicy
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdatePolicyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdatePolicyResponse
function PlayFabAdminApi.UpdatePolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdatePolicy", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Bans users by PlayFab ID with optional IP address, or MAC address for the provided game.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/BanUsers
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BanUsersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BanUsersResult
function PlayFabAdminApi.BanUsers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/BanUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the relevant details for a specified user, based upon a match against a supplied unique identifier
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserAccountInfo
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.LookupUserAccountInfoRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.LookupUserAccountInfoResult
function PlayFabAdminApi.GetUserAccountInfo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserAccountInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Gets all bans for a user.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserBans
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserBansRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserBansResult
function PlayFabAdminApi.GetUserBans(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Resets all title-specific information about a particular account, including user data, virtual currency balances, inventory, purchase history, and statistics
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ResetUsers
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResetUsersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BlankResult
function PlayFabAdminApi.ResetUsers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Revoke all active bans for a user.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RevokeAllBansForUser
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeAllBansForUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeAllBansForUserResult
function PlayFabAdminApi.RevokeAllBansForUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeAllBansForUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Revoke all active bans specified with BanId.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RevokeBans
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeBansRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeBansResult
function PlayFabAdminApi.RevokeBans(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Forces an email to be sent to the registered email address for the specified account, with a link allowing the user to change the password
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SendAccountRecoveryEmail
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SendAccountRecoveryEmailRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SendAccountRecoveryEmailResult
function PlayFabAdminApi.SendAccountRecoveryEmail(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SendAccountRecoveryEmail", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates information of a list of existing bans specified with Ban Ids.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateBans
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateBansRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateBansResult
function PlayFabAdminApi.UpdateBans(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title specific display name for a user
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserTitleDisplayName
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserTitleDisplayNameRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserTitleDisplayNameResult
function PlayFabAdminApi.UpdateUserTitleDisplayName(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserTitleDisplayName", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds a new player statistic configuration to the title, optionally allowing the developer to specify a reset interval and an aggregation method.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/CreatePlayerStatisticDefinition
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.CreatePlayerStatisticDefinitionRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.CreatePlayerStatisticDefinitionResult
function PlayFabAdminApi.CreatePlayerStatisticDefinition(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreatePlayerStatisticDefinition", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Deletes the users for the provided game. Deletes custom data, all account linkages, and statistics. This method does not remove the player's event history, login history, inventory items, nor virtual currencies.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/DeleteUsers
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.DeleteUsersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.DeleteUsersResult
function PlayFabAdminApi.DeleteUsers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves a download URL for the requested report
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetDataReport
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetDataReportRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetDataReportResult
function PlayFabAdminApi.GetDataReport(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetDataReport", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the configuration information for all player statistics defined in the title, regardless of whether they have a reset interval.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPlayerStatisticDefinitions
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerStatisticDefinitionsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerStatisticDefinitionsResult
function PlayFabAdminApi.GetPlayerStatisticDefinitions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerStatisticDefinitions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the information on the available versions of the specified statistic.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPlayerStatisticVersions
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerStatisticVersionsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerStatisticVersionsResult
function PlayFabAdminApi.GetPlayerStatisticVersions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerStatisticVersions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function PlayFabAdminApi.GetUserData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function PlayFabAdminApi.GetUserInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function PlayFabAdminApi.GetUserPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the publisher-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserPublisherInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function PlayFabAdminApi.GetUserPublisherInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the publisher-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserPublisherReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function PlayFabAdminApi.GetUserPublisherReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserDataResult
function PlayFabAdminApi.GetUserReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Resets the indicated statistic, removing all player entries for it and backing up the old values.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/IncrementPlayerStatisticVersion
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.IncrementPlayerStatisticVersionRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.IncrementPlayerStatisticVersionResult
function PlayFabAdminApi.IncrementPlayerStatisticVersion(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/IncrementPlayerStatisticVersion", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Attempts to process an order refund through the original real money payment provider.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RefundPurchase
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RefundPurchaseRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RefundPurchaseResponse
function PlayFabAdminApi.RefundPurchase(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RefundPurchase", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Completely removes all statistics for the specified user, for the current game
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ResetUserStatistics
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResetUserStatisticsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResetUserStatisticsResult
function PlayFabAdminApi.ResetUserStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetUserStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Attempts to resolve a dispute with the original order's payment provider.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ResolvePurchaseDispute
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResolvePurchaseDisputeRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResolvePurchaseDisputeResponse
function PlayFabAdminApi.ResolvePurchaseDispute(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResolvePurchaseDispute", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates a player statistic configuration for the title, optionally allowing the developer to specify a reset interval.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdatePlayerStatisticDefinition
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdatePlayerStatisticDefinitionRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdatePlayerStatisticDefinitionResult
function PlayFabAdminApi.UpdatePlayerStatisticDefinition(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdatePlayerStatisticDefinition", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function PlayFabAdminApi.UpdateUserData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserInternalDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function PlayFabAdminApi.UpdateUserInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function PlayFabAdminApi.UpdateUserPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the publisher-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserPublisherInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserInternalDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function PlayFabAdminApi.UpdateUserPublisherInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the publisher-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserPublisherReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function PlayFabAdminApi.UpdateUserPublisherReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateUserReadOnlyData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateUserDataResult
function PlayFabAdminApi.UpdateUserReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds a new news item to the title's news feed
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/AddNews
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddNewsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddNewsResult
function PlayFabAdminApi.AddNews(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddNews", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds one or more virtual currencies to the set defined for the title. Virtual Currencies have a maximum value of 2,147,483,647 when granted to a player. Any value over that will be discarded.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/AddVirtualCurrencyTypes
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddVirtualCurrencyTypesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BlankResult
function PlayFabAdminApi.AddVirtualCurrencyTypes(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Deletes an existing virtual item store
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/DeleteStore
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.DeleteStoreRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.DeleteStoreResult
function PlayFabAdminApi.DeleteStore(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteStore", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the specified version of the title's catalog of virtual goods, including all defined properties
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetCatalogItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCatalogItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCatalogItemsResult
function PlayFabAdminApi.GetCatalogItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the key-value store of custom publisher settings
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPublisherDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPublisherDataResult
function PlayFabAdminApi.GetPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the random drop table configuration for the title
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetRandomResultTables
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetRandomResultTablesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetRandomResultTablesResult
function PlayFabAdminApi.GetRandomResultTables(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetRandomResultTables", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the set of items defined for the specified store, including all prices defined
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetStoreItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetStoreItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetStoreItemsResult
function PlayFabAdminApi.GetStoreItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the key-value store of custom title settings which can be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetTitleData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTitleDataResult
function PlayFabAdminApi.GetTitleData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the key-value store of custom title settings which cannot be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetTitleInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTitleDataResult
function PlayFabAdminApi.GetTitleInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retuns the list of all defined virtual currencies for the title
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ListVirtualCurrencyTypes
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ListVirtualCurrencyTypesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ListVirtualCurrencyTypesResult
function PlayFabAdminApi.ListVirtualCurrencyTypes(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ListVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Removes one or more virtual currencies from the set defined for the title.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RemoveVirtualCurrencyTypes
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RemoveVirtualCurrencyTypesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BlankResult
function PlayFabAdminApi.RemoveVirtualCurrencyTypes(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemoveVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Creates the catalog configuration of all virtual goods for the specified catalog version
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetCatalogItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCatalogItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCatalogItemsResult
function PlayFabAdminApi.SetCatalogItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sets all the items in one virtual store
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetStoreItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateStoreItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateStoreItemsResult
function PlayFabAdminApi.SetStoreItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Creates and updates the key-value store of custom title settings which can be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetTitleData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetTitleDataResult
function PlayFabAdminApi.SetTitleData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the key-value store of custom title settings which cannot be read by the client
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetTitleInternalData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetTitleDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetTitleDataResult
function PlayFabAdminApi.SetTitleInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sets the Amazon Resource Name (ARN) for iOS and Android push notifications. Documentation on the exact restrictions can be found at: http://docs.aws.amazon.com/sns/latest/api/API_CreatePlatformApplication.html. Currently, Amazon device Messaging is not supported.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetupPushNotification
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetupPushNotificationRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetupPushNotificationResult
function PlayFabAdminApi.SetupPushNotification(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetupPushNotification", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the catalog configuration for virtual goods in the specified catalog version
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateCatalogItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCatalogItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCatalogItemsResult
function PlayFabAdminApi.UpdateCatalogItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the random drop table configuration for the title
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateRandomResultTables
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateRandomResultTablesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateRandomResultTablesResult
function PlayFabAdminApi.UpdateRandomResultTables(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateRandomResultTables", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates an existing virtual item store with new or modified items
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateStoreItems
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateStoreItemsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateStoreItemsResult
function PlayFabAdminApi.UpdateStoreItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Increments the specified virtual currency by the stated amount
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/AddUserVirtualCurrency
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddUserVirtualCurrencyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyUserVirtualCurrencyResult
function PlayFabAdminApi.AddUserVirtualCurrency(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the specified user's current inventory of virtual goods
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetUserInventory
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserInventoryRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetUserInventoryResult
function PlayFabAdminApi.GetUserInventory(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserInventory", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds the specified items to the specified user inventories
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GrantItemsToUsers
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GrantItemsToUsersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GrantItemsToUsersResult
function PlayFabAdminApi.GrantItemsToUsers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GrantItemsToUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Revokes access to an item in a user's inventory
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RevokeInventoryItem
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeInventoryItemRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RevokeInventoryResult
function PlayFabAdminApi.RevokeInventoryItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeInventoryItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Decrements the specified virtual currency by the stated amount
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SubtractUserVirtualCurrency
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SubtractUserVirtualCurrencyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyUserVirtualCurrencyResult
function PlayFabAdminApi.SubtractUserVirtualCurrency(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SubtractUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the details for a specific completed session, including links to standard out and standard error logs
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetMatchmakerGameInfo
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetMatchmakerGameInfoRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetMatchmakerGameInfoResult
function PlayFabAdminApi.GetMatchmakerGameInfo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetMatchmakerGameInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the details of defined game modes for the specified game server executable
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetMatchmakerGameModes
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetMatchmakerGameModesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetMatchmakerGameModesResult
function PlayFabAdminApi.GetMatchmakerGameModes(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetMatchmakerGameModes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the game server mode details for the specified game server executable
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ModifyMatchmakerGameModes
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyMatchmakerGameModesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyMatchmakerGameModesResult
function PlayFabAdminApi.ModifyMatchmakerGameModes(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ModifyMatchmakerGameModes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds the game server executable specified (previously uploaded - see GetServerBuildUploadUrl) to the set of those a client is permitted to request in a call to StartGame
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/AddServerBuild
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddServerBuildRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddServerBuildResult
function PlayFabAdminApi.AddServerBuild(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the build details for the specified game server executable
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetServerBuildInfo
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetServerBuildInfoRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetServerBuildInfoResult
function PlayFabAdminApi.GetServerBuildInfo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetServerBuildInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the pre-authorized URL for uploading a game server package containing a build (does not enable the build for use - see AddServerBuild)
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetServerBuildUploadUrl
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetServerBuildUploadURLRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetServerBuildUploadURLResult
function PlayFabAdminApi.GetServerBuildUploadUrl(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetServerBuildUploadUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the build details for all game server executables which are currently defined for the title
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ListServerBuilds
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ListBuildsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ListBuildsResult
function PlayFabAdminApi.ListServerBuilds(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ListServerBuilds", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the build details for the specified game server executable
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ModifyServerBuild
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyServerBuildRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ModifyServerBuildResult
function PlayFabAdminApi.ModifyServerBuild(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ModifyServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Removes the game server executable specified from the set of those a client is permitted to request in a call to StartGame
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RemoveServerBuild
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RemoveServerBuildRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RemoveServerBuildResult
function PlayFabAdminApi.RemoveServerBuild(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemoveServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the key-value store of custom publisher settings
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetPublisherData
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetPublisherDataRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetPublisherDataResult
function PlayFabAdminApi.SetPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Gets the contents and information of a specific Cloud Script revision.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetCloudScriptRevision
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCloudScriptRevisionRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCloudScriptRevisionResult
function PlayFabAdminApi.GetCloudScriptRevision(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCloudScriptRevision", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Lists all the current cloud script versions. For each version, information about the current published and latest revisions is also listed.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetCloudScriptVersions
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCloudScriptVersionsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCloudScriptVersionsResult
function PlayFabAdminApi.GetCloudScriptVersions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCloudScriptVersions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sets the currently published revision of a title Cloud Script
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/SetPublishedRevision
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetPublishedRevisionRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.SetPublishedRevisionResult
function PlayFabAdminApi.SetPublishedRevision(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetPublishedRevision", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Creates a new Cloud Script revision and uploads source code to it. Note that at this time, only one file should be submitted in the revision.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateCloudScript
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCloudScriptRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateCloudScriptResult
function PlayFabAdminApi.UpdateCloudScript(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateCloudScript", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Delete a content file from the title. When deleting a file that does not exist, it returns success.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/DeleteContent
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.DeleteContentRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.BlankResult
function PlayFabAdminApi.DeleteContent(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteContent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- List all contents of the title and get statistics such as size
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetContentList
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetContentListRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetContentListResult
function PlayFabAdminApi.GetContentList(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetContentList", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the pre-signed URL for uploading a content file. A subsequent HTTP PUT to the returned URL uploads the  content. Also, please be aware that the Content service is specifically PlayFab's CDN offering, for which standard CDN rates apply.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetContentUploadUrl
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetContentUploadUrlRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetContentUploadUrlResult
function PlayFabAdminApi.GetContentUploadUrl(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetContentUploadUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Completely removes all statistics for the specified character, for the current game
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/ResetCharacterStatistics
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResetCharacterStatisticsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.ResetCharacterStatisticsResult
function PlayFabAdminApi.ResetCharacterStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetCharacterStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds a given tag to a player profile. The tag's namespace is automatically generated based on the source of the tag.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/AddPlayerTag
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddPlayerTagRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AddPlayerTagResult
function PlayFabAdminApi.AddPlayerTag(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddPlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieve a list of all PlayStream actions groups.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetAllActionGroups
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetAllActionGroupsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetAllActionGroupsResult
function PlayFabAdminApi.GetAllActionGroups(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetAllActionGroups", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves an array of player segment definitions. Results from this can be used in subsequent API calls such as GetPlayersInSegment which requires a Segment ID. While segment names can change the ID for that segment will not change.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetAllSegments
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetAllSegmentsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetAllSegmentsResult
function PlayFabAdminApi.GetAllSegments(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetAllSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- List all segments that a player currently belongs to at this moment in time.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPlayerSegments
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayersSegmentsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerSegmentsResult
function PlayFabAdminApi.GetPlayerSegments(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Allows for paging through all players in a given segment. This API creates a snapshot of all player profiles that match the segment definition at the time of its creation and lives through the Total Seconds to Live, refreshing its life span on each subsequent use of the Continuation Token. Profiles that change during the course of paging will not be reflected in the results. AB Test segments are currently not supported by this operation.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPlayersInSegment
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayersInSegmentRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayersInSegmentResult
function PlayFabAdminApi.GetPlayersInSegment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayersInSegment", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Get all tags with a given Namespace (optional) from a player profile.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetPlayerTags
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerTagsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetPlayerTagsResult
function PlayFabAdminApi.GetPlayerTags(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerTags", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Remove a given tag from a player profile. The tag's namespace is automatically generated based on the source of the tag.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RemovePlayerTag
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RemovePlayerTagRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RemovePlayerTagResult
function PlayFabAdminApi.RemovePlayerTag(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemovePlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Abort an ongoing task instance.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/AbortTaskInstance
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.AbortTaskInstanceRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.EmptyResult
function PlayFabAdminApi.AbortTaskInstance(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AbortTaskInstance", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Create an ActionsOnPlayersInSegment task, which iterates through all players in a segment to execute action.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/CreateActionsOnPlayersInSegmentTask
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.CreateActionsOnPlayerSegmentTaskRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.CreateTaskResult
function PlayFabAdminApi.CreateActionsOnPlayersInSegmentTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreateActionsOnPlayersInSegmentTask", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Create a CloudScript task, which can run a CloudScript on a schedule.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/CreateCloudScriptTask
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.CreateCloudScriptTaskRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.CreateTaskResult
function PlayFabAdminApi.CreateCloudScriptTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreateCloudScriptTask", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Delete a task.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/DeleteTask
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.DeleteTaskRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.EmptyResult
function PlayFabAdminApi.DeleteTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteTask", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Get information about a ActionsOnPlayersInSegment task instance.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetActionsOnPlayersInSegmentTaskInstance
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTaskInstanceRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetActionsOnPlayersInSegmentTaskInstanceResult
function PlayFabAdminApi.GetActionsOnPlayersInSegmentTaskInstance(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetActionsOnPlayersInSegmentTaskInstance", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Get detail information about a CloudScript task instance.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetCloudScriptTaskInstance
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTaskInstanceRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetCloudScriptTaskInstanceResult
function PlayFabAdminApi.GetCloudScriptTaskInstance(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCloudScriptTaskInstance", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Query for task instances by task, status, or time range.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetTaskInstances
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTaskInstancesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTaskInstancesResult
function PlayFabAdminApi.GetTaskInstances(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTaskInstances", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Get definition information on a specified task or all tasks within a title.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/GetTasks
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTasksRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.GetTasksResult
function PlayFabAdminApi.GetTasks(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTasks", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Run a task immediately regardless of its schedule.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/RunTask
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RunTaskRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.RunTaskResult
function PlayFabAdminApi.RunTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RunTask", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Update an existing task.
-- API Method Documentation: https://api.playfab.com/Documentation/Admin/method/UpdateTask
-- Request Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.UpdateTaskRequest
-- Result Documentation: https://api.playfab.com/Documentation/Admin/datatype/PlayFab.Admin.Models/PlayFab.Admin.Models.EmptyResult
function PlayFabAdminApi.UpdateTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateTask", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

return PlayFabAdminApi
