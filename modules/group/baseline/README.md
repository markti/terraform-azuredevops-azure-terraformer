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
| [azuredevops_group.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/group) | resource |
| [azuredevops_group_membership.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/group_membership) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | foo2 | `string` | n/a | yes |
| <a name="input_members"></a> [members](#input\_members) | n/a | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Azure DevOps Project ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_descriptor"></a> [descriptor](#output\_descriptor) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_origin"></a> [origin](#output\_origin) | n/a |
| <a name="output_origin_id"></a> [origin\_id](#output\_origin\_id) | n/a |
| <a name="output_url"></a> [url](#output\_url) | n/a |
<!-- END_TF_DOCS -->