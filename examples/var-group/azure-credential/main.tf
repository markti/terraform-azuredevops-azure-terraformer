data "azuredevops_project" "infra" {
  name = var.project_name
}

module "azure_credentials" {
  source = "../../../modules/var-group/azure-credential"

  project_id = data.azuredevops_project.infra.id
  name       = "azure-credentials"
  azure_credentials = {
    client_id       = "foo"
    client_secret   = "foo"
    tenant_id       = "foo"
    subscription_id = "foo"
  }

}