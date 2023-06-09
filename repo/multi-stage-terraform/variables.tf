variable "application_name" {
  type = string
}
variable "environments" {
  type = map(
    object(
      {
        azure_credential = object({
          client_id       = string
          client_secret   = string
          tenant_id       = string
          subscription_id = string
        })
        azure_backend = object({
          resource_group  = string
          storage_account = string
          container       = string
        })
      }
    )
  )
}
variable "project_id" {
  type = string
}
variable "repo_name" {
  type = string
}