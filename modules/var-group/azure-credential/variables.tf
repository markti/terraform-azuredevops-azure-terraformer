variable "project_id" {
  type        = string
  description = "Azure DevOps Project ID"
}
variable "name" {
  type = string
}
variable "description" {
  type    = string
  default = ""
}
variable "azure_credentials" {
  type = object({
    client_id       = string
    client_secret   = string
    tenant_id       = string
    subscription_id = string
  })
}