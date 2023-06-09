variable "project_id" {
  type = string
}
variable "name" {
  type = string
}
variable "description" {
  type    = string
  default = ""
}
variable "azure_backend" {
  type = object({
    resource_group  = string
    storage_account = string
    container       = string
  })
}