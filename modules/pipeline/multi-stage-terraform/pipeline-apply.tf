resource "azuredevops_build_definition" "apply" {
  project_id = var.project_id
  name       = "apply"
  path       = "\\${var.application_name}\\${var.environment_name}"

  ci_trigger {
    use_yaml = false
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = var.repo_id
    branch_name = var.default_branch
    yml_path    = ".azdo-pipelines/terraform-multi-stage.yaml"
  }

  # 6 clicks
  variable_groups = var.variable_groups

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