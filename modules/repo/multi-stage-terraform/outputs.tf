output "foo" {
  value = local.branch_policy_environments
}
output "reviewers" {
  value = data.azuredevops_users.reviewers.*
}