-- PlayFab Entity API
-- This is the main file you should require in your game
-- All api calls are documented here: https://api.playfab.com/Documentation/Entity
-- Example code:
-- local PlayFabEntityApi = require("PlayFab.PlayFabEntityApi")
-- PlayFabEntityApi.<EntityApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabEntityApi = {
    settings = PlayFabSettings.settings
}

-- Abort pending file uploads to an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/File/method/AbortFileUploads
-- Request Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.AbortFileUploadsRequest
-- Result Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.AbortFileUploadsResponse
function PlayFabEntityApi.AbortFileUploads(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/AbortFileUploads", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Accepts an outstanding invitation to to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/AcceptGroupApplication
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.AcceptGroupApplicationRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResult
function PlayFabEntityApi.AcceptGroupApplication(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/AcceptGroupApplication", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Accepts an invitation to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/AcceptGroupInvitation
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.AcceptGroupInvitationRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResult
function PlayFabEntityApi.AcceptGroupInvitation(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/AcceptGroupInvitation", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Adds members to a group or role.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/AddMembers
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.AddMembersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResult
function PlayFabEntityApi.AddMembers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/AddMembers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Applies to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ApplyToGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ApplyToGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ApplyToGroupResponse
function PlayFabEntityApi.ApplyToGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ApplyToGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Blocks a list of entities from joining a group.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/BlockEntity
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.BlockEntityRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResult
function PlayFabEntityApi.BlockEntity(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/BlockEntity", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Changes the role membership of a list of entities from one role to another.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ChangeMemberRole
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ChangeMemberRoleRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResult
function PlayFabEntityApi.ChangeMemberRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ChangeMemberRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a new group.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/CreateGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.CreateGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.CreateGroupResponse
function PlayFabEntityApi.CreateGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/CreateGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a new group role.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/CreateRole
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.CreateGroupRoleRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.CreateGroupRoleResponse
function PlayFabEntityApi.CreateRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/CreateRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Delete files on an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/File/method/DeleteFiles
-- Request Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.DeleteFilesRequest
-- Result Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.DeleteFilesResponse
function PlayFabEntityApi.DeleteFiles(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/DeleteFiles", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a group and all roles, invitations, join requests, and blocks associated with it.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/DeleteGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.DeleteGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResult
function PlayFabEntityApi.DeleteGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/DeleteGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes an existing role in a group.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/DeleteRole
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.DeleteRoleRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResult
function PlayFabEntityApi.DeleteRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/DeleteRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Finalize file uploads to an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/File/method/FinalizeFileUploads
-- Request Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.FinalizeFileUploadsRequest
-- Result Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.FinalizeFileUploadsResponse
function PlayFabEntityApi.FinalizeFileUploads(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/FinalizeFileUploads", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Method to exchange a legacy AuthenticationTicket or title SecretKey for an Entity Token or to refresh a still valid
-- Entity Token.
-- API Method Documentation: https://api.playfab.com/Documentation/Authentication/method/GetEntityToken
-- Request Documentation: https://api.playfab.com/Documentation/Authentication/datatype/PlayFab.Authentication.Models/PlayFab.Authentication.Models.GetEntityTokenRequest
-- Result Documentation: https://api.playfab.com/Documentation/Authentication/datatype/PlayFab.Authentication.Models/PlayFab.Authentication.Models.GetEntityTokenResponse
function PlayFabEntityApi.GetEntityToken(request, onSuccess, onError)
    local authKey = nil
    local authValue = nil
    if (PlayFabSettings._internalSettings.entityToken) then
        authKey = "X-EntityToken"
        authValue = PlayFabSettings._internalSettings.entityToken
    end
    if (PlayFabSettings._internalSettings.sessionTicket) then
        authKey = "X-Authorization"
        authValue = PlayFabSettings._internalSettings.sessionTicket
    end
    if (PlayFabSettings.settings.devSecretKey) then
        authKey = "X-SecretKey"
        authValue = PlayFabSettings.settings.devSecretKey
    end

    local externalOnSuccess = onSuccess
    function wrappedOnSuccess(result)
        PlayFabSettings._internalSettings.entityToken = result.EntityToken
        if (externalOnSuccess) then
            externalOnSuccess(result)
        end
    end
    onSuccess = wrappedOnSuccess
    IPlayFabHttps.MakePlayFabApiCall("/Authentication/GetEntityToken", request, authKey, authValue, onSuccess, onError)
end

-- Retrieves file metadata from an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/File/method/GetFiles
-- Request Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.GetFilesRequest
-- Result Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.GetFilesResponse
function PlayFabEntityApi.GetFiles(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/GetFiles", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the global title access policy
-- API Method Documentation: https://api.playfab.com/Documentation/Profile/method/GetGlobalPolicy
-- Request Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.GetGlobalPolicyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.GetGlobalPolicyResponse
function PlayFabEntityApi.GetGlobalPolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/GetGlobalPolicy", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets information about a group and its roles
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/GetGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.GetGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.GetGroupResponse
function PlayFabEntityApi.GetGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/GetGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves objects from an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/Object/method/GetObjects
-- Request Documentation: https://api.playfab.com/Documentation/Object/datatype/PlayFab.Object.Models/PlayFab.Object.Models.GetObjectsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Object/datatype/PlayFab.Object.Models/PlayFab.Object.Models.GetObjectsResponse
function PlayFabEntityApi.GetObjects(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Object/GetObjects", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Retrieves the entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/Profile/method/GetProfile
-- Request Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.GetEntityProfileRequest
-- Result Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.GetEntityProfileResponse
function PlayFabEntityApi.GetProfile(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/GetProfile", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Initiates file uploads to an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/File/method/InitiateFileUploads
-- Request Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.InitiateFileUploadsRequest
-- Result Documentation: https://api.playfab.com/Documentation/File/datatype/PlayFab.File.Models/PlayFab.File.Models.InitiateFileUploadsResponse
function PlayFabEntityApi.InitiateFileUploads(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/File/InitiateFileUploads", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Invites a player to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/InviteToGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.InviteToGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.InviteToGroupResponse
function PlayFabEntityApi.InviteToGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/InviteToGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Checks to see if an entity is a member of a group or role within the group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/IsMember
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.IsMemberRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.IsMemberResponse
function PlayFabEntityApi.IsMember(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/IsMember", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all outstanding requests to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListGroupApplications
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupApplicationsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupApplicationsResponse
function PlayFabEntityApi.ListGroupApplications(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupApplications", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all entities blocked from joining a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListGroupBlocks
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupBlocksRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupBlocksResponse
function PlayFabEntityApi.ListGroupBlocks(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupBlocks", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all outstanding invitations for a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListGroupInvitations
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupInvitationsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupInvitationsResponse
function PlayFabEntityApi.ListGroupInvitations(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupInvitations", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all members for a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListGroupMembers
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupMembersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListGroupMembersResponse
function PlayFabEntityApi.ListGroupMembers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListGroupMembers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all groups and roles for an entity
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListMembership
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListMembershipRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListMembershipResponse
function PlayFabEntityApi.ListMembership(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListMembership", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists all outstanding invitations and group applications for an entity
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/ListMembershipOpportunities
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListMembershipOpportunitiesRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.ListMembershipOpportunitiesResponse
function PlayFabEntityApi.ListMembershipOpportunities(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/ListMembershipOpportunities", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes an application to join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/RemoveGroupApplication
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.RemoveGroupApplicationRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResult
function PlayFabEntityApi.RemoveGroupApplication(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/RemoveGroupApplication", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes an invitation join a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/RemoveGroupInvitation
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.RemoveGroupInvitationRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResult
function PlayFabEntityApi.RemoveGroupInvitation(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/RemoveGroupInvitation", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Removes members from a group.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/RemoveMembers
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.RemoveMembersRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResult
function PlayFabEntityApi.RemoveMembers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/RemoveMembers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets the global title access policy
-- API Method Documentation: https://api.playfab.com/Documentation/Profile/method/SetGlobalPolicy
-- Request Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.SetGlobalPolicyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.SetGlobalPolicyResponse
function PlayFabEntityApi.SetGlobalPolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/SetGlobalPolicy", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets objects on an entity's profile.
-- API Method Documentation: https://api.playfab.com/Documentation/Object/method/SetObjects
-- Request Documentation: https://api.playfab.com/Documentation/Object/datatype/PlayFab.Object.Models/PlayFab.Object.Models.SetObjectsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Object/datatype/PlayFab.Object.Models/PlayFab.Object.Models.SetObjectsResponse
function PlayFabEntityApi.SetObjects(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Object/SetObjects", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Sets the profiles access policy
-- API Method Documentation: https://api.playfab.com/Documentation/Profile/method/SetProfilePolicy
-- Request Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.SetEntityProfilePolicyRequest
-- Result Documentation: https://api.playfab.com/Documentation/Profile/datatype/PlayFab.Profile.Models/PlayFab.Profile.Models.SetEntityProfilePolicyResponse
function PlayFabEntityApi.SetProfilePolicy(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Profile/SetProfilePolicy", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Unblocks a list of entities from joining a group
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/UnblockEntity
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.UnblockEntityRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.EmptyResult
function PlayFabEntityApi.UnblockEntity(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/UnblockEntity", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates non-membership data about a group.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/UpdateGroup
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.UpdateGroupRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.UpdateGroupResponse
function PlayFabEntityApi.UpdateGroup(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/UpdateGroup", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates metadata about a role.
-- API Method Documentation: https://api.playfab.com/Documentation/Group/method/UpdateRole
-- Request Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.UpdateGroupRoleRequest
-- Result Documentation: https://api.playfab.com/Documentation/Group/datatype/PlayFab.Group.Models/PlayFab.Group.Models.UpdateGroupRoleResponse
function PlayFabEntityApi.UpdateRole(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Group/UpdateRole", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabEntityApi
