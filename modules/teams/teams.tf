
# These users are allowed to plan (eg Remote CLI when local dev)
resource "tfe_team" "users" {
  name         = format("%s-users", var.teamname)
  organization = var.organization
}

# This team are allowed to apply (eg Remote CLI when local dev)
# The idea is to use the Team API token for CLI workflow via a dedicated CICD/Pipeline
# The assumption of all teams is to only rely on a trusted Pipeline to perform the TF apply 
resource "tfe_team" "pipeline" {
  name         = format("%s-pipeline", var.teamname)
  organization = var.organization
}