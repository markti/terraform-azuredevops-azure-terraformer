variable "application_name" {
  type = string
}
variable "environments" {
  type = list(string)
}
variable "project_name" {
  type = string
}
variable "repo_name" {
  type = string
}
variable "azure_credential" {
  type        = string
  description = "Name of the Variable Group to use for the Azure Credentials"
}
variable "azure_backend" {
  type        = string
  description = "Name of the Variable Group to use for the Azure Backend Configuration"
}