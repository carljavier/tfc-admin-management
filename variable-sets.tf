resource "tfe_variable_set" "tfc_admin" {
  name         = "TFC_ADMIN"
  description  = "TFC MANAGEMENT"
  global       = false
  organization = data.tfe_organization.teamcarljavier.name
}

resource "tfe_workspace_variable_set" "aws-infra" {
  variable_set_id = tfe_variable_set.tfc_admin.id
  workspace_id    = tfe_workspace.aws_dev.id
}