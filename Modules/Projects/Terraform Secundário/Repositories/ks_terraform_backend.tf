resource "azuredevops_git_repository" "p_terraform_ks_terraform_backend" {
  project_id = var.project_id
  name       = "ks_terraform_backend"
  initialization {
    init_type = "Clean"
  }
  lifecycle {
    ignore_changes = [
      initialization
    ]
  }
}