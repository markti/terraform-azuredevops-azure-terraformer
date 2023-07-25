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

  /*
  
  If on_push_reset_all_votes is true then on_push_reset_approved_votes will be set to true. 
  
  To enable on_push_reset_approved_votes, 
    you need explicitly set on_push_reset_all_votes false or not configure.
*/
  settings {
    reviewer_count                         = var.min_reviewer_count
    submitter_can_vote                     = false
    last_pusher_cannot_approve             = true
    allow_completion_with_rejects_or_waits = false
    on_push_reset_approved_votes           = true

    scope {
      match_type = "DefaultBranch"
    }
  }
}

resource "azuredevops_branch_policy_work_item_linking" "main" {
  project_id = var.project_id

  enabled  = var.work_item_linking_enabled
  blocking = true

  settings {
    scope {
      match_type = "DefaultBranch"
    }
  }
}