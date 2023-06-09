resource "azuredevops_branch_policy_build_validation" "plan" {

  for_each = var.environments

  project_id = var.project_id
  enabled    = true
  blocking   = true

  settings {
    display_name        = "Terraform Plan on ${each.key} environment"
    build_definition_id = module.pipeline[each.key].plan_build_definition_id
    valid_duration      = 720
    filename_patterns = [
      "/src/terraform/*"
    ]
    scope {
      match_type = "DefaultBranch"
    }
  }
}
resource "azuredevops_branch_policy_comment_resolution" "main" {

  for_each = var.environments

  project_id = var.project_id
  enabled    = true
  blocking   = true

  settings {
    scope {
      match_type = "DefaultBranch"
    }
  }
}