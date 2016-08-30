local json = require("json")
local IPlayFabHttps = require("IPlayFabHttps")
local PlayFabSettings = require("PlayFabSettings")

local PlayFabClientApi = {
    settings = PlayFabSettings.settings
}

function IsClientLoggedIn()
    return (not (PlayFabSettings.internalSettings.sessionTicket == nil))
end

function GetPhotonAuthenticationToken(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPhotonAuthenticationToken", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPhotonAuthenticationToken = GetPhotonAuthenticationToken

function LoginWithAndroidDeviceID(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithAndroidDeviceID", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.LoginWithAndroidDeviceID = LoginWithAndroidDeviceID

function LoginWithCustomID(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithCustomID", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.LoginWithCustomID = LoginWithCustomID

function LoginWithEmailAddress(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithEmailAddress", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.LoginWithEmailAddress = LoginWithEmailAddress

function LoginWithFacebook(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithFacebook", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.LoginWithFacebook = LoginWithFacebook

function LoginWithGameCenter(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithGameCenter", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.LoginWithGameCenter = LoginWithGameCenter

function LoginWithGoogleAccount(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithGoogleAccount", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.LoginWithGoogleAccount = LoginWithGoogleAccount

function LoginWithIOSDeviceID(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithIOSDeviceID", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.LoginWithIOSDeviceID = LoginWithIOSDeviceID

function LoginWithKongregate(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithKongregate", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.LoginWithKongregate = LoginWithKongregate

function LoginWithPlayFab(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithPlayFab", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.LoginWithPlayFab = LoginWithPlayFab

function LoginWithSteam(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithSteam", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.LoginWithSteam = LoginWithSteam

function LoginWithTwitch(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithTwitch", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.LoginWithTwitch = LoginWithTwitch

function RegisterPlayFabUser(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not(onSuccess == nil)) then
            externalOnSuccess(response)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/RegisterPlayFabUser", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.RegisterPlayFabUser = RegisterPlayFabUser

function AddGenericID(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AddGenericID", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.AddGenericID = AddGenericID

function AddUsernamePassword(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AddUsernamePassword", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.AddUsernamePassword = AddUsernamePassword

function GetAccountInfo(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetAccountInfo", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetAccountInfo = GetAccountInfo

function GetPlayerCombinedInfo(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerCombinedInfo", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayerCombinedInfo = GetPlayerCombinedInfo

function GetPlayFabIDsFromFacebookIDs(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromFacebookIDs", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayFabIDsFromFacebookIDs = GetPlayFabIDsFromFacebookIDs

function GetPlayFabIDsFromGameCenterIDs(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromGameCenterIDs", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayFabIDsFromGameCenterIDs = GetPlayFabIDsFromGameCenterIDs

function GetPlayFabIDsFromGenericIDs(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromGenericIDs", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayFabIDsFromGenericIDs = GetPlayFabIDsFromGenericIDs

function GetPlayFabIDsFromGoogleIDs(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromGoogleIDs", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayFabIDsFromGoogleIDs = GetPlayFabIDsFromGoogleIDs

function GetPlayFabIDsFromKongregateIDs(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromKongregateIDs", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayFabIDsFromKongregateIDs = GetPlayFabIDsFromKongregateIDs

function GetPlayFabIDsFromSteamIDs(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromSteamIDs", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayFabIDsFromSteamIDs = GetPlayFabIDsFromSteamIDs

function GetPlayFabIDsFromTwitchIDs(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromTwitchIDs", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayFabIDsFromTwitchIDs = GetPlayFabIDsFromTwitchIDs

function GetUserCombinedInfo(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserCombinedInfo", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetUserCombinedInfo = GetUserCombinedInfo

function LinkAndroidDeviceID(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkAndroidDeviceID", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.LinkAndroidDeviceID = LinkAndroidDeviceID

function LinkCustomID(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkCustomID", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.LinkCustomID = LinkCustomID

function LinkFacebookAccount(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkFacebookAccount", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.LinkFacebookAccount = LinkFacebookAccount

function LinkGameCenterAccount(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkGameCenterAccount", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.LinkGameCenterAccount = LinkGameCenterAccount

function LinkGoogleAccount(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkGoogleAccount", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.LinkGoogleAccount = LinkGoogleAccount

function LinkIOSDeviceID(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkIOSDeviceID", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.LinkIOSDeviceID = LinkIOSDeviceID

function LinkKongregate(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkKongregate", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.LinkKongregate = LinkKongregate

function LinkSteamAccount(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkSteamAccount", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.LinkSteamAccount = LinkSteamAccount

function LinkTwitch(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkTwitch", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.LinkTwitch = LinkTwitch

function RemoveGenericID(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RemoveGenericID", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.RemoveGenericID = RemoveGenericID

function ReportPlayer(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ReportPlayer", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.ReportPlayer = ReportPlayer

function SendAccountRecoveryEmail(request, onSuccess, onError)
    IPlayFabHttps.MakePlayFabApiCall("/Client/SendAccountRecoveryEmail", request, nil, nil, onSuccess, onError)
end
PlayFabClientApi.SendAccountRecoveryEmail = SendAccountRecoveryEmail

function UnlinkAndroidDeviceID(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkAndroidDeviceID", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UnlinkAndroidDeviceID = UnlinkAndroidDeviceID

function UnlinkCustomID(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkCustomID", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UnlinkCustomID = UnlinkCustomID

function UnlinkFacebookAccount(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkFacebookAccount", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UnlinkFacebookAccount = UnlinkFacebookAccount

function UnlinkGameCenterAccount(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkGameCenterAccount", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UnlinkGameCenterAccount = UnlinkGameCenterAccount

function UnlinkGoogleAccount(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkGoogleAccount", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UnlinkGoogleAccount = UnlinkGoogleAccount

function UnlinkIOSDeviceID(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkIOSDeviceID", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UnlinkIOSDeviceID = UnlinkIOSDeviceID

function UnlinkKongregate(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkKongregate", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UnlinkKongregate = UnlinkKongregate

function UnlinkSteamAccount(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkSteamAccount", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UnlinkSteamAccount = UnlinkSteamAccount

function UnlinkTwitch(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkTwitch", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UnlinkTwitch = UnlinkTwitch

function UpdateUserTitleDisplayName(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateUserTitleDisplayName", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UpdateUserTitleDisplayName = UpdateUserTitleDisplayName

function GetFriendLeaderboard(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetFriendLeaderboard", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetFriendLeaderboard = GetFriendLeaderboard

function GetFriendLeaderboardAroundCurrentUser(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetFriendLeaderboardAroundCurrentUser", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetFriendLeaderboardAroundCurrentUser = GetFriendLeaderboardAroundCurrentUser

function GetFriendLeaderboardAroundPlayer(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetFriendLeaderboardAroundPlayer", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetFriendLeaderboardAroundPlayer = GetFriendLeaderboardAroundPlayer

function GetLeaderboard(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetLeaderboard", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetLeaderboard = GetLeaderboard

function GetLeaderboardAroundCurrentUser(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetLeaderboardAroundCurrentUser", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetLeaderboardAroundCurrentUser = GetLeaderboardAroundCurrentUser

function GetLeaderboardAroundPlayer(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetLeaderboardAroundPlayer", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetLeaderboardAroundPlayer = GetLeaderboardAroundPlayer

function GetPlayerStatistics(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerStatistics", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayerStatistics = GetPlayerStatistics

function GetPlayerStatisticVersions(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerStatisticVersions", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayerStatisticVersions = GetPlayerStatisticVersions

function GetUserData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetUserData = GetUserData

function GetUserPublisherData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserPublisherData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetUserPublisherData = GetUserPublisherData

function GetUserPublisherReadOnlyData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserPublisherReadOnlyData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetUserPublisherReadOnlyData = GetUserPublisherReadOnlyData

function GetUserReadOnlyData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserReadOnlyData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetUserReadOnlyData = GetUserReadOnlyData

function GetUserStatistics(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserStatistics", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetUserStatistics = GetUserStatistics

function UpdatePlayerStatistics(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdatePlayerStatistics", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UpdatePlayerStatistics = UpdatePlayerStatistics

function UpdateUserData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateUserData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UpdateUserData = UpdateUserData

function UpdateUserPublisherData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateUserPublisherData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UpdateUserPublisherData = UpdateUserPublisherData

function UpdateUserStatistics(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateUserStatistics", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UpdateUserStatistics = UpdateUserStatistics

function GetCatalogItems(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCatalogItems", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetCatalogItems = GetCatalogItems

function GetPublisherData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPublisherData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPublisherData = GetPublisherData

function GetStoreItems(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetStoreItems", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetStoreItems = GetStoreItems

function GetTitleData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetTitleData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetTitleData = GetTitleData

function GetTitleNews(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetTitleNews", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetTitleNews = GetTitleNews

function AddUserVirtualCurrency(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AddUserVirtualCurrency", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.AddUserVirtualCurrency = AddUserVirtualCurrency

function ConfirmPurchase(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ConfirmPurchase", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.ConfirmPurchase = ConfirmPurchase

function ConsumeItem(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ConsumeItem", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.ConsumeItem = ConsumeItem

function GetCharacterInventory(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCharacterInventory", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetCharacterInventory = GetCharacterInventory

function GetPurchase(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPurchase", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPurchase = GetPurchase

function GetUserInventory(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserInventory", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetUserInventory = GetUserInventory

function PayForPurchase(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/PayForPurchase", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.PayForPurchase = PayForPurchase

function PurchaseItem(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/PurchaseItem", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.PurchaseItem = PurchaseItem

function RedeemCoupon(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RedeemCoupon", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.RedeemCoupon = RedeemCoupon

function StartPurchase(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/StartPurchase", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.StartPurchase = StartPurchase

function SubtractUserVirtualCurrency(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/SubtractUserVirtualCurrency", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.SubtractUserVirtualCurrency = SubtractUserVirtualCurrency

function UnlockContainerInstance(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlockContainerInstance", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UnlockContainerInstance = UnlockContainerInstance

function UnlockContainerItem(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlockContainerItem", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UnlockContainerItem = UnlockContainerItem

function AddFriend(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AddFriend", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.AddFriend = AddFriend

function GetFriendsList(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetFriendsList", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetFriendsList = GetFriendsList

function RemoveFriend(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RemoveFriend", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.RemoveFriend = RemoveFriend

function SetFriendTags(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/SetFriendTags", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.SetFriendTags = SetFriendTags

function RegisterForIOSPushNotification(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RegisterForIOSPushNotification", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.RegisterForIOSPushNotification = RegisterForIOSPushNotification

function RestoreIOSPurchases(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RestoreIOSPurchases", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.RestoreIOSPurchases = RestoreIOSPurchases

function ValidateIOSReceipt(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ValidateIOSReceipt", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.ValidateIOSReceipt = ValidateIOSReceipt

function GetCurrentGames(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCurrentGames", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetCurrentGames = GetCurrentGames

function GetGameServerRegions(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetGameServerRegions", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetGameServerRegions = GetGameServerRegions

function Matchmake(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/Matchmake", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.Matchmake = Matchmake

function StartGame(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/StartGame", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.StartGame = StartGame

function AndroidDevicePushNotificationRegistration(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AndroidDevicePushNotificationRegistration", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.AndroidDevicePushNotificationRegistration = AndroidDevicePushNotificationRegistration

function ValidateGooglePlayPurchase(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ValidateGooglePlayPurchase", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.ValidateGooglePlayPurchase = ValidateGooglePlayPurchase

function LogEvent(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LogEvent", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.LogEvent = LogEvent

function WriteCharacterEvent(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/WriteCharacterEvent", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.WriteCharacterEvent = WriteCharacterEvent

function WritePlayerEvent(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/WritePlayerEvent", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.WritePlayerEvent = WritePlayerEvent

function WriteTitleEvent(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/WriteTitleEvent", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.WriteTitleEvent = WriteTitleEvent

function AddSharedGroupMembers(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AddSharedGroupMembers", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.AddSharedGroupMembers = AddSharedGroupMembers

function CreateSharedGroup(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/CreateSharedGroup", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.CreateSharedGroup = CreateSharedGroup

function GetSharedGroupData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetSharedGroupData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetSharedGroupData = GetSharedGroupData

function RemoveSharedGroupMembers(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RemoveSharedGroupMembers", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.RemoveSharedGroupMembers = RemoveSharedGroupMembers

function UpdateSharedGroupData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateSharedGroupData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UpdateSharedGroupData = UpdateSharedGroupData

function ExecuteCloudScript(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ExecuteCloudScript", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.ExecuteCloudScript = ExecuteCloudScript

function GetCloudScriptUrl(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCloudScriptUrl", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetCloudScriptUrl = GetCloudScriptUrl

function RunCloudScript(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RunCloudScript", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.RunCloudScript = RunCloudScript

function GetContentDownloadUrl(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetContentDownloadUrl", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetContentDownloadUrl = GetContentDownloadUrl

function GetAllUsersCharacters(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetAllUsersCharacters", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetAllUsersCharacters = GetAllUsersCharacters

function GetCharacterLeaderboard(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCharacterLeaderboard", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetCharacterLeaderboard = GetCharacterLeaderboard

function GetCharacterStatistics(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCharacterStatistics", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetCharacterStatistics = GetCharacterStatistics

function GetLeaderboardAroundCharacter(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetLeaderboardAroundCharacter", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetLeaderboardAroundCharacter = GetLeaderboardAroundCharacter

function GetLeaderboardForUserCharacters(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetLeaderboardForUserCharacters", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetLeaderboardForUserCharacters = GetLeaderboardForUserCharacters

function GrantCharacterToUser(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GrantCharacterToUser", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GrantCharacterToUser = GrantCharacterToUser

function UpdateCharacterStatistics(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateCharacterStatistics", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UpdateCharacterStatistics = UpdateCharacterStatistics

function GetCharacterData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCharacterData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetCharacterData = GetCharacterData

function GetCharacterReadOnlyData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCharacterReadOnlyData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetCharacterReadOnlyData = GetCharacterReadOnlyData

function UpdateCharacterData(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateCharacterData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.UpdateCharacterData = UpdateCharacterData

function ValidateAmazonIAPReceipt(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ValidateAmazonIAPReceipt", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.ValidateAmazonIAPReceipt = ValidateAmazonIAPReceipt

function AcceptTrade(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AcceptTrade", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.AcceptTrade = AcceptTrade

function CancelTrade(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/CancelTrade", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.CancelTrade = CancelTrade

function GetPlayerTrades(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerTrades", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayerTrades = GetPlayerTrades

function GetTradeStatus(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetTradeStatus", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetTradeStatus = GetTradeStatus

function OpenTrade(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/OpenTrade", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.OpenTrade = OpenTrade

function AttributeInstall(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AttributeInstall", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.AttributeInstall = AttributeInstall

function GetPlayerSegments(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerSegments", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayerSegments = GetPlayerSegments

function GetPlayerTags(request, onSuccess, onError)
    if (not IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerTags", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetPlayerTags = GetPlayerTags

return PlayFabClientApi
