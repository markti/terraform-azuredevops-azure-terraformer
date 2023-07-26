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
  default     = ""
  description = "Azure DevOps Variable Group Description"
}
variable "variables" {
  type = list(
    object({
      name      = string
      value     = string
      is_secret = optional(bool, false)
    })
  )
  description = "List of variables to be created within Azure DevOps Variable Group"
}