-- PlayFab Client API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabClientApi = require("PlayFab.PlayFabClientApi")
-- PlayFabClientApi.<ClientApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabClientApi = {
    settings = PlayFabSettings.settings
}

function PlayFabClientApi.IsClientLoggedIn()
    return (not (PlayFabSettings._internalSettings.sessionTicket == nil))
end

-- Accepts an open trade (one that has not yet been accepted or cancelled), if the locally signed-in player is in the
-- allowed player list for the trade, or it is open to all players. If the call is successful, the offered and accepted
-- items will be swapped between the two players' inventories.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/accepttrade
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/accepttrade#accepttraderequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/accepttrade#accepttraderesponse
function PlayFabClientApi.AcceptTrade(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AcceptTrade", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Adds the PlayFab user, based upon a match against a supplied unique identifier, to the friend list of the local user. At
-- least one of FriendPlayFabId,FriendUsername,FriendEmail, or FriendTitleDisplayName should be initialized.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/addfriend
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/addfriend#addfriendrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/addfriend#addfriendresult
function PlayFabClientApi.AddFriend(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AddFriend", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Adds the specified generic service identifier to the player's PlayFab account. This is designed to allow for a PlayFab
-- ID lookup of any arbitrary service identifier a title wants to add. This identifier should never be used as
-- authentication credentials, as the intent is that it is easily accessible by other players.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/addgenericid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/addgenericid#addgenericidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/addgenericid#addgenericidresult
function PlayFabClientApi.AddGenericID(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AddGenericID", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Adds or updates a contact email to the player's profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/addorupdatecontactemail
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/addorupdatecontactemail#addorupdatecontactemailrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/addorupdatecontactemail#addorupdatecontactemailresult
function PlayFabClientApi.AddOrUpdateContactEmail(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AddOrUpdateContactEmail", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Adds users to the set of those able to update both the shared data, as well as the set of users in the group. Only users
-- in the group can add new members. Shared Groups are designed for sharing data between a very small number of players,
-- please see our guide: https://docs.microsoft.com/gaming/playfab/features/social/groups/using-shared-group-data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/addsharedgroupmembers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/addsharedgroupmembers#addsharedgroupmembersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/addsharedgroupmembers#addsharedgroupmembersresult
function PlayFabClientApi.AddSharedGroupMembers(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AddSharedGroupMembers", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Adds playfab username/password auth to an existing account created via an anonymous auth method, e.g. automatic device
-- ID login.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/addusernamepassword
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/addusernamepassword#addusernamepasswordrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/addusernamepassword#addusernamepasswordresult
function PlayFabClientApi.AddUsernamePassword(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AddUsernamePassword", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Increments the user's balance of the specified virtual currency by the stated amount
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/adduservirtualcurrency
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/adduservirtualcurrency#adduservirtualcurrencyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/adduservirtualcurrency#modifyuservirtualcurrencyresult
function PlayFabClientApi.AddUserVirtualCurrency(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AddUserVirtualCurrency", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Registers the Android device to receive push notifications
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/androiddevicepushnotificationregistration
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/androiddevicepushnotificationregistration#androiddevicepushnotificationregistrationrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/androiddevicepushnotificationregistration#androiddevicepushnotificationregistrationresult
function PlayFabClientApi.AndroidDevicePushNotificationRegistration(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AndroidDevicePushNotificationRegistration", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Attributes an install for advertisment.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/attributeinstall
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/attributeinstall#attributeinstallrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/attributeinstall#attributeinstallresult
function PlayFabClientApi.AttributeInstall(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/AttributeInstall", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Cancels an open trade (one that has not yet been accepted or cancelled). Note that only the player who created the trade
-- can cancel it via this API call, to prevent griefing of the trade system (cancelling trades in order to prevent other
-- players from accepting them, for trades that can be claimed by more than one player).
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/canceltrade
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/canceltrade#canceltraderequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/canceltrade#canceltraderesponse
function PlayFabClientApi.CancelTrade(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/CancelTrade", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Confirms with the payment provider that the purchase was approved (if applicable) and adjusts inventory and virtual
-- currency balances as appropriate
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/confirmpurchase
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/confirmpurchase#confirmpurchaserequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/confirmpurchase#confirmpurchaseresult
function PlayFabClientApi.ConfirmPurchase(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ConfirmPurchase", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Consume uses of a consumable item. When all uses are consumed, it will be removed from the player's inventory.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/consumeitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/consumeitem#consumeitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/consumeitem#consumeitemresult
function PlayFabClientApi.ConsumeItem(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ConsumeItem", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Grants the player's current entitlements from Microsoft Store's Collection API
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumemicrosoftstoreentitlements
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumemicrosoftstoreentitlements#consumemicrosoftstoreentitlementsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumemicrosoftstoreentitlements#consumemicrosoftstoreentitlementsresponse
function PlayFabClientApi.ConsumeMicrosoftStoreEntitlements(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ConsumeMicrosoftStoreEntitlements", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Checks for any new PS5 entitlements. If any are found, they are consumed (if they're consumables) and added as PlayFab
-- items
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumeps5entitlements
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumeps5entitlements#consumeps5entitlementsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumeps5entitlements#consumeps5entitlementsresult
function PlayFabClientApi.ConsumePS5Entitlements(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ConsumePS5Entitlements", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Checks for any new consumable entitlements. If any are found, they are consumed and added as PlayFab items
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumepsnentitlements
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumepsnentitlements#consumepsnentitlementsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumepsnentitlements#consumepsnentitlementsresult
function PlayFabClientApi.ConsumePSNEntitlements(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ConsumePSNEntitlements", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Grants the player's current entitlements from Xbox Live, consuming all availble items in Xbox and granting them to the
-- player's PlayFab inventory. This call is idempotent and will not grant previously granted items to the player.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumexboxentitlements
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumexboxentitlements#consumexboxentitlementsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/consumexboxentitlements#consumexboxentitlementsresult
function PlayFabClientApi.ConsumeXboxEntitlements(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ConsumeXboxEntitlements", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Requests the creation of a shared group object, containing key/value pairs which may be updated by all members of the
-- group. Upon creation, the current user will be the only member of the group. Shared Groups are designed for sharing data
-- between a very small number of players, please see our guide:
-- https://docs.microsoft.com/gaming/playfab/features/social/groups/using-shared-group-data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/createsharedgroup
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/createsharedgroup#createsharedgrouprequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/createsharedgroup#createsharedgroupresult
function PlayFabClientApi.CreateSharedGroup(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/CreateSharedGroup", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Executes a CloudScript function, with the 'currentPlayerId' set to the PlayFab ID of the authenticated player. The
-- PlayFab ID is the entity ID of the player's master_player_account entity.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/server-side-cloud-script/executecloudscript
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/server-side-cloud-script/executecloudscript#executecloudscriptrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/server-side-cloud-script/executecloudscript#executecloudscriptresult
function PlayFabClientApi.ExecuteCloudScript(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ExecuteCloudScript", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the user's PlayFab account details
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getaccountinfo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getaccountinfo#getaccountinforequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getaccountinfo#getaccountinforesult
function PlayFabClientApi.GetAccountInfo(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetAccountInfo", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Returns a list of ad placements and a reward for each
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/getadplacements
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/getadplacements#getadplacementsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/getadplacements#getadplacementsresult
function PlayFabClientApi.GetAdPlacements(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetAdPlacements", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Lists all of the characters that belong to a specific user. CharacterIds are not globally unique; characterId must be
-- evaluated with the parent PlayFabId to guarantee uniqueness.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getalluserscharacters
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getalluserscharacters#listuserscharactersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getalluserscharacters#listuserscharactersresult
function PlayFabClientApi.GetAllUsersCharacters(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetAllUsersCharacters", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the specified version of the title's catalog of virtual goods, including all defined properties
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/getcatalogitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/getcatalogitems#getcatalogitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/getcatalogitems#getcatalogitemsresult
function PlayFabClientApi.GetCatalogItems(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCatalogItems", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the character which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/character-data/getcharacterdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/character-data/getcharacterdata#getcharacterdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/character-data/getcharacterdata#getcharacterdataresult
function PlayFabClientApi.GetCharacterData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCharacterData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the specified character's current inventory of virtual goods
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getcharacterinventory
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getcharacterinventory#getcharacterinventoryrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getcharacterinventory#getcharacterinventoryresult
function PlayFabClientApi.GetCharacterInventory(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCharacterInventory", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves a list of ranked characters for the given statistic, starting from the indicated point in the leaderboard
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getcharacterleaderboard
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getcharacterleaderboard#getcharacterleaderboardrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getcharacterleaderboard#getcharacterleaderboardresult
function PlayFabClientApi.GetCharacterLeaderboard(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCharacterLeaderboard", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the character which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/character-data/getcharacterreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/character-data/getcharacterreadonlydata#getcharacterdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/character-data/getcharacterreadonlydata#getcharacterdataresult
function PlayFabClientApi.GetCharacterReadOnlyData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCharacterReadOnlyData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the details of all title-specific statistics for the user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getcharacterstatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getcharacterstatistics#getcharacterstatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getcharacterstatistics#getcharacterstatisticsresult
function PlayFabClientApi.GetCharacterStatistics(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCharacterStatistics", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- This API retrieves a pre-signed URL for accessing a content file for the title. A subsequent HTTP GET to the returned
-- URL will attempt to download the content. A HEAD query to the returned URL will attempt to retrieve the metadata of the
-- content. Note that a successful result does not guarantee the existence of this content - if it has not been uploaded,
-- the query to retrieve the data will fail. See this post for more information:
-- https://community.playfab.com/hc/community/posts/205469488-How-to-upload-files-to-PlayFab-s-Content-Service. Also,
-- please be aware that the Content service is specifically PlayFab's CDN offering, for which standard CDN rates apply.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/content/getcontentdownloadurl
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/content/getcontentdownloadurl#getcontentdownloadurlrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/content/getcontentdownloadurl#getcontentdownloadurlresult
function PlayFabClientApi.GetContentDownloadUrl(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetContentDownloadUrl", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Get details about all current running game servers matching the given parameters.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/matchmaking/getcurrentgames
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/matchmaking/getcurrentgames#currentgamesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/matchmaking/getcurrentgames#currentgamesresult
function PlayFabClientApi.GetCurrentGames(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetCurrentGames", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves a list of ranked friends of the current player for the given statistic, starting from the indicated point in
-- the leaderboard
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getfriendleaderboard
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getfriendleaderboard#getfriendleaderboardrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getfriendleaderboard#getleaderboardresult
function PlayFabClientApi.GetFriendLeaderboard(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetFriendLeaderboard", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves a list of ranked friends of the current player for the given statistic, centered on the requested PlayFab
-- user. If PlayFabId is empty or null will return currently logged in user.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getfriendleaderboardaroundplayer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getfriendleaderboardaroundplayer#getfriendleaderboardaroundplayerrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getfriendleaderboardaroundplayer#getfriendleaderboardaroundplayerresult
function PlayFabClientApi.GetFriendLeaderboardAroundPlayer(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetFriendLeaderboardAroundPlayer", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the current friend list for the local user, constrained to users who have PlayFab accounts. Friends from
-- linked accounts (Facebook, Steam) are also included. You may optionally exclude some linked services' friends.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/getfriendslist
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/getfriendslist#getfriendslistrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/getfriendslist#getfriendslistresult
function PlayFabClientApi.GetFriendsList(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetFriendsList", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Get details about the regions hosting game servers matching the given parameters.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/matchmaking/getgameserverregions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/matchmaking/getgameserverregions#gameserverregionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/matchmaking/getgameserverregions#gameserverregionsresult
function PlayFabClientApi.GetGameServerRegions(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetGameServerRegions", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves a list of ranked users for the given statistic, starting from the indicated point in the leaderboard
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getleaderboard
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getleaderboard#getleaderboardrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getleaderboard#getleaderboardresult
function PlayFabClientApi.GetLeaderboard(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetLeaderboard", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves a list of ranked characters for the given statistic, centered on the requested Character ID
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getleaderboardaroundcharacter
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getleaderboardaroundcharacter#getleaderboardaroundcharacterrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getleaderboardaroundcharacter#getleaderboardaroundcharacterresult
function PlayFabClientApi.GetLeaderboardAroundCharacter(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetLeaderboardAroundCharacter", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves a list of ranked users for the given statistic, centered on the requested player. If PlayFabId is empty or
-- null will return currently logged in user.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getleaderboardaroundplayer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getleaderboardaroundplayer#getleaderboardaroundplayerrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getleaderboardaroundplayer#getleaderboardaroundplayerresult
function PlayFabClientApi.GetLeaderboardAroundPlayer(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetLeaderboardAroundPlayer", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves a list of all of the user's characters for the given statistic.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getleaderboardforusercharacters
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getleaderboardforusercharacters#getleaderboardforuserscharactersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/getleaderboardforusercharacters#getleaderboardforuserscharactersresult
function PlayFabClientApi.GetLeaderboardForUserCharacters(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetLeaderboardForUserCharacters", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- For payments flows where the provider requires playfab (the fulfiller) to initiate the transaction, but the client
-- completes the rest of the flow. In the Xsolla case, the token returned here will be passed to Xsolla by the client to
-- create a cart. Poll GetPurchase using the returned OrderId once you've completed the payment.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getpaymenttoken
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getpaymenttoken#getpaymenttokenrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getpaymenttoken#getpaymenttokenresult
function PlayFabClientApi.GetPaymentToken(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPaymentToken", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Gets a Photon custom authentication token that can be used to securely join the player into a Photon room. See
-- https://docs.microsoft.com/gaming/playfab/features/multiplayer/photon/quickstart for more details.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/getphotonauthenticationtoken
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/getphotonauthenticationtoken#getphotonauthenticationtokenrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/getphotonauthenticationtoken#getphotonauthenticationtokenresult
function PlayFabClientApi.GetPhotonAuthenticationToken(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPhotonAuthenticationToken", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves all of the user's different kinds of info.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayercombinedinfo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayercombinedinfo#getplayercombinedinforequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayercombinedinfo#getplayercombinedinforesult
function PlayFabClientApi.GetPlayerCombinedInfo(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerCombinedInfo", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the player's profile
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayerprofile
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayerprofile#getplayerprofilerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayerprofile#getplayerprofileresult
function PlayFabClientApi.GetPlayerProfile(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerProfile", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- List all segments that a player currently belongs to at this moment in time.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/playstream/getplayersegments
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/playstream/getplayersegments#getplayersegmentsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/playstream/getplayersegments#getplayersegmentsresult
function PlayFabClientApi.GetPlayerSegments(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerSegments", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the indicated statistics (current version and values for all statistics, if none are specified), for the local
-- player.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getplayerstatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getplayerstatistics#getplayerstatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getplayerstatistics#getplayerstatisticsresult
function PlayFabClientApi.GetPlayerStatistics(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerStatistics", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the information on the available versions of the specified statistic.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getplayerstatisticversions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getplayerstatisticversions#getplayerstatisticversionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getplayerstatisticversions#getplayerstatisticversionsresult
function PlayFabClientApi.GetPlayerStatisticVersions(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerStatisticVersions", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Get all tags with a given Namespace (optional) from a player profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/playstream/getplayertags
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/playstream/getplayertags#getplayertagsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/playstream/getplayertags#getplayertagsresult
function PlayFabClientApi.GetPlayerTags(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerTags", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Gets all trades the player has either opened or accepted, optionally filtered by trade status.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/getplayertrades
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/getplayertrades#getplayertradesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/getplayertrades#getplayertradesresponse
function PlayFabClientApi.GetPlayerTrades(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayerTrades", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Facebook identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromfacebookids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromfacebookids#getplayfabidsfromfacebookidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromfacebookids#getplayfabidsfromfacebookidsresult
function PlayFabClientApi.GetPlayFabIDsFromFacebookIDs(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromFacebookIDs", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Facebook Instant Game identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromfacebookinstantgamesids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromfacebookinstantgamesids#getplayfabidsfromfacebookinstantgamesidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromfacebookinstantgamesids#getplayfabidsfromfacebookinstantgamesidsresult
function PlayFabClientApi.GetPlayFabIDsFromFacebookInstantGamesIds(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromFacebookInstantGamesIds", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Game Center identifiers (referenced in the Game Center
-- Programming Guide as the Player Identifier).
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromgamecenterids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromgamecenterids#getplayfabidsfromgamecenteridsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromgamecenterids#getplayfabidsfromgamecenteridsresult
function PlayFabClientApi.GetPlayFabIDsFromGameCenterIDs(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromGameCenterIDs", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of generic service identifiers. A generic identifier is the
-- service name plus the service-specific ID for the player, as specified by the title when the generic identifier was
-- added to the player account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromgenericids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromgenericids#getplayfabidsfromgenericidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromgenericids#getplayfabidsfromgenericidsresult
function PlayFabClientApi.GetPlayFabIDsFromGenericIDs(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromGenericIDs", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Google identifiers. The Google identifiers are the IDs for
-- the user accounts, available as "id" in the Google+ People API calls.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromgoogleids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromgoogleids#getplayfabidsfromgoogleidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromgoogleids#getplayfabidsfromgoogleidsresult
function PlayFabClientApi.GetPlayFabIDsFromGoogleIDs(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromGoogleIDs", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Kongregate identifiers. The Kongregate identifiers are the
-- IDs for the user accounts, available as "user_id" from the Kongregate API methods(ex:
-- http://developers.kongregate.com/docs/client/getUserId).
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromkongregateids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromkongregateids#getplayfabidsfromkongregateidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromkongregateids#getplayfabidsfromkongregateidsresult
function PlayFabClientApi.GetPlayFabIDsFromKongregateIDs(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromKongregateIDs", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Nintendo Service Account identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromnintendoserviceaccountids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromnintendoserviceaccountids#getplayfabidsfromnintendoserviceaccountidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromnintendoserviceaccountids#getplayfabidsfromnintendoserviceaccountidsresult
function PlayFabClientApi.GetPlayFabIDsFromNintendoServiceAccountIds(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromNintendoServiceAccountIds", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Nintendo Switch Device identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromnintendoswitchdeviceids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromnintendoswitchdeviceids#getplayfabidsfromnintendoswitchdeviceidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromnintendoswitchdeviceids#getplayfabidsfromnintendoswitchdeviceidsresult
function PlayFabClientApi.GetPlayFabIDsFromNintendoSwitchDeviceIds(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromNintendoSwitchDeviceIds", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of PlayStation Network identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfrompsnaccountids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfrompsnaccountids#getplayfabidsfrompsnaccountidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfrompsnaccountids#getplayfabidsfrompsnaccountidsresult
function PlayFabClientApi.GetPlayFabIDsFromPSNAccountIDs(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromPSNAccountIDs", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Steam identifiers. The Steam identifiers are the profile
-- IDs for the user accounts, available as SteamId in the Steamworks Community API calls.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromsteamids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromsteamids#getplayfabidsfromsteamidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromsteamids#getplayfabidsfromsteamidsresult
function PlayFabClientApi.GetPlayFabIDsFromSteamIDs(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromSteamIDs", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Twitch identifiers. The Twitch identifiers are the IDs for
-- the user accounts, available as "_id" from the Twitch API methods (ex:
-- https://github.com/justintv/Twitch-API/blob/master/v3_resources/users.md#get-usersuser).
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromtwitchids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromtwitchids#getplayfabidsfromtwitchidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromtwitchids#getplayfabidsfromtwitchidsresult
function PlayFabClientApi.GetPlayFabIDsFromTwitchIDs(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromTwitchIDs", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of XboxLive identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromxboxliveids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromxboxliveids#getplayfabidsfromxboxliveidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/getplayfabidsfromxboxliveids#getplayfabidsfromxboxliveidsresult
function PlayFabClientApi.GetPlayFabIDsFromXboxLiveIDs(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPlayFabIDsFromXboxLiveIDs", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the key-value store of custom publisher settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/getpublisherdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/getpublisherdata#getpublisherdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/getpublisherdata#getpublisherdataresult
function PlayFabClientApi.GetPublisherData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPublisherData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves a purchase along with its current PlayFab status. Returns inventory items from the purchase that are still
-- active.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getpurchase
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getpurchase#getpurchaserequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getpurchase#getpurchaseresult
function PlayFabClientApi.GetPurchase(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetPurchase", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves data stored in a shared group object, as well as the list of members in the group. Non-members of the group
-- may use this to retrieve group data, including membership, but they will not receive data for keys marked as private.
-- Shared Groups are designed for sharing data between a very small number of players, please see our guide:
-- https://docs.microsoft.com/gaming/playfab/features/social/groups/using-shared-group-data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/getsharedgroupdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/getsharedgroupdata#getsharedgroupdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/getsharedgroupdata#getsharedgroupdataresult
function PlayFabClientApi.GetSharedGroupData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetSharedGroupData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the set of items defined for the specified store, including all prices defined
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/getstoreitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/getstoreitems#getstoreitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/getstoreitems#getstoreitemsresult
function PlayFabClientApi.GetStoreItems(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetStoreItems", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the current server time
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/gettime
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/gettime#gettimerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/gettime#gettimeresult
function PlayFabClientApi.GetTime(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetTime", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the key-value store of custom title settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/gettitledata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/gettitledata#gettitledatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/gettitledata#gettitledataresult
function PlayFabClientApi.GetTitleData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetTitleData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the title news feed, as configured in the developer portal
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/gettitlenews
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/gettitlenews#gettitlenewsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/title-wide-data-management/gettitlenews#gettitlenewsresult
function PlayFabClientApi.GetTitleNews(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetTitleNews", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Returns the title's base 64 encoded RSA CSP blob.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/gettitlepublickey
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/gettitlepublickey#gettitlepublickeyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/gettitlepublickey#gettitlepublickeyresult
function PlayFabClientApi.GetTitlePublicKey(request, onSuccess, onError)
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetTitlePublicKey", request, nil, nil, onSuccess, onError)
end

-- Gets the current status of an existing trade.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/gettradestatus
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/gettradestatus#gettradestatusrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/gettradestatus#gettradestatusresponse
function PlayFabClientApi.GetTradeStatus(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetTradeStatus", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserdata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserdata#getuserdataresult
function PlayFabClientApi.GetUserData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the user's current inventory of virtual goods
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getuserinventory
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getuserinventory#getuserinventoryrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/getuserinventory#getuserinventoryresult
function PlayFabClientApi.GetUserInventory(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserInventory", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserpublisherdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserpublisherdata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserpublisherdata#getuserdataresult
function PlayFabClientApi.GetUserPublisherData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserPublisherData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the publisher-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserpublisherreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserpublisherreadonlydata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserpublisherreadonlydata#getuserdataresult
function PlayFabClientApi.GetUserPublisherReadOnlyData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserPublisherReadOnlyData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserreadonlydata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/getuserreadonlydata#getuserdataresult
function PlayFabClientApi.GetUserReadOnlyData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GetUserReadOnlyData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Grants the specified character type to the user. CharacterIds are not globally unique; characterId must be evaluated
-- with the parent PlayFabId to guarantee uniqueness.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/grantcharactertouser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/grantcharactertouser#grantcharactertouserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/grantcharactertouser#grantcharactertouserresult
function PlayFabClientApi.GrantCharacterToUser(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/GrantCharacterToUser", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the Android device identifier to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkandroiddeviceid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkandroiddeviceid#linkandroiddeviceidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkandroiddeviceid#linkandroiddeviceidresult
function PlayFabClientApi.LinkAndroidDeviceID(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkAndroidDeviceID", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the Apple account associated with the token to the user's PlayFab account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkapple
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkapple#linkapplerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkapple#emptyresult
function PlayFabClientApi.LinkApple(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkApple", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the custom identifier, generated by the title, to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkcustomid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkcustomid#linkcustomidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkcustomid#linkcustomidresult
function PlayFabClientApi.LinkCustomID(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkCustomID", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the Facebook account associated with the provided Facebook access token to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkfacebookaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkfacebookaccount#linkfacebookaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkfacebookaccount#linkfacebookaccountresult
function PlayFabClientApi.LinkFacebookAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkFacebookAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the Facebook Instant Games Id to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkfacebookinstantgamesid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkfacebookinstantgamesid#linkfacebookinstantgamesidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkfacebookinstantgamesid#linkfacebookinstantgamesidresult
function PlayFabClientApi.LinkFacebookInstantGamesId(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkFacebookInstantGamesId", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the Game Center account associated with the provided Game Center ID to the user's PlayFab account. Logging in with
-- a Game Center ID is insecure if you do not include the optional PublicKeyUrl, Salt, Signature, and Timestamp parameters
-- in this request. It is recommended you require these parameters on all Game Center calls by going to the Apple Add-ons
-- page in the PlayFab Game Manager and enabling the 'Require secure authentication only for this app' option.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkgamecenteraccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkgamecenteraccount#linkgamecenteraccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkgamecenteraccount#linkgamecenteraccountresult
function PlayFabClientApi.LinkGameCenterAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkGameCenterAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the currently signed-in user account to their Google account, using their Google account credentials
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkgoogleaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkgoogleaccount#linkgoogleaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkgoogleaccount#linkgoogleaccountresult
function PlayFabClientApi.LinkGoogleAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkGoogleAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the vendor-specific iOS device identifier to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkiosdeviceid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkiosdeviceid#linkiosdeviceidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkiosdeviceid#linkiosdeviceidresult
function PlayFabClientApi.LinkIOSDeviceID(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkIOSDeviceID", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the Kongregate identifier to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkkongregate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkkongregate#linkkongregateaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkkongregate#linkkongregateaccountresult
function PlayFabClientApi.LinkKongregate(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkKongregate", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the Nintendo account associated with the token to the user's PlayFab account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linknintendoserviceaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linknintendoserviceaccount#linknintendoserviceaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linknintendoserviceaccount#emptyresult
function PlayFabClientApi.LinkNintendoServiceAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkNintendoServiceAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the NintendoSwitchDeviceId to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linknintendoswitchdeviceid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linknintendoswitchdeviceid#linknintendoswitchdeviceidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linknintendoswitchdeviceid#linknintendoswitchdeviceidresult
function PlayFabClientApi.LinkNintendoSwitchDeviceId(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkNintendoSwitchDeviceId", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links an OpenID Connect account to a user's PlayFab account, based on an existing relationship between a title and an
-- Open ID Connect provider and the OpenId Connect JWT from that provider.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkopenidconnect
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkopenidconnect#linkopenidconnectrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkopenidconnect#emptyresult
function PlayFabClientApi.LinkOpenIdConnect(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkOpenIdConnect", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the PlayStation Network account associated with the provided access code to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkpsnaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkpsnaccount#linkpsnaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkpsnaccount#linkpsnaccountresult
function PlayFabClientApi.LinkPSNAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkPSNAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the Steam account associated with the provided Steam authentication ticket to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linksteamaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linksteamaccount#linksteamaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linksteamaccount#linksteamaccountresult
function PlayFabClientApi.LinkSteamAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkSteamAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the Twitch account associated with the token to the user's PlayFab account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linktwitch
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linktwitch#linktwitchaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linktwitch#linktwitchaccountresult
function PlayFabClientApi.LinkTwitch(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkTwitch", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Links the Xbox Live account associated with the provided access code to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkxboxaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkxboxaccount#linkxboxaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/linkxboxaccount#linkxboxaccountresult
function PlayFabClientApi.LinkXboxAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/LinkXboxAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Signs the user in using the Android device identifier, returning a session identifier that can subsequently be used for
-- API calls which require an authenticated user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithandroiddeviceid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithandroiddeviceid#loginwithandroiddeviceidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithandroiddeviceid#loginresult
function PlayFabClientApi.LoginWithAndroidDeviceID(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithAndroidDeviceID", request, nil, nil, onSuccess, onError)
end

-- Signs in the user with a Sign in with Apple identity token.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithapple
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithapple#loginwithapplerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithapple#loginresult
function PlayFabClientApi.LoginWithApple(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithApple", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using a custom unique identifier generated by the title, returning a session identifier that can
-- subsequently be used for API calls which require an authenticated user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithcustomid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithcustomid#loginwithcustomidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithcustomid#loginresult
function PlayFabClientApi.LoginWithCustomID(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithCustomID", request, nil, nil, onSuccess, onError)
end

-- Signs the user into the PlayFab account, returning a session identifier that can subsequently be used for API calls
-- which require an authenticated user. Unlike most other login API calls, LoginWithEmailAddress does not permit the
-- creation of new accounts via the CreateAccountFlag. Email addresses may be used to create accounts via
-- RegisterPlayFabUser.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithemailaddress
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithemailaddress#loginwithemailaddressrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithemailaddress#loginresult
function PlayFabClientApi.LoginWithEmailAddress(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithEmailAddress", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using a Facebook access token, returning a session identifier that can subsequently be used for API
-- calls which require an authenticated user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithfacebook
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithfacebook#loginwithfacebookrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithfacebook#loginresult
function PlayFabClientApi.LoginWithFacebook(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithFacebook", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using a Facebook Instant Games ID, returning a session identifier that can subsequently be used for
-- API calls which require an authenticated user. Requires Facebook Instant Games to be configured.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithfacebookinstantgamesid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithfacebookinstantgamesid#loginwithfacebookinstantgamesidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithfacebookinstantgamesid#loginresult
function PlayFabClientApi.LoginWithFacebookInstantGamesId(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithFacebookInstantGamesId", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using an iOS Game Center player identifier, returning a session identifier that can subsequently be
-- used for API calls which require an authenticated user. Logging in with a Game Center ID is insecure if you do not
-- include the optional PublicKeyUrl, Salt, Signature, and Timestamp parameters in this request. It is recommended you
-- require these parameters on all Game Center calls by going to the Apple Add-ons page in the PlayFab Game Manager and
-- enabling the 'Require secure authentication only for this app' option.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithgamecenter
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithgamecenter#loginwithgamecenterrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithgamecenter#loginresult
function PlayFabClientApi.LoginWithGameCenter(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithGameCenter", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using their Google account credentials
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithgoogleaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithgoogleaccount#loginwithgoogleaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithgoogleaccount#loginresult
function PlayFabClientApi.LoginWithGoogleAccount(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithGoogleAccount", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using the vendor-specific iOS device identifier, returning a session identifier that can subsequently
-- be used for API calls which require an authenticated user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithiosdeviceid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithiosdeviceid#loginwithiosdeviceidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithiosdeviceid#loginresult
function PlayFabClientApi.LoginWithIOSDeviceID(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithIOSDeviceID", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using a Kongregate player account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithkongregate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithkongregate#loginwithkongregaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithkongregate#loginresult
function PlayFabClientApi.LoginWithKongregate(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithKongregate", request, nil, nil, onSuccess, onError)
end

-- Signs in the user with a Nintendo service account token.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithnintendoserviceaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithnintendoserviceaccount#loginwithnintendoserviceaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithnintendoserviceaccount#loginresult
function PlayFabClientApi.LoginWithNintendoServiceAccount(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithNintendoServiceAccount", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using a Nintendo Switch Device ID, returning a session identifier that can subsequently be used for
-- API calls which require an authenticated user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithnintendoswitchdeviceid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithnintendoswitchdeviceid#loginwithnintendoswitchdeviceidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithnintendoswitchdeviceid#loginresult
function PlayFabClientApi.LoginWithNintendoSwitchDeviceId(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithNintendoSwitchDeviceId", request, nil, nil, onSuccess, onError)
end

-- Logs in a user with an Open ID Connect JWT created by an existing relationship between a title and an Open ID Connect
-- provider.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithopenidconnect
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithopenidconnect#loginwithopenidconnectrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithopenidconnect#loginresult
function PlayFabClientApi.LoginWithOpenIdConnect(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithOpenIdConnect", request, nil, nil, onSuccess, onError)
end

-- Signs the user into the PlayFab account, returning a session identifier that can subsequently be used for API calls
-- which require an authenticated user. Unlike most other login API calls, LoginWithPlayFab does not permit the creation of
-- new accounts via the CreateAccountFlag. Username/Password credentials may be used to create accounts via
-- RegisterPlayFabUser, or added to existing accounts using AddUsernamePassword.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithplayfab
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithplayfab#loginwithplayfabrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithplayfab#loginresult
function PlayFabClientApi.LoginWithPlayFab(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithPlayFab", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using a PlayStation Network authentication code, returning a session identifier that can subsequently
-- be used for API calls which require an authenticated user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithpsn
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithpsn#loginwithpsnrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithpsn#loginresult
function PlayFabClientApi.LoginWithPSN(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithPSN", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using a Steam authentication ticket, returning a session identifier that can subsequently be used for
-- API calls which require an authenticated user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithsteam
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithsteam#loginwithsteamrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithsteam#loginresult
function PlayFabClientApi.LoginWithSteam(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithSteam", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using a Twitch access token.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithtwitch
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithtwitch#loginwithtwitchrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithtwitch#loginresult
function PlayFabClientApi.LoginWithTwitch(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithTwitch", request, nil, nil, onSuccess, onError)
end

-- Signs the user in using a Xbox Live Token, returning a session identifier that can subsequently be used for API calls
-- which require an authenticated user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithxbox
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithxbox#loginwithxboxrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/loginwithxbox#loginresult
function PlayFabClientApi.LoginWithXbox(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        PlayFabSettings._internalSettings.entityToken = result.EntityToken.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/LoginWithXbox", request, nil, nil, onSuccess, onError)
end

-- Attempts to locate a game session matching the given parameters. If the goal is to match the player into a specific
-- active session, only the LobbyId is required. Otherwise, the BuildVersion, GameMode, and Region are all required
-- parameters. Note that parameters specified in the search are required (they are not weighting factors). If a slot is
-- found in a server instance matching the parameters, the slot will be assigned to that player, removing it from the
-- availabe set. In that case, the information on the game session will be returned, otherwise the Status returned will be
-- GameNotFound.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/matchmaking/matchmake
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/matchmaking/matchmake#matchmakerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/matchmaking/matchmake#matchmakeresult
function PlayFabClientApi.Matchmake(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/Matchmake", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Opens a new outstanding trade. Note that a given item instance may only be in one open trade at a time.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/opentrade
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/opentrade#opentraderequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/trading/opentrade#opentraderesponse
function PlayFabClientApi.OpenTrade(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/OpenTrade", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Selects a payment option for purchase order created via StartPurchase
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/payforpurchase
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/payforpurchase#payforpurchaserequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/payforpurchase#payforpurchaseresult
function PlayFabClientApi.PayForPurchase(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/PayForPurchase", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Buys a single item with virtual currency. You must specify both the virtual currency to use to purchase, as well as what
-- the client believes the price to be. This lets the server fail the purchase if the price has changed.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/purchaseitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/purchaseitem#purchaseitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/purchaseitem#purchaseitemresult
function PlayFabClientApi.PurchaseItem(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/PurchaseItem", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Adds the virtual goods associated with the coupon to the user's inventory. Coupons can be generated via the
-- Economy->Catalogs tab in the PlayFab Game Manager.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/redeemcoupon
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/redeemcoupon#redeemcouponrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/redeemcoupon#redeemcouponresult
function PlayFabClientApi.RedeemCoupon(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RedeemCoupon", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Uses the supplied OAuth code to refresh the internally cached player PSN auth token
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/refreshpsnauthtoken
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/refreshpsnauthtoken#refreshpsnauthtokenrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/refreshpsnauthtoken#emptyresponse
function PlayFabClientApi.RefreshPSNAuthToken(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RefreshPSNAuthToken", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Registers the iOS device to receive push notifications
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/registerforiospushnotification
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/registerforiospushnotification#registerforiospushnotificationrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/registerforiospushnotification#registerforiospushnotificationresult
function PlayFabClientApi.RegisterForIOSPushNotification(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RegisterForIOSPushNotification", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Registers a new Playfab user account, returning a session identifier that can subsequently be used for API calls which
-- require an authenticated user. You must supply either a username or an email address.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/registerplayfabuser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/registerplayfabuser#registerplayfabuserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/registerplayfabuser#registerplayfabuserresult
function PlayFabClientApi.RegisterPlayFabUser(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.sessionTicket = result.SessionTicket
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Client/RegisterPlayFabUser", request, nil, nil, onSuccess, onError)
end

-- Removes a contact email from the player's profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/removecontactemail
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/removecontactemail#removecontactemailrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/removecontactemail#removecontactemailresult
function PlayFabClientApi.RemoveContactEmail(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RemoveContactEmail", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Removes a specified user from the friend list of the local user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/removefriend
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/removefriend#removefriendrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/removefriend#removefriendresult
function PlayFabClientApi.RemoveFriend(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RemoveFriend", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Removes the specified generic service identifier from the player's PlayFab account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/removegenericid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/removegenericid#removegenericidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/removegenericid#removegenericidresult
function PlayFabClientApi.RemoveGenericID(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RemoveGenericID", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Removes users from the set of those able to update the shared data and the set of users in the group. Only users in the
-- group can remove members. If as a result of the call, zero users remain with access, the group and its associated data
-- will be deleted. Shared Groups are designed for sharing data between a very small number of players, please see our
-- guide: https://docs.microsoft.com/gaming/playfab/features/social/groups/using-shared-group-data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/removesharedgroupmembers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/removesharedgroupmembers#removesharedgroupmembersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/removesharedgroupmembers#removesharedgroupmembersresult
function PlayFabClientApi.RemoveSharedGroupMembers(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RemoveSharedGroupMembers", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Report player's ad activity
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/reportadactivity
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/reportadactivity#reportadactivityrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/reportadactivity#reportadactivityresult
function PlayFabClientApi.ReportAdActivity(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ReportAdActivity", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Write a PlayStream event to describe the provided player device information. This API method is not designed to be
-- called directly by developers. Each PlayFab client SDK will eventually report this information automatically.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/reportdeviceinfo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/reportdeviceinfo#deviceinforequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/reportdeviceinfo#emptyresponse
function PlayFabClientApi.ReportDeviceInfo(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ReportDeviceInfo", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Submit a report for another player (due to bad bahavior, etc.), so that customer service representatives for the title
-- can take action concerning potentially toxic players.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/reportplayer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/reportplayer#reportplayerclientrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/reportplayer#reportplayerclientresult
function PlayFabClientApi.ReportPlayer(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ReportPlayer", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Restores all in-app purchases based on the given restore receipt
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/restoreiospurchases
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/restoreiospurchases#restoreiospurchasesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/restoreiospurchases#restoreiospurchasesresult
function PlayFabClientApi.RestoreIOSPurchases(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RestoreIOSPurchases", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Reward player's ad activity
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/rewardadactivity
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/rewardadactivity#rewardadactivityrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/advertising/rewardadactivity#rewardadactivityresult
function PlayFabClientApi.RewardAdActivity(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/RewardAdActivity", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Forces an email to be sent to the registered email address for the user's account, with a link allowing the user to
-- change the password.If an account recovery email template ID is provided, an email using the custom email template will
-- be used.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/sendaccountrecoveryemail
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/sendaccountrecoveryemail#sendaccountrecoveryemailrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/sendaccountrecoveryemail#sendaccountrecoveryemailresult
function PlayFabClientApi.SendAccountRecoveryEmail(request, onSuccess, onError)
    IPlayFabHttps.MakePlayFabApiCall("/Client/SendAccountRecoveryEmail", request, nil, nil, onSuccess, onError)
end

-- Updates the tag list for a specified user in the friend list of the local user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/setfriendtags
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/setfriendtags#setfriendtagsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/friend-list-management/setfriendtags#setfriendtagsresult
function PlayFabClientApi.SetFriendTags(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/SetFriendTags", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Sets the player's secret if it is not already set. Player secrets are used to sign API requests. To reset a player's
-- secret use the Admin or Server API method SetPlayerSecret.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/setplayersecret
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/setplayersecret#setplayersecretrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/authentication/setplayersecret#setplayersecretresult
function PlayFabClientApi.SetPlayerSecret(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/SetPlayerSecret", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Creates an order for a list of items from the title catalog
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/startpurchase
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/startpurchase#startpurchaserequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/startpurchase#startpurchaseresult
function PlayFabClientApi.StartPurchase(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/StartPurchase", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Decrements the user's balance of the specified virtual currency by the stated amount. It is possible to make a VC
-- balance negative with this API.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/subtractuservirtualcurrency
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/subtractuservirtualcurrency#subtractuservirtualcurrencyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/subtractuservirtualcurrency#modifyuservirtualcurrencyresult
function PlayFabClientApi.SubtractUserVirtualCurrency(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/SubtractUserVirtualCurrency", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related Android device identifier from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkandroiddeviceid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkandroiddeviceid#unlinkandroiddeviceidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkandroiddeviceid#unlinkandroiddeviceidresult
function PlayFabClientApi.UnlinkAndroidDeviceID(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkAndroidDeviceID", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related Apple account from the user's PlayFab account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkapple
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkapple#unlinkapplerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkapple#emptyresponse
function PlayFabClientApi.UnlinkApple(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkApple", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related custom identifier from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkcustomid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkcustomid#unlinkcustomidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkcustomid#unlinkcustomidresult
function PlayFabClientApi.UnlinkCustomID(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkCustomID", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related Facebook account from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkfacebookaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkfacebookaccount#unlinkfacebookaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkfacebookaccount#unlinkfacebookaccountresult
function PlayFabClientApi.UnlinkFacebookAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkFacebookAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related Facebook Instant Game Ids from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkfacebookinstantgamesid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkfacebookinstantgamesid#unlinkfacebookinstantgamesidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkfacebookinstantgamesid#unlinkfacebookinstantgamesidresult
function PlayFabClientApi.UnlinkFacebookInstantGamesId(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkFacebookInstantGamesId", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related Game Center account from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkgamecenteraccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkgamecenteraccount#unlinkgamecenteraccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkgamecenteraccount#unlinkgamecenteraccountresult
function PlayFabClientApi.UnlinkGameCenterAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkGameCenterAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related Google account from the user's PlayFab account
-- (https://developers.google.com/android/reference/com/google/android/gms/auth/GoogleAuthUtil#public-methods).
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkgoogleaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkgoogleaccount#unlinkgoogleaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkgoogleaccount#unlinkgoogleaccountresult
function PlayFabClientApi.UnlinkGoogleAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkGoogleAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related iOS device identifier from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkiosdeviceid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkiosdeviceid#unlinkiosdeviceidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkiosdeviceid#unlinkiosdeviceidresult
function PlayFabClientApi.UnlinkIOSDeviceID(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkIOSDeviceID", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related Kongregate identifier from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkkongregate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkkongregate#unlinkkongregateaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkkongregate#unlinkkongregateaccountresult
function PlayFabClientApi.UnlinkKongregate(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkKongregate", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related Nintendo account from the user's PlayFab account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinknintendoserviceaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinknintendoserviceaccount#unlinknintendoserviceaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinknintendoserviceaccount#emptyresponse
function PlayFabClientApi.UnlinkNintendoServiceAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkNintendoServiceAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related NintendoSwitchDeviceId from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinknintendoswitchdeviceid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinknintendoswitchdeviceid#unlinknintendoswitchdeviceidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinknintendoswitchdeviceid#unlinknintendoswitchdeviceidresult
function PlayFabClientApi.UnlinkNintendoSwitchDeviceId(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkNintendoSwitchDeviceId", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks an OpenID Connect account from a user's PlayFab account, based on the connection ID of an existing relationship
-- between a title and an Open ID Connect provider.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkopenidconnect
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkopenidconnect#unlinkopenidconnectrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkopenidconnect#emptyresponse
function PlayFabClientApi.UnlinkOpenIdConnect(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkOpenIdConnect", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related PSN account from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkpsnaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkpsnaccount#unlinkpsnaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkpsnaccount#unlinkpsnaccountresult
function PlayFabClientApi.UnlinkPSNAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkPSNAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related Steam account from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinksteamaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinksteamaccount#unlinksteamaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinksteamaccount#unlinksteamaccountresult
function PlayFabClientApi.UnlinkSteamAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkSteamAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related Twitch account from the user's PlayFab account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinktwitch
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinktwitch#unlinktwitchaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinktwitch#unlinktwitchaccountresult
function PlayFabClientApi.UnlinkTwitch(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkTwitch", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Unlinks the related Xbox Live account from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkxboxaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkxboxaccount#unlinkxboxaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/unlinkxboxaccount#unlinkxboxaccountresult
function PlayFabClientApi.UnlinkXboxAccount(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlinkXboxAccount", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Opens the specified container, with the specified key (when required), and returns the contents of the opened container.
-- If the container (and key when relevant) are consumable (RemainingUses > 0), their RemainingUses will be decremented,
-- consistent with the operation of ConsumeItem.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/unlockcontainerinstance
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/unlockcontainerinstance#unlockcontainerinstancerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/unlockcontainerinstance#unlockcontaineritemresult
function PlayFabClientApi.UnlockContainerInstance(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlockContainerInstance", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Searches target inventory for an ItemInstance matching the given CatalogItemId, if necessary unlocks it using an
-- appropriate key, and returns the contents of the opened container. If the container (and key when relevant) are
-- consumable (RemainingUses > 0), their RemainingUses will be decremented, consistent with the operation of ConsumeItem.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/unlockcontaineritem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/unlockcontaineritem#unlockcontaineritemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-item-management/unlockcontaineritem#unlockcontaineritemresult
function PlayFabClientApi.UnlockContainerItem(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UnlockContainerItem", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Update the avatar URL of the player
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/updateavatarurl
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/updateavatarurl#updateavatarurlrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/updateavatarurl#emptyresponse
function PlayFabClientApi.UpdateAvatarUrl(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateAvatarUrl", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Creates and updates the title-specific custom data for the user's character which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/character-data/updatecharacterdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/character-data/updatecharacterdata#updatecharacterdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/character-data/updatecharacterdata#updatecharacterdataresult
function PlayFabClientApi.UpdateCharacterData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateCharacterData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Updates the values of the specified title-specific statistics for the specific character. By default, clients are not
-- permitted to update statistics. Developers may override this setting in the Game Manager > Settings > API Features.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/updatecharacterstatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/updatecharacterstatistics#updatecharacterstatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/characters/updatecharacterstatistics#updatecharacterstatisticsresult
function PlayFabClientApi.UpdateCharacterStatistics(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateCharacterStatistics", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Updates the values of the specified title-specific statistics for the user. By default, clients are not permitted to
-- update statistics. Developers may override this setting in the Game Manager > Settings > API Features.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/updateplayerstatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/updateplayerstatistics#updateplayerstatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/updateplayerstatistics#updateplayerstatisticsresult
function PlayFabClientApi.UpdatePlayerStatistics(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdatePlayerStatistics", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Adds, updates, and removes data keys for a shared group object. If the permission is set to Public, all fields updated
-- or added in this call will be readable by users not in the group. By default, data permissions are set to Private.
-- Regardless of the permission setting, only members of the group can update the data. Shared Groups are designed for
-- sharing data between a very small number of players, please see our guide:
-- https://docs.microsoft.com/gaming/playfab/features/social/groups/using-shared-group-data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/updatesharedgroupdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/updatesharedgroupdata#updatesharedgroupdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/shared-group-data/updatesharedgroupdata#updatesharedgroupdataresult
function PlayFabClientApi.UpdateSharedGroupData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateSharedGroupData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Creates and updates the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/updateuserdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/updateuserdata#updateuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/updateuserdata#updateuserdataresult
function PlayFabClientApi.UpdateUserData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateUserData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Creates and updates the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/updateuserpublisherdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/updateuserpublisherdata#updateuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/player-data-management/updateuserpublisherdata#updateuserdataresult
function PlayFabClientApi.UpdateUserPublisherData(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateUserPublisherData", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Updates the title specific display name for the user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/updateusertitledisplayname
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/updateusertitledisplayname#updateusertitledisplaynamerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/account-management/updateusertitledisplayname#updateusertitledisplaynameresult
function PlayFabClientApi.UpdateUserTitleDisplayName(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/UpdateUserTitleDisplayName", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Validates with Amazon that the receipt for an Amazon App Store in-app purchase is valid and that it matches the
-- purchased catalog item
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validateamazoniapreceipt
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validateamazoniapreceipt#validateamazonreceiptrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validateamazoniapreceipt#validateamazonreceiptresult
function PlayFabClientApi.ValidateAmazonIAPReceipt(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ValidateAmazonIAPReceipt", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Validates a Google Play purchase and gives the corresponding item to the player.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validategoogleplaypurchase
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validategoogleplaypurchase#validategoogleplaypurchaserequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validategoogleplaypurchase#validategoogleplaypurchaseresult
function PlayFabClientApi.ValidateGooglePlayPurchase(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ValidateGooglePlayPurchase", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Validates with the Apple store that the receipt for an iOS in-app purchase is valid and that it matches the purchased
-- catalog item
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validateiosreceipt
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validateiosreceipt#validateiosreceiptrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validateiosreceipt#validateiosreceiptresult
function PlayFabClientApi.ValidateIOSReceipt(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ValidateIOSReceipt", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Validates with Windows that the receipt for an Windows App Store in-app purchase is valid and that it matches the
-- purchased catalog item
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validatewindowsstorereceipt
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validatewindowsstorereceipt#validatewindowsreceiptrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/platform-specific-methods/validatewindowsstorereceipt#validatewindowsreceiptresult
function PlayFabClientApi.ValidateWindowsStoreReceipt(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/ValidateWindowsStoreReceipt", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Writes a character-based event into PlayStream.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/writecharacterevent
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/writecharacterevent#writeclientcharactereventrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/writecharacterevent#writeeventresponse
function PlayFabClientApi.WriteCharacterEvent(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/WriteCharacterEvent", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Writes a player-based event into PlayStream.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/writeplayerevent
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/writeplayerevent#writeclientplayereventrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/writeplayerevent#writeeventresponse
function PlayFabClientApi.WritePlayerEvent(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/WritePlayerEvent", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

-- Writes a title-based event into PlayStream.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/writetitleevent
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/writetitleevent#writetitleeventrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/client/analytics/writetitleevent#writeeventresponse
function PlayFabClientApi.WriteTitleEvent(request, onSuccess, onError)
    if (not PlayFabClientApi.IsClientLoggedIn()) then error("Must be logged in to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Client/WriteTitleEvent", request, "X-Authorization", PlayFabSettings._internalSettings.sessionTicket, onSuccess, onError)
end

return PlayFabClientApi
