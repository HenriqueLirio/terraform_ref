resource "azuredevops_user_entitlement" "hlirio" {
  principal_name = "hlirio@quicksoft.com.br"
  account_license_type = "express"
}

resource "azuredevops_user_entitlement" "dsilva" {
  principal_name = "dsilva@quicksoft.com.br"
  account_license_type = "express"
}