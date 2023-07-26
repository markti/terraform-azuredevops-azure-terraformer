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
| [azuredevops_branch_policy_auto_reviewers.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/branch_policy_auto_reviewers) | resource |
| [azuredevops_branch_policy_build_validation.plan](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/branch_policy_build_validation) | resource |
| [azuredevops_branch_policy_comment_resolution.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/branch_policy_comment_resolution) | resource |
| [azuredevops_branch_policy_merge_types.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/branch_policy_merge_types) | resource |
| [azuredevops_branch_policy_min_reviewers.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/branch_policy_min_reviewers) | resource |
| [azuredevops_branch_policy_work_item_linking.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/branch_policy_work_item_linking) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environments"></a> [environments](#input\_environments) | Collection of Environment Meta-data. Each environment will have its own pipeline and working directory. If all environments use the same codebase, just pass in the same working directory for them all. | <pre>map(object({<br>    build_definition_id = string<br>    working_directory   = string<br>  }))</pre> | n/a | yes |
| <a name="input_min_reviewer_count"></a> [min\_reviewer\_count](#input\_min\_reviewer\_count) | Minimum number of reviewers that need to approve a pull request. Small teams typically use 1 or 2. Lone wolfs will likely disable. | `number` | `1` | no |
| <a name="input_min_reviewers_enabled"></a> [min\_reviewers\_enabled](#input\_min\_reviewers\_enabled) | Flag that determines if the Minimum Reviewers Branch Policy is enabled. | `bool` | `true` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Azure DevOps Project ID | `string` | n/a | yes |
| <a name="input_reviewer_group_id"></a> [reviewer\_group\_id](#input\_reviewer\_group\_id) | Azure DevOps User Group that will automatically be included as code reviewers. | `string` | n/a | yes |
| <a name="input_work_item_linking_enabled"></a> [work\_item\_linking\_enabled](#input\_work\_item\_linking\_enabled) | Flag that determines if a pull request must have Linked Work Items. This will be used by teams that are using their backlog. | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->