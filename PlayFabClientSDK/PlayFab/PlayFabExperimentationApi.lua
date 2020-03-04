-- PlayFab Experimentation API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabExperimentationApi = require("PlayFab.PlayFabExperimentationApi")
-- PlayFabExperimentationApi.<ExperimentationApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabExperimentationApi = {
    settings = PlayFabSettings.settings
}

-- Creates a new experiment for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/createexperiment
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/createexperiment#createexperimentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/createexperiment#createexperimentresult
function PlayFabExperimentationApi.CreateExperiment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Experimentation/CreateExperiment", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes an existing experiment for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/deleteexperiment
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/deleteexperiment#deleteexperimentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/deleteexperiment#emptyresponse
function PlayFabExperimentationApi.DeleteExperiment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Experimentation/DeleteExperiment", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the details of all experiments for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/getexperiments
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/getexperiments#getexperimentsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/getexperiments#getexperimentsresult
function PlayFabExperimentationApi.GetExperiments(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Experimentation/GetExperiments", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the latest scorecard of the experiment for the title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/getlatestscorecard
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/getlatestscorecard#getlatestscorecardrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/getlatestscorecard#getlatestscorecardresult
function PlayFabExperimentationApi.GetLatestScorecard(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Experimentation/GetLatestScorecard", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the treatment assignments for a player for every running experiment in the title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/gettreatmentassignment
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/gettreatmentassignment#gettreatmentassignmentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/gettreatmentassignment#gettreatmentassignmentresult
function PlayFabExperimentationApi.GetTreatmentAssignment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Experimentation/GetTreatmentAssignment", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Starts an existing experiment for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/startexperiment
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/startexperiment#startexperimentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/startexperiment#emptyresponse
function PlayFabExperimentationApi.StartExperiment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Experimentation/StartExperiment", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Stops an existing experiment for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/stopexperiment
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/stopexperiment#stopexperimentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/stopexperiment#emptyresponse
function PlayFabExperimentationApi.StopExperiment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Experimentation/StopExperiment", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates an existing experiment for a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/updateexperiment
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/updateexperiment#updateexperimentrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/experimentation/experimentation/updateexperiment#emptyresponse
function PlayFabExperimentationApi.UpdateExperiment(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Experimentation/UpdateExperiment", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabExperimentationApi
