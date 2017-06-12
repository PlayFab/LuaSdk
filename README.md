# LuaSdk README


## 1. Overview:

The PlayFab LuaSdk includes the files needed to make PlayFab HTTPS API calls within a Lua Project.

Current supported platforms:
* LuaDist console for Windows - Useful for evaluating/debugging
* Defold - See our [Defold Readme](https://github.com/PlayFab/LuaSdk/tree/master/Defold)
* Corona - See our [Corona Readme](https://github.com/PlayFab/LuaSdk/tree/master/Corona)
* If your favorite Lua-engine/environment is not listed, let us know on the [Forums](https://community.playfab.com/index.html).


## 2. Prerequisites:

* Users should be very familiar with the topics covered in our [getting started guide](https://api.playfab.com/docs/general-getting-started).

To connect to the PlayFab service, your machine must be running TLS v1.2 or better.
* For Windows, this means Windows 7 and above
* [Official Microsoft Documentation](https://msdn.microsoft.com/en-us/library/windows/desktop/aa380516%28v=vs.85%29.aspx)
* [Support for SSL/TLS protocols on Windows](http://blogs.msdn.com/b/kaushal/archive/2011/10/02/support-for-ssl-tls-protocols-on-windows.aspx)


## 3. Contents:

* PlayFabClientSDK - All files neccessary to make API calls to the PlayFab Client API
 * This is the SDK you should include in your game, and distribute to your players
* PlayFabServerSdk - All files neccessary to make API calls to the PlayFab Server and Matchmaker API
 * This is the sdk you should optionally include in your live-server (if you have one)
 * For the security of your title, do not distribute any build which contains your devSecretKey
* PlayFabSdk - Contains all API methods
 * Generally for evaluation or debugging, and some special case live-servers
 * For the security of your title, do not distribute any build which contains your devSecretKey


## 4. LuaDist Example Instructions:

* Download PlayFab LuaSdk, copy PlayFabClientSDK/PlayFab into your project folder
 * Specifically, your PlayFabClientApi.lua file should be located: {YourLuaProjectFolder}/PlayFab/PlayFabClientApi.lua
* Add the following code in your main project (such as: {YourLuaProjectFolder}/main.lua)
```Lua
local json = require("PlayFab.json")
local PlayFabClientApi = require("PlayFab.PlayFabClientApi")
-- Always set your titleId first, before making any API calls
PlayFabClientApi.settings.titleId = nil -- TODO: Set this to your string titleId you created on PlayFab Game Manager website

-- After the above setup is complete, you can make a Login API call
local loginRequest = {
    -- https://api.playfab.com/Documentation/Client/method/LoginWithCustomID
    CustomId = "TestCustomId",
    CreateAccount = true
}
PlayFabClientApi.LoginWithCustomID(loginRequest, function(result) print("Login Successful: " .. result.PlayFabId) end, function(error) print("Login Failed: " .. error.errorMessage) end)

-- After login, the full client API will fuction properly
-- PlayFabClientApi.GetTitleData( etc etc etc )
```

Alternately, from the console, you can run the playfab API tests by runing the following console command from windows (Lua.exe must be in your path environment variable):
```
lua PlayFabTesting/TestPlayFabConsole.lua
```


## 5. Defold Example Instructions:

* Download and install defold
* Set a project-dependency to our Defold Client Example
 * Details here: https://github.com/PlayFab/LuaSdk/tree/master/Defold
* The following example script sets up PlayFab to a GUI element:
```Lua
local PlayFabClientApi = require("PlayFab.PlayFabClientApi")
local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabHttps_Defold = require("PlayFab.PlayFabHttps_Defold")

IPlayFabHttps.SetHttp(PlayFabHttps_Defold) -- The auto import magic doens't work if you set the name, so you have to set the reference
PlayFabClientApi.settings.titleId = "6195"

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
* Link the file to a gui script and run!


## 6. Troubleshooting:

For a complete list of available APIs, check out the [online documentation](http://api.playfab.com/Documentation/).

#### Contact Us
We love to hear from our developer community!
Do you have ideas on how we can make our products and services better?

Our Developer Success Team can assist with answering any questions as well as process any feedback you have about PlayFab services.

[Forums, Support and Knowledge Base](https://community.playfab.com/index.html)


## 7. Copyright and Licensing Information:

  Apache License --
  Version 2.0, August 2016
  http://www.apache.org/licenses/
  Full details available within the LICENSE file.
