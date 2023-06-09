resource "azuredevops_build_definition" "plan" {

  for_each = var.environments

  project_id = var.project_id
  name       = "plan"
  path       = "\\${var.application_name}\\${each.key}"

  ci_trigger {
    use_yaml = false
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.main.id
    branch_name = azuredevops_git_repository.main.default_branch
    yml_path    = ".azdo-pipelines/terraform-plan.yaml"
  }

  # 6 clicks
  variable_groups = [
    module.azure_credentials[each.key].id,
    module.azure_backends[each.key].id
  ]

  variable {
    name  = "ApplicationName"
    value = var.application_name
  }
  variable {
    name  = "EnvironmentName"
    value = each.key
  }
  variable {
    name  = "WorkingDirectory"
    value = "src/terraform"
  }
}