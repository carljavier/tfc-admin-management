resource "tfe_team_access" "users" {
  for_each     = tfe_workspace.workspaces
  access       = "plan"
  team_id      = tfe_team.users.id
  workspace_id = tfe_workspace.workspaces[each.key].id
}