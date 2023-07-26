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
| <a name="module_branching_policy"></a> [branching\_policy](#module\_branching\_policy) | ../../branch-policy/multi-stage-terraform | n/a |
| <a name="module_pipeline"></a> [pipeline](#module\_pipeline) | ../../pipeline/multi-stage-terraform | n/a |
| <a name="module_reviewer_group"></a> [reviewer\_group](#module\_reviewer\_group) | ../../group/baseline | n/a |

## Resources

| Name | Type |
|------|------|
| [azuredevops_git_repository.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/git_repository) | resource |
| [azuredevops_users.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/users) | data source |
| [azuredevops_users.reviewers](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/users) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | n/a | `string` | n/a | yes |
| <a name="input_environments"></a> [environments](#input\_environments) | n/a | <pre>map(<br>    object(<br>      {<br>        azure_credential = object({<br>          client_id       = string<br>          client_secret   = string<br>          tenant_id       = string<br>          subscription_id = string<br>        })<br>        azure_backend = object({<br>          resource_group  = string<br>          storage_account = string<br>          container       = string<br>        })<br>      }<br>    )<br>  )</pre> | n/a | yes |
| <a name="input_min_reviewer_count"></a> [min\_reviewer\_count](#input\_min\_reviewer\_count) | n/a | `number` | `1` | no |
| <a name="input_min_reviewers_enabled"></a> [min\_reviewers\_enabled](#input\_min\_reviewers\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Azure DevOps Project ID | `string` | n/a | yes |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | n/a | `string` | n/a | yes |
| <a name="input_reviewers"></a> [reviewers](#input\_reviewers) | n/a | `list(string)` | n/a | yes |
| <a name="input_work_item_linking_enabled"></a> [work\_item\_linking\_enabled](#input\_work\_item\_linking\_enabled) | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_foo"></a> [foo](#output\_foo) | n/a |
| <a name="output_reviewers"></a> [reviewers](#output\_reviewers) | n/a |
<!-- END_TF_DOCS -->