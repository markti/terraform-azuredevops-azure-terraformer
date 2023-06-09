locals {
  application_name = "test123"
  sub1_creds = {
    client_id       = "foo"
    client_secret   = "foo"
    tenant_id       = "foo"
    subscription_id = "foo"
  }
  sub1_backend = {
    resource_group  = "foo"
    storage_account = "foo"
    container       = "foo"
  }
}

resource "azuredevops_project" "test" {
  name        = local.application_name
  description = "Project Description"
}

module "multi_stage_repo" {
  source = "../../../repo/multi-stage-terraform"

  application_name = local.application_name
  project_id       = azuredevops_project.test.id
  repo_name        = "test-terraform"

  environments = {
    dev = {
      azure_credentials = local.sub1_creds
      azure_backends    = local.sub1_backend
    }
    prod = {
      azure_credentials = local.sub1_creds
      azure_backends    = local.sub1_backend
    }
  }

}