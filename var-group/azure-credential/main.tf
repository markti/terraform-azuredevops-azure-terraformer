module "main" {

  source      = "../baseline"
  project_id  = var.project_id
  name        = var.name
  description = var.description
  variables = [
    {
      name  = "ARM_CLIENT_ID"
      value = var.azure_credentials.client_id
    },
    {
      name      = "ARM_CLIENT_SECRET"
      value     = var.azure_credentials.client_secret
      is_secret = true
    },
    {
      name  = "ARM_TENANT_ID"
      value = var.azure_credentials.tenant_id
    },
    {
      name  = "ARM_SUBSCRIPTION_ID"
      value = var.azure_credentials.subscription_id
    }
  ]
}
