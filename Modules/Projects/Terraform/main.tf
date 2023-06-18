terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "0.5.0"
    }
  }
}

resource "azuredevops_project" "p_Terraform" {
  name               = "Terraform"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = ""
  features = {
    "testplans" = "disabled"
    "artifacts" = "disabled"
  }
}

resource "azuredevops_repository_policy_author_email_pattern" "p_Terraform" {
  project_id            = azuredevops_project.p_Terraform.id
  enabled               = true
  blocking              = true
  author_email_patterns = ["henriq.lirio@gmail.com"]
}


module "az_project_terraform_repositories" {
  source = "./Repositories"
  project_id = azuredevops_project.p_Terraform.id
}