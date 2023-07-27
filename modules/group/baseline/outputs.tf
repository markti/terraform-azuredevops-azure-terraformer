output "id" {
  value       = azuredevops_group.main.id
  description = "This is a GUID but I'm not sure what it's used for"
}
output "descriptor" {
  value       = azuredevops_group.main.descriptor
  description = "This is an internal Azure DevOps identifier that is prefixed with 'vssgp.'"
}
output "url" {
  value       = azuredevops_group.main.url
  description = "This is a fully qualified path to the User Group within Azure DevOps."
}
output "origin" {
  value       = azuredevops_group.main.origin
  description = "The source system where the Group Principal originates from (e.g., vsts, aad, ad)"
}
output "origin_id" {
  value       = azuredevops_group.main.origin_id
  description = "This is a GUID value that uniquely identifies the User Group Principal within the origin"
}