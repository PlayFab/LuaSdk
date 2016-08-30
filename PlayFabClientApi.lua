local json = require("json")
local IPlayFabHttps = require("IPlayFabHttps")
local PlayFabSettings = require("PlayFabSettings")

local PlayFabClientApi = {
    settings = PlayFabSettings.settings
}

function LoginWithCustomID(request, onSuccess, onError)
    request.TitleId = PlayFabSettings.settings.titleId
    function wrappedOnSuccess(response)
        PlayFabSettings.internalSettings.sessionTicket = response.SessionTicket
        if (not (onSuccess == nil)) then
            onSuccess(response)
        end
    end
    
    IPlayFabHttps.MakePlayFabApiCall("Client/LoginWithCustomID", request, nil, nil, wrappedOnSuccess, onError)
end
PlayFabClientApi.LoginWithCustomID = LoginWithCustomID

function GetTitleData(request, onSuccess, onError)
    IPlayFabHttps.MakePlayFabApiCall("Client/GetTitleData", request, "X-Authorization", PlayFabSettings.internalSettings.sessionTicket, onSuccess, onError)
end
PlayFabClientApi.GetTitleData = GetTitleData

return PlayFabClientApi
