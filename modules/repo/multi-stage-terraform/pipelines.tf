module "pipeline" {
  source = "../../pipeline/multi-stage-terraform"

  for_each = var.environments

  application_name = var.application_name
  environment_name = each.key
  project_id       = var.project_id
  repo_id          = azuredevops_git_repository.main.id
  default_branch   = azuredevops_git_repository.main.default_branch
  variable_groups  = local.variable_groups[each.key]

}

locals {
  variable_groups = { for k, v in var.environments :
    k => [
      module.azure_credential[k].id,
      module.azure_backend[k].id
    ]
  }
}

module "azure_credential" {
  source = "../../var-group/azure-credential"

  for_each = var.environments

  name              = "azure-credentials-${var.application_name}-${each.key}"
  project_id        = var.project_id
  azure_credentials = each.value.azure_credential

}

module "azure_backend" {
  source = "../../var-group/azure-backend"

  for_each = var.environments

  name          = "azure-backend-${var.application_name}-${each.key}"
  project_id    = var.project_id
  azure_backend = each.value.azure_backend

}