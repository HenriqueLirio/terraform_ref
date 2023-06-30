terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "0.5.0"
    }
  }
}

module "terraform_primary" {
  source = "./Terraform Primary"
}
output "terraform_primary" {
  value = module.terraform_primary
}

module "terraform_secondary" {
  source = "./Terraform Secondary"
}
output "terraform_secondary" {
  value = module.terraform_secondary
}

