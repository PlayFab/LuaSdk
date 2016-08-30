local json = require("json")
local IPlayFabHttps = require("IPlayFabHttps")
local PlayFabSettings = require("PlayFabSettings")

local PlayFabAdminApi = {
    settings = PlayFabSettings.settings
}

function BanUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/BanUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.BanUsers = BanUsers

function GetUserAccountInfo(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserAccountInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserAccountInfo = GetUserAccountInfo

function GetUserBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserBans = GetUserBans

function ResetUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ResetUsers = ResetUsers

function RevokeAllBansForUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeAllBansForUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RevokeAllBansForUser = RevokeAllBansForUser

function RevokeBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RevokeBans = RevokeBans

function SendAccountRecoveryEmail(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SendAccountRecoveryEmail", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SendAccountRecoveryEmail = SendAccountRecoveryEmail

function UpdateBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateBans = UpdateBans

function UpdateUserTitleDisplayName(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserTitleDisplayName", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserTitleDisplayName = UpdateUserTitleDisplayName

function CreatePlayerStatisticDefinition(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreatePlayerStatisticDefinition", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.CreatePlayerStatisticDefinition = CreatePlayerStatisticDefinition

function DeleteUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.DeleteUsers = DeleteUsers

function GetDataReport(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetDataReport", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetDataReport = GetDataReport

function GetPlayerStatisticDefinitions(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerStatisticDefinitions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPlayerStatisticDefinitions = GetPlayerStatisticDefinitions

function GetPlayerStatisticVersions(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerStatisticVersions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPlayerStatisticVersions = GetPlayerStatisticVersions

function GetUserData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserData = GetUserData

function GetUserInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserInternalData = GetUserInternalData

function GetUserPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserPublisherData = GetUserPublisherData

function GetUserPublisherInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserPublisherInternalData = GetUserPublisherInternalData

function GetUserPublisherReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserPublisherReadOnlyData = GetUserPublisherReadOnlyData

function GetUserReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserReadOnlyData = GetUserReadOnlyData

function IncrementPlayerStatisticVersion(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/IncrementPlayerStatisticVersion", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.IncrementPlayerStatisticVersion = IncrementPlayerStatisticVersion

function ResetUserStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetUserStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ResetUserStatistics = ResetUserStatistics

function UpdatePlayerStatisticDefinition(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdatePlayerStatisticDefinition", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdatePlayerStatisticDefinition = UpdatePlayerStatisticDefinition

function UpdateUserData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserData = UpdateUserData

function UpdateUserInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserInternalData = UpdateUserInternalData

function UpdateUserPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserPublisherData = UpdateUserPublisherData

function UpdateUserPublisherInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserPublisherInternalData = UpdateUserPublisherInternalData

function UpdateUserPublisherReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserPublisherReadOnlyData = UpdateUserPublisherReadOnlyData

function UpdateUserReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateUserReadOnlyData = UpdateUserReadOnlyData

function AddNews(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddNews", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.AddNews = AddNews

function AddVirtualCurrencyTypes(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.AddVirtualCurrencyTypes = AddVirtualCurrencyTypes

function DeleteStore(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteStore", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.DeleteStore = DeleteStore

function GetCatalogItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetCatalogItems = GetCatalogItems

function GetPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPublisherData = GetPublisherData

function GetRandomResultTables(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetRandomResultTables", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetRandomResultTables = GetRandomResultTables

function GetStoreItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetStoreItems = GetStoreItems

function GetTitleData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetTitleData = GetTitleData

function GetTitleInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetTitleInternalData = GetTitleInternalData

function ListVirtualCurrencyTypes(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ListVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ListVirtualCurrencyTypes = ListVirtualCurrencyTypes

function RemoveVirtualCurrencyTypes(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemoveVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RemoveVirtualCurrencyTypes = RemoveVirtualCurrencyTypes

function SetCatalogItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetCatalogItems = SetCatalogItems

function SetStoreItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetStoreItems = SetStoreItems

function SetTitleData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetTitleData = SetTitleData

function SetTitleInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetTitleInternalData = SetTitleInternalData

function SetupPushNotification(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetupPushNotification", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetupPushNotification = SetupPushNotification

function UpdateCatalogItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateCatalogItems = UpdateCatalogItems

function UpdateRandomResultTables(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateRandomResultTables", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateRandomResultTables = UpdateRandomResultTables

function UpdateStoreItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateStoreItems = UpdateStoreItems

function AddUserVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.AddUserVirtualCurrency = AddUserVirtualCurrency

function GetUserInventory(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserInventory", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetUserInventory = GetUserInventory

function GrantItemsToUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GrantItemsToUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GrantItemsToUsers = GrantItemsToUsers

function RevokeInventoryItem(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeInventoryItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RevokeInventoryItem = RevokeInventoryItem

function SubtractUserVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SubtractUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SubtractUserVirtualCurrency = SubtractUserVirtualCurrency

function GetMatchmakerGameInfo(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetMatchmakerGameInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetMatchmakerGameInfo = GetMatchmakerGameInfo

function GetMatchmakerGameModes(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetMatchmakerGameModes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetMatchmakerGameModes = GetMatchmakerGameModes

function ModifyMatchmakerGameModes(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ModifyMatchmakerGameModes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ModifyMatchmakerGameModes = ModifyMatchmakerGameModes

function AddServerBuild(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.AddServerBuild = AddServerBuild

function GetServerBuildInfo(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetServerBuildInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetServerBuildInfo = GetServerBuildInfo

function GetServerBuildUploadUrl(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetServerBuildUploadUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetServerBuildUploadUrl = GetServerBuildUploadUrl

function ListServerBuilds(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ListServerBuilds", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ListServerBuilds = ListServerBuilds

function ModifyServerBuild(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ModifyServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ModifyServerBuild = ModifyServerBuild

function RemoveServerBuild(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemoveServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RemoveServerBuild = RemoveServerBuild

function SetPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetPublisherData = SetPublisherData

function GetCloudScriptRevision(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCloudScriptRevision", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetCloudScriptRevision = GetCloudScriptRevision

function GetCloudScriptVersions(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCloudScriptVersions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetCloudScriptVersions = GetCloudScriptVersions

function SetPublishedRevision(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetPublishedRevision", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.SetPublishedRevision = SetPublishedRevision

function UpdateCloudScript(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateCloudScript", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.UpdateCloudScript = UpdateCloudScript

function DeleteContent(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteContent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.DeleteContent = DeleteContent

function GetContentList(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetContentList", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetContentList = GetContentList

function GetContentUploadUrl(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetContentUploadUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetContentUploadUrl = GetContentUploadUrl

function ResetCharacterStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetCharacterStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.ResetCharacterStatistics = ResetCharacterStatistics

function AddPlayerTag(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddPlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.AddPlayerTag = AddPlayerTag

function GetAllSegments(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetAllSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetAllSegments = GetAllSegments

function GetPlayerSegments(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPlayerSegments = GetPlayerSegments

function GetPlayersInSegment(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayersInSegment", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPlayersInSegment = GetPlayersInSegment

function GetPlayerTags(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerTags", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.GetPlayerTags = GetPlayerTags

function RemovePlayerTag(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemovePlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabAdminApi.RemovePlayerTag = RemovePlayerTag

return PlayFabAdminApi
