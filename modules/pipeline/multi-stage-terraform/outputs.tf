output "plan_build_definition_id" {
  value       = azuredevops_build_definition.plan.id
  description = "Unique Identifier of the Terraform Plan Build Definition"
}
output "apply_build_definition_id" {
  value       = azuredevops_build_definition.apply.id
  description = "Unique Identifier of the Terraform Apply Build Definition"
}
output "environment_name" {
  value       = azuredevops_environment.main.name
  description = "The Azure DevOps environment's name for this pipeline"
}
output "azure_credentials_var_group_name" {
  value       = module.azure_credential.name
  description = "Azure DevOps Variable Group Name"
}
output "azure_backend_var_group_name" {
  value       = module.azure_backend.name
  description = "Azure DevOps Variable Group Name"
}