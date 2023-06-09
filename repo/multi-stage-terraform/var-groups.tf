module "azure_credentials" {

  source   = "../../var-group/azure-credential"
  for_each = var.environments

  name              = "azure-credentials-${each.key}"
  project_id        = var.project_id
  azure_credentials = each.value.azure_credentials

}

module "azure_backends" {

  source   = "../../var-group/azure-backend"
  for_each = var.environments

  name          = "azure-backend-${each.key}"
  project_id    = var.project_id
  azure_backend = each.value.azure_backends

}