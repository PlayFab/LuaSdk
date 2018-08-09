-- PlayFab Data API
-- This is the main file you should require in your game
-- All api calls are documented here: https://api.playfab.com/Documentation/Data
-- Example code:
-- local PlayFabDataApi = require("PlayFab.PlayFabDataApi")
-- PlayFabDataApi.<DataApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabDataApi = {
    settings = PlayFabSettings.settings
}

-- Abort pending file uploads to an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/File/method/AbortFileUploads
-- Request Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.AbortFileUploadsRequest
-- Result Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.AbortFileUploadsResponse
function PlayFabDataApi.AbortFileUploads(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/AbortFileUploads", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Delete files on an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/File/method/DeleteFiles
-- Request Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.DeleteFilesRequest
-- Result Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.DeleteFilesResponse
function PlayFabDataApi.DeleteFiles(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/DeleteFiles", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Finalize file uploads to an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/File/method/FinalizeFileUploads
-- Request Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.FinalizeFileUploadsRequest
-- Result Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.FinalizeFileUploadsResponse
function PlayFabDataApi.FinalizeFileUploads(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/FinalizeFileUploads", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves file metadata from an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/File/method/GetFiles
-- Request Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.GetFilesRequest
-- Result Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.GetFilesResponse
function PlayFabDataApi.GetFiles(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/GetFiles", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves objects from an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/Object/method/GetObjects
-- Request Documentation: https://api.playfab.com/Documentation/Object/datatype/PlayFab.Object.Models/PlayFab.Object.Models.GetObjectsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Object/datatype/PlayFab.Object.Models/PlayFab.Object.Models.GetObjectsResponse
function PlayFabDataApi.GetObjects(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Object/GetObjects", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Initiates file uploads to an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/File/method/InitiateFileUploads
-- Request Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.InitiateFileUploadsRequest
-- Result Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.InitiateFileUploadsResponse
function PlayFabDataApi.InitiateFileUploads(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/InitiateFileUploads", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets objects on an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/Object/method/SetObjects
-- Request Documentation: https://api.playfab.com/Documentation/Object/datatype/PlayFab.Object.Models/PlayFab.Object.Models.SetObjectsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Object/datatype/PlayFab.Object.Models/PlayFab.Object.Models.SetObjectsResponse
function PlayFabDataApi.SetObjects(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Object/SetObjects", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabDataApi
