-- PlayFabHttps_LuaSec.lua
-- 
-- LuaSec HTTPS implementation for PlayFab LuaSdk
-- This makes blocking calls to HTTPS using LuaSec 0.4+
-- It cannot do async nor threaded HTTPS calls.
-- This implementation is specifically for running a minimal console Lua program, and only for debugging
-- It's highly suggested that an alternate implementation is used, customized to use an async-capable HTTPS library in your engine

local https = require("ssl.https") -- LuaSec 0.4+
local ltn12 = require("ltn12") -- LuaSec 0.4+

local json = require("json")
local PlayFabSettings = require("PlayFabSettings")

local PlayFabHttps_LuaSec = {
}

function MakePlayFabApiCall(urlPath, request, authKey, authValue, onSuccess, onError)
    if (PlayFabSettings.settings.titleId == "undefined") then
        return "PlayFabSettings.settings.titleId must be set before making API calls"
    end

    local requestStr = json.encode(request)
    local requestHeaders = {
        ["X-ReportErrorAsSuccess"] = "true",
        ["X-PlayFabSDK"] = PlayFabSettings.internalSettings.sdkVersionString,
        ["Content-Type"] = "application/json",
        ["content-length"] = tostring(string.len(requestStr))
    }
    if (not (authKey == nil)) then
        requestHeaders[authKey] = authValue;
    end
    
    local playFabResponse = {}
    local fullUrl = "https://" .. PlayFabSettings.settings.titleId .. ".playfabapi.com/" .. urlPath
    local body, code, headers, status = https.request{
        method = "POST",
        url = fullUrl,
        headers = requestHeaders,
        source = ltn12.source.string(requestStr),
        sink = ltn12.sink.table(playFabResponse)
    }

    if (code == 200) then
        local response = json.decode(playFabResponse[1])
        if (not (onSuccess == nil)) then
            onSuccess(response.data)
        end
        return
    end
    
    -- TODO: Error handling
end
PlayFabHttps_LuaSec.MakePlayFabApiCall = MakePlayFabApiCall

return PlayFabHttps_LuaSec
