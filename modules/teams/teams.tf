resource "tfe_team" "users" {
  name         = format("%s-users", var.teamname)
  organization = var.organization
}

resource "tfe_team" "pipeline" {
  name         = format("%s-pipeline", var.teamname)
  organization = var.organization
}