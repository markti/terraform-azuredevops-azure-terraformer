data "azuredevops_users" "reviewers" {
  count          = length(var.reviewers)
  principal_name = var.reviewers[count.index]
}

locals {
  flatten_users = flatten([for k in data.azuredevops_users.reviewers : k.users]).*.descriptor
}