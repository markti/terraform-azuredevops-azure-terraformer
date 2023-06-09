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
variable "min_reviewers_enabled" {
  type    = bool
  default = true
}
variable "min_reviewer_count" {
  type    = number
  default = 2
}
variable "work_item_linking_enabled" {
  type    = bool
  default = false
}