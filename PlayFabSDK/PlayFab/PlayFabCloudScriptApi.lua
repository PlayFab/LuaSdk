-- PlayFab CloudScript API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabCloudScriptApi = require("PlayFab.PlayFabCloudScriptApi")
-- PlayFabCloudScriptApi.<CloudScriptApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabCloudScriptApi = {
    settings = PlayFabSettings.settings
}

-- Cloud Script is one of PlayFab's most versatile features. It allows client code to request execution of any kind of
-- custom server-side functionality you can implement, and it can be used in conjunction with virtually anything.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/executeentitycloudscript
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/executeentitycloudscript#executeentitycloudscriptrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/executeentitycloudscript#executecloudscriptresult
function PlayFabCloudScriptApi.ExecuteEntityCloudScript(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/ExecuteEntityCloudScript", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Cloud Script is one of PlayFab's most versatile features. It allows client code to request execution of any kind of
-- custom server-side functionality you can implement, and it can be used in conjunction with virtually anything.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/executefunction
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/executefunction#executefunctionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/executefunction#executefunctionresult
function PlayFabCloudScriptApi.ExecuteFunction(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/ExecuteFunction", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets registered Azure Functions for a given title id and function name.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/getfunction
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/getfunction#getfunctionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/getfunction#getfunctionresult
function PlayFabCloudScriptApi.GetFunction(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/GetFunction", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all currently registered Azure Functions for a given title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/listfunctions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/listfunctions#listfunctionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/listfunctions#listfunctionsresult
function PlayFabCloudScriptApi.ListFunctions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/ListFunctions", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all currently registered HTTP triggered Azure Functions for a given title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/listhttpfunctions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/listhttpfunctions#listfunctionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/listhttpfunctions#listhttpfunctionsresult
function PlayFabCloudScriptApi.ListHttpFunctions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/ListHttpFunctions", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all currently registered Queue triggered Azure Functions for a given title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/listqueuedfunctions
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/listqueuedfunctions#listfunctionsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/listqueuedfunctions#listqueuedfunctionsresult
function PlayFabCloudScriptApi.ListQueuedFunctions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/ListQueuedFunctions", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Generate an entity PlayStream event for the provided function result.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforentitytriggeredaction
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforentitytriggeredaction#postfunctionresultforentitytriggeredactionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforentitytriggeredaction#emptyresult
function PlayFabCloudScriptApi.PostFunctionResultForEntityTriggeredAction(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/PostFunctionResultForEntityTriggeredAction", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Generate an entity PlayStream event for the provided function result.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforfunctionexecution
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforfunctionexecution#postfunctionresultforfunctionexecutionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforfunctionexecution#emptyresult
function PlayFabCloudScriptApi.PostFunctionResultForFunctionExecution(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/PostFunctionResultForFunctionExecution", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Generate a player PlayStream event for the provided function result.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforplayertriggeredaction
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforplayertriggeredaction#postfunctionresultforplayertriggeredactionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforplayertriggeredaction#emptyresult
function PlayFabCloudScriptApi.PostFunctionResultForPlayerTriggeredAction(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/PostFunctionResultForPlayerTriggeredAction", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Generate a PlayStream event for the provided function result.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforscheduledtask
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforscheduledtask#postfunctionresultforscheduledtaskrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/postfunctionresultforscheduledtask#emptyresult
function PlayFabCloudScriptApi.PostFunctionResultForScheduledTask(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/PostFunctionResultForScheduledTask", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Registers an HTTP triggered Azure function with a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/registerhttpfunction
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/registerhttpfunction#registerhttpfunctionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/registerhttpfunction#emptyresult
function PlayFabCloudScriptApi.RegisterHttpFunction(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/RegisterHttpFunction", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Registers a queue triggered Azure Function with a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/registerqueuedfunction
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/registerqueuedfunction#registerqueuedfunctionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/registerqueuedfunction#emptyresult
function PlayFabCloudScriptApi.RegisterQueuedFunction(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/RegisterQueuedFunction", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Unregisters an Azure Function with a title.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/unregisterfunction
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/unregisterfunction#unregisterfunctionrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/cloudscript/server-side-cloud-script/unregisterfunction#emptyresult
function PlayFabCloudScriptApi.UnregisterFunction(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/CloudScript/UnregisterFunction", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabCloudScriptApi
