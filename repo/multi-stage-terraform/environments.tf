resource "azuredevops_environment" "main" {
  for_each = var.environments

  project_id = var.project_id
  name       = "${var.application_name}-${each.key}"
}