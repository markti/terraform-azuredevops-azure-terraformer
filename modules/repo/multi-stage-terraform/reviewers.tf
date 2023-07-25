
data "azuredevops_users" "reviewers" {
  count          = length(var.reviewers)
  principal_name = var.reviewers[count.index]
}
locals {
  user_descriptors = flatten([for k in data.azuredevops_users.reviewers : k.users]).*.descriptor
}
module "reviewer_group" {

  source = "../../group/baseline"

  project_id  = var.project_id
  name        = "Terraform Reviewers"
  description = "Terraform Reviewers Description"
  members     = local.user_descriptors

}