module "repositories" {
  source     = "./Repositories"
  project_id = azuredevops_project.terraform_secondary.id
}
output "repositories" {
  value = module.repositories
}

module "teams" {
  source     = "./Teams"
  project_id = azuredevops_project.terraform_secondary.id
}
output "teams" {
  value = module.teams
}

resource "azuredevops_project" "terraform_secondary" {
  name               = "Terraform Secondary"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = ""
  features = {
    "testplans" = "disabled"
    "artifacts" = "disabled"
  }
}

resource "azuredevops_repository_policy_author_email_pattern" "terraform_secondary" {
  project_id = azuredevops_project.terraform_secondary.id
  enabled    = true
  blocking   = true
  author_email_patterns = [
    "*@quicksoft.com.br",
    "*@quicksoftblumenau.onmicrosoft.com"
  ]
}

resource "azuredevops_branch_policy_min_reviewers" "terraform_secondary" {
  for_each = {
    for key, value in module.repositories.repositories_id : key => value
    if !contains([
      "ks_terraform_frontend",
    ], key)
  }

  project_id = azuredevops_project.terraform_secondary.id

  enabled  = true
  blocking = false

  settings {
    reviewer_count                         = 1
    submitter_can_vote                     = false
    last_pusher_cannot_approve             = true
    allow_completion_with_rejects_or_waits = false
    on_push_reset_approved_votes           = true # OR on_push_reset_all_votes = true
    on_last_iteration_require_vote         = false

    scope {
      repository_id  = each.value
      repository_ref = "refs/heads/main"
      match_type     = "Exact"
    }
  }
}
