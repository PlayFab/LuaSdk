Corona builds for LuaSdk
----

A set of PlayFab plugins for Corona is coming soon.  The Plugins sub-folder hosts the zip files which will are being submitted to Corona for approval.  Until that process is finished, you can download PlayFab directly, unzip, and install in your project.

NOTE: The zip files to this directory are built by an automated process, so if they're not here yet, check again later, or check our automated build branch:

https://github.com/PlayFab/LuaSdk/tree/nightly/Corona

* Client Testing Example:
 * PlayFabClientSdk.zip\PlayFabClientSdk\PlayFab contains the Client SDK itself. Extract ONLY this folder into your project for your distributed build.
 * The other files provided in the plugin are testing files, and are part of the plugin submission process.
* Server Example:
 * PlayFabServerSdk.zip\PlayFabSdk\PlayFab contains the Server SDK itself.
* Combined Example:
 * PlayFabComboSdk.zip\PlayFabSdk\PlayFab contains the Combo SDK itself.
* For all manual-install zips, extract the PlayFab folder at the root level of your project, such as: <YourCoronaProject>/PlayFab

Here is a main.lua script for your Corona project which will log in to PlayFab, and print the result to the console
```Lua
local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabHttps_Corona = require("PlayFab.PlayFabHttps_Corona")
local PlayFabClientApi = require("PlayFab.PlayFabClientApi")

PlayFabClientApi.settings.titleId = "6195"
IPlayFabHttps.SetHttp(PlayFabHttps_Corona) -- Assign the Corona-specific IHttps wrapper

local loginRequest = {
    -- https://api.playfab.com/Documentation/Client/method/LoginWithCustomID
    CustomId = "TestCustomId",
    CreateAccount = true
}
PlayFabClientApi.LoginWithCustomID(loginRequest, function(result) print("Login Successful: " .. result.PlayFabId) end, function(error) print("Login Failed: " .. error.errorMessage) end)

-- After login, the full client API will fuction properly
-- PlayFabClientApi.GetTitleData( etc etc etc )
-- Try linking more api calls to buttons and game events!
```
