local json = require("json")
local IPlayFabHttps = require("IPlayFabHttps")
local PlayFabSettings = require("PlayFabSettings")

local PlayFabServerApi = {
    settings = PlayFabSettings.settings
}

function AuthenticateSessionTicket(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AuthenticateSessionTicket", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AuthenticateSessionTicket = AuthenticateSessionTicket

function BanUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/BanUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.BanUsers = BanUsers

function GetPlayFabIDsFromFacebookIDs(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayFabIDsFromFacebookIDs", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayFabIDsFromFacebookIDs = GetPlayFabIDsFromFacebookIDs

function GetPlayFabIDsFromSteamIDs(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayFabIDsFromSteamIDs", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayFabIDsFromSteamIDs = GetPlayFabIDsFromSteamIDs

function GetUserAccountInfo(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserAccountInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserAccountInfo = GetUserAccountInfo

function GetUserBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserBans = GetUserBans

function RevokeAllBansForUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RevokeAllBansForUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RevokeAllBansForUser = RevokeAllBansForUser

function RevokeBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RevokeBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RevokeBans = RevokeBans

function SendPushNotification(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SendPushNotification", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SendPushNotification = SendPushNotification

function UpdateBans(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateBans = UpdateBans

function DeleteUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/DeleteUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.DeleteUsers = DeleteUsers

function GetLeaderboard(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboard", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetLeaderboard = GetLeaderboard

function GetLeaderboardAroundUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboardAroundUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetLeaderboardAroundUser = GetLeaderboardAroundUser

function GetPlayerCombinedInfo(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerCombinedInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayerCombinedInfo = GetPlayerCombinedInfo

function GetPlayerStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayerStatistics = GetPlayerStatistics

function GetPlayerStatisticVersions(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerStatisticVersions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayerStatisticVersions = GetPlayerStatisticVersions

function GetUserData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserData = GetUserData

function GetUserInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserInternalData = GetUserInternalData

function GetUserPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserPublisherData = GetUserPublisherData

function GetUserPublisherInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserPublisherInternalData = GetUserPublisherInternalData

function GetUserPublisherReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserPublisherReadOnlyData = GetUserPublisherReadOnlyData

function GetUserReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserReadOnlyData = GetUserReadOnlyData

function GetUserStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserStatistics = GetUserStatistics

function UpdatePlayerStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdatePlayerStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdatePlayerStatistics = UpdatePlayerStatistics

function UpdateUserData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserData = UpdateUserData

function UpdateUserInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserInternalData = UpdateUserInternalData

function UpdateUserPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserPublisherData = UpdateUserPublisherData

function UpdateUserPublisherInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserPublisherInternalData = UpdateUserPublisherInternalData

function UpdateUserPublisherReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserPublisherReadOnlyData = UpdateUserPublisherReadOnlyData

function UpdateUserReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserReadOnlyData = UpdateUserReadOnlyData

function UpdateUserStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserStatistics = UpdateUserStatistics

function GetCatalogItems(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCatalogItems = GetCatalogItems

function GetPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPublisherData = GetPublisherData

function GetTitleData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetTitleData = GetTitleData

function GetTitleInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetTitleInternalData = GetTitleInternalData

function GetTitleNews(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetTitleNews", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetTitleNews = GetTitleNews

function SetPublisherData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SetPublisherData = SetPublisherData

function SetTitleData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SetTitleData = SetTitleData

function SetTitleInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SetTitleInternalData = SetTitleInternalData

function AddCharacterVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddCharacterVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AddCharacterVirtualCurrency = AddCharacterVirtualCurrency

function AddUserVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AddUserVirtualCurrency = AddUserVirtualCurrency

function ConsumeItem(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ConsumeItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.ConsumeItem = ConsumeItem

function EvaluateRandomResultTable(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/EvaluateRandomResultTable", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.EvaluateRandomResultTable = EvaluateRandomResultTable

function GetCharacterInventory(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterInventory", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterInventory = GetCharacterInventory

function GetRandomResultTables(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetRandomResultTables", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetRandomResultTables = GetRandomResultTables

function GetUserInventory(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserInventory", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetUserInventory = GetUserInventory

function GrantItemsToCharacter(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantItemsToCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GrantItemsToCharacter = GrantItemsToCharacter

function GrantItemsToUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantItemsToUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GrantItemsToUser = GrantItemsToUser

function GrantItemsToUsers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantItemsToUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GrantItemsToUsers = GrantItemsToUsers

function ModifyItemUses(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ModifyItemUses", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.ModifyItemUses = ModifyItemUses

function MoveItemToCharacterFromCharacter(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/MoveItemToCharacterFromCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.MoveItemToCharacterFromCharacter = MoveItemToCharacterFromCharacter

function MoveItemToCharacterFromUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/MoveItemToCharacterFromUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.MoveItemToCharacterFromUser = MoveItemToCharacterFromUser

function MoveItemToUserFromCharacter(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/MoveItemToUserFromCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.MoveItemToUserFromCharacter = MoveItemToUserFromCharacter

function RedeemCoupon(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RedeemCoupon", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RedeemCoupon = RedeemCoupon

function ReportPlayer(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ReportPlayer", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.ReportPlayer = ReportPlayer

function RevokeInventoryItem(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RevokeInventoryItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RevokeInventoryItem = RevokeInventoryItem

function SubtractCharacterVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SubtractCharacterVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SubtractCharacterVirtualCurrency = SubtractCharacterVirtualCurrency

function SubtractUserVirtualCurrency(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SubtractUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SubtractUserVirtualCurrency = SubtractUserVirtualCurrency

function UnlockContainerInstance(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UnlockContainerInstance", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UnlockContainerInstance = UnlockContainerInstance

function UnlockContainerItem(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UnlockContainerItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UnlockContainerItem = UnlockContainerItem

function UpdateUserInventoryItemCustomData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserInventoryItemCustomData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateUserInventoryItemCustomData = UpdateUserInventoryItemCustomData

function NotifyMatchmakerPlayerLeft(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/NotifyMatchmakerPlayerLeft", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.NotifyMatchmakerPlayerLeft = NotifyMatchmakerPlayerLeft

function RedeemMatchmakerTicket(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RedeemMatchmakerTicket", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RedeemMatchmakerTicket = RedeemMatchmakerTicket

function SetGameServerInstanceData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetGameServerInstanceData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SetGameServerInstanceData = SetGameServerInstanceData

function SetGameServerInstanceState(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetGameServerInstanceState", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.SetGameServerInstanceState = SetGameServerInstanceState

function AwardSteamAchievement(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AwardSteamAchievement", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AwardSteamAchievement = AwardSteamAchievement

function LogEvent(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/LogEvent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.LogEvent = LogEvent

function WriteCharacterEvent(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/WriteCharacterEvent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.WriteCharacterEvent = WriteCharacterEvent

function WritePlayerEvent(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/WritePlayerEvent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.WritePlayerEvent = WritePlayerEvent

function WriteTitleEvent(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/WriteTitleEvent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.WriteTitleEvent = WriteTitleEvent

function AddSharedGroupMembers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddSharedGroupMembers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AddSharedGroupMembers = AddSharedGroupMembers

function CreateSharedGroup(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/CreateSharedGroup", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.CreateSharedGroup = CreateSharedGroup

function DeleteSharedGroup(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/DeleteSharedGroup", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.DeleteSharedGroup = DeleteSharedGroup

function GetSharedGroupData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetSharedGroupData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetSharedGroupData = GetSharedGroupData

function RemoveSharedGroupMembers(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RemoveSharedGroupMembers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RemoveSharedGroupMembers = RemoveSharedGroupMembers

function UpdateSharedGroupData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateSharedGroupData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateSharedGroupData = UpdateSharedGroupData

function ExecuteCloudScript(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ExecuteCloudScript", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.ExecuteCloudScript = ExecuteCloudScript

function GetContentDownloadUrl(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetContentDownloadUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetContentDownloadUrl = GetContentDownloadUrl

function DeleteCharacterFromUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/DeleteCharacterFromUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.DeleteCharacterFromUser = DeleteCharacterFromUser

function GetAllUsersCharacters(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetAllUsersCharacters", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetAllUsersCharacters = GetAllUsersCharacters

function GetCharacterLeaderboard(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterLeaderboard", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterLeaderboard = GetCharacterLeaderboard

function GetCharacterStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterStatistics = GetCharacterStatistics

function GetLeaderboardAroundCharacter(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboardAroundCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetLeaderboardAroundCharacter = GetLeaderboardAroundCharacter

function GetLeaderboardForUserCharacters(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboardForUserCharacters", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetLeaderboardForUserCharacters = GetLeaderboardForUserCharacters

function GrantCharacterToUser(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantCharacterToUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GrantCharacterToUser = GrantCharacterToUser

function UpdateCharacterStatistics(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateCharacterStatistics = UpdateCharacterStatistics

function GetCharacterData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterData = GetCharacterData

function GetCharacterInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterInternalData = GetCharacterInternalData

function GetCharacterReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetCharacterReadOnlyData = GetCharacterReadOnlyData

function UpdateCharacterData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateCharacterData = UpdateCharacterData

function UpdateCharacterInternalData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateCharacterInternalData = UpdateCharacterInternalData

function UpdateCharacterReadOnlyData(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.UpdateCharacterReadOnlyData = UpdateCharacterReadOnlyData

function AddPlayerTag(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddPlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.AddPlayerTag = AddPlayerTag

function GetAllSegments(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetAllSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetAllSegments = GetAllSegments

function GetPlayerSegments(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayerSegments = GetPlayerSegments

function GetPlayersInSegment(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayersInSegment", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayersInSegment = GetPlayersInSegment

function GetPlayerTags(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerTags", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.GetPlayerTags = GetPlayerTags

function RemovePlayerTag(request, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == nil) then error("Must have PlayFabSettings.DeveloperSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RemovePlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end
PlayFabServerApi.RemovePlayerTag = RemovePlayerTag

return PlayFabServerApi
