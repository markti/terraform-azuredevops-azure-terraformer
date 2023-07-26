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
variable "azure_credential" {
  type = object({
    client_id       = string
    client_secret   = string
    tenant_id       = string
    subscription_id = string
  })
  description = "Credentials that will be used by Terraform to authenticate with Azure"
}
variable "azure_backend" {
  type = object({
    resource_group  = string
    storage_account = string
    container       = string
  })
  description = "Terraform State will be stored in Azure Blob Storage. This provides details on which Azure Storage Account and which Blob Storage Container to use"
}