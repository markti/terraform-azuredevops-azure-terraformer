variable "application_name" {
  type = string
}
variable "environment_name" {
  type = string
}
variable "project_id" {
  type        = string
  description = "Azure DevOps Project ID"
}
variable "repo_id" {
  type = string
}
variable "default_branch" {
  type = string
}
variable "azure_credential" {
  type = object({
    client_id       = string
    client_secret   = string
    tenant_id       = string
    subscription_id = string
  })
}
variable "azure_backend" {
  type = object({
    resource_group  = string
    storage_account = string
    container       = string
  })
}