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
| <a name="input_description"></a> [description](#input\_description) | Azure DevOps User Group Description | `string` | n/a | yes |
| <a name="input_members"></a> [members](#input\_members) | List of User IDs that should be included as members in this User Group | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Azure DevOps User Group Name | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Azure DevOps Project ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_descriptor"></a> [descriptor](#output\_descriptor) | This is an internal Azure DevOps identifier that is prefixed with 'vssgp.' |
| <a name="output_id"></a> [id](#output\_id) | This is a GUID but I'm not sure what it's used for |
| <a name="output_origin"></a> [origin](#output\_origin) | The source system where the Group Principal originates from (e.g., vsts, aad, ad) |
| <a name="output_origin_id"></a> [origin\_id](#output\_origin\_id) | This is a GUID value that uniquely identifies the User Group Principal within the origin |
| <a name="output_url"></a> [url](#output\_url) | This is a fully qualified path to the User Group within Azure DevOps. |
<!-- END_TF_DOCS -->