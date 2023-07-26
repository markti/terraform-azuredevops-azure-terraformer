variable "environments" {
  type = map(object({
    build_definition_id = string
    working_directory   = string
  }))
  description = "Collection of Environment Meta-data. Each environment will have its own pipeline and working directory. If all environments use the same codebase, just pass in the same working directory for them all."
}
variable "project_id" {
  type        = string
  description = "Azure DevOps Project ID"
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
variable "reviewer_group_id" {
  type        = string
  description = "Azure DevOps User Group that will automatically be included as code reviewers."
}