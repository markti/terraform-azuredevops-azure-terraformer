variable "project_id" {
  type        = string
  description = "Azure DevOps Project ID"
}
variable "name" {
  type        = string
  description = "Azure DevOps Variable Group Name"
}
variable "description" {
  type        = string
  description = "Azure DevOps Variable Group Description"
}
variable "azure_backend" {
  type = object({
    resource_group  = string
    storage_account = string
    container       = string
  })
  description = "Terraform State configuration for an Azure Blob Storage Backend"
}