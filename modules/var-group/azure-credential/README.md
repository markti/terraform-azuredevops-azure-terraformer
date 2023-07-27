<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | >= 0.7.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_main"></a> [main](#module\_main) | ../baseline | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_credentials"></a> [azure\_credentials](#input\_azure\_credentials) | Azure Credentials that Terraform will use to authenticate with Azure | <pre>object({<br>    client_id       = string<br>    client_secret   = string<br>    tenant_id       = string<br>    subscription_id = string<br>  })</pre> | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Azure DevOps Variable Group Description | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Azure DevOps Variable Group Name | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Azure DevOps Project ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Azure DevOps Variable Group ID |
| <a name="output_name"></a> [name](#output\_name) | Azure DevOps Variable Group Name |
<!-- END_TF_DOCS -->