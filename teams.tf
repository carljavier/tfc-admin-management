module "aws-team" {
  source         = "./modules/teams"
  teamname       = "aws-sharedservices"
  workspaces     = ["aws-sharednetwork", "aws-iam-profiles", "aws-domain-names"]
  workspace-tags = ["aws", "sharedservices"]
  organization   = data.tfe_organization.teamcarljavier.name
}

module "azure-team" {
  source         = "./modules/teams"
  teamname       = "azure-sharedservices"
  workspaces     = ["azure-vnets", "azure-msi-profiles", "azure-resource-groups"]
  workspace-tags = ["azure", "sharedservices"]
  organization   = data.tfe_organization.teamcarljavier.name
}

module "gcp-team" {
  source         = "./modules/teams"
  teamname       = "gcp-sharedservices"
  workspaces     = ["gcp-sharednetwork", "gcp-iam-profiles", "gcp-projects"]
  workspace-tags = ["gcp", "sharedservices", "datalakes"]
  organization   = data.tfe_organization.teamcarljavier.name
}
