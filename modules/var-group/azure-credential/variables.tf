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
variable "azure_credentials" {
  type = object({
    client_id       = string
    client_secret   = string
    tenant_id       = string
    subscription_id = string
  })
  description = "Azure Credentials that Terraform will use to authenticate with Azure"
}