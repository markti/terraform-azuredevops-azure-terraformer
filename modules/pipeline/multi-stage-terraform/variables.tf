variable "application_name" {
  type        = string
  description = "Logical Short Name for our Application or Service"
}
variable "environment_name" {
  type        = string
  description = "Logical Short Name for the instance of this Application or Service (e.g., dev, prod, qa, uat)"
}
variable "project_id" {
  type        = string
  description = "Azure DevOps Project ID"
}
variable "repo_id" {
  type        = string
  description = "Azure DevOps Repository ID"
}
variable "default_branch" {
  type        = string
  description = "Default branch that the pipelines will trigger against"
}
variable "variable_groups" {
  type = list(string)
}