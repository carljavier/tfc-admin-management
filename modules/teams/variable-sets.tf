resource "tfe_variable_set" "variable_set" {
  name         = var.teamname
  description  = "${var.teamname} Variable Set"
  global       = false
  organization = var.organization
}


## Apply variable set to each team project
resource "tfe_project_variable_set" "project_variable_set" {
  variable_set_id = tfe_variable_set.variable_set.id
  project_id      = tfe_project.project.id
}