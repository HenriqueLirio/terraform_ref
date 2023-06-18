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

resource "azuredevops_repository_policy_reserved_names" "p_terraform_ks_terraform_backend" {
  project_id     = var.project_id
  enabled        = true
  blocking       = true
  repository_ids = [azuredevops_git_repository.p_terraform_ks_terraform_backend.id]
}