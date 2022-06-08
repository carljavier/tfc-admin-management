variable "teamname" {
  description = "TFC Team Name"
  type        = string
}

variable "workspaces" {
  description = "List of workspaces to create and attach to TFC Team"
  type        = set(string)
}

variable "workspace-tags" {
  description = "Tags to attach to all listed workspaces"
  type        = list(string)
}

variable "organization" {
  default = "teamcarljavier"
}