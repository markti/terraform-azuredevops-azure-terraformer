variable "project_name" {
  type = string
}
variable "application_name" {
  type = string
}
variable "dev_subscription" {
  type = object({
    client_id       = string
    client_secret   = string
    tenant_id       = string
    subscription_id = string
  })
}
variable "dev_backend" {
  type = object({
    resource_group  = string
    storage_account = string
    container       = string
  })
}
variable "prod_subscription" {
  type = object({
    client_id       = string
    client_secret   = string
    tenant_id       = string
    subscription_id = string
  })
}
variable "prod_backend" {
  type = object({
    resource_group  = string
    storage_account = string
    container       = string
  })
}
variable "reviewers" {
  type = list(any)
}