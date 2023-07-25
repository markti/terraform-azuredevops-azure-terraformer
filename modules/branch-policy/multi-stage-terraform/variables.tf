variable "environments" {
  type = map(object({
    build_definition_id = string
    working_directory   = string
  }))
}
variable "project_id" {
  type = string
}
variable "min_reviewers_enabled" {
  type    = bool
  default = true
}
variable "min_reviewer_count" {
  type    = number
  default = 1
}
variable "work_item_linking_enabled" {
  type    = bool
  default = false
}
variable "reviewer_group_id" {
  type = string
}