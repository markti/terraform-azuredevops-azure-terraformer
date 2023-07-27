output "branch_policy_environments" {
  value       = local.branch_policy_environments
  description = "Intermediate value that is used to drive the branch policy creation for each environment."
}
output "reviewers" {
  value       = data.azuredevops_users.reviewers.*
  description = "List of users that are added to our User Group"
}