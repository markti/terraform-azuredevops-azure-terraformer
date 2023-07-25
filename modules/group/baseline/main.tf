resource "azuredevops_group" "main" {
  scope        = var.project_id
  display_name = var.name
  description  = var.description
}
resource "azuredevops_group_membership" "main" {
  group   = azuredevops_group.main.descriptor
  members = var.members
}
