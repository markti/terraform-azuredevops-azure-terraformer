resource "azuredevops_branch_policy_build_validation" "pipeline_plan" {

  for_each = var.environments

  project_id = var.project_id
  enabled    = true
  blocking   = true

  settings {
    display_name        = "Example build validation policy"
    build_definition_id = module.pipeline[*].plan_build_definition_id
    valid_duration      = 720
    filename_patterns = [
      "/src/terraform/*"
    ]

    scope {
      repository_id  = azuredevops_git_repository.main.id
      repository_ref = azuredevops_git_repository.main.default_branch
      match_type     = "Exact"
    }

    scope {
      match_type = "DefaultBranch"
    }
  }
}