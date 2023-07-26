variable "application_name" {
  type        = string
  description = "Logical Short Name for our Application or Service"
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
  description = "Azure Credentials and Terraform State configuration for the instance of this Application or Service (e.g., dev, prod, qa, uat)"
}
variable "project_id" {
  type        = string
  description = "Azure DevOps Project ID"
}
variable "repo_name" {
  type        = string
  description = "Azure DevOps Repository ID"
}
variable "min_reviewers_enabled" {
  type        = bool
  default     = true
  description = "Flag that determines if the Minimum Reviewers Branch Policy is enabled."
}
variable "min_reviewer_count" {
  type        = number
  default     = 1
  description = "Minimum number of reviewers that need to approve a pull request. Small teams typically use 1 or 2. Lone wolfs will likely disable."
}
variable "work_item_linking_enabled" {
  type        = bool
  default     = false
  description = "Flag that determines if a pull request must have Linked Work Items. This will be used by teams that are using their backlog."
}
variable "reviewers" {
  type        = list(string)
  description = "List of Azure DevOps Users that will automatically be included as code reviewers."
}