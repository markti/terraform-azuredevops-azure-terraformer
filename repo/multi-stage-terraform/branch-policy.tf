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

  project_id = var.project_id
  enabled    = true
  blocking   = true

  settings {
    scope {
      match_type = "DefaultBranch"
    }
  }
}

resource "azuredevops_branch_policy_merge_types" "main" {

  project_id = var.project_id
  enabled    = true
  blocking   = true

  settings {
    allow_squash                  = false
    allow_rebase_and_fast_forward = true
    allow_basic_no_fast_forward   = false
    allow_rebase_with_merge       = false

    scope {
      match_type = "DefaultBranch"
    }
  }
}

resource "azuredevops_branch_policy_min_reviewers" "main" {

  project_id = var.project_id
  enabled    = var.min_reviewers_enabled
  blocking   = true

  settings {
    reviewer_count                         = var.min_reviewer_count
    submitter_can_vote                     = false
    last_pusher_cannot_approve             = true
    allow_completion_with_rejects_or_waits = false
    on_push_reset_approved_votes           = true
    on_last_iteration_require_vote         = false

    scope {
      match_type = "DefaultBranch"
    }
  }
}

resource "azuredevops_branch_policy_work_item_linking" "example" {
  project_id = var.project_id

  enabled  = var.work_item_linking_enabled
  blocking = true

  settings {
    scope {
      match_type = "DefaultBranch"
    }
  }
}