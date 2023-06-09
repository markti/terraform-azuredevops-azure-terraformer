resource "azuredevops_variable_group" "main" {

  project_id   = var.project_id
  name         = var.name
  description  = var.description
  allow_access = true

  dynamic "variable" {
    for_each = var.variables
    content {
      name         = variable.value.name
      value        = variable.value.is_secret ? null : variable.value.value
      secret_value = variable.value.is_secret ? variable.value.value : null
      is_secret    = variable.value.is_secret
    }
  }

}