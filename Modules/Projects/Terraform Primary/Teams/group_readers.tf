resource "azuredevops_group" "readers" {
  scope        = var.project_id
  display_name = "Readers"
  description  = "Members of this group have access to the team project."

}