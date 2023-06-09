resource "azuredevops_build_definition" "plan" {
  project_id = var.project_id
  name       = "plan"
  path       = "\\${var.application_name}\\${var.environment_name}"

  ci_trigger {
    use_yaml = false
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = var.repo_id
    branch_name = var.default_branch
    yml_path    = ".azdo-pipelines/terraform-plan.yaml"
  }

  # 6 clicks
  variable_groups = [
    module.azure_credential.id,
    module.azure_backend.id
  ]

  variable {
    name  = "ApplicationName"
    value = var.application_name
  }
  variable {
    name  = "EnvironmentName"
    value = var.environment_name
  }
  variable {
    name  = "WorkingDirectory"
    value = "src/terraform"
  }
}