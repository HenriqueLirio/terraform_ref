output "repositories_id" {
  value = {
    ks_terraform_frontend = azuredevops_git_repository.ks_terraform_frontend.id,
    ks_terraform_backend  = azuredevops_git_repository.ks_terraform_backend.id
  }
}
