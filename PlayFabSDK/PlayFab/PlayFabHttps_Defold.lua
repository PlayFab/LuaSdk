-- PlayFabHttps_Defold.lua
-- 
-- Defold HTTPS implementation for PlayFab LuaSdk
-- This implementation is specifically for running a Defold project, and won't work anywhere else

local json = require("PlayFab.json")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabHttps_Defold = {
}

function InternalCallbackWrapper(onSuccess, onError)
	return function(a, b, httpResponse)
		if (httpResponse.status == 200) then
	        local response = json.decode(httpResponse.response or "")
	        if (not (response == nil) and response.code == 200 and not (response.data == nil)) then
	            onSuccess(response.data)
	        elseif (not (response == nil)) then
	            onError(response)
	        else
	            onError({
	                code = code,
	                status = status,
	                errorCode = 1123,
	                error = "ServiceUnavailable",
	                errorMessage = "Could not deserialize reseponse from server: " .. playFabResponse[1]
	            })
	        end
	    else
	        onError({
	            code = code,
	            status = status,
	            errorCode = 1123,
	            error = "ServiceUnavailable",
	            errorMessage = "Could not deserialize reseponse from server: " .. playFabResponse[1]
	        })
	    end
	end
end

function MakePlayFabApiCall(urlPath, request, authKey, authValue, onSuccess, onError)
	local ok, requestJson = pcall(json.encode, request)
	if not ok then
		error(requestJson or "request could not be converted to json")
	end

    local requestHeaders = {
        ["X-ReportErrorAsSuccess"] = "true",
        ["X-PlayFabSDK"] = PlayFabSettings.internalSettings.sdkVersionString,
        ["Content-Type"] = "application/json"
        -- ["content-length"] = tostring(string.len(requestStr)) -- probably not needed for this one 
    }
    if (not (authKey == nil)) then
        requestHeaders[authKey] = authValue;
    end

	local fullUrl = "https://" .. PlayFabSettings.settings.titleId .. ".playfabapi.com/" .. urlPath

	http.request(
		fullUrl,
		"POST", -- All PlayFab APIs are POST
		InternalCallbackWrapper(onSuccess, onError),
		requestHeaders,
		requestJson,
		{} -- options
	)
end
PlayFabHttps_Defold.MakePlayFabApiCall = MakePlayFabApiCall

return PlayFabHttps_Defold
