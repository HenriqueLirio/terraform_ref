resource "azuredevops_group" "project_valid_users" {
  scope        = var.project_id
  display_name = "Project Valid Users"
  description  = "Members of this group have access to the team project."

}