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