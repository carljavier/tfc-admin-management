resource "tfe_agent_pool" "aws" {
  name         = "aws-sydney"
  organization = data.tfe_organization.teamcarljavier.name
}

resource "tfe_agent_pool" "azure" {
  name         = "azure-sydney"
  organization = data.tfe_organization.teamcarljavier.name
}

resource "tfe_agent_pool" "gcp" {
  name         = "gcp-sydney"
  organization = data.tfe_organization.teamcarljavier.name
}