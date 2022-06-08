variable "teamname" {
  type = string
}

variable "workspaces" {
  type = set(string)
}

variable "workspace-tags" {
  type = list(string)
}

variable "organization" {
  default = "teamcarljavier"
}