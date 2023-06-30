output "team_qcertifica_reviewers_ids" {
  value = [
    azuredevops_user_entitlement.hlirio.descriptor,
    azuredevops_user_entitlement.dsilva.descriptor
  ]
}
