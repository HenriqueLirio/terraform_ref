resource "azuredevops_group" "contributors" {
  scope        = var.project_id
  display_name = "Contributors"
  description  = "Members of this group can add, modify, and delete items within the team project."

}