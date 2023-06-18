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

module "az_project_terraform_repositories" {
  source = "./Repositories"
  project_id = azuredevops_project.p_Terraform.id
}