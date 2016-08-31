-- IPlayFabHttp.lua
-- Defines the MakePlayFabApiCall function signature which is used by all HTTPS implementations
-- Also serves as a selector/redirect to the actual HTTPS implementation that should be used

-- To override and implement your own HTTPS handler, create a new file,
-- implement: MakePlayFabApiCall(urlPath, request, authKey, authValue, onSuccess, onError)
-- In your client code:
--     local IPlayFabHttps = require("IPlayFabHttps")
--     IPlayFabHttps._defaultHttpsFile = "your new filename"
--     local PlayFabClientApi = require("PlayFabClientApi")
--     PlayFabClientApi.<YourApiCall>(...)

local PlayFabSettings = require("PlayFab.PlayFabSettings")

local IPlayFabHttp = {
    _defaultHttpsFile = "PlayFabHttps_LuaSec", -- implied .lua
    _internalHttp = nil,
}

function SetHttp(httpInterface)
    if (not (httpInterface == nil)) then
        IPlayFabHttp._internalHttp = httpInterface
        return
    end
    
    if (not (IPlayFabHttp._defaultHttpsFile == nil)) then
        IPlayFabHttp._internalHttp = require("PlayFab." .. IPlayFabHttp._defaultHttpsFile)
        return
    end
end
IPlayFabHttp.SetHttp = SetHttp

function MakePlayFabApiCall(urlPath, request, authKey, authValue, onSuccess, onError)
    if (IPlayFabHttp._internalHttp == nil) then
        SetHttp(nil) -- Load the default
    end
    if (PlayFabSettings.settings.titleId == nil) then
        error("PlayFabSettings.settings.titleId must be set before making API calls")
    end
    IPlayFabHttp._internalHttp.MakePlayFabApiCall(urlPath, request, authKey, authValue, onSuccess, onError)
end
IPlayFabHttp.MakePlayFabApiCall = MakePlayFabApiCall

return IPlayFabHttp
