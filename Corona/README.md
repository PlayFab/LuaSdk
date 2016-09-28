Corona builds for LuaSdk
----

The Corona plugin files are available for free on the Corona marketplace.  (PlayFab subscription fees still apply when relevant)

* Client Plugin:
  * **Marketplace Page:** https://marketplace.coronalabs.com/plugin/playfab-client
  * See [installation instructions](#client-plugin-instructions) below
  * This contains the client APIs, suitable to be distributed with your game to your customers
  * List of API methods here: https://api.playfab.com/Documentation/Client
* Server Plugin:
  * **Marketplace Page:** https://marketplace.coronalabs.com/plugin/playfab-server
  * See [installation instructions](#server-plugin-instructions) below
  * This contains the server and matchmaker APIs, suitable to be distributed with your game-servers
  * List of API methods here: https://api.playfab.com/Documentation/Server
  * and here: https://api.playfab.com/Documentation/Matchmaker
* Combo Plugin:
  * **Marketplace Page:** https://marketplace.coronalabs.com/plugin/playfab-combo
  * See [installation instructions](#Combo-plugin-instructions) below
  * This plugin is suitable for evaluating or testing PlayFab, or in some rare cases, admin tools or special game-servers
  * This contains all API methods:
    * https://api.playfab.com/Documentation/Client
    * https://api.playfab.com/Documentation/Server
    * https://api.playfab.com/Documentation/Matchmaker
    * https://api.playfab.com/Documentation/Admin

Client Plugin Instructions:
----

* Add the following to your build.settings:
```lua
plugins = {
  ["plugin.playfab.client"] = { publisherId = "com.playfab" }
}
```
* Here is a main.lua script for your Corona game project which will log in to PlayFab, and print the result to the console
```Lua
local IPlayFabHttps = require("plugin.playfab.IPlayFabHttps")
local PlayFabHttps_Corona = require("plugin.playfab.PlayFabHttps_Corona")
local PlayFabClientApi = require("plugin.playfab.PlayFabClientApi")

PlayFabClientApi.settings.titleId = "&lt;your-title-id>" -- You must create a title on the PlayFab website.  Afterwards, you can find the titleId here: https://developer.playfab.com/en-us/studios
IPlayFabHttps.SetHttp(PlayFabHttps_Corona) -- Assign the Corona-specific IHttps wrapper

local loginRequest = {
    -- https://api.playfab.com/Documentation/Client/method/LoginWithCustomID
    CustomId = "TestCustomId",
    CreateAccount = true
}
PlayFabClientApi.LoginWithCustomID(loginRequest, function(result) print("Login Successful: " .. result.PlayFabId) end, function(error) print("Login Failed: " .. error.errorMessage) end)

-- After login, the full client API will fuction properly
-- PlayFabClientApi.GetTitleData( etc etc etc )
-- Try linking more API methods to buttons and game events!
```
* All API methods follow the same signature: PlayFabClientApi.&lt;ApiName>(request, function(result) end, function(error) end)
* You can see a list of all available [client APIs methods](https://api.playfab.com/Documentation/Client)
 
Server Plugin Instructions:
----

* Add the following to your build.settings:
```lua
plugins = {
  ["plugin.playfab.server"] = { publisherId = "com.playfab" }
}
```
* Here is a main.lua script for your Corona game-server project which will log in to PlayFab, and print the result to the console
```Lua
local IPlayFabHttps = require("plugin.playfab.IPlayFabHttps")
local PlayFabHttps_Corona = require("plugin.playfab.PlayFabHttps_Corona")
local PlayFabServerApi = require("plugin.playfab.PlayFabServerApi")

PlayFabServerApi.settings.titleId = "&lt;your-title-id>" -- You must create a title on the PlayFab website.  Afterwards, you can find the titleId here: https://developer.playfab.com/en-us/studios
PlayFabServerApi.settings.devSecretKey = "&lt;your-secret-key>" -- You must create a title on the PlayFab website.  Afterwards, you can find this in the "Settings" portion of our Game-Manager on our website
IPlayFabHttps.SetHttp(PlayFabHttps_Corona) -- Assign the Corona-specific IHttps wrapper

local dataRequest = {} -- https://api.playfab.com/Documentation/Server/method/GetTitleData
PlayFabServerApi.LoginWithCustomID(dataRequest, function(result) print("GetTitleData Successful: " .. result.PlayFabId) end, function(error) print("GetTitleData Failed: " .. error.errorMessage) end)

-- Many server APIs act on a PlayFabId, which is the ID that represents each player
-- Transmit this data from your client to your server
```
* All API methods follow the same signature: PlayFabServerApi.&lt;ApiName>(request, function(result) end, function(error) end)
* You can see a list of all available [server APIs methods](https://api.playfab.com/Documentation/Server)

Combo Plugin Instructions:
----

* Add the following to your build.settings:
```lua
plugins = {
  ["plugin.playfab.client"] = { publisherId = "com.playfab" }
}
```
* Here is a main.lua script for your Corona game project which will log in to PlayFab, and print the result to the console
```Lua
local IPlayFabHttps = require("plugin.playfab.IPlayFabHttps")
local PlayFabHttps_Corona = require("plugin.playfab.PlayFabHttps_Corona")
local PlayFabClientApi = require("plugin.playfab.PlayFabClientApi")

PlayFabClientApi.settings.titleId = "&lt;your-title-id>" -- You must create a title on the PlayFab website.  Afterwards, you can find the titleId here: https://developer.playfab.com/en-us/studios
IPlayFabHttps.SetHttp(PlayFabHttps_Corona) -- Assign the Corona-specific IHttps wrapper

local loginRequest = {
    -- https://api.playfab.com/Documentation/Client/method/LoginWithCustomID
    CustomId = "TestCustomId",
    CreateAccount = true
}
PlayFabClientApi.LoginWithCustomID(loginRequest, function(result) print("Login Successful: " .. result.PlayFabId) end, function(error) print("Login Failed: " .. error.errorMessage) end)

-- After login, the full client API will fuction properly
-- PlayFabClientApi.GetTitleData( etc etc etc )
-- Try linking more API methods to buttons and game events!
```
* All API methods follow the same signature: PlayFabClientApi.&lt;ApiName>(request, function(result) end, function(error) end)
* The combo plugin has all [client APIs methods](https://api.playfab.com/Documentation/Client), [server APIs methods](https://api.playfab.com/Documentation/Server), [admin APIs methods](https://api.playfab.com/Documentation/Admin), and [matchmaker APIs methods](https://api.playfab.com/Documentation/Matchmaker)
