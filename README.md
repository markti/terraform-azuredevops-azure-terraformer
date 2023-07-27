# azdo-terraform-modules
A collection of Terraform modules that provision to Azure DevOps.

- Multi-Stage Terraform Pipeline Solution
  - [Branch Policy](./modules/branch-policy/multi-stage-terraform/README.md)
  - [Pipeline](./modules/pipeline/multi-stage-terraform/README.md)
  - [Repository](./modules/repo/multi-stage-terraform/README.md)
- Variable Group Modules
  - [Baseline Variable Group](./modules/var-group/baseline/README.md)
  - [Azure Credential Variable Group](./modules/var-group/azure-credential/README.md)
  - [Azure Backend Variable Group](./modules/var-group/azure-backend/README.md)
- User Group Modules
  - [Baseline User Group](./modules/group/baseline/README.md)

## Release History
**1.0.12**
- Punctuation is evil

**1.0.11**
- Add Module Library Table of Contents

**1.0.10**
- Update documentation
- Auto-generate docs using GitHub actions terraform-docs

**1.0.8**
- Upgraded to 0.7.0 of the `azuredevops` provider
- Cleaned up `var-group\azure-credential` example
- Cleaned up `repo\multi-stage-pipeline` example
- Added example for `azuredevops_users` resource
- Added new module `group\baseline` to create a User Group
- Changed min reviewer defaults from `2` to `1`

**1.0.7**
- Patch to remove branch policy conflict

**1.0.6**
- Organized into modules folder

**1.0.5**
- Extracted Branch Policy into its own module 

**1.0.4**
- Added Min Reviewers, Work Item Linking, Merge Types 

**1.0.3**
- Added Comment Resolution and cleaned up Target Branch Scoping

**1.0.2**
- Added Branch Policy to run Terraform Plan pipelines when /src/terraform files changed

**1.0.1**
- Added Multi-Stage Pipeline Repo and Pipeline
- Added Azure Backend Var Group

**1.0.0**
- Added variable group baseline module and Azure Credential Var Group
