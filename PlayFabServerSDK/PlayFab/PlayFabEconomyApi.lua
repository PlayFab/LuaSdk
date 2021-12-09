-- PlayFab Economy API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabEconomyApi = require("PlayFab.PlayFabEconomyApi")
-- PlayFabEconomyApi.<EconomyApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabEconomyApi = {
    settings = PlayFabSettings.settings
}

-- Creates a new item in the working catalog using provided metadata.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createdraftitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createdraftitem#createdraftitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createdraftitem#createdraftitemresponse
function PlayFabEconomyApi.CreateDraftItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/CreateDraftItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates one or more upload URLs which can be used by the client to upload raw file data.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createuploadurls
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createuploadurls#createuploadurlsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/createuploadurls#createuploadurlsresponse
function PlayFabEconomyApi.CreateUploadUrls(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/CreateUploadUrls", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes all reviews, helpfulness votes, and ratings submitted by the entity specified.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteentityitemreviews
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteentityitemreviews#deleteentityitemreviewsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteentityitemreviews#deleteentityitemreviewsresponse
function PlayFabEconomyApi.DeleteEntityItemReviews(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/DeleteEntityItemReviews", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes an item from working catalog and all published versions from the public catalog.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteitem#deleteitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/deleteitem#deleteitemresponse
function PlayFabEconomyApi.DeleteItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/DeleteItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the configuration for the catalog.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getcatalogconfig
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getcatalogconfig#getcatalogconfigrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getcatalogconfig#getcatalogconfigresponse
function PlayFabEconomyApi.GetCatalogConfig(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetCatalogConfig", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves an item from the working catalog. This item represents the current working state of the item.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitem#getdraftitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitem#getdraftitemresponse
function PlayFabEconomyApi.GetDraftItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetDraftItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves a paginated list of the items from the draft catalog.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitems#getdraftitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getdraftitems#getdraftitemsresponse
function PlayFabEconomyApi.GetDraftItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetDraftItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves a paginated list of the items from the draft catalog created by the Entity.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentitydraftitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentitydraftitems#getentitydraftitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentitydraftitems#getentitydraftitemsresponse
function PlayFabEconomyApi.GetEntityDraftItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetEntityDraftItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the submitted review for the specified item by the authenticated entity.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentityitemreview
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentityitemreview#getentityitemreviewrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getentityitemreview#getentityitemreviewresponse
function PlayFabEconomyApi.GetEntityItemReview(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetEntityItemReview", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves an item from the public catalog.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitem#getitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitem#getitemresponse
function PlayFabEconomyApi.GetItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the moderation state for an item, including the concern category and string reason.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemmoderationstate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemmoderationstate#getitemmoderationstaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemmoderationstate#getitemmoderationstateresponse
function PlayFabEconomyApi.GetItemModerationState(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItemModerationState", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the status of a publish of an item.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitempublishstatus
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitempublishstatus#getitempublishstatusrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitempublishstatus#getitempublishstatusresponse
function PlayFabEconomyApi.GetItemPublishStatus(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItemPublishStatus", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get a paginated set of reviews associated with the specified item.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviews
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviews#getitemreviewsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviews#getitemreviewsresponse
function PlayFabEconomyApi.GetItemReviews(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItemReviews", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get a summary of all reviews associated with the specified item.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviewsummary
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviewsummary#getitemreviewsummaryrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitemreviewsummary#getitemreviewsummaryresponse
function PlayFabEconomyApi.GetItemReviewSummary(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItemReviewSummary", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves items from the public catalog.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitems#getitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/getitems#getitemsresponse
function PlayFabEconomyApi.GetItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/GetItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Initiates a publish of an item from the working catalog to the public catalog.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/publishdraftitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/publishdraftitem#publishdraftitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/publishdraftitem#publishdraftitemresponse
function PlayFabEconomyApi.PublishDraftItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/PublishDraftItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Submit a report for an item, indicating in what way the item is inappropriate.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitem#reportitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitem#reportitemresponse
function PlayFabEconomyApi.ReportItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/ReportItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Submit a report for a review
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitemreview
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitemreview#reportitemreviewrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reportitemreview#reportitemreviewresponse
function PlayFabEconomyApi.ReportItemReview(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/ReportItemReview", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates or updates a review for the specified item.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reviewitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reviewitem#reviewitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/reviewitem#reviewitemresponse
function PlayFabEconomyApi.ReviewItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/ReviewItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Executes a search against the public catalog using the provided search parameters and returns a set of paginated
-- results.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/searchitems
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/searchitems#searchitemsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/searchitems#searchitemsresponse
function PlayFabEconomyApi.SearchItems(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/SearchItems", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets the moderation state for an item, including the concern category and string reason.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/setitemmoderationstate
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/setitemmoderationstate#setitemmoderationstaterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/setitemmoderationstate#setitemmoderationstateresponse
function PlayFabEconomyApi.SetItemModerationState(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/SetItemModerationState", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Submit a vote for a review, indicating whether the review was helpful or unhelpful.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/submititemreviewvote
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/submititemreviewvote#submititemreviewvoterequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/submititemreviewvote#submititemreviewvoteresponse
function PlayFabEconomyApi.SubmitItemReviewVote(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/SubmitItemReviewVote", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Submit a request to takedown one or more reviews.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/takedownitemreviews
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/takedownitemreviews#takedownitemreviewsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/takedownitemreviews#takedownitemreviewsresponse
function PlayFabEconomyApi.TakedownItemReviews(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/TakedownItemReviews", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates the configuration for the catalog.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatecatalogconfig
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatecatalogconfig#updatecatalogconfigrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatecatalogconfig#updatecatalogconfigresponse
function PlayFabEconomyApi.UpdateCatalogConfig(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/UpdateCatalogConfig", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Update the metadata for an item in the working catalog.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatedraftitem
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatedraftitem#updatedraftitemrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/catalog/catalog/updatedraftitem#updatedraftitemresponse
function PlayFabEconomyApi.UpdateDraftItem(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Catalog/UpdateDraftItem", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabEconomyApi
