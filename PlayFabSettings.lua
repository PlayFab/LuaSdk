local json = require("json")
local https = require("ssl.https") -- luasec 0.4+
local ltn12 = require("ltn12")

local PlayFabSettings = {
    internalSettings = {
        sessionTicket = "undefined",
        sdkVersionString = "LuaSdk-0.0.160826",
        buildIdentifier = "manual_build"
    },
    settings = {
        titleId = "undefined",
        devSecretKey = "undefined"
    }
}

return PlayFabSettings
