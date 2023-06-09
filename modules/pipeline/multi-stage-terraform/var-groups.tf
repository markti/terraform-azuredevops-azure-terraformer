module "azure_credential" {

  source = "../../var-group/azure-credential"

  name              = "azure-credentials-${var.environment_name}"
  project_id        = var.project_id
  azure_credentials = var.azure_credential

}

module "azure_backend" {

  source = "../../var-group/azure-backend"

  name          = "azure-backend-${var.environment_name}"
  project_id    = var.project_id
  azure_backend = var.azure_backend

}