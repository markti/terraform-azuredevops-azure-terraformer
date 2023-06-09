module "main" {

  source      = "../baseline"
  project_id  = var.project_id
  name        = var.name
  description = var.description
  variables = [
    {
      name  = "BACKEND_RESOURCE_GROUP_NAME"
      value = var.azure_backend.resource_group
    },
    {
      name  = "BACKEND_STORAGE_ACCOUNT_NAME"
      value = var.azure_backend.storage_account
    },
    {
      name  = "BACKEND_STORAGE_CONTAINER_NAME"
      value = var.azure_backend.container
    }
  ]
}
