variable "project_id" {
  type        = string
  description = "Azure DevOps Project ID"
}
variable "name" {
  type        = string
  description = "Azure DevOps User Group Name"
}
variable "description" {
  type        = string
  description = "Azure DevOps User Group Description"
}
variable "members" {
  type        = list(string)
  description = "List of User IDs that should be included as members in this User Group"
}