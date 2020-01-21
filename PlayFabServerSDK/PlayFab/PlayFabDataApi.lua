-- PlayFab Data API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabDataApi = require("PlayFab.PlayFabDataApi")
-- PlayFabDataApi.<DataApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabDataApi = {
    settings = PlayFabSettings.settings
}

-- Abort pending file uploads to an entity's profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/abortfileuploads
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/abortfileuploads#abortfileuploadsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/abortfileuploads#abortfileuploadsresponse
function PlayFabDataApi.AbortFileUploads(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/AbortFileUploads", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Delete files on an entity's profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/deletefiles
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/deletefiles#deletefilesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/deletefiles#deletefilesresponse
function PlayFabDataApi.DeleteFiles(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/DeleteFiles", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Finalize file uploads to an entity's profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/finalizefileuploads
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/finalizefileuploads#finalizefileuploadsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/finalizefileuploads#finalizefileuploadsresponse
function PlayFabDataApi.FinalizeFileUploads(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/FinalizeFileUploads", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves file metadata from an entity's profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/getfiles
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/getfiles#getfilesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/getfiles#getfilesresponse
function PlayFabDataApi.GetFiles(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/GetFiles", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves objects from an entity's profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/object/object/getobjects
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/object/object/getobjects#getobjectsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/object/object/getobjects#getobjectsresponse
function PlayFabDataApi.GetObjects(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Object/GetObjects", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Initiates file uploads to an entity's profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/initiatefileuploads
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/initiatefileuploads#initiatefileuploadsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/file/file/initiatefileuploads#initiatefileuploadsresponse
function PlayFabDataApi.InitiateFileUploads(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/InitiateFileUploads", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets objects on an entity's profile.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/object/object/setobjects
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/object/object/setobjects#setobjectsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/object/object/setobjects#setobjectsresponse
function PlayFabDataApi.SetObjects(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Object/SetObjects", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabDataApi
