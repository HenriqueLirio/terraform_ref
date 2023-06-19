terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "0.5.0"
    }
  }
}

module "az_project_terraform_primary" {
  source = "./Terraform Primary"
}

module "az_project_terraform_secondary" {
  source = "./Terraform Secondary"
}