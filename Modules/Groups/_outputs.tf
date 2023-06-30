output "az_groups" {
  value = {
    team_qcertifica_reviewers = azuredevops_group.team_qcertifica_reviewers.members
  }
}