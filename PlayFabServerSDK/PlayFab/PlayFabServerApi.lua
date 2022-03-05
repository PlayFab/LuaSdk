-- PlayFab Server API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabServerApi = require("PlayFab.PlayFabServerApi")
-- PlayFabServerApi.<ServerApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabServerApi = {
    settings = PlayFabSettings.settings
}

-- Increments the character's balance of the specified virtual currency by the stated amount
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/addcharactervirtualcurrency
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/addcharactervirtualcurrency#addcharactervirtualcurrencyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/addcharactervirtualcurrency#modifycharactervirtualcurrencyresult
function PlayFabServerApi.AddCharacterVirtualCurrency(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddCharacterVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds the Friend user to the friendlist of the user with PlayFabId. At least one of
-- FriendPlayFabId,FriendUsername,FriendEmail, or FriendTitleDisplayName should be initialized.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/addfriend
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/addfriend#addfriendrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/addfriend#emptyresponse
function PlayFabServerApi.AddFriend(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddFriend", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds the specified generic service identifier to the player's PlayFab account. This is designed to allow for a PlayFab
-- ID lookup of any arbitrary service identifier a title wants to add. This identifier should never be used as
-- authentication credentials, as the intent is that it is easily accessible by other players.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/addgenericid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/addgenericid#addgenericidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/addgenericid#emptyresult
function PlayFabServerApi.AddGenericID(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddGenericID", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds a given tag to a player profile. The tag's namespace is automatically generated based on the source of the tag.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/addplayertag
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/addplayertag#addplayertagrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/addplayertag#addplayertagresult
function PlayFabServerApi.AddPlayerTag(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddPlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds users to the set of those able to update both the shared data, as well as the set of users in the group. Only users
-- in the group (and the server) can add new members. Shared Groups are designed for sharing data between a very small
-- number of players, please see our guide:
-- https://docs.microsoft.com/gaming/playfab/features/social/groups/using-shared-group-data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/addsharedgroupmembers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/addsharedgroupmembers#addsharedgroupmembersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/addsharedgroupmembers#addsharedgroupmembersresult
function PlayFabServerApi.AddSharedGroupMembers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddSharedGroupMembers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Increments the user's balance of the specified virtual currency by the stated amount
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/adduservirtualcurrency
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/adduservirtualcurrency#adduservirtualcurrencyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/adduservirtualcurrency#modifyuservirtualcurrencyresult
function PlayFabServerApi.AddUserVirtualCurrency(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AddUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Validated a client's session ticket, and if successful, returns details for that user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/authenticatesessionticket
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/authenticatesessionticket#authenticatesessionticketrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/authenticatesessionticket#authenticatesessionticketresult
function PlayFabServerApi.AuthenticateSessionTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AuthenticateSessionTicket", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Awards the specified users the specified Steam achievements
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/platform-specific-methods/awardsteamachievement
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/platform-specific-methods/awardsteamachievement#awardsteamachievementrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/platform-specific-methods/awardsteamachievement#awardsteamachievementresult
function PlayFabServerApi.AwardSteamAchievement(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/AwardSteamAchievement", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Bans users by PlayFab ID with optional IP address, or MAC address for the provided game.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/banusers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/banusers#banusersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/banusers#banusersresult
function PlayFabServerApi.BanUsers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/BanUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Consume uses of a consumable item. When all uses are consumed, it will be removed from the player's inventory.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/consumeitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/consumeitem#consumeitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/consumeitem#consumeitemresult
function PlayFabServerApi.ConsumeItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ConsumeItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Requests the creation of a shared group object, containing key/value pairs which may be updated by all members of the
-- group. When created by a server, the group will initially have no members. Shared Groups are designed for sharing data
-- between a very small number of players, please see our guide:
-- https://docs.microsoft.com/gaming/playfab/features/social/groups/using-shared-group-data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/createsharedgroup
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/createsharedgroup#createsharedgrouprequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/createsharedgroup#createsharedgroupresult
function PlayFabServerApi.CreateSharedGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/CreateSharedGroup", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Deletes the specific character ID from the specified user.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/deletecharacterfromuser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/deletecharacterfromuser#deletecharacterfromuserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/deletecharacterfromuser#deletecharacterfromuserresult
function PlayFabServerApi.DeleteCharacterFromUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/DeleteCharacterFromUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Removes a user's player account from a title and deletes all associated data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/deleteplayer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/deleteplayer#deleteplayerrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/deleteplayer#deleteplayerresult
function PlayFabServerApi.DeletePlayer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/DeletePlayer", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Deletes push notification template for title
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/deletepushnotificationtemplate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/deletepushnotificationtemplate#deletepushnotificationtemplaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/deletepushnotificationtemplate#deletepushnotificationtemplateresult
function PlayFabServerApi.DeletePushNotificationTemplate(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/DeletePushNotificationTemplate", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Deletes a shared group, freeing up the shared group ID to be reused for a new group. Shared Groups are designed for
-- sharing data between a very small number of players, please see our guide:
-- https://docs.microsoft.com/gaming/playfab/features/social/groups/using-shared-group-data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/deletesharedgroup
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/deletesharedgroup#deletesharedgrouprequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/deletesharedgroup#emptyresponse
function PlayFabServerApi.DeleteSharedGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/DeleteSharedGroup", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Inform the matchmaker that a Game Server Instance is removed.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/deregistergame
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/deregistergame#deregistergamerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/deregistergame#deregistergameresponse
function PlayFabServerApi.DeregisterGame(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/DeregisterGame", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Returns the result of an evaluation of a Random Result Table - the ItemId from the game Catalog which would have been
-- added to the player inventory, if the Random Result Table were added via a Bundle or a call to UnlockContainer.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/evaluaterandomresulttable
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/evaluaterandomresulttable#evaluaterandomresulttablerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/evaluaterandomresulttable#evaluaterandomresulttableresult
function PlayFabServerApi.EvaluateRandomResultTable(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/EvaluateRandomResultTable", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Executes a CloudScript function, with the 'currentPlayerId' variable set to the specified PlayFabId parameter value.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/server-side-cloud-script/executecloudscript
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/server-side-cloud-script/executecloudscript#executecloudscriptserverrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/server-side-cloud-script/executecloudscript#executecloudscriptresult
function PlayFabServerApi.ExecuteCloudScript(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ExecuteCloudScript", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves an array of player segment definitions. Results from this can be used in subsequent API calls such as
-- GetPlayersInSegment which requires a Segment ID. While segment names can change the ID for that segment will not change.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getallsegments
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getallsegments#getallsegmentsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getallsegments#getallsegmentsresult
function PlayFabServerApi.GetAllSegments(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetAllSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Lists all of the characters that belong to a specific user. CharacterIds are not globally unique; characterId must be
-- evaluated with the parent PlayFabId to guarantee uniqueness.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getalluserscharacters
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getalluserscharacters#listuserscharactersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getalluserscharacters#listuserscharactersresult
function PlayFabServerApi.GetAllUsersCharacters(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetAllUsersCharacters", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the specified version of the title's catalog of virtual goods, including all defined properties
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/getcatalogitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/getcatalogitems#getcatalogitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/getcatalogitems#getcatalogitemsresult
function PlayFabServerApi.GetCatalogItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/getcharacterdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/getcharacterdata#getcharacterdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/getcharacterdata#getcharacterdataresult
function PlayFabServerApi.GetCharacterData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user's character which cannot be accessed by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/getcharacterinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/getcharacterinternaldata#getcharacterdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/getcharacterinternaldata#getcharacterdataresult
function PlayFabServerApi.GetCharacterInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the specified character's current inventory of virtual goods
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/getcharacterinventory
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/getcharacterinventory#getcharacterinventoryrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/getcharacterinventory#getcharacterinventoryresult
function PlayFabServerApi.GetCharacterInventory(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterInventory", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves a list of ranked characters for the given statistic, starting from the indicated point in the leaderboard
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getcharacterleaderboard
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getcharacterleaderboard#getcharacterleaderboardrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getcharacterleaderboard#getcharacterleaderboardresult
function PlayFabServerApi.GetCharacterLeaderboard(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterLeaderboard", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user's character which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/getcharacterreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/getcharacterreadonlydata#getcharacterdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/getcharacterreadonlydata#getcharacterdataresult
function PlayFabServerApi.GetCharacterReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the details of all title-specific statistics for the specific character
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getcharacterstatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getcharacterstatistics#getcharacterstatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getcharacterstatistics#getcharacterstatisticsresult
function PlayFabServerApi.GetCharacterStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetCharacterStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- This API retrieves a pre-signed URL for accessing a content file for the title. A subsequent HTTP GET to the returned
-- URL will attempt to download the content. A HEAD query to the returned URL will attempt to retrieve the metadata of the
-- content. Note that a successful result does not guarantee the existence of this content - if it has not been uploaded,
-- the query to retrieve the data will fail. See this post for more information:
-- https://community.playfab.com/hc/community/posts/205469488-How-to-upload-files-to-PlayFab-s-Content-Service. Also,
-- please be aware that the Content service is specifically PlayFab's CDN offering, for which standard CDN rates apply.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/content/getcontentdownloadurl
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/content/getcontentdownloadurl#getcontentdownloadurlrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/content/getcontentdownloadurl#getcontentdownloadurlresult
function PlayFabServerApi.GetContentDownloadUrl(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetContentDownloadUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves a list of ranked friends of the given player for the given statistic, starting from the indicated point in the
-- leaderboard
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getfriendleaderboard
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getfriendleaderboard#getfriendleaderboardrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getfriendleaderboard#getleaderboardresult
function PlayFabServerApi.GetFriendLeaderboard(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetFriendLeaderboard", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the current friends for the user with PlayFabId, constrained to users who have PlayFab accounts. Friends from
-- linked accounts (Facebook, Steam) are also included. You may optionally exclude some linked services' friends.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/getfriendslist
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/getfriendslist#getfriendslistrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/getfriendslist#getfriendslistresult
function PlayFabServerApi.GetFriendsList(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetFriendsList", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves a list of ranked users for the given statistic, starting from the indicated point in the leaderboard
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getleaderboard
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getleaderboard#getleaderboardrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getleaderboard#getleaderboardresult
function PlayFabServerApi.GetLeaderboard(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboard", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves a list of ranked characters for the given statistic, centered on the requested user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getleaderboardaroundcharacter
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getleaderboardaroundcharacter#getleaderboardaroundcharacterrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getleaderboardaroundcharacter#getleaderboardaroundcharacterresult
function PlayFabServerApi.GetLeaderboardAroundCharacter(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboardAroundCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves a list of ranked users for the given statistic, centered on the currently signed-in user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getleaderboardarounduser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getleaderboardarounduser#getleaderboardarounduserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getleaderboardarounduser#getleaderboardarounduserresult
function PlayFabServerApi.GetLeaderboardAroundUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboardAroundUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves a list of all of the user's characters for the given statistic.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getleaderboardforusercharacters
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getleaderboardforusercharacters#getleaderboardforuserscharactersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/getleaderboardforusercharacters#getleaderboardforuserscharactersresult
function PlayFabServerApi.GetLeaderboardForUserCharacters(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetLeaderboardForUserCharacters", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Returns whatever info is requested in the response for the user. Note that PII (like email address, facebook id) may be
-- returned. All parameters default to false.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getplayercombinedinfo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getplayercombinedinfo#getplayercombinedinforequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getplayercombinedinfo#getplayercombinedinforesult
function PlayFabServerApi.GetPlayerCombinedInfo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerCombinedInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the player's profile
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayerprofile
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayerprofile#getplayerprofilerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayerprofile#getplayerprofileresult
function PlayFabServerApi.GetPlayerProfile(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerProfile", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- List all segments that a player currently belongs to at this moment in time.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getplayersegments
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getplayersegments#getplayerssegmentsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getplayersegments#getplayersegmentsresult
function PlayFabServerApi.GetPlayerSegments(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Allows for paging through all players in a given segment. This API creates a snapshot of all player profiles that match
-- the segment definition at the time of its creation and lives through the Total Seconds to Live, refreshing its life span
-- on each subsequent use of the Continuation Token. Profiles that change during the course of paging will not be reflected
-- in the results. AB Test segments are currently not supported by this operation. NOTE: This API is limited to being
-- called 30 times in one minute. You will be returned an error if you exceed this threshold.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getplayersinsegment
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getplayersinsegment#getplayersinsegmentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getplayersinsegment#getplayersinsegmentresult
function PlayFabServerApi.GetPlayersInSegment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayersInSegment", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the current version and values for the indicated statistics, for the local player.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getplayerstatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getplayerstatistics#getplayerstatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getplayerstatistics#getplayerstatisticsresult
function PlayFabServerApi.GetPlayerStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the information on the available versions of the specified statistic.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getplayerstatisticversions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getplayerstatisticversions#getplayerstatisticversionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getplayerstatisticversions#getplayerstatisticversionsresult
function PlayFabServerApi.GetPlayerStatisticVersions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerStatisticVersions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Get all tags with a given Namespace (optional) from a player profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getplayertags
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getplayertags#getplayertagsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/getplayertags#getplayertagsresult
function PlayFabServerApi.GetPlayerTags(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayerTags", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Facebook identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromfacebookids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromfacebookids#getplayfabidsfromfacebookidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromfacebookids#getplayfabidsfromfacebookidsresult
function PlayFabServerApi.GetPlayFabIDsFromFacebookIDs(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayFabIDsFromFacebookIDs", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Facebook Instant Games identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromfacebookinstantgamesids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromfacebookinstantgamesids#getplayfabidsfromfacebookinstantgamesidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromfacebookinstantgamesids#getplayfabidsfromfacebookinstantgamesidsresult
function PlayFabServerApi.GetPlayFabIDsFromFacebookInstantGamesIds(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayFabIDsFromFacebookInstantGamesIds", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of generic service identifiers. A generic identifier is the
-- service name plus the service-specific ID for the player, as specified by the title when the generic identifier was
-- added to the player account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromgenericids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromgenericids#getplayfabidsfromgenericidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromgenericids#getplayfabidsfromgenericidsresult
function PlayFabServerApi.GetPlayFabIDsFromGenericIDs(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayFabIDsFromGenericIDs", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Nintendo Switch Device identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromnintendoswitchdeviceids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromnintendoswitchdeviceids#getplayfabidsfromnintendoswitchdeviceidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromnintendoswitchdeviceids#getplayfabidsfromnintendoswitchdeviceidsresult
function PlayFabServerApi.GetPlayFabIDsFromNintendoSwitchDeviceIds(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayFabIDsFromNintendoSwitchDeviceIds", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of PlayStation Network identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfrompsnaccountids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfrompsnaccountids#getplayfabidsfrompsnaccountidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfrompsnaccountids#getplayfabidsfrompsnaccountidsresult
function PlayFabServerApi.GetPlayFabIDsFromPSNAccountIDs(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayFabIDsFromPSNAccountIDs", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of Steam identifiers. The Steam identifiers are the profile
-- IDs for the user accounts, available as SteamId in the Steamworks Community API calls.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromsteamids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromsteamids#getplayfabidsfromsteamidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromsteamids#getplayfabidsfromsteamidsresult
function PlayFabServerApi.GetPlayFabIDsFromSteamIDs(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayFabIDsFromSteamIDs", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the unique PlayFab identifiers for the given set of XboxLive identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromxboxliveids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromxboxliveids#getplayfabidsfromxboxliveidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getplayfabidsfromxboxliveids#getplayfabidsfromxboxliveidsresult
function PlayFabServerApi.GetPlayFabIDsFromXboxLiveIDs(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPlayFabIDsFromXboxLiveIDs", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the key-value store of custom publisher settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/getpublisherdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/getpublisherdata#getpublisherdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/getpublisherdata#getpublisherdataresult
function PlayFabServerApi.GetPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the configuration information for the specified random results tables for the title, including all ItemId
-- values and weights
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/getrandomresulttables
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/getrandomresulttables#getrandomresulttablesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/getrandomresulttables#getrandomresulttablesresult
function PlayFabServerApi.GetRandomResultTables(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetRandomResultTables", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the associated PlayFab account identifiers for the given set of server custom identifiers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getservercustomidsfromplayfabids
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getservercustomidsfromplayfabids#getservercustomidsfromplayfabidsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getservercustomidsfromplayfabids#getservercustomidsfromplayfabidsresult
function PlayFabServerApi.GetServerCustomIDsFromPlayFabIDs(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetServerCustomIDsFromPlayFabIDs", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves data stored in a shared group object, as well as the list of members in the group. The server can access all
-- public and private group data. Shared Groups are designed for sharing data between a very small number of players,
-- please see our guide: https://docs.microsoft.com/gaming/playfab/features/social/groups/using-shared-group-data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/getsharedgroupdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/getsharedgroupdata#getsharedgroupdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/getsharedgroupdata#getsharedgroupdataresult
function PlayFabServerApi.GetSharedGroupData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetSharedGroupData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the set of items defined for the specified store, including all prices defined, for the specified player
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/getstoreitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/getstoreitems#getstoreitemsserverrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/getstoreitems#getstoreitemsresult
function PlayFabServerApi.GetStoreItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the current server time
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettime
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettime#gettimerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettime#gettimeresult
function PlayFabServerApi.GetTime(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetTime", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the key-value store of custom title settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettitledata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettitledata#gettitledatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettitledata#gettitledataresult
function PlayFabServerApi.GetTitleData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the key-value store of custom internal title settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettitleinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettitleinternaldata#gettitledatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettitleinternaldata#gettitledataresult
function PlayFabServerApi.GetTitleInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title news feed, as configured in the developer portal
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettitlenews
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettitlenews#gettitlenewsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/gettitlenews#gettitlenewsresult
function PlayFabServerApi.GetTitleNews(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetTitleNews", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the relevant details for a specified user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getuseraccountinfo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getuseraccountinfo#getuseraccountinforequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getuseraccountinfo#getuseraccountinforesult
function PlayFabServerApi.GetUserAccountInfo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserAccountInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Gets all bans for a user.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getuserbans
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getuserbans#getuserbansrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/getuserbans#getuserbansresult
function PlayFabServerApi.GetUserBans(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserdata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserdata#getuserdataresult
function PlayFabServerApi.GetUserData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserinternaldata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserinternaldata#getuserdataresult
function PlayFabServerApi.GetUserInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the specified user's current inventory of virtual goods
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/getuserinventory
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/getuserinventory#getuserinventoryrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/getuserinventory#getuserinventoryresult
function PlayFabServerApi.GetUserInventory(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserInventory", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserpublisherdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserpublisherdata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserpublisherdata#getuserdataresult
function PlayFabServerApi.GetUserPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the publisher-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserpublisherinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserpublisherinternaldata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserpublisherinternaldata#getuserdataresult
function PlayFabServerApi.GetUserPublisherInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the publisher-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserpublisherreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserpublisherreadonlydata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserpublisherreadonlydata#getuserdataresult
function PlayFabServerApi.GetUserPublisherReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserreadonlydata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/getuserreadonlydata#getuserdataresult
function PlayFabServerApi.GetUserReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GetUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Grants the specified character type to the user. CharacterIds are not globally unique; characterId must be evaluated
-- with the parent PlayFabId to guarantee uniqueness.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/grantcharactertouser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/grantcharactertouser#grantcharactertouserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/grantcharactertouser#grantcharactertouserresult
function PlayFabServerApi.GrantCharacterToUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantCharacterToUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds the specified items to the specified character's inventory
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/grantitemstocharacter
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/grantitemstocharacter#grantitemstocharacterrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/grantitemstocharacter#grantitemstocharacterresult
function PlayFabServerApi.GrantItemsToCharacter(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantItemsToCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds the specified items to the specified user's inventory
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/grantitemstouser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/grantitemstouser#grantitemstouserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/grantitemstouser#grantitemstouserresult
function PlayFabServerApi.GrantItemsToUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantItemsToUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds the specified items to the specified user inventories
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/grantitemstousers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/grantitemstousers#grantitemstousersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/grantitemstousers#grantitemstousersresult
function PlayFabServerApi.GrantItemsToUsers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/GrantItemsToUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Links the PlayStation Network account associated with the provided access code to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/linkpsnaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/linkpsnaccount#linkpsnaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/linkpsnaccount#linkpsnaccountresult
function PlayFabServerApi.LinkPSNAccount(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/LinkPSNAccount", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Links the custom server identifier, generated by the title, to the user's PlayFab account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/linkservercustomid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/linkservercustomid#linkservercustomidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/linkservercustomid#linkservercustomidresult
function PlayFabServerApi.LinkServerCustomId(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/LinkServerCustomId", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Links the Xbox Live account associated with the provided access code to the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/linkxboxaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/linkxboxaccount#linkxboxaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/linkxboxaccount#linkxboxaccountresult
function PlayFabServerApi.LinkXboxAccount(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/LinkXboxAccount", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Securely login a game client from an external server backend using a custom identifier for that player. Server Custom ID
-- and Client Custom ID are mutually exclusive and cannot be used to retrieve the same player account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithservercustomid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithservercustomid#loginwithservercustomidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithservercustomid#serverloginresult
function PlayFabServerApi.LoginWithServerCustomId(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/LoginWithServerCustomId", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Signs the user in using an Steam ID, returning a session identifier that can subsequently be used for API calls which
-- require an authenticated user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithsteamid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithsteamid#loginwithsteamidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithsteamid#serverloginresult
function PlayFabServerApi.LoginWithSteamId(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/LoginWithSteamId", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Signs the user in using a Xbox Live Token from an external server backend, returning a session identifier that can
-- subsequently be used for API calls which require an authenticated user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithxbox
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithxbox#loginwithxboxrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithxbox#serverloginresult
function PlayFabServerApi.LoginWithXbox(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/LoginWithXbox", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Signs the user in using an Xbox ID and Sandbox ID, returning a session identifier that can subsequently be used for API
-- calls which require an authenticated user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithxboxid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithxboxid#loginwithxboxidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/loginwithxboxid#serverloginresult
function PlayFabServerApi.LoginWithXboxId(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/LoginWithXboxId", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Modifies the number of remaining uses of a player's inventory item
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/modifyitemuses
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/modifyitemuses#modifyitemusesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/modifyitemuses#modifyitemusesresult
function PlayFabServerApi.ModifyItemUses(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ModifyItemUses", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Moves an item from a character's inventory into another of the users's character's inventory.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/moveitemtocharacterfromcharacter
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/moveitemtocharacterfromcharacter#moveitemtocharacterfromcharacterrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/moveitemtocharacterfromcharacter#moveitemtocharacterfromcharacterresult
function PlayFabServerApi.MoveItemToCharacterFromCharacter(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/MoveItemToCharacterFromCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Moves an item from a user's inventory into their character's inventory.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/moveitemtocharacterfromuser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/moveitemtocharacterfromuser#moveitemtocharacterfromuserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/moveitemtocharacterfromuser#moveitemtocharacterfromuserresult
function PlayFabServerApi.MoveItemToCharacterFromUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/MoveItemToCharacterFromUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Moves an item from a character's inventory into the owning user's inventory.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/moveitemtouserfromcharacter
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/moveitemtouserfromcharacter#moveitemtouserfromcharacterrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/moveitemtouserfromcharacter#moveitemtouserfromcharacterresult
function PlayFabServerApi.MoveItemToUserFromCharacter(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/MoveItemToUserFromCharacter", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Informs the PlayFab match-making service that the user specified has left the Game Server Instance
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/notifymatchmakerplayerleft
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/notifymatchmakerplayerleft#notifymatchmakerplayerleftrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/notifymatchmakerplayerleft#notifymatchmakerplayerleftresult
function PlayFabServerApi.NotifyMatchmakerPlayerLeft(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/NotifyMatchmakerPlayerLeft", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds the virtual goods associated with the coupon to the user's inventory. Coupons can be generated via the
-- Economy->Catalogs tab in the PlayFab Game Manager.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/redeemcoupon
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/redeemcoupon#redeemcouponrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/redeemcoupon#redeemcouponresult
function PlayFabServerApi.RedeemCoupon(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RedeemCoupon", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Validates a Game Server session ticket and returns details about the user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/redeemmatchmakerticket
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/redeemmatchmakerticket#redeemmatchmakerticketrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/redeemmatchmakerticket#redeemmatchmakerticketresult
function PlayFabServerApi.RedeemMatchmakerTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RedeemMatchmakerTicket", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Set the state of the indicated Game Server Instance. Also update the heartbeat for the instance.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/refreshgameserverinstanceheartbeat
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/refreshgameserverinstanceheartbeat#refreshgameserverinstanceheartbeatrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/refreshgameserverinstanceheartbeat#refreshgameserverinstanceheartbeatresult
function PlayFabServerApi.RefreshGameServerInstanceHeartbeat(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RefreshGameServerInstanceHeartbeat", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Removes the specified friend from the the user's friend list
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/removefriend
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/removefriend#removefriendrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/removefriend#emptyresponse
function PlayFabServerApi.RemoveFriend(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RemoveFriend", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Removes the specified generic service identifier from the player's PlayFab account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/removegenericid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/removegenericid#removegenericidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/removegenericid#emptyresult
function PlayFabServerApi.RemoveGenericID(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RemoveGenericID", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Remove a given tag from a player profile. The tag's namespace is automatically generated based on the source of the tag.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/removeplayertag
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/removeplayertag#removeplayertagrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/playstream/removeplayertag#removeplayertagresult
function PlayFabServerApi.RemovePlayerTag(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RemovePlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Removes users from the set of those able to update the shared data and the set of users in the group. Only users in the
-- group can remove members. If as a result of the call, zero users remain with access, the group and its associated data
-- will be deleted. Shared Groups are designed for sharing data between a very small number of players, please see our
-- guide: https://docs.microsoft.com/gaming/playfab/features/social/groups/using-shared-group-data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/removesharedgroupmembers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/removesharedgroupmembers#removesharedgroupmembersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/removesharedgroupmembers#removesharedgroupmembersresult
function PlayFabServerApi.RemoveSharedGroupMembers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RemoveSharedGroupMembers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Submit a report about a player (due to bad bahavior, etc.) on behalf of another player, so that customer service
-- representatives for the title can take action concerning potentially toxic players.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/reportplayer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/reportplayer#reportplayerserverrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/reportplayer#reportplayerserverresult
function PlayFabServerApi.ReportPlayer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/ReportPlayer", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Revoke all active bans for a user.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/revokeallbansforuser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/revokeallbansforuser#revokeallbansforuserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/revokeallbansforuser#revokeallbansforuserresult
function PlayFabServerApi.RevokeAllBansForUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RevokeAllBansForUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Revoke all active bans specified with BanId.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/revokebans
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/revokebans#revokebansrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/revokebans#revokebansresult
function PlayFabServerApi.RevokeBans(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RevokeBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Revokes access to an item in a user's inventory
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/revokeinventoryitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/revokeinventoryitem#revokeinventoryitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/revokeinventoryitem#revokeinventoryresult
function PlayFabServerApi.RevokeInventoryItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RevokeInventoryItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Revokes access for up to 25 items across multiple users and characters.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/revokeinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/revokeinventoryitems#revokeinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/revokeinventoryitems#revokeinventoryitemsresult
function PlayFabServerApi.RevokeInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/RevokeInventoryItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Saves push notification template for title
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/savepushnotificationtemplate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/savepushnotificationtemplate#savepushnotificationtemplaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/savepushnotificationtemplate#savepushnotificationtemplateresult
function PlayFabServerApi.SavePushNotificationTemplate(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SavePushNotificationTemplate", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Forces an email to be sent to the registered contact email address for the user's account based on an account recovery
-- email template
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendcustomaccountrecoveryemail
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendcustomaccountrecoveryemail#sendcustomaccountrecoveryemailrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendcustomaccountrecoveryemail#sendcustomaccountrecoveryemailresult
function PlayFabServerApi.SendCustomAccountRecoveryEmail(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SendCustomAccountRecoveryEmail", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sends an email based on an email template to a player's contact email
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendemailfromtemplate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendemailfromtemplate#sendemailfromtemplaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendemailfromtemplate#sendemailfromtemplateresult
function PlayFabServerApi.SendEmailFromTemplate(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SendEmailFromTemplate", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sends an iOS/Android Push Notification to a specific user, if that user's device has been configured for Push
-- Notifications in PlayFab. If a user has linked both Android and iOS devices, both will be notified.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendpushnotification
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendpushnotification#sendpushnotificationrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendpushnotification#sendpushnotificationresult
function PlayFabServerApi.SendPushNotification(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SendPushNotification", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sends an iOS/Android Push Notification template to a specific user, if that user's device has been configured for Push
-- Notifications in PlayFab. If a user has linked both Android and iOS devices, both will be notified.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendpushnotificationfromtemplate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendpushnotificationfromtemplate#sendpushnotificationfromtemplaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/sendpushnotificationfromtemplate#sendpushnotificationresult
function PlayFabServerApi.SendPushNotificationFromTemplate(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SendPushNotificationFromTemplate", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the tag list for a specified user in the friend list of another user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/setfriendtags
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/setfriendtags#setfriendtagsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/friend-list-management/setfriendtags#emptyresponse
function PlayFabServerApi.SetFriendTags(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetFriendTags", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sets the custom data of the indicated Game Server Instance
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/setgameserverinstancedata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/setgameserverinstancedata#setgameserverinstancedatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/setgameserverinstancedata#setgameserverinstancedataresult
function PlayFabServerApi.SetGameServerInstanceData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetGameServerInstanceData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Set the state of the indicated Game Server Instance.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/setgameserverinstancestate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/setgameserverinstancestate#setgameserverinstancestaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/setgameserverinstancestate#setgameserverinstancestateresult
function PlayFabServerApi.SetGameServerInstanceState(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetGameServerInstanceState", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Set custom tags for the specified Game Server Instance
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/setgameserverinstancetags
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/setgameserverinstancetags#setgameserverinstancetagsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/matchmaking/setgameserverinstancetags#setgameserverinstancetagsresult
function PlayFabServerApi.SetGameServerInstanceTags(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetGameServerInstanceTags", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sets the player's secret if it is not already set. Player secrets are used to sign API requests. To reset a player's
-- secret use the Admin or Server API method SetPlayerSecret.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/setplayersecret
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/setplayersecret#setplayersecretrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/authentication/setplayersecret#setplayersecretresult
function PlayFabServerApi.SetPlayerSecret(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetPlayerSecret", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the key-value store of custom publisher settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/setpublisherdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/setpublisherdata#setpublisherdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/setpublisherdata#setpublisherdataresult
function PlayFabServerApi.SetPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the key-value store of custom title settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/settitledata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/settitledata#settitledatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/settitledata#settitledataresult
function PlayFabServerApi.SetTitleData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the key-value store of custom title settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/settitleinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/settitleinternaldata#settitledatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/title-wide-data-management/settitleinternaldata#settitledataresult
function PlayFabServerApi.SetTitleInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Decrements the character's balance of the specified virtual currency by the stated amount. It is possible to make a VC
-- balance negative with this API.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/subtractcharactervirtualcurrency
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/subtractcharactervirtualcurrency#subtractcharactervirtualcurrencyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/subtractcharactervirtualcurrency#modifycharactervirtualcurrencyresult
function PlayFabServerApi.SubtractCharacterVirtualCurrency(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SubtractCharacterVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Decrements the user's balance of the specified virtual currency by the stated amount. It is possible to make a VC
-- balance negative with this API.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/subtractuservirtualcurrency
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/subtractuservirtualcurrency#subtractuservirtualcurrencyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/subtractuservirtualcurrency#modifyuservirtualcurrencyresult
function PlayFabServerApi.SubtractUserVirtualCurrency(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/SubtractUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Unlinks the related PSN account from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/unlinkpsnaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/unlinkpsnaccount#unlinkpsnaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/unlinkpsnaccount#unlinkpsnaccountresult
function PlayFabServerApi.UnlinkPSNAccount(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UnlinkPSNAccount", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Unlinks the custom server identifier from the user's PlayFab account.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/unlinkservercustomid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/unlinkservercustomid#unlinkservercustomidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/unlinkservercustomid#unlinkservercustomidresult
function PlayFabServerApi.UnlinkServerCustomId(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UnlinkServerCustomId", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Unlinks the related Xbox Live account from the user's PlayFab account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/unlinkxboxaccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/unlinkxboxaccount#unlinkxboxaccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/unlinkxboxaccount#unlinkxboxaccountresult
function PlayFabServerApi.UnlinkXboxAccount(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UnlinkXboxAccount", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Opens a specific container (ContainerItemInstanceId), with a specific key (KeyItemInstanceId, when required), and
-- returns the contents of the opened container. If the container (and key when relevant) are consumable (RemainingUses >
-- 0), their RemainingUses will be decremented, consistent with the operation of ConsumeItem.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/unlockcontainerinstance
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/unlockcontainerinstance#unlockcontainerinstancerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/unlockcontainerinstance#unlockcontaineritemresult
function PlayFabServerApi.UnlockContainerInstance(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UnlockContainerInstance", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Searches Player or Character inventory for any ItemInstance matching the given CatalogItemId, if necessary unlocks it
-- using any appropriate key, and returns the contents of the opened container. If the container (and key when relevant)
-- are consumable (RemainingUses > 0), their RemainingUses will be decremented, consistent with the operation of
-- ConsumeItem.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/unlockcontaineritem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/unlockcontaineritem#unlockcontaineritemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/unlockcontaineritem#unlockcontaineritemresult
function PlayFabServerApi.UnlockContainerItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UnlockContainerItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Update the avatar URL of the specified player
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/updateavatarurl
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/updateavatarurl#updateavatarurlrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/updateavatarurl#emptyresponse
function PlayFabServerApi.UpdateAvatarUrl(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateAvatarUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates information of a list of existing bans specified with Ban Ids.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/updatebans
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/updatebans#updatebansrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/account-management/updatebans#updatebansresult
function PlayFabServerApi.UpdateBans(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user's character which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/updatecharacterdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/updatecharacterdata#updatecharacterdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/updatecharacterdata#updatecharacterdataresult
function PlayFabServerApi.UpdateCharacterData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user's character which cannot be accessed by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/updatecharacterinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/updatecharacterinternaldata#updatecharacterdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/updatecharacterinternaldata#updatecharacterdataresult
function PlayFabServerApi.UpdateCharacterInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user's character which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/updatecharacterreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/updatecharacterreadonlydata#updatecharacterdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/character-data/updatecharacterreadonlydata#updatecharacterdataresult
function PlayFabServerApi.UpdateCharacterReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the values of the specified title-specific statistics for the specific character
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/updatecharacterstatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/updatecharacterstatistics#updatecharacterstatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/characters/updatecharacterstatistics#updatecharacterstatisticsresult
function PlayFabServerApi.UpdateCharacterStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateCharacterStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the values of the specified title-specific statistics for the user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateplayerstatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateplayerstatistics#updateplayerstatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateplayerstatistics#updateplayerstatisticsresult
function PlayFabServerApi.UpdatePlayerStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdatePlayerStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds, updates, and removes data keys for a shared group object. If the permission is set to Public, all fields updated
-- or added in this call will be readable by users not in the group. By default, data permissions are set to Private.
-- Regardless of the permission setting, only members of the group (and the server) can update the data. Shared Groups are
-- designed for sharing data between a very small number of players, please see our guide:
-- https://docs.microsoft.com/gaming/playfab/features/social/groups/using-shared-group-data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/updatesharedgroupdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/updatesharedgroupdata#updatesharedgroupdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/shared-group-data/updatesharedgroupdata#updatesharedgroupdataresult
function PlayFabServerApi.UpdateSharedGroupData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateSharedGroupData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserdata#updateuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserdata#updateuserdataresult
function PlayFabServerApi.UpdateUserData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserinternaldata#updateuserinternaldatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserinternaldata#updateuserdataresult
function PlayFabServerApi.UpdateUserInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the key-value pair data tagged to the specified item, which is read-only from the client.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/updateuserinventoryitemcustomdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/updateuserinventoryitemcustomdata#updateuserinventoryitemdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-item-management/updateuserinventoryitemcustomdata#emptyresponse
function PlayFabServerApi.UpdateUserInventoryItemCustomData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserInventoryItemCustomData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserpublisherdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserpublisherdata#updateuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserpublisherdata#updateuserdataresult
function PlayFabServerApi.UpdateUserPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the publisher-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserpublisherinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserpublisherinternaldata#updateuserinternaldatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserpublisherinternaldata#updateuserdataresult
function PlayFabServerApi.UpdateUserPublisherInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the publisher-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserpublisherreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserpublisherreadonlydata#updateuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserpublisherreadonlydata#updateuserdataresult
function PlayFabServerApi.UpdateUserPublisherReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserreadonlydata#updateuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/player-data-management/updateuserreadonlydata#updateuserdataresult
function PlayFabServerApi.UpdateUserReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/UpdateUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Writes a character-based event into PlayStream.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/analytics/writecharacterevent
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/analytics/writecharacterevent#writeservercharactereventrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/analytics/writecharacterevent#writeeventresponse
function PlayFabServerApi.WriteCharacterEvent(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/WriteCharacterEvent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Writes a player-based event into PlayStream.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/analytics/writeplayerevent
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/analytics/writeplayerevent#writeserverplayereventrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/analytics/writeplayerevent#writeeventresponse
function PlayFabServerApi.WritePlayerEvent(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/WritePlayerEvent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Writes a title-based event into PlayStream.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/server/analytics/writetitleevent
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/server/analytics/writetitleevent#writetitleeventrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/server/analytics/writetitleevent#writeeventresponse
function PlayFabServerApi.WriteTitleEvent(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Server/WriteTitleEvent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

return PlayFabServerApi
