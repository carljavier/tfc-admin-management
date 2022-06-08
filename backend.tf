terraform {
  cloud {
    organization = "teamcarljavier"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      name = "tfc-management"
    }
  }
}
