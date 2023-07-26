resource "azuredevops_branch_policy_build_validation" "plan" {

  for_each = var.environments

  project_id = var.project_id
  enabled    = true
  blocking   = true

  settings {
    display_name        = "Terraform Plan on ${upper(each.key)} environment"
    build_definition_id = each.value.build_definition_id
    valid_duration      = 720
    filename_patterns = [
      each.value.working_directory
    ]
    scope {
      match_type = "DefaultBranch"
    }
  }
}

resource "azuredevops_branch_policy_auto_reviewers" "main" {

  project_id = var.project_id

  enabled  = true
  blocking = true

  settings {
    auto_reviewer_ids  = [var.reviewer_group_id]
    submitter_can_vote = false
    message            = "Terraform Reviewers"

    scope {
      match_type = "DefaultBranch"
    }
  }
}