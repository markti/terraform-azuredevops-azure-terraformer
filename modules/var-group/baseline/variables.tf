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
variable "variables" {
  type = list(
    object({
      name      = string
      value     = string
      is_secret = optional(bool, false)
    })
  )
}