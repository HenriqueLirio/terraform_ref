terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "0.5.0"
    }
  }
}

module "az_project_terraform" {
  source = "./Terraform"
}

module "az_project_terraform_secundario" {
  source = "./Terraform Secundário"
}