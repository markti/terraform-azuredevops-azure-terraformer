locals {
  branch_policy_environments = {
    for k, v in var.environments : k =>
    {
      build_definition_id = module.pipeline[k].plan_build_definition_id
      working_directory   = "/src/terraform/*"
    }
  }
}

module "branching_policy" {
  source = "../../branch-policy/multi-stage-terraform"

  environments              = local.branch_policy_environments
  project_id                = var.project_id
  min_reviewers_enabled     = var.min_reviewers_enabled
  min_reviewer_count        = var.min_reviewer_count
  work_item_linking_enabled = var.work_item_linking_enabled
  reviewer_group_id         = module.reviewer_group.origin_id

}
