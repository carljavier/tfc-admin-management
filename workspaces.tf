# Example  of defining workspaces 
resource "tfe_workspace" "appA" {
  name         = "appA"
  organization = data.tfe_organization.teamcarljavier.name
  tag_names    = ["test", "app"]
}


resource "tfe_workspace" "appB" {
  name         = "appB"
  organization = data.tfe_organization.teamcarljavier.name
  tag_names    = ["test", "app"]
}

resource "tfe_workspace" "aws_dev" {
  name           = "aws-infrastructure"
  organization   = data.tfe_organization.teamcarljavier.name
  execution_mode = "agent"
  agent_pool_id  = tfe_agent_pool.aws.id
  tag_names      = ["aws", "test", "infra"]
}

resource "tfe_workspace" "aws_dev1" {
  name           = "aws-infrastructure2"
  organization   = data.tfe_organization.teamcarljavier.name
  execution_mode = "agent"
  agent_pool_id  = tfe_agent_pool.aws.id
  tag_names      = ["aws", "test", "infra"]
}

resource "tfe_workspace" "aws_dev0" {
  name           = "app-magic2"
  organization   = data.tfe_organization.teamcarljavier.name
  execution_mode = "agent"
  agent_pool_id  = tfe_agent_pool.aws.id
  tag_names      = ["aws", "test", "infra"]
}

resource "tfe_workspace" "aws_dev3" {
  name           = "app-magic"
  organization   = data.tfe_organization.teamcarljavier.name
  execution_mode = "agent"
  agent_pool_id  = tfe_agent_pool.aws.id
  tag_names      = ["aws", "test", "infra"]
}


# Example using https://registry.terraform.io/modules/alexbasista/workspacer/tfe module
# Seperating out your workspace creation makes sense as this way, you can add more workspace settings
module "teamappX-workspace" {
  source  = "alexbasista/workspacer/tfe"
  version = "0.8.0"
  # insert the 7 required variables here

  organization   = data.tfe_organization.teamcarljavier.name
  workspace_name = "App-Workspace-Dev"
  workspace_desc = "Description of my new TFE Workspace."
  workspace_tags = ["experiment", "dev", "sharedservice"]

  terraform_version = "1.2.6"

  # Chicken and Egg issue here when setting this from the get go. 
  # No dependency on Teams created so this module does not know if these teams actually exist or not.
  # team_access = {
  #   "azure-sharedservices-users" = "plan"
  #   "app-service-users"          = "read"
  # }

  tfvars = {
    teststring = "iamstring"
    testlist   = ["1", "2", "3"]
    testmap    = { "a" = "1", "b" = "2", "c" = "3" }
  }

  variable_set_names = [
    "aws-creds-demo"
  ]
}