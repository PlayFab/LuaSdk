-- PlayFab Multiplayer API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabMultiplayerApi = require("PlayFab.PlayFabMultiplayerApi")
-- PlayFabMultiplayerApi.<MultiplayerApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabMultiplayerApi = {
    settings = PlayFabSettings.settings
}

-- Cancel all active tickets the player is a member of in a given queue.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelallmatchmakingticketsforplayer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelallmatchmakingticketsforplayer#cancelallmatchmakingticketsforplayerrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelallmatchmakingticketsforplayer#cancelallmatchmakingticketsforplayerresult
function PlayFabMultiplayerApi.CancelAllMatchmakingTicketsForPlayer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/CancelAllMatchmakingTicketsForPlayer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Cancel all active backfill tickets the player is a member of in a given queue.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelallserverbackfillticketsforplayer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelallserverbackfillticketsforplayer#cancelallserverbackfillticketsforplayerrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelallserverbackfillticketsforplayer#cancelallserverbackfillticketsforplayerresult
function PlayFabMultiplayerApi.CancelAllServerBackfillTicketsForPlayer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/CancelAllServerBackfillTicketsForPlayer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Cancel a matchmaking ticket.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelmatchmakingticket
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelmatchmakingticket#cancelmatchmakingticketrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelmatchmakingticket#cancelmatchmakingticketresult
function PlayFabMultiplayerApi.CancelMatchmakingTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/CancelMatchmakingTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Cancel a server backfill ticket.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelserverbackfillticket
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelserverbackfillticket#cancelserverbackfillticketrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/cancelserverbackfillticket#cancelserverbackfillticketresult
function PlayFabMultiplayerApi.CancelServerBackfillTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/CancelServerBackfillTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a multiplayer server build alias.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildalias
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildalias#createbuildaliasrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildalias#buildaliasdetailsresponse
function PlayFabMultiplayerApi.CreateBuildAlias(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/CreateBuildAlias", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a multiplayer server build with a custom container.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildwithcustomcontainer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildwithcustomcontainer#createbuildwithcustomcontainerrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildwithcustomcontainer#createbuildwithcustomcontainerresponse
function PlayFabMultiplayerApi.CreateBuildWithCustomContainer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/CreateBuildWithCustomContainer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a multiplayer server build with a managed container.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildwithmanagedcontainer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildwithmanagedcontainer#createbuildwithmanagedcontainerrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildwithmanagedcontainer#createbuildwithmanagedcontainerresponse
function PlayFabMultiplayerApi.CreateBuildWithManagedContainer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/CreateBuildWithManagedContainer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a multiplayer server build with the server running as a process.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildwithprocessbasedserver
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildwithprocessbasedserver#createbuildwithprocessbasedserverrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createbuildwithprocessbasedserver#createbuildwithprocessbasedserverresponse
function PlayFabMultiplayerApi.CreateBuildWithProcessBasedServer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/CreateBuildWithProcessBasedServer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Create a lobby.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/createlobby
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/createlobby#createlobbyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/createlobby#createlobbyresult
function PlayFabMultiplayerApi.CreateLobby(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/CreateLobby", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Create a matchmaking ticket as a client.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/creatematchmakingticket
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/creatematchmakingticket#creatematchmakingticketrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/creatematchmakingticket#creatematchmakingticketresult
function PlayFabMultiplayerApi.CreateMatchmakingTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/CreateMatchmakingTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a remote user to log on to a VM for a multiplayer server build.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createremoteuser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createremoteuser#createremoteuserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createremoteuser#createremoteuserresponse
function PlayFabMultiplayerApi.CreateRemoteUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/CreateRemoteUser", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Create a backfill matchmaking ticket as a server. A backfill ticket represents an ongoing game. The matchmaking service
-- automatically starts matching the backfill ticket against other matchmaking tickets. Backfill tickets cannot match with
-- other backfill tickets.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/createserverbackfillticket
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/createserverbackfillticket#createserverbackfillticketrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/createserverbackfillticket#createserverbackfillticketresult
function PlayFabMultiplayerApi.CreateServerBackfillTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/CreateServerBackfillTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Create a matchmaking ticket as a server. The matchmaking service automatically starts matching the ticket against other
-- matchmaking tickets.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/createservermatchmakingticket
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/createservermatchmakingticket#createservermatchmakingticketrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/createservermatchmakingticket#creatematchmakingticketresult
function PlayFabMultiplayerApi.CreateServerMatchmakingTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/CreateServerMatchmakingTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a request to change a title's multiplayer server quotas.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createtitlemultiplayerserversquotachange
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createtitlemultiplayerserversquotachange#createtitlemultiplayerserversquotachangerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/createtitlemultiplayerserversquotachange#createtitlemultiplayerserversquotachangeresponse
function PlayFabMultiplayerApi.CreateTitleMultiplayerServersQuotaChange(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/CreateTitleMultiplayerServersQuotaChange", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a multiplayer server game asset for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deleteasset
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deleteasset#deleteassetrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deleteasset#emptyresponse
function PlayFabMultiplayerApi.DeleteAsset(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteAsset", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a multiplayer server build.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletebuild
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletebuild#deletebuildrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletebuild#emptyresponse
function PlayFabMultiplayerApi.DeleteBuild(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteBuild", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a multiplayer server build alias.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletebuildalias
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletebuildalias#deletebuildaliasrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletebuildalias#emptyresponse
function PlayFabMultiplayerApi.DeleteBuildAlias(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteBuildAlias", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes a multiplayer server build's region.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletebuildregion
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletebuildregion#deletebuildregionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletebuildregion#emptyresponse
function PlayFabMultiplayerApi.DeleteBuildRegion(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteBuildRegion", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a multiplayer server game certificate.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletecertificate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletecertificate#deletecertificaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletecertificate#emptyresponse
function PlayFabMultiplayerApi.DeleteCertificate(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteCertificate", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a container image repository.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletecontainerimagerepository
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletecontainerimagerepository#deletecontainerimagerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deletecontainerimagerepository#emptyresponse
function PlayFabMultiplayerApi.DeleteContainerImageRepository(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteContainerImageRepository", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Delete a lobby.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/deletelobby
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/deletelobby#deletelobbyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/deletelobby#lobbyemptyresult
function PlayFabMultiplayerApi.DeleteLobby(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/DeleteLobby", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a remote user to log on to a VM for a multiplayer server build.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deleteremoteuser
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deleteremoteuser#deleteremoteuserrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/deleteremoteuser#emptyresponse
function PlayFabMultiplayerApi.DeleteRemoteUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteRemoteUser", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Enables the multiplayer server feature for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/enablemultiplayerserversfortitle
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/enablemultiplayerserversfortitle#enablemultiplayerserversfortitlerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/enablemultiplayerserversfortitle#enablemultiplayerserversfortitleresponse
function PlayFabMultiplayerApi.EnableMultiplayerServersForTitle(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/EnableMultiplayerServersForTitle", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Find lobbies which match certain criteria, and which friends are in.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/findfriendlobbies
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/findfriendlobbies#findfriendlobbiesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/findfriendlobbies#findfriendlobbiesresult
function PlayFabMultiplayerApi.FindFriendLobbies(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/FindFriendLobbies", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Find all the lobbies that match certain criteria.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/findlobbies
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/findlobbies#findlobbiesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/findlobbies#findlobbiesresult
function PlayFabMultiplayerApi.FindLobbies(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/FindLobbies", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets a URL that can be used to download the specified asset. A sample pre-authenticated url -
-- https://sampleStorageAccount.blob.core.windows.net/gameassets/gameserver.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=startDate&se=endDate&spr=https&sig=sampleSig&api-version=2017-07-29
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getassetdownloadurl
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getassetdownloadurl#getassetdownloadurlrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getassetdownloadurl#getassetdownloadurlresponse
function PlayFabMultiplayerApi.GetAssetDownloadUrl(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetAssetDownloadUrl", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the URL to upload assets to. A sample pre-authenticated url -
-- https://sampleStorageAccount.blob.core.windows.net/gameassets/gameserver.zip?sv=2015-04-05&ss=b&srt=sco&sp=rw&st=startDate&se=endDate&spr=https&sig=sampleSig&api-version=2017-07-29
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getassetuploadurl
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getassetuploadurl#getassetuploadurlrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getassetuploadurl#getassetuploadurlresponse
function PlayFabMultiplayerApi.GetAssetUploadUrl(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetAssetUploadUrl", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets a multiplayer server build.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getbuild
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getbuild#getbuildrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getbuild#getbuildresponse
function PlayFabMultiplayerApi.GetBuild(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetBuild", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets a multiplayer server build alias.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getbuildalias
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getbuildalias#getbuildaliasrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getbuildalias#buildaliasdetailsresponse
function PlayFabMultiplayerApi.GetBuildAlias(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetBuildAlias", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the credentials to the container registry.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getcontainerregistrycredentials
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getcontainerregistrycredentials#getcontainerregistrycredentialsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getcontainerregistrycredentials#getcontainerregistrycredentialsresponse
function PlayFabMultiplayerApi.GetContainerRegistryCredentials(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetContainerRegistryCredentials", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get a lobby.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/getlobby
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/getlobby#getlobbyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/getlobby#getlobbyresult
function PlayFabMultiplayerApi.GetLobby(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/GetLobby", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get a match.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getmatch
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getmatch#getmatchrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getmatch#getmatchresult
function PlayFabMultiplayerApi.GetMatch(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/GetMatch", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- SDK support is limited to C# and Java for this API. Get a matchmaking queue configuration.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/getmatchmakingqueue
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/getmatchmakingqueue#getmatchmakingqueuerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/getmatchmakingqueue#getmatchmakingqueueresult
function PlayFabMultiplayerApi.GetMatchmakingQueue(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/GetMatchmakingQueue", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get a matchmaking ticket by ticket Id.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getmatchmakingticket
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getmatchmakingticket#getmatchmakingticketrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getmatchmakingticket#getmatchmakingticketresult
function PlayFabMultiplayerApi.GetMatchmakingTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/GetMatchmakingTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets multiplayer server session details for a build.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getmultiplayerserverdetails
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getmultiplayerserverdetails#getmultiplayerserverdetailsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getmultiplayerserverdetails#getmultiplayerserverdetailsresponse
function PlayFabMultiplayerApi.GetMultiplayerServerDetails(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetMultiplayerServerDetails", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets multiplayer server logs after a server has terminated.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getmultiplayerserverlogs
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getmultiplayerserverlogs#getmultiplayerserverlogsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getmultiplayerserverlogs#getmultiplayerserverlogsresponse
function PlayFabMultiplayerApi.GetMultiplayerServerLogs(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetMultiplayerServerLogs", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets multiplayer server logs after a server has terminated.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getmultiplayersessionlogsbysessionid
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getmultiplayersessionlogsbysessionid#getmultiplayersessionlogsbysessionidrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getmultiplayersessionlogsbysessionid#getmultiplayerserverlogsresponse
function PlayFabMultiplayerApi.GetMultiplayerSessionLogsBySessionId(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetMultiplayerSessionLogsBySessionId", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get the statistics for a queue.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getqueuestatistics
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getqueuestatistics#getqueuestatisticsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getqueuestatistics#getqueuestatisticsresult
function PlayFabMultiplayerApi.GetQueueStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/GetQueueStatistics", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets a remote login endpoint to a VM that is hosting a multiplayer server build.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getremoteloginendpoint
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getremoteloginendpoint#getremoteloginendpointrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/getremoteloginendpoint#getremoteloginendpointresponse
function PlayFabMultiplayerApi.GetRemoteLoginEndpoint(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetRemoteLoginEndpoint", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get a matchmaking backfill ticket by ticket Id.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getserverbackfillticket
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getserverbackfillticket#getserverbackfillticketrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/getserverbackfillticket#getserverbackfillticketresult
function PlayFabMultiplayerApi.GetServerBackfillTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/GetServerBackfillTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the status of whether a title is enabled for the multiplayer server feature.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/gettitleenabledformultiplayerserversstatus
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/gettitleenabledformultiplayerserversstatus#gettitleenabledformultiplayerserversstatusrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/gettitleenabledformultiplayerserversstatus#gettitleenabledformultiplayerserversstatusresponse
function PlayFabMultiplayerApi.GetTitleEnabledForMultiplayerServersStatus(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetTitleEnabledForMultiplayerServersStatus", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets a title's server quota change request.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/gettitlemultiplayerserversquotachange
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/gettitlemultiplayerserversquotachange#gettitlemultiplayerserversquotachangerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/gettitlemultiplayerserversquotachange#gettitlemultiplayerserversquotachangeresponse
function PlayFabMultiplayerApi.GetTitleMultiplayerServersQuotaChange(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetTitleMultiplayerServersQuotaChange", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the quotas for a title in relation to multiplayer servers.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/gettitlemultiplayerserversquotas
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/gettitlemultiplayerserversquotas#gettitlemultiplayerserversquotasrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/gettitlemultiplayerserversquotas#gettitlemultiplayerserversquotasresponse
function PlayFabMultiplayerApi.GetTitleMultiplayerServersQuotas(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetTitleMultiplayerServersQuotas", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Send a notification to invite a player to a lobby.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/invitetolobby
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/invitetolobby#invitetolobbyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/invitetolobby#lobbyemptyresult
function PlayFabMultiplayerApi.InviteToLobby(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/InviteToLobby", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Join an Arranged lobby.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/joinarrangedlobby
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/joinarrangedlobby#joinarrangedlobbyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/joinarrangedlobby#joinlobbyresult
function PlayFabMultiplayerApi.JoinArrangedLobby(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/JoinArrangedLobby", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Join a lobby.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/joinlobby
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/joinlobby#joinlobbyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/joinlobby#joinlobbyresult
function PlayFabMultiplayerApi.JoinLobby(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/JoinLobby", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Join a matchmaking ticket.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/joinmatchmakingticket
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/joinmatchmakingticket#joinmatchmakingticketrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/joinmatchmakingticket#joinmatchmakingticketresult
function PlayFabMultiplayerApi.JoinMatchmakingTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/JoinMatchmakingTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Leave a lobby.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/leavelobby
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/leavelobby#leavelobbyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/leavelobby#lobbyemptyresult
function PlayFabMultiplayerApi.LeaveLobby(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/LeaveLobby", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists archived multiplayer server sessions for a build.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listarchivedmultiplayerservers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listarchivedmultiplayerservers#listmultiplayerserversrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listarchivedmultiplayerservers#listmultiplayerserversresponse
function PlayFabMultiplayerApi.ListArchivedMultiplayerServers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListArchivedMultiplayerServers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists multiplayer server game assets for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listassetsummaries
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listassetsummaries#listassetsummariesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listassetsummaries#listassetsummariesresponse
function PlayFabMultiplayerApi.ListAssetSummaries(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListAssetSummaries", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists details of all build aliases for a title. Accepts tokens for title and if game client access is enabled, allows
-- game client to request list of builds with player entity token.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listbuildaliases
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listbuildaliases#listbuildaliasesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listbuildaliases#listbuildaliasesresponse
function PlayFabMultiplayerApi.ListBuildAliases(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListBuildAliases", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists summarized details of all multiplayer server builds for a title. Accepts tokens for title and if game client
-- access is enabled, allows game client to request list of builds with player entity token.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listbuildsummariesv2
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listbuildsummariesv2#listbuildsummariesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listbuildsummariesv2#listbuildsummariesresponse
function PlayFabMultiplayerApi.ListBuildSummariesV2(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListBuildSummariesV2", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists multiplayer server game certificates for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listcertificatesummaries
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listcertificatesummaries#listcertificatesummariesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listcertificatesummaries#listcertificatesummariesresponse
function PlayFabMultiplayerApi.ListCertificateSummaries(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListCertificateSummaries", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists custom container images for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listcontainerimages
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listcontainerimages#listcontainerimagesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listcontainerimages#listcontainerimagesresponse
function PlayFabMultiplayerApi.ListContainerImages(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListContainerImages", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists the tags for a custom container image.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listcontainerimagetags
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listcontainerimagetags#listcontainerimagetagsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listcontainerimagetags#listcontainerimagetagsresponse
function PlayFabMultiplayerApi.ListContainerImageTags(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListContainerImageTags", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- SDK support is limited to C# and Java for this API. List all matchmaking queue configs.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/listmatchmakingqueues
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/listmatchmakingqueues#listmatchmakingqueuesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/listmatchmakingqueues#listmatchmakingqueuesresult
function PlayFabMultiplayerApi.ListMatchmakingQueues(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/ListMatchmakingQueues", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- List all matchmaking ticket Ids the user is a member of.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/listmatchmakingticketsforplayer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/listmatchmakingticketsforplayer#listmatchmakingticketsforplayerrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/listmatchmakingticketsforplayer#listmatchmakingticketsforplayerresult
function PlayFabMultiplayerApi.ListMatchmakingTicketsForPlayer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/ListMatchmakingTicketsForPlayer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists multiplayer server sessions for a build.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listmultiplayerservers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listmultiplayerservers#listmultiplayerserversrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listmultiplayerservers#listmultiplayerserversresponse
function PlayFabMultiplayerApi.ListMultiplayerServers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListMultiplayerServers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists quality of service servers for party.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listpartyqosservers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listpartyqosservers#listpartyqosserversrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listpartyqosservers#listpartyqosserversresponse
function PlayFabMultiplayerApi.ListPartyQosServers(request, onSuccess, onError)
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListPartyQosServers", request, nil, nil, onSuccess, onError)
end

-- Lists quality of service servers for the title. By default, servers are only returned for regions where a Multiplayer
-- Servers build has been deployed.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listqosserversfortitle
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listqosserversfortitle#listqosserversfortitlerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listqosserversfortitle#listqosserversfortitleresponse
function PlayFabMultiplayerApi.ListQosServersForTitle(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListQosServersForTitle", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- List all server backfill ticket Ids the user is a member of.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/listserverbackfillticketsforplayer
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/listserverbackfillticketsforplayer#listserverbackfillticketsforplayerrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/listserverbackfillticketsforplayer#listserverbackfillticketsforplayerresult
function PlayFabMultiplayerApi.ListServerBackfillTicketsForPlayer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/ListServerBackfillTicketsForPlayer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- List all server quota change requests for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listtitlemultiplayerserversquotachanges
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listtitlemultiplayerserversquotachanges#listtitlemultiplayerserversquotachangesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listtitlemultiplayerserversquotachanges#listtitlemultiplayerserversquotachangesresponse
function PlayFabMultiplayerApi.ListTitleMultiplayerServersQuotaChanges(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListTitleMultiplayerServersQuotaChanges", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists virtual machines for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listvirtualmachinesummaries
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listvirtualmachinesummaries#listvirtualmachinesummariesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/listvirtualmachinesummaries#listvirtualmachinesummariesresponse
function PlayFabMultiplayerApi.ListVirtualMachineSummaries(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListVirtualMachineSummaries", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- SDK support is limited to C# and Java for this API. Remove a matchmaking queue config.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/removematchmakingqueue
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/removematchmakingqueue#removematchmakingqueuerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/removematchmakingqueue#removematchmakingqueueresult
function PlayFabMultiplayerApi.RemoveMatchmakingQueue(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/RemoveMatchmakingQueue", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Remove a member from a lobby.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/removemember
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/removemember#removememberfromlobbyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/removemember#lobbyemptyresult
function PlayFabMultiplayerApi.RemoveMember(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/RemoveMember", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Request a multiplayer server session. Accepts tokens for title and if game client access is enabled, allows game client
-- to request a server with player entity token.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/requestmultiplayerserver
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/requestmultiplayerserver#requestmultiplayerserverrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/requestmultiplayerserver#requestmultiplayerserverresponse
function PlayFabMultiplayerApi.RequestMultiplayerServer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/RequestMultiplayerServer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Rolls over the credentials to the container registry.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/rollovercontainerregistrycredentials
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/rollovercontainerregistrycredentials#rollovercontainerregistrycredentialsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/rollovercontainerregistrycredentials#rollovercontainerregistrycredentialsresponse
function PlayFabMultiplayerApi.RolloverContainerRegistryCredentials(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/RolloverContainerRegistryCredentials", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- SDK support is limited to C# and Java for this API. Create or update a matchmaking queue configuration.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/setmatchmakingqueue
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/setmatchmakingqueue#setmatchmakingqueuerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking-admin/setmatchmakingqueue#setmatchmakingqueueresult
function PlayFabMultiplayerApi.SetMatchmakingQueue(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/SetMatchmakingQueue", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Shuts down a multiplayer server session.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/shutdownmultiplayerserver
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/shutdownmultiplayerserver#shutdownmultiplayerserverrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/shutdownmultiplayerserver#emptyresponse
function PlayFabMultiplayerApi.ShutdownMultiplayerServer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ShutdownMultiplayerServer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Subscribe to lobby resource notifications.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/subscribetolobbyresource
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/subscribetolobbyresource#subscribetolobbyresourcerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/subscribetolobbyresource#subscribetolobbyresourceresult
function PlayFabMultiplayerApi.SubscribeToLobbyResource(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/SubscribeToLobbyResource", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Subscribe to match resource notifications.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/subscribetomatchmakingresource
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/subscribetomatchmakingresource#subscribetomatchresourcerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/subscribetomatchmakingresource#subscribetomatchresourceresult
function PlayFabMultiplayerApi.SubscribeToMatchmakingResource(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/SubscribeToMatchmakingResource", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Unsubscribe from lobby notifications.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/unsubscribefromlobbyresource
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/unsubscribefromlobbyresource#unsubscribefromlobbyresourcerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/unsubscribefromlobbyresource#lobbyemptyresult
function PlayFabMultiplayerApi.UnsubscribeFromLobbyResource(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/UnsubscribeFromLobbyResource", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Unsubscribe from match resource notifications.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/unsubscribefrommatchmakingresource
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/unsubscribefrommatchmakingresource#unsubscribefrommatchresourcerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/match/matchmaking/unsubscribefrommatchmakingresource#unsubscribefrommatchresourceresult
function PlayFabMultiplayerApi.UnsubscribeFromMatchmakingResource(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/UnsubscribeFromMatchmakingResource", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Untags a container image.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/untagcontainerimage
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/untagcontainerimage#untagcontainerimagerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/untagcontainerimage#emptyresponse
function PlayFabMultiplayerApi.UntagContainerImage(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/UntagContainerImage", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a multiplayer server build alias.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildalias
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildalias#updatebuildaliasrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildalias#buildaliasdetailsresponse
function PlayFabMultiplayerApi.UpdateBuildAlias(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/UpdateBuildAlias", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates a multiplayer server build's name.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildname
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildname#updatebuildnamerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildname#emptyresponse
function PlayFabMultiplayerApi.UpdateBuildName(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/UpdateBuildName", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates a multiplayer server build's region. If the region is not yet created, it will be created
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildregion
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildregion#updatebuildregionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildregion#emptyresponse
function PlayFabMultiplayerApi.UpdateBuildRegion(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/UpdateBuildRegion", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates a multiplayer server build's regions.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildregions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildregions#updatebuildregionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/updatebuildregions#emptyresponse
function PlayFabMultiplayerApi.UpdateBuildRegions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/UpdateBuildRegions", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Update a lobby.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/updatelobby
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/updatelobby#updatelobbyrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/lobby/lobby/updatelobby#lobbyemptyresult
function PlayFabMultiplayerApi.UpdateLobby(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Lobby/UpdateLobby", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Uploads a multiplayer server game certificate.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/uploadcertificate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/uploadcertificate#uploadcertificaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/multiplayerserver/multiplayerserver/uploadcertificate#emptyresponse
function PlayFabMultiplayerApi.UploadCertificate(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/UploadCertificate", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabMultiplayerApi
