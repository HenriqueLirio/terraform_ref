resource "azuredevops_group" "terraform_secondary_team" {
  scope        = var.project_id
  display_name = "Terraform Secondary Team"
  description  = "The default project team."

}