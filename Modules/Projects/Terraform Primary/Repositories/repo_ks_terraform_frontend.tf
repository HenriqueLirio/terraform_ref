resource "azuredevops_git_repository" "ks_terraform_frontend" {
  project_id     = var.project_id
  name           = "ks_terraform_frontend"
  default_branch = "refs/heads/main"
  initialization {
    init_type = "Clean"
  }
  lifecycle {
    ignore_changes = [
      initialization
    ]
  }
}