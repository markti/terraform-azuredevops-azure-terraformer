data "azuredevops_project" "existing" {
  name = var.project_name
}
data "azuredevops_git_repository" "existing" {
  project_id = data.azuredevops_project.existing.id
  name       = var.repo_name
}

data "azuredevops_variable_group" "azure_credential" {
  project_id = data.azuredevops_project.existing.id
  name       = var.azure_credential
}

data "azuredevops_variable_group" "azure_backend" {
  project_id = data.azuredevops_project.existing.id
  name       = var.azure_backend
}


locals {
  environments = {
    for env in var.environments : env => {
      azure_credential = data.azuredevops_variable_group.azure_credential.id
      azure_backend    = data.azuredevops_variable_group.azure_backend.id
    }
  }
}

module "pipeline" {
  source = "../../../../pipeline/multi-stage-terraform"

  for_each = var.environments

  application_name = var.application_name
  environment_name = each.key
  project_id       = var.project_id
  repo_id          = azuredevops_git_repository.main.id
  default_branch   = azuredevops_git_repository.main.default_branch
  variable_groups  = local.variable_groups[each.key]

}
