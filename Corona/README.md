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
local pfClient = require("plugin.playfab.client")
local PlayFabClientApi = pfClient.PlayFabClientApi
PlayFabClientApi.settings.titleId = "<your-title-id>"

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
local pfServer = require("plugin.playfab.server")
local json = pfServer.json
local PlayFabServerApi = pfServer.PlayFabServerApi
PlayFabServerApi.settings.titleId = "<your-title-id>"
PlayFabServerApi.settings.devSecretKey = "<your-secret-key>"

local dataRequest = {} -- https://api.playfab.com/Documentation/Server/method/GetTitleData
PlayFabServerApi.GetTitleData(dataRequest, function(result) print("GetTitleData Successful: " .. json.encode(result.Data)) end, function(error) print("GetTitleData Failed: " .. error.errorMessage) end)

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
* Here is a main.lua script for your Corona game project which will log in to PlayFab via the client, and get the titleId as a server, and print the results to the console
```Lua
local pfCombo = require("plugin.playfab.combo")
local json = pfCombo.json
local PlayFabClientApi = pfCombo.PlayFabClientApi
local PlayFabServerApi = pfCombo.PlayFabServerApi
PlayFabClientApi.settings.titleId = "<your-title-id>"
PlayFabServerApi.settings.devSecretKey = "<your-secret-key>"

local loginRequest = {
    -- https://api.playfab.com/Documentation/Client/method/LoginWithCustomID
    CustomId = "TestCustomId",
    CreateAccount = true
}
PlayFabClientApi.LoginWithCustomID(loginRequest, function(result) print("Login Successful: " .. result.PlayFabId) end, function(error) print("Login Failed: " .. error.errorMessage) end)

local dataRequest = {} -- https://api.playfab.com/Documentation/Server/method/GetTitleData
PlayFabServerApi.GetTitleData(dataRequest, function(result) print("GetTitleData Successful: " .. json.encode(result.Data)) end, function(error) print("GetTitleData Failed: " .. error.errorMessage) end)


-- After login, the full client API will fuction properly
-- PlayFabClientApi.GetTitleData( etc etc etc )
-- Try linking more api calls to buttons and game events!
```
* All API methods follow the same signature: PlayFabClientApi.&lt;ApiName>(request, function(result) end, function(error) end)
* The combo plugin has all [client APIs methods](https://api.playfab.com/Documentation/Client), [server APIs methods](https://api.playfab.com/Documentation/Server), [admin APIs methods](https://api.playfab.com/Documentation/Admin), and [matchmaker APIs methods](https://api.playfab.com/Documentation/Matchmaker)
