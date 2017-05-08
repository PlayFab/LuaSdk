-- Holds the basic settings for PlayFab
-- PlayFabSettings.settings is public and contains the following:
--     titleId -- You must set this before making any PlayFab API calls
-- It may optionally include:
-- (if you know you're on a device and wish to use advertising attribution:)
--     disableAdvertising -- Client only, set to true if you wish to disable advertising (even if it's set properly)
--     advertisingIdType  -- Client only, Can be one of: PlayFabSettings.settings.AD_TYPE_IDFA or PlayFabSettings.settings.AD_TYPE_ANDROID_ID
--     advertisingIdValue -- Client only, If using advertising, and if your game engine can provide this value, set it here
--     AD_TYPE_IDFA       -- Client only, a constant value for advertisingIdType
--     AD_TYPE_ANDROID_ID -- Client only, a constant value for advertisingIdType
--     devSecretKey       -- Server/Admin only, required for any non-client call

local PlayFabSettings = {
    _internalSettings = {
        sdkVersionString = "LuaSdk_0.15.170508",
        buildIdentifier = "jbuild_luasdk_0"
    },
    settings = {
        devSecretKey = nil, -- This should never be assigned in a client distribution
        titleId = nil
    }
}

return PlayFabSettings
