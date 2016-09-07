-- IPlayFabHttps.lua
-- Defines the MakePlayFabApiCall function signature which is used by all PlayFab-HTTPS implementations
-- Also serves as a selector/redirect to the actual HTTPS implementation that should be used

-- (DEFAULT, no overrides - Suggested for LuaDist)
--     local PlayFabClientApi = require("PlayFabClientApi")
--     PlayFabClientApi.<YourApiCall>(...)
-- (DEFOLD EXAMPLE) An alternate HTTPS file is pre-included for Defold
--     local IPlayFabHttps = require("IPlayFabHttps")
--     local PlayFabHttps_Defold = require("PlayFab.PlayFabHttps_Defold")
--     IPlayFabHttps.SetHttp(PlayFabHttps_Defold) -- Assign the Defold-specific IHttps wrapper
--     local PlayFabClientApi = require("PlayFabClientApi")
--     PlayFabClientApi.<YourApiCall>(...)
-- (CUSTOM USE, None of the above) In your client code, directly over-ride the HTTPS instance:
-- To override and implement your own HTTPS handler, create a new file,
-- implement: MakePlayFabApiCall(urlPath, request, authKey, authValue, onSuccess, onError)
--     local IPlayFabHttps = require("IPlayFabHttps")
--     local CustomHttps = require("<YourCustomHttps>") -- Assign the custom-specific IHttps wrapper
--     IPlayFabHttps.SetHttp(CustomHttps)
--     local PlayFabClientApi = require("PlayFabClientApi")
--     PlayFabClientApi.<YourApiCall>(...)

local PlayFabSettings = require("PlayFab.PlayFabSettings")

local IPlayFabHttps = {
    _defaultHttpsFile = "PlayFab.PlayFabHttps_LuaSec", -- implied .lua
    _internalHttp = nil,
}

function IPlayFabHttps.SetHttp(httpInterface)
    if (httpInterface) then
        IPlayFabHttps._internalHttp = httpInterface
        return
    end
    
    if (IPlayFabHttps._defaultHttpsFile) then
        IPlayFabHttps._internalHttp = require(IPlayFabHttps._defaultHttpsFile)
        return
    end
end

function IPlayFabHttps.MakePlayFabApiCall(urlPath, request, authKey, authValue, onSuccess, onError)
    if (IPlayFabHttps._internalHttp == nil) then
        IPlayFabHttps.SetHttp(nil) -- Load the default
    end
    if (PlayFabSettings.settings.titleId == nil) then
        error("PlayFabSettings.settings.titleId must be set before making API calls")
    end
    IPlayFabHttps._internalHttp.MakePlayFabApiCall(urlPath, request, authKey, authValue, onSuccess, onError)
end

return IPlayFabHttps
