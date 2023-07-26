variable "project_id" {
  type        = string
  description = "Azure DevOps Project ID"
}
variable "name" {
  type        = string
  description = "Name of the User Group"
}
variable "description" {
  type = string
}
variable "members" {
  type = list(string)
}