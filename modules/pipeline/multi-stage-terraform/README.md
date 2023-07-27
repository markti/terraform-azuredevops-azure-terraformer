<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | >= 0.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | >= 0.7.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_azure_backend"></a> [azure\_backend](#module\_azure\_backend) | ../../var-group/azure-backend | n/a |
| <a name="module_azure_credential"></a> [azure\_credential](#module\_azure\_credential) | ../../var-group/azure-credential | n/a |

## Resources

| Name | Type |
|------|------|
| [azuredevops_build_definition.apply](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/build_definition) | resource |
| [azuredevops_build_definition.plan](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/build_definition) | resource |
| [azuredevops_environment.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/environment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | Logical Short Name for our Application or Service | `string` | n/a | yes |
| <a name="input_azure_backend"></a> [azure\_backend](#input\_azure\_backend) | Terraform State will be stored in Azure Blob Storage. This provides details on which Azure Storage Account and which Blob Storage Container to use | <pre>object({<br>    resource_group  = string<br>    storage_account = string<br>    container       = string<br>  })</pre> | n/a | yes |
| <a name="input_azure_credential"></a> [azure\_credential](#input\_azure\_credential) | Credentials that will be used by Terraform to authenticate with Azure | <pre>object({<br>    client_id       = string<br>    client_secret   = string<br>    tenant_id       = string<br>    subscription_id = string<br>  })</pre> | n/a | yes |
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | Default branch that the pipelines will trigger against | `string` | n/a | yes |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | Logical Short Name for the instance of this Application or Service (e.g., dev, prod, qa, uat) | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Azure DevOps Project ID | `string` | n/a | yes |
| <a name="input_repo_id"></a> [repo\_id](#input\_repo\_id) | Azure DevOps Repository ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apply_build_definition_id"></a> [apply\_build\_definition\_id](#output\_apply\_build\_definition\_id) | Unique Identifier of the Terraform Apply Build Definition |
| <a name="output_azure_backend_var_group_name"></a> [azure\_backend\_var\_group\_name](#output\_azure\_backend\_var\_group\_name) | Azure DevOps Variable Group Name |
| <a name="output_azure_credentials_var_group_name"></a> [azure\_credentials\_var\_group\_name](#output\_azure\_credentials\_var\_group\_name) | Azure DevOps Variable Group Name |
| <a name="output_environment_name"></a> [environment\_name](#output\_environment\_name) | The Azure DevOps environment's name for this pipeline |
| <a name="output_plan_build_definition_id"></a> [plan\_build\_definition\_id](#output\_plan\_build\_definition\_id) | Unique Identifier of the Terraform Plan Build Definition |
<!-- END_TF_DOCS -->