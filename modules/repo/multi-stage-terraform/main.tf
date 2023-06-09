resource "azuredevops_git_repository" "main" {

  project_id = var.project_id
  name       = var.repo_name

  initialization {
    init_type   = "Import"
    source_type = "Git"
    source_url  = "https://github.com/markti/azdo-terraform-template-multi-stage.git"
  }

}