resource "tfe_workspace" "workspaces" {
  for_each     = var.workspaces
  name         = each.key
  organization = var.organization
  tag_names    = var.workspace-tags
}

## Any other settings to a workspace, could be set here or manully in the UI. If there are different 
## settings per workspace then I do not recommend this setup. 
## Expectation here with using for_each is each workspace will be used in the same as everyone else.
