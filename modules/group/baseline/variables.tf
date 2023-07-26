variable "project_id" {
  type        = string
  description = "Azure DevOps Project ID"
}
variable "name" {
  type = string
}
variable "description" {
  type = string
}
variable "members" {
  type = list(string)
}