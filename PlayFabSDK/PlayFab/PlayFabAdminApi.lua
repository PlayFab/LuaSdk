-- PlayFab Admin API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabAdminApi = require("PlayFab.PlayFabAdminApi")
-- PlayFabAdminApi.<AdminApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabAdminApi = {
    settings = PlayFabSettings.settings
}

-- Abort an ongoing task instance.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/aborttaskinstance
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/aborttaskinstance#aborttaskinstancerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/aborttaskinstance#emptyresponse
function PlayFabAdminApi.AbortTaskInstance(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AbortTaskInstance", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Update news item to include localized version
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/addlocalizednews
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/addlocalizednews#addlocalizednewsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/addlocalizednews#addlocalizednewsresult
function PlayFabAdminApi.AddLocalizedNews(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddLocalizedNews", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds a new news item to the title's news feed
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/addnews
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/addnews#addnewsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/addnews#addnewsresult
function PlayFabAdminApi.AddNews(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddNews", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds a given tag to a player profile. The tag's namespace is automatically generated based on the source of the tag.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/addplayertag
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/addplayertag#addplayertagrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/addplayertag#addplayertagresult
function PlayFabAdminApi.AddPlayerTag(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddPlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds the game server executable specified (previously uploaded - see GetServerBuildUploadUrl) to the set of those a
-- client is permitted to request in a call to StartGame
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/addserverbuild
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/addserverbuild#addserverbuildrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/addserverbuild#addserverbuildresult
function PlayFabAdminApi.AddServerBuild(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Increments the specified virtual currency by the stated amount
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/adduservirtualcurrency
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/adduservirtualcurrency#adduservirtualcurrencyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/adduservirtualcurrency#modifyuservirtualcurrencyresult
function PlayFabAdminApi.AddUserVirtualCurrency(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds one or more virtual currencies to the set defined for the title. Virtual Currencies have a maximum value of
-- 2,147,483,647 when granted to a player. Any value over that will be discarded.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/addvirtualcurrencytypes
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/addvirtualcurrencytypes#addvirtualcurrencytypesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/addvirtualcurrencytypes#blankresult
function PlayFabAdminApi.AddVirtualCurrencyTypes(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/AddVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Bans users by PlayFab ID with optional IP address, or MAC address for the provided game.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/banusers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/banusers#banusersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/banusers#banusersresult
function PlayFabAdminApi.BanUsers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/BanUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Checks the global count for the limited edition item.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/checklimitededitionitemavailability
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/checklimitededitionitemavailability#checklimitededitionitemavailabilityrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/checklimitededitionitemavailability#checklimitededitionitemavailabilityresult
function PlayFabAdminApi.CheckLimitedEditionItemAvailability(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CheckLimitedEditionItemAvailability", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Create an ActionsOnPlayersInSegment task, which iterates through all players in a segment to execute action.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/createactionsonplayersinsegmenttask
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/createactionsonplayersinsegmenttask#createactionsonplayersegmenttaskrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/createactionsonplayersinsegmenttask#createtaskresult
function PlayFabAdminApi.CreateActionsOnPlayersInSegmentTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreateActionsOnPlayersInSegmentTask", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Create a CloudScript task, which can run a CloudScript on a schedule.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/createcloudscripttask
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/createcloudscripttask#createcloudscripttaskrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/createcloudscripttask#createtaskresult
function PlayFabAdminApi.CreateCloudScriptTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreateCloudScriptTask", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Create a Insights Scheduled Scaling task, which can scale Insights Performance Units on a schedule
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/createinsightsscheduledscalingtask
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/createinsightsscheduledscalingtask#createinsightsscheduledscalingtaskrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/createinsightsscheduledscalingtask#createtaskresult
function PlayFabAdminApi.CreateInsightsScheduledScalingTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreateInsightsScheduledScalingTask", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Registers a relationship between a title and an Open ID Connect provider.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/createopenidconnection
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/createopenidconnection#createopenidconnectionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/createopenidconnection#emptyresponse
function PlayFabAdminApi.CreateOpenIdConnection(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreateOpenIdConnection", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Creates a new Player Shared Secret Key. It may take up to 5 minutes for this key to become generally available after
-- this API returns.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/createplayersharedsecret
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/createplayersharedsecret#createplayersharedsecretrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/createplayersharedsecret#createplayersharedsecretresult
function PlayFabAdminApi.CreatePlayerSharedSecret(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreatePlayerSharedSecret", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds a new player statistic configuration to the title, optionally allowing the developer to specify a reset interval
-- and an aggregation method.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/createplayerstatisticdefinition
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/createplayerstatisticdefinition#createplayerstatisticdefinitionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/createplayerstatisticdefinition#createplayerstatisticdefinitionresult
function PlayFabAdminApi.CreatePlayerStatisticDefinition(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreatePlayerStatisticDefinition", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Creates a new player segment by defining the conditions on player properties. Also, create actions to target the player
-- segments for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/createsegment
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/createsegment#createsegmentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/createsegment#createsegmentresponse
function PlayFabAdminApi.CreateSegment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/CreateSegment", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Delete a content file from the title. When deleting a file that does not exist, it returns success.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/content/deletecontent
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/content/deletecontent#deletecontentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/content/deletecontent#blankresult
function PlayFabAdminApi.DeleteContent(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteContent", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Removes a master player account entirely from all titles and deletes all associated data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/deletemasterplayeraccount
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/deletemasterplayeraccount#deletemasterplayeraccountrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/deletemasterplayeraccount#deletemasterplayeraccountresult
function PlayFabAdminApi.DeleteMasterPlayerAccount(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteMasterPlayerAccount", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Removes a relationship between a title and an OpenID Connect provider.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/deleteopenidconnection
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/deleteopenidconnection#deleteopenidconnectionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/deleteopenidconnection#emptyresponse
function PlayFabAdminApi.DeleteOpenIdConnection(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteOpenIdConnection", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Removes a user's player account from a title and deletes all associated data
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/deleteplayer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/deleteplayer#deleteplayerrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/deleteplayer#deleteplayerresult
function PlayFabAdminApi.DeletePlayer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeletePlayer", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Deletes an existing Player Shared Secret Key. It may take up to 5 minutes for this delete to be reflected after this API
-- returns.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/deleteplayersharedsecret
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/deleteplayersharedsecret#deleteplayersharedsecretrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/deleteplayersharedsecret#deleteplayersharedsecretresult
function PlayFabAdminApi.DeletePlayerSharedSecret(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeletePlayerSharedSecret", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Deletes an existing player segment and its associated action(s) for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/deletesegment
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/deletesegment#deletesegmentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/deletesegment#deletesegmentsresponse
function PlayFabAdminApi.DeleteSegment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteSegment", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Deletes an existing virtual item store
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/deletestore
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/deletestore#deletestorerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/deletestore#deletestoreresult
function PlayFabAdminApi.DeleteStore(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteStore", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Delete a task.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/deletetask
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/deletetask#deletetaskrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/deletetask#emptyresponse
function PlayFabAdminApi.DeleteTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteTask", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Permanently deletes a title and all associated configuration
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/deletetitle
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/deletetitle#deletetitlerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/deletetitle#deletetitleresult
function PlayFabAdminApi.DeleteTitle(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteTitle", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Deletes a specified set of title data overrides.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/deletetitledataoverride
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/deletetitledataoverride#deletetitledataoverriderequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/deletetitledataoverride#deletetitledataoverrideresult
function PlayFabAdminApi.DeleteTitleDataOverride(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/DeleteTitleDataOverride", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Exports all associated data of a master player account
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/exportmasterplayerdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/exportmasterplayerdata#exportmasterplayerdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/exportmasterplayerdata#exportmasterplayerdataresult
function PlayFabAdminApi.ExportMasterPlayerData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ExportMasterPlayerData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Get information about a ActionsOnPlayersInSegment task instance.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/getactionsonplayersinsegmenttaskinstance
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/getactionsonplayersinsegmenttaskinstance#gettaskinstancerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/getactionsonplayersinsegmenttaskinstance#getactionsonplayersinsegmenttaskinstanceresult
function PlayFabAdminApi.GetActionsOnPlayersInSegmentTaskInstance(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetActionsOnPlayersInSegmentTaskInstance", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves an array of player segment definitions. Results from this can be used in subsequent API calls such as
-- GetPlayersInSegment which requires a Segment ID. While segment names can change the ID for that segment will not change.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getallsegments
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getallsegments#getallsegmentsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getallsegments#getallsegmentsresult
function PlayFabAdminApi.GetAllSegments(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetAllSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the specified version of the title's catalog of virtual goods, including all defined properties
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getcatalogitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getcatalogitems#getcatalogitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getcatalogitems#getcatalogitemsresult
function PlayFabAdminApi.GetCatalogItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Gets the contents and information of a specific Cloud Script revision.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/getcloudscriptrevision
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/getcloudscriptrevision#getcloudscriptrevisionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/getcloudscriptrevision#getcloudscriptrevisionresult
function PlayFabAdminApi.GetCloudScriptRevision(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCloudScriptRevision", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Get detail information about a CloudScript task instance.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/getcloudscripttaskinstance
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/getcloudscripttaskinstance#gettaskinstancerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/getcloudscripttaskinstance#getcloudscripttaskinstanceresult
function PlayFabAdminApi.GetCloudScriptTaskInstance(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCloudScriptTaskInstance", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Lists all the current cloud script versions. For each version, information about the current published and latest
-- revisions is also listed.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/getcloudscriptversions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/getcloudscriptversions#getcloudscriptversionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/getcloudscriptversions#getcloudscriptversionsresult
function PlayFabAdminApi.GetCloudScriptVersions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetCloudScriptVersions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- List all contents of the title and get statistics such as size
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/content/getcontentlist
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/content/getcontentlist#getcontentlistrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/content/getcontentlist#getcontentlistresult
function PlayFabAdminApi.GetContentList(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetContentList", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the pre-signed URL for uploading a content file. A subsequent HTTP PUT to the returned URL uploads the
-- content. Also, please be aware that the Content service is specifically PlayFab's CDN offering, for which standard CDN
-- rates apply.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/content/getcontentuploadurl
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/content/getcontentuploadurl#getcontentuploadurlrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/content/getcontentuploadurl#getcontentuploadurlresult
function PlayFabAdminApi.GetContentUploadUrl(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetContentUploadUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves a download URL for the requested report
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getdatareport
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getdatareport#getdatareportrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getdatareport#getdatareportresult
function PlayFabAdminApi.GetDataReport(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetDataReport", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the details for a specific completed session, including links to standard out and standard error logs
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/matchmaking/getmatchmakergameinfo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/matchmaking/getmatchmakergameinfo#getmatchmakergameinforequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/matchmaking/getmatchmakergameinfo#getmatchmakergameinforesult
function PlayFabAdminApi.GetMatchmakerGameInfo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetMatchmakerGameInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the details of defined game modes for the specified game server executable
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/matchmaking/getmatchmakergamemodes
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/matchmaking/getmatchmakergamemodes#getmatchmakergamemodesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/matchmaking/getmatchmakergamemodes#getmatchmakergamemodesresult
function PlayFabAdminApi.GetMatchmakerGameModes(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetMatchmakerGameModes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Get the list of titles that the player has played
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getplayedtitlelist
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getplayedtitlelist#getplayedtitlelistrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getplayedtitlelist#getplayedtitlelistresult
function PlayFabAdminApi.GetPlayedTitleList(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayedTitleList", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Gets a player's ID from an auth token.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getplayeridfromauthtoken
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getplayeridfromauthtoken#getplayeridfromauthtokenrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getplayeridfromauthtoken#getplayeridfromauthtokenresult
function PlayFabAdminApi.GetPlayerIdFromAuthToken(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerIdFromAuthToken", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the player's profile
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getplayerprofile
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getplayerprofile#getplayerprofilerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getplayerprofile#getplayerprofileresult
function PlayFabAdminApi.GetPlayerProfile(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerProfile", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- List all segments that a player currently belongs to at this moment in time.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getplayersegments
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getplayersegments#getplayerssegmentsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getplayersegments#getplayersegmentsresult
function PlayFabAdminApi.GetPlayerSegments(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Returns all Player Shared Secret Keys including disabled and expired.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/getplayersharedsecrets
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/getplayersharedsecrets#getplayersharedsecretsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/getplayersharedsecrets#getplayersharedsecretsresult
function PlayFabAdminApi.GetPlayerSharedSecrets(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerSharedSecrets", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Allows for paging through all players in a given segment. This API creates a snapshot of all player profiles that match
-- the segment definition at the time of its creation and lives through the Total Seconds to Live, refreshing its life span
-- on each subsequent use of the Continuation Token. Profiles that change during the course of paging will not be reflected
-- in the results. AB Test segments are currently not supported by this operation. NOTE: This API is limited to being
-- called 30 times in one minute. You will be returned an error if you exceed this threshold.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getplayersinsegment
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getplayersinsegment#getplayersinsegmentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getplayersinsegment#getplayersinsegmentresult
function PlayFabAdminApi.GetPlayersInSegment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayersInSegment", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the configuration information for all player statistics defined in the title, regardless of whether they have
-- a reset interval.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getplayerstatisticdefinitions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getplayerstatisticdefinitions#getplayerstatisticdefinitionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getplayerstatisticdefinitions#getplayerstatisticdefinitionsresult
function PlayFabAdminApi.GetPlayerStatisticDefinitions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerStatisticDefinitions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the information on the available versions of the specified statistic.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getplayerstatisticversions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getplayerstatisticversions#getplayerstatisticversionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getplayerstatisticversions#getplayerstatisticversionsresult
function PlayFabAdminApi.GetPlayerStatisticVersions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerStatisticVersions", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Get all tags with a given Namespace (optional) from a player profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getplayertags
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getplayertags#getplayertagsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/getplayertags#getplayertagsresult
function PlayFabAdminApi.GetPlayerTags(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPlayerTags", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Gets the requested policy.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/getpolicy
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/getpolicy#getpolicyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/getpolicy#getpolicyresponse
function PlayFabAdminApi.GetPolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPolicy", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the key-value store of custom publisher settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getpublisherdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getpublisherdata#getpublisherdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getpublisherdata#getpublisherdataresult
function PlayFabAdminApi.GetPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the random drop table configuration for the title
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getrandomresulttables
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getrandomresulttables#getrandomresulttablesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getrandomresulttables#getrandomresulttablesresult
function PlayFabAdminApi.GetRandomResultTables(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetRandomResultTables", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Get detail information of a segment and its associated definition(s) and action(s) for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/getsegments
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/getsegments#getsegmentsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/getsegments#getsegmentsresponse
function PlayFabAdminApi.GetSegments(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetSegments", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the build details for the specified game server executable
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/getserverbuildinfo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/getserverbuildinfo#getserverbuildinforequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/getserverbuildinfo#getserverbuildinforesult
function PlayFabAdminApi.GetServerBuildInfo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetServerBuildInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the pre-authorized URL for uploading a game server package containing a build (does not enable the build for
-- use - see AddServerBuild)
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/getserverbuilduploadurl
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/getserverbuilduploadurl#getserverbuilduploadurlrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/getserverbuilduploadurl#getserverbuilduploadurlresult
function PlayFabAdminApi.GetServerBuildUploadUrl(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetServerBuildUploadUrl", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the set of items defined for the specified store, including all prices defined
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getstoreitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getstoreitems#getstoreitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/getstoreitems#getstoreitemsresult
function PlayFabAdminApi.GetStoreItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Query for task instances by task, status, or time range.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/gettaskinstances
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/gettaskinstances#gettaskinstancesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/gettaskinstances#gettaskinstancesresult
function PlayFabAdminApi.GetTaskInstances(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTaskInstances", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Get definition information on a specified task or all tasks within a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/gettasks
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/gettasks#gettasksrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/gettasks#gettasksresult
function PlayFabAdminApi.GetTasks(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTasks", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the key-value store of custom title settings which can be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/gettitledata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/gettitledata#gettitledatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/gettitledata#gettitledataresult
function PlayFabAdminApi.GetTitleData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the key-value store of custom title settings which cannot be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/gettitleinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/gettitleinternaldata#gettitledatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/gettitleinternaldata#gettitledataresult
function PlayFabAdminApi.GetTitleInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the relevant details for a specified user, based upon a match against a supplied unique identifier
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getuseraccountinfo
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getuseraccountinfo#lookupuseraccountinforequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getuseraccountinfo#lookupuseraccountinforesult
function PlayFabAdminApi.GetUserAccountInfo(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserAccountInfo", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Gets all bans for a user.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getuserbans
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getuserbans#getuserbansrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/getuserbans#getuserbansresult
function PlayFabAdminApi.GetUserBans(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserdata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserdata#getuserdataresult
function PlayFabAdminApi.GetUserData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserinternaldata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserinternaldata#getuserdataresult
function PlayFabAdminApi.GetUserInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the specified user's current inventory of virtual goods
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/getuserinventory
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/getuserinventory#getuserinventoryrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/getuserinventory#getuserinventoryresult
function PlayFabAdminApi.GetUserInventory(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserInventory", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserpublisherdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserpublisherdata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserpublisherdata#getuserdataresult
function PlayFabAdminApi.GetUserPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the publisher-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserpublisherinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserpublisherinternaldata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserpublisherinternaldata#getuserdataresult
function PlayFabAdminApi.GetUserPublisherInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the publisher-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserpublisherreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserpublisherreadonlydata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserpublisherreadonlydata#getuserdataresult
function PlayFabAdminApi.GetUserPublisherReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the title-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserreadonlydata#getuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/getuserreadonlydata#getuserdataresult
function PlayFabAdminApi.GetUserReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GetUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Adds the specified items to the specified user inventories
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/grantitemstousers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/grantitemstousers#grantitemstousersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/grantitemstousers#grantitemstousersresult
function PlayFabAdminApi.GrantItemsToUsers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/GrantItemsToUsers", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Increases the global count for the given scarce resource.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/incrementlimitededitionitemavailability
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/incrementlimitededitionitemavailability#incrementlimitededitionitemavailabilityrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/incrementlimitededitionitemavailability#incrementlimitededitionitemavailabilityresult
function PlayFabAdminApi.IncrementLimitedEditionItemAvailability(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/IncrementLimitedEditionItemAvailability", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Resets the indicated statistic, removing all player entries for it and backing up the old values.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/incrementplayerstatisticversion
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/incrementplayerstatisticversion#incrementplayerstatisticversionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/incrementplayerstatisticversion#incrementplayerstatisticversionresult
function PlayFabAdminApi.IncrementPlayerStatisticVersion(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/IncrementPlayerStatisticVersion", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves a list of all Open ID Connect providers registered to a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/listopenidconnection
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/listopenidconnection#listopenidconnectionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/listopenidconnection#listopenidconnectionresponse
function PlayFabAdminApi.ListOpenIdConnection(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ListOpenIdConnection", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retrieves the build details for all game server executables which are currently defined for the title
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/listserverbuilds
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/listserverbuilds#listbuildsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/listserverbuilds#listbuildsresult
function PlayFabAdminApi.ListServerBuilds(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ListServerBuilds", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Retuns the list of all defined virtual currencies for the title
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/listvirtualcurrencytypes
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/listvirtualcurrencytypes#listvirtualcurrencytypesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/listvirtualcurrencytypes#listvirtualcurrencytypesresult
function PlayFabAdminApi.ListVirtualCurrencyTypes(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ListVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the game server mode details for the specified game server executable
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/matchmaking/modifymatchmakergamemodes
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/matchmaking/modifymatchmakergamemodes#modifymatchmakergamemodesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/matchmaking/modifymatchmakergamemodes#modifymatchmakergamemodesresult
function PlayFabAdminApi.ModifyMatchmakerGameModes(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ModifyMatchmakerGameModes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the build details for the specified game server executable
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/modifyserverbuild
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/modifyserverbuild#modifyserverbuildrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/modifyserverbuild#modifyserverbuildresult
function PlayFabAdminApi.ModifyServerBuild(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ModifyServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Attempts to process an order refund through the original real money payment provider.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/refundpurchase
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/refundpurchase#refundpurchaserequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/refundpurchase#refundpurchaseresponse
function PlayFabAdminApi.RefundPurchase(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RefundPurchase", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Remove a given tag from a player profile. The tag's namespace is automatically generated based on the source of the tag.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/removeplayertag
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/removeplayertag#removeplayertagrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/playstream/removeplayertag#removeplayertagresult
function PlayFabAdminApi.RemovePlayerTag(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemovePlayerTag", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Removes the game server executable specified from the set of those a client is permitted to request in a call to
-- StartGame
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/removeserverbuild
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/removeserverbuild#removeserverbuildrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/custom-server-management/removeserverbuild#removeserverbuildresult
function PlayFabAdminApi.RemoveServerBuild(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemoveServerBuild", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Removes one or more virtual currencies from the set defined for the title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/removevirtualcurrencytypes
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/removevirtualcurrencytypes#removevirtualcurrencytypesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/removevirtualcurrencytypes#blankresult
function PlayFabAdminApi.RemoveVirtualCurrencyTypes(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RemoveVirtualCurrencyTypes", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Completely removes all statistics for the specified character, for the current game
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/characters/resetcharacterstatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/characters/resetcharacterstatistics#resetcharacterstatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/characters/resetcharacterstatistics#resetcharacterstatisticsresult
function PlayFabAdminApi.ResetCharacterStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetCharacterStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Reset a player's password for a given title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/resetpassword
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/resetpassword#resetpasswordrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/resetpassword#resetpasswordresult
function PlayFabAdminApi.ResetPassword(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetPassword", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Completely removes all statistics for the specified user, for the current game
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/resetuserstatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/resetuserstatistics#resetuserstatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/resetuserstatistics#resetuserstatisticsresult
function PlayFabAdminApi.ResetUserStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResetUserStatistics", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Attempts to resolve a dispute with the original order's payment provider.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/resolvepurchasedispute
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/resolvepurchasedispute#resolvepurchasedisputerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/resolvepurchasedispute#resolvepurchasedisputeresponse
function PlayFabAdminApi.ResolvePurchaseDispute(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/ResolvePurchaseDispute", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Revoke all active bans for a user.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/revokeallbansforuser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/revokeallbansforuser#revokeallbansforuserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/revokeallbansforuser#revokeallbansforuserresult
function PlayFabAdminApi.RevokeAllBansForUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeAllBansForUser", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Revoke all active bans specified with BanId.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/revokebans
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/revokebans#revokebansrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/revokebans#revokebansresult
function PlayFabAdminApi.RevokeBans(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Revokes access to an item in a user's inventory
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/revokeinventoryitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/revokeinventoryitem#revokeinventoryitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/revokeinventoryitem#revokeinventoryresult
function PlayFabAdminApi.RevokeInventoryItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeInventoryItem", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Revokes access for up to 25 items across multiple users and characters.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/revokeinventoryitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/revokeinventoryitems#revokeinventoryitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/revokeinventoryitems#revokeinventoryitemsresult
function PlayFabAdminApi.RevokeInventoryItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RevokeInventoryItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Run a task immediately regardless of its schedule.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/runtask
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/runtask#runtaskrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/runtask#runtaskresult
function PlayFabAdminApi.RunTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/RunTask", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Forces an email to be sent to the registered email address for the user's account, with a link allowing the user to
-- change the password.If an account recovery email template ID is provided, an email using the custom email template will
-- be used.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/sendaccountrecoveryemail
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/sendaccountrecoveryemail#sendaccountrecoveryemailrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/sendaccountrecoveryemail#sendaccountrecoveryemailresult
function PlayFabAdminApi.SendAccountRecoveryEmail(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SendAccountRecoveryEmail", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Creates the catalog configuration of all virtual goods for the specified catalog version
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/setcatalogitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/setcatalogitems#updatecatalogitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/setcatalogitems#updatecatalogitemsresult
function PlayFabAdminApi.SetCatalogItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sets or resets the player's secret. Player secrets are used to sign API requests.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/setplayersecret
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/setplayersecret#setplayersecretrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/setplayersecret#setplayersecretresult
function PlayFabAdminApi.SetPlayerSecret(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetPlayerSecret", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sets the currently published revision of a title Cloud Script
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/setpublishedrevision
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/setpublishedrevision#setpublishedrevisionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/setpublishedrevision#setpublishedrevisionresult
function PlayFabAdminApi.SetPublishedRevision(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetPublishedRevision", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the key-value store of custom publisher settings
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/shared-group-data/setpublisherdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/shared-group-data/setpublisherdata#setpublisherdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/shared-group-data/setpublisherdata#setpublisherdataresult
function PlayFabAdminApi.SetPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sets all the items in one virtual store
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/setstoreitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/setstoreitems#updatestoreitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/setstoreitems#updatestoreitemsresult
function PlayFabAdminApi.SetStoreItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Creates and updates the key-value store of custom title settings which can be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/settitledata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/settitledata#settitledatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/settitledata#settitledataresult
function PlayFabAdminApi.SetTitleData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetTitleData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Set and delete key-value pairs in a title data override instance.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/settitledataandoverrides
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/settitledataandoverrides#settitledataandoverridesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/settitledataandoverrides#settitledataandoverridesresult
function PlayFabAdminApi.SetTitleDataAndOverrides(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetTitleDataAndOverrides", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the key-value store of custom title settings which cannot be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/settitleinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/settitleinternaldata#settitledatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/settitleinternaldata#settitledataresult
function PlayFabAdminApi.SetTitleInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetTitleInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Sets the Amazon Resource Name (ARN) for iOS and Android push notifications. Documentation on the exact restrictions can
-- be found at: http://docs.aws.amazon.com/sns/latest/api/API_CreatePlatformApplication.html. Currently, Amazon device
-- Messaging is not supported.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/setuppushnotification
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/setuppushnotification#setuppushnotificationrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/setuppushnotification#setuppushnotificationresult
function PlayFabAdminApi.SetupPushNotification(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SetupPushNotification", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Decrements the specified virtual currency by the stated amount
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/subtractuservirtualcurrency
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/subtractuservirtualcurrency#subtractuservirtualcurrencyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-item-management/subtractuservirtualcurrency#modifyuservirtualcurrencyresult
function PlayFabAdminApi.SubtractUserVirtualCurrency(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/SubtractUserVirtualCurrency", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates information of a list of existing bans specified with Ban Ids.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/updatebans
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/updatebans#updatebansrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/updatebans#updatebansresult
function PlayFabAdminApi.UpdateBans(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateBans", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the catalog configuration for virtual goods in the specified catalog version
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/updatecatalogitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/updatecatalogitems#updatecatalogitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/updatecatalogitems#updatecatalogitemsresult
function PlayFabAdminApi.UpdateCatalogItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateCatalogItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Creates a new Cloud Script revision and uploads source code to it. Note that at this time, only one file should be
-- submitted in the revision.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/updatecloudscript
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/updatecloudscript#updatecloudscriptrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/server-side-cloud-script/updatecloudscript#updatecloudscriptresult
function PlayFabAdminApi.UpdateCloudScript(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateCloudScript", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Modifies data and credentials for an existing relationship between a title and an Open ID Connect provider
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/updateopenidconnection
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/updateopenidconnection#updateopenidconnectionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/updateopenidconnection#emptyresponse
function PlayFabAdminApi.UpdateOpenIdConnection(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateOpenIdConnection", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates a existing Player Shared Secret Key. It may take up to 5 minutes for this update to become generally available
-- after this API returns.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/updateplayersharedsecret
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/updateplayersharedsecret#updateplayersharedsecretrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/updateplayersharedsecret#updateplayersharedsecretresult
function PlayFabAdminApi.UpdatePlayerSharedSecret(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdatePlayerSharedSecret", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates a player statistic configuration for the title, optionally allowing the developer to specify a reset interval.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateplayerstatisticdefinition
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateplayerstatisticdefinition#updateplayerstatisticdefinitionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateplayerstatisticdefinition#updateplayerstatisticdefinitionresult
function PlayFabAdminApi.UpdatePlayerStatisticDefinition(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdatePlayerStatisticDefinition", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Changes a policy for a title
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/updatepolicy
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/updatepolicy#updatepolicyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/authentication/updatepolicy#updatepolicyresponse
function PlayFabAdminApi.UpdatePolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdatePolicy", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the random drop table configuration for the title
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/updaterandomresulttables
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/updaterandomresulttables#updaterandomresulttablesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/updaterandomresulttables#updaterandomresulttablesresult
function PlayFabAdminApi.UpdateRandomResultTables(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateRandomResultTables", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates an existing player segment and its associated definition(s) and action(s) for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/updatesegment
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/updatesegment#updatesegmentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/segments/updatesegment#updatesegmentresponse
function PlayFabAdminApi.UpdateSegment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateSegment", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates an existing virtual item store with new or modified items
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/updatestoreitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/updatestoreitems#updatestoreitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/title-wide-data-management/updatestoreitems#updatestoreitemsresult
function PlayFabAdminApi.UpdateStoreItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateStoreItems", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Update an existing task.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/updatetask
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/updatetask#updatetaskrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/scheduledtask/updatetask#emptyresponse
function PlayFabAdminApi.UpdateTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateTask", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserdata#updateuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserdata#updateuserdataresult
function PlayFabAdminApi.UpdateUserData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserinternaldata#updateuserinternaldatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserinternaldata#updateuserdataresult
function PlayFabAdminApi.UpdateUserInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the publisher-specific custom data for the user which is readable and writable by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserpublisherdata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserpublisherdata#updateuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserpublisherdata#updateuserdataresult
function PlayFabAdminApi.UpdateUserPublisherData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the publisher-specific custom data for the user which cannot be accessed by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserpublisherinternaldata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserpublisherinternaldata#updateuserinternaldatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserpublisherinternaldata#updateuserdataresult
function PlayFabAdminApi.UpdateUserPublisherInternalData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherInternalData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the publisher-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserpublisherreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserpublisherreadonlydata#updateuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserpublisherreadonlydata#updateuserdataresult
function PlayFabAdminApi.UpdateUserPublisherReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserPublisherReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title-specific custom data for the user which can only be read by the client
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserreadonlydata
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserreadonlydata#updateuserdatarequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/player-data-management/updateuserreadonlydata#updateuserdataresult
function PlayFabAdminApi.UpdateUserReadOnlyData(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserReadOnlyData", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

-- Updates the title specific display name for a user
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/updateusertitledisplayname
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/updateusertitledisplayname#updateusertitledisplaynamerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/admin/account-management/updateusertitledisplayname#updateusertitledisplaynameresult
function PlayFabAdminApi.UpdateUserTitleDisplayName(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings.settings.devSecretKey) then error("Must have PlayFabSettings.settings.devSecretKey set to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Admin/UpdateUserTitleDisplayName", request, "X-SecretKey", PlayFabSettings.settings.devSecretKey, onSuccess, onError)
end

return PlayFabAdminApi
