resource "azuredevops_group" "team_qcertifica_reviewers" {
  display_name = "Time QCertifica Reviewers"
  description  = ""

  members = var.team_qcertifica_reviewers_ids 
}