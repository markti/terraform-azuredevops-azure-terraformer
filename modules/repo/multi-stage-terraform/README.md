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
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | Logical Short Name for our Application or Service | `string` | n/a | yes |
| <a name="input_environments"></a> [environments](#input\_environments) | Azure Credentials and Terraform State configuration for the instance of this Application or Service (e.g., dev, prod, qa, uat) | <pre>map(<br>    object(<br>      {<br>        azure_credential = object({<br>          client_id       = string<br>          client_secret   = string<br>          tenant_id       = string<br>          subscription_id = string<br>        })<br>        azure_backend = object({<br>          resource_group  = string<br>          storage_account = string<br>          container       = string<br>        })<br>      }<br>    )<br>  )</pre> | n/a | yes |
| <a name="input_min_reviewer_count"></a> [min\_reviewer\_count](#input\_min\_reviewer\_count) | Minimum number of reviewers that need to approve a pull request. Small teams typically use 1 or 2. Lone wolfs will likely disable. | `number` | `1` | no |
| <a name="input_min_reviewers_enabled"></a> [min\_reviewers\_enabled](#input\_min\_reviewers\_enabled) | Flag that determines if the Minimum Reviewers Branch Policy is enabled. | `bool` | `true` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Azure DevOps Project ID | `string` | n/a | yes |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Azure DevOps Repository ID | `string` | n/a | yes |
| <a name="input_reviewers"></a> [reviewers](#input\_reviewers) | List of Azure DevOps Users that will automatically be included as code reviewers. | `list(string)` | n/a | yes |
| <a name="input_work_item_linking_enabled"></a> [work\_item\_linking\_enabled](#input\_work\_item\_linking\_enabled) | Flag that determines if a pull request must have Linked Work Items. This will be used by teams that are using their backlog. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_branch_policy_environments"></a> [branch\_policy\_environments](#output\_branch\_policy\_environments) | Intermediate value that is used to drive the branch policy creation for each environment. |
| <a name="output_reviewers"></a> [reviewers](#output\_reviewers) | List of users that are added to our User Group |
<!-- END_TF_DOCS -->