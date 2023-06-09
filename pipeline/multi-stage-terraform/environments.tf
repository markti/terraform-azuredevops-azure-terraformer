resource "azuredevops_environment" "main" {
  project_id = var.project_id
  name       = "${var.application_name}-${var.environment_name}"
}