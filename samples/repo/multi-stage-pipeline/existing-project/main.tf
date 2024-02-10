data "azuredevops_project" "existing" {
  name = var.project_name
}

module "multi_stage_repo" {
  source = "../../../../modules/repo/multi-stage-terraform"

  application_name = var.application_name
  project_id       = data.azuredevops_project.existing.id
  repo_name        = var.repo_name
  reviewers        = var.reviewers

  environments = {
    "${var.environment_name}" = {
      azure_credential = var.subscription
      azure_backend    = var.backend
    }
  }

}