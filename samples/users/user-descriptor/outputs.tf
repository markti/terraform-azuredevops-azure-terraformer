
# THIS CODE FAILS
output "user_descriptors" {
  value = local.flatten_users
}
output "users" {
  value = data.azuredevops_users.reviewers
}