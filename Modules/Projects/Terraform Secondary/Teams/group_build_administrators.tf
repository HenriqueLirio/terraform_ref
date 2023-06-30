resource "azuredevops_group" "build_administrators" {
  scope        = var.project_id
  display_name = "Build Administrators"
  description  = "Members of this group can create, modify and delete build definitions and manage queued and completed builds."

}