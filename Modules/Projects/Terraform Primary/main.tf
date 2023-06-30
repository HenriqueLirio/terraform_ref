module "repositories" {
  source     = "./Repositories"
  project_id = azuredevops_project.terraform_primary.id
}
output "repositories" {
  value = module.repositories
}

module "teams" {
  source     = "./Teams"
  project_id = azuredevops_project.terraform_primary.id
}
output "teams" {
  value = module.teams
}



resource "azuredevops_project" "terraform_primary" {
  name               = "Terraform Primary"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = ""
  features = {
    "testplans" = "disabled"
    "artifacts" = "disabled"
  }
}

resource "azuredevops_repository_policy_author_email_pattern" "terraform_primary" {
  project_id            = azuredevops_project.terraform_primary.id
  enabled               = true
  blocking              = true
  author_email_patterns = [
    "*@quicksoft.com.br", 
    "*@quicksoftblumenau.onmicrosoft.com"
    ]
}