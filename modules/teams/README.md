<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_team.pipeline](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team) | resource |
| [tfe_team.users](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team) | resource |
| [tfe_team_access.pipeline](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_access) | resource |
| [tfe_team_access.users](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_access) | resource |
| [tfe_workspace.workspaces](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization"></a> [organization](#input\_organization) | n/a | `string` | `"teamcarljavier"` | no |
| <a name="input_teamname"></a> [teamname](#input\_teamname) | TFC Team Name | `string` | n/a | yes |
| <a name="input_workspace-tags"></a> [workspace-tags](#input\_workspace-tags) | Tags to attach to all listed workspaces | `list(string)` | n/a | yes |
| <a name="input_workspaces"></a> [workspaces](#input\_workspaces) | List of workspaces to create and attach to TFC Team | `set(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->