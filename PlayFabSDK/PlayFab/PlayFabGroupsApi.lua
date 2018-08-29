-- PlayFab Groups API
-- This is the main file you should require in your game
-- All api calls are documented here: https://api.playfab.com/Documentation/Groups
-- Example code:
-- local PlayFabGroupsApi = require("PlayFab.PlayFabGroupsApi")
-- PlayFabGroupsApi.<GroupsApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabGroupsApi = {
    settings = PlayFabSettings.settings
}

-- Accepts an outstanding invitation to to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/AcceptGroupApplication
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.AcceptGroupApplicationRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResponse
function PlayFabGroupsApi.AcceptGroupApplication(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/AcceptGroupApplication", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Accepts an invitation to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/AcceptGroupInvitation
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.AcceptGroupInvitationRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResponse
function PlayFabGroupsApi.AcceptGroupInvitation(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/AcceptGroupInvitation", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Adds members to a group or role.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/AddMembers
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.AddMembersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResponse
function PlayFabGroupsApi.AddMembers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/AddMembers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Applies to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ApplyToGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ApplyToGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ApplyToGroupResponse
function PlayFabGroupsApi.ApplyToGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ApplyToGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Blocks a list of entities from joining a group.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/BlockEntity
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.BlockEntityRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResponse
function PlayFabGroupsApi.BlockEntity(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/BlockEntity", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Changes the role membership of a list of entities from one role to another.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ChangeMemberRole
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ChangeMemberRoleRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResponse
function PlayFabGroupsApi.ChangeMemberRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ChangeMemberRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a new group.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/CreateGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.CreateGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.CreateGroupResponse
function PlayFabGroupsApi.CreateGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/CreateGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a new group role.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/CreateRole
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.CreateGroupRoleRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.CreateGroupRoleResponse
function PlayFabGroupsApi.CreateRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/CreateRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a group and all roles, invitations, join requests, and blocks associated with it.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/DeleteGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.DeleteGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResponse
function PlayFabGroupsApi.DeleteGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/DeleteGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes an existing role in a group.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/DeleteRole
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.DeleteRoleRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResponse
function PlayFabGroupsApi.DeleteRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/DeleteRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information about a group and its roles
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/GetGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.GetGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.GetGroupResponse
function PlayFabGroupsApi.GetGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/GetGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Invites a player to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/InviteToGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.InviteToGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.InviteToGroupResponse
function PlayFabGroupsApi.InviteToGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/InviteToGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Checks to see if an entity is a member of a group or role within the group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/IsMember
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.IsMemberRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.IsMemberResponse
function PlayFabGroupsApi.IsMember(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/IsMember", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all outstanding requests to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListGroupApplications
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupApplicationsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupApplicationsResponse
function PlayFabGroupsApi.ListGroupApplications(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupApplications", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all entities blocked from joining a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListGroupBlocks
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupBlocksRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupBlocksResponse
function PlayFabGroupsApi.ListGroupBlocks(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupBlocks", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all outstanding invitations for a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListGroupInvitations
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupInvitationsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupInvitationsResponse
function PlayFabGroupsApi.ListGroupInvitations(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupInvitations", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all members for a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListGroupMembers
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupMembersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupMembersResponse
function PlayFabGroupsApi.ListGroupMembers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupMembers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all groups and roles for an entity
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListMembership
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListMembershipRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListMembershipResponse
function PlayFabGroupsApi.ListMembership(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListMembership", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all outstanding invitations and group applications for an entity
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListMembershipOpportunities
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListMembershipOpportunitiesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListMembershipOpportunitiesResponse
function PlayFabGroupsApi.ListMembershipOpportunities(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListMembershipOpportunities", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes an application to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/RemoveGroupApplication
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.RemoveGroupApplicationRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResponse
function PlayFabGroupsApi.RemoveGroupApplication(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/RemoveGroupApplication", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes an invitation join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/RemoveGroupInvitation
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.RemoveGroupInvitationRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResponse
function PlayFabGroupsApi.RemoveGroupInvitation(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/RemoveGroupInvitation", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes members from a group.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/RemoveMembers
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.RemoveMembersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResponse
function PlayFabGroupsApi.RemoveMembers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/RemoveMembers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Unblocks a list of entities from joining a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/UnblockEntity
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.UnblockEntityRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResponse
function PlayFabGroupsApi.UnblockEntity(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/UnblockEntity", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates non-membership data about a group.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/UpdateGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.UpdateGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.UpdateGroupResponse
function PlayFabGroupsApi.UpdateGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/UpdateGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates metadata about a role.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/UpdateRole
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.UpdateGroupRoleRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.UpdateGroupRoleResponse
function PlayFabGroupsApi.UpdateRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/UpdateRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabGroupsApi
