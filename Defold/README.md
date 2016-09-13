Defold builds for LuaSdk
----

Set a project dependency to one of these files in GitHub to automatically download and sync the latest PlayFab LuaSdk in your Defold project.

See this link for more information:
* http://www.defold.com/manuals/libraries/

* Client Example:
 * dependencies = https://api.playfab.com/sdks/download/defold
* Server Example:
 * dependencies = https://api.playfab.com/sdks/download/defold-server
* Combined Example:
 * dependencies = https://api.playfab.com/sdks/download/defold-combo

* Client Testing Example:
 * dependencies = https://api.playfab.com/sdks/download/defold-testing

The following example script sets up PlayFab to a GUI element:
```Lua
local PlayFabApiTestSuite = require("PlayFabTesting.PlayFabApiTestSuite")
local PlayFabSettings = require("PlayFab.PlayFabSettings")
local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabHttps_Defold = require("PlayFab.PlayFabHttps_Defold")

PlayFabSettings.titleId = "6195"
IPlayFabHttps.SetHttp(PlayFabHttps_Defold) -- The auto import magic doens't work if you set the name, so you have to set the reference

function init(self)
    local loginRequest = {
        -- https://api.playfab.com/Documentation/Client/method/LoginWithCustomID
        CustomId = "TestCustomId",
        CreateAccount = true
    }
    PlayFabClientApi.LoginWithCustomID(loginRequest, function(result) print("Login Successful: " .. result.PlayFabId) end, function(error) print("Login Failed: " .. error.errorMessage) end)
end

-- After login, the full client API will fuction properly
-- PlayFabClientApi.GetTitleData( etc etc etc )
-- Try linking more api calls to buttons!
```
Link the file to a gui script and run!

The guys at defold even made a sample game-project which has PlayFab LuaSdk pre-integrated!  Check it out here: https://github.com/britzl/playfab_example
