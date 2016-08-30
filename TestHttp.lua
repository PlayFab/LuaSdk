local json = require("json")
local PlayFabClientApi = require("PlayFabClientApi")
-- Most users won't need to import PlayFabSettings, as the public settings are available via PlayFabClientApi.settings
local PlayFabSettings = require("PlayFabSettings")

-- Always set your titleId first, before making any API calls
PlayFabClientApi.settings.titleId = "6195"

function OnSuccess(response)
    print("\nApi Success Response:")
    print(json.encode(response))

    -- for key,value in pairs(response) do
    -- print("found member " .. key)
    -- end
end

function OnError(error)
    print("\nApi Error Response:")
    print(json.encode(error))
end

function InvalidLoginTest()
    local invalidRequest = {
        -- Currently, you need to look up the correct format for this object in the API-docs:
        --   https://api.playfab.com/Documentation/Client/method/LoginWithEmailAddress
        Email = "paul@playfab.com",
        Password = "INVALID"
    }
    -- PlayFabClientApi.LoginWithEmailAddress(invalidRequest, OnSuccess, OnError)
end

function InvalidRegistrationTest()
    local invalidRequest = {
        -- Currently, you need to look up the correct format for this object in the API-docs:
        --   https://api.playfab.com/Documentation/Client/method/RegisterPlayFabUser
        Username = "x",
        Email = "x",
        Password = "x"
    }
    -- PlayFabClientApi.RegisterPlayFabUser(invalidRequest, OnSuccess, OnError)
end

function LoginOrRegisterTest()
    local loginRequest = {
        -- Currently, you need to look up the correct format for this object in the API-docs:
        --   https://api.playfab.com/Documentation/Client/method/LoginWithCustomID
        CustomId = "luaTest",
        CreateAccount = true
    }
    PlayFabClientApi.LoginWithCustomID(loginRequest, OnSuccess, OnError)
end

InvalidLoginTest()
InvalidRegistrationTest()
LoginOrRegisterTest()

local titleDataRequest = {}
PlayFabClientApi.GetTitleData(titleDataRequest, OnSuccess, OnError)
