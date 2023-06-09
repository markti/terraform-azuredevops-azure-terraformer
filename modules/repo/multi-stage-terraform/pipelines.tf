module "pipeline" {
  source = "../../pipeline/multi-stage-terraform"

  for_each = var.environments

  application_name = var.application_name
  environment_name = each.key
  project_id       = var.project_id
  repo_id          = azuredevops_git_repository.main.id
  default_branch   = azuredevops_git_repository.main.default_branch
  azure_backend    = each.value.azure_backend
  azure_credential = each.value.azure_credential

}