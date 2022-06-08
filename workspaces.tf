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


# resource "tfe_workspace" "appC" {
#   name         = "appC"
#   organization = data.tfe_organization.teamcarljavier.name
#   tag_names    = ["test", "app"]
# }

# resource "tfe_workspace" "appD" {
#   name         = "appD"
#   organization = "teamcarljavier"
#   tag_names    = ["test", "app"]
# }
