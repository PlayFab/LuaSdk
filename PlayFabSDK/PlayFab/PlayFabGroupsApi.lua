-- PlayFab Groups API
-- This is the main file you should require in your game
-- All api calls are documented here: https://docs.microsoft.com/gaming/playfab/api-references/
-- Example code:
-- local PlayFabGroupsApi = require("PlayFab.PlayFabGroupsApi")
-- PlayFabGroupsApi.<GroupsApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabGroupsApi = {
    settings = PlayFabSettings.settings
}

-- Accepts an outstanding invitation to to join a group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/acceptgroupapplication
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/acceptgroupapplication#acceptgroupapplicationrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/acceptgroupapplication#emptyresponse
function PlayFabGroupsApi.AcceptGroupApplication(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/AcceptGroupApplication", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Accepts an invitation to join a group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/acceptgroupinvitation
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/acceptgroupinvitation#acceptgroupinvitationrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/acceptgroupinvitation#emptyresponse
function PlayFabGroupsApi.AcceptGroupInvitation(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/AcceptGroupInvitation", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Adds members to a group or role.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/addmembers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/addmembers#addmembersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/addmembers#emptyresponse
function PlayFabGroupsApi.AddMembers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/AddMembers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Applies to join a group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/applytogroup
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/applytogroup#applytogrouprequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/applytogroup#applytogroupresponse
function PlayFabGroupsApi.ApplyToGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ApplyToGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Blocks a list of entities from joining a group.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/blockentity
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/blockentity#blockentityrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/blockentity#emptyresponse
function PlayFabGroupsApi.BlockEntity(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/BlockEntity", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Changes the role membership of a list of entities from one role to another.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/changememberrole
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/changememberrole#changememberrolerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/changememberrole#emptyresponse
function PlayFabGroupsApi.ChangeMemberRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ChangeMemberRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a new group.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/creategroup
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/creategroup#creategrouprequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/creategroup#creategroupresponse
function PlayFabGroupsApi.CreateGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/CreateGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a new group role.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/createrole
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/createrole#creategrouprolerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/createrole#creategrouproleresponse
function PlayFabGroupsApi.CreateRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/CreateRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a group and all roles, invitations, join requests, and blocks associated with it.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/deletegroup
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/deletegroup#deletegrouprequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/deletegroup#emptyresponse
function PlayFabGroupsApi.DeleteGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/DeleteGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes an existing role in a group.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/deleterole
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/deleterole#deleterolerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/deleterole#emptyresponse
function PlayFabGroupsApi.DeleteRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/DeleteRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information about a group and its roles
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/getgroup
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/getgroup#getgrouprequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/getgroup#getgroupresponse
function PlayFabGroupsApi.GetGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/GetGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Invites a player to join a group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/invitetogroup
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/invitetogroup#invitetogrouprequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/invitetogroup#invitetogroupresponse
function PlayFabGroupsApi.InviteToGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/InviteToGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Checks to see if an entity is a member of a group or role within the group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/ismember
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/ismember#ismemberrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/ismember#ismemberresponse
function PlayFabGroupsApi.IsMember(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/IsMember", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all outstanding requests to join a group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupapplications
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupapplications#listgroupapplicationsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupapplications#listgroupapplicationsresponse
function PlayFabGroupsApi.ListGroupApplications(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupApplications", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all entities blocked from joining a group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupblocks
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupblocks#listgroupblocksrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupblocks#listgroupblocksresponse
function PlayFabGroupsApi.ListGroupBlocks(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupBlocks", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all outstanding invitations for a group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupinvitations
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupinvitations#listgroupinvitationsrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupinvitations#listgroupinvitationsresponse
function PlayFabGroupsApi.ListGroupInvitations(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupInvitations", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all members for a group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupmembers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupmembers#listgroupmembersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listgroupmembers#listgroupmembersresponse
function PlayFabGroupsApi.ListGroupMembers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupMembers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all groups and roles for an entity
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listmembership
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listmembership#listmembershiprequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listmembership#listmembershipresponse
function PlayFabGroupsApi.ListMembership(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListMembership", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all outstanding invitations and group applications for an entity
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listmembershipopportunities
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listmembershipopportunities#listmembershipopportunitiesrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/listmembershipopportunities#listmembershipopportunitiesresponse
function PlayFabGroupsApi.ListMembershipOpportunities(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListMembershipOpportunities", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes an application to join a group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/removegroupapplication
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/removegroupapplication#removegroupapplicationrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/removegroupapplication#emptyresponse
function PlayFabGroupsApi.RemoveGroupApplication(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/RemoveGroupApplication", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes an invitation join a group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/removegroupinvitation
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/removegroupinvitation#removegroupinvitationrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/removegroupinvitation#emptyresponse
function PlayFabGroupsApi.RemoveGroupInvitation(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/RemoveGroupInvitation", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes members from a group.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/removemembers
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/removemembers#removemembersrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/removemembers#emptyresponse
function PlayFabGroupsApi.RemoveMembers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/RemoveMembers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Unblocks a list of entities from joining a group
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/unblockentity
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/unblockentity#unblockentityrequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/unblockentity#emptyresponse
function PlayFabGroupsApi.UnblockEntity(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/UnblockEntity", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates non-membership data about a group.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/updategroup
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/updategroup#updategrouprequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/updategroup#updategroupresponse
function PlayFabGroupsApi.UpdateGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/UpdateGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates metadata about a role.
-- API Method Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/updaterole
-- Request Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/updaterole#updategrouprolerequest
-- Response Documentation: https://docs.microsoft.com/rest/api/playfab/group/groups/updaterole#updategrouproleresponse
function PlayFabGroupsApi.UpdateRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/UpdateRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabGroupsApi
