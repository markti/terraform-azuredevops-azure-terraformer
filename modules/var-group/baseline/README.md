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

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_variable_group.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/variable_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Azure DevOps Variable Group Description | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Azure DevOps Variable Group Name | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Azure DevOps Project ID | `string` | n/a | yes |
| <a name="input_variables"></a> [variables](#input\_variables) | List of variables to be created within Azure DevOps Variable Group | <pre>list(<br>    object({<br>      name      = string<br>      value     = string<br>      is_secret = optional(bool, false)<br>    })<br>  )</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Azure DevOps Variable Group ID |
| <a name="output_name"></a> [name](#output\_name) | Azure DevOps Variable Group Name |
<!-- END_TF_DOCS -->