resource "tfe_workspace" "workspaces" {
  for_each     = var.workspaces
  name         = each.key
  organization = var.organization
  tag_names    = var.workspace-tags
}