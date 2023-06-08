data "azuredevops_project" "infra" {
  name = "infrastructure"
}

module "azure_credentials" {
  source = "../../../var-group/azure-credential"

  project_id = data.azuredevops_project.infra.id
  name       = "foo"
  azure_credentials = {
    client_id       = "foo"
    client_secret   = "foo"
    tenant_id       = "foo"
    subscription_id = "foo"
  }

}