## Modules Project - Workspaces for modules testing
resource "tfe_project" "modules" {
  organization = data.tfe_organization.teamcarljavier.name
  name         = "modules"
}