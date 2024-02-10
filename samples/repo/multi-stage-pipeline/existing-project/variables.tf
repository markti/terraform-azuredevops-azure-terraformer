variable "application_name" {
  type = string
}
variable "environment_name" {
  type = string
}
variable "project_name" {
  type = string
}
variable "repo_name" {
  type = string
}
variable "subscription" {
  type = object({
    client_id       = string
    client_secret   = string
    tenant_id       = string
    subscription_id = string
  })
}
variable "backend" {
  type = object({
    resource_group  = string
    storage_account = string
    container       = string
  })
}
variable "reviewers" {
  type = list(any)
}