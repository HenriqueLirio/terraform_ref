resource "azuredevops_group" "project_administrators" {
  scope        = var.project_id
  display_name = "Project Administrators"
  description  = "Members of this group can perform all operations in the team project."

}