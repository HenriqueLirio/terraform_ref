terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "0.5.0"
    }
  }
}

module "az_projects" {
  source = "./Modules/Projects"
}

module "az_users" {
  source = "./Modules/Users"
}

module "az_groups" {
  source                        = "./Modules/Groups"
  team_qcertifica_reviewers_ids = module.az_users.team_qcertifica_reviewers_ids
}

# output "az_projects" {
#   value = module.az_projects
# }

# output "az_users" {
#   value = module.az_users
# }

# output "az_groups" {
#   value = module.az_groups
# }
