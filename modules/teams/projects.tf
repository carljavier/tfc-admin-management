resource "tfe_project" "project" {
  organization = var.organizationx
  name         = var.project
}

resource "tfe_team_project_access" "users" {
  access     = "admin"
  team_id    = tfe_team.users.id
  project_id = tfe_project.project.id
}

resource "tfe_team_project_access" "pipeline" {
  access     = "admin"
  team_id    = tfe_team.pipeline.id
  project_id = tfe_project.project.id
}