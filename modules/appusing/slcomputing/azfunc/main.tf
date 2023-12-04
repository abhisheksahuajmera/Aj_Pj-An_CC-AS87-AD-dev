# resource "azurerm_function_app" "azurerm_function_apptg" {
#   name                       = local.name
#   location                   = "${module.resourcing_rg.resource_group_location}"
#   resource_group_name        = "${module.resourcing_rg.resource_group_name}"
#   app_service_plan_id        = "${module.slcomputing_serplan.azurerm_app_service_plantg.id}"
#   storage_account_name       = "${module.slcomputing_saaccount.azurerm_storage_accounttg.storage_account_name}"
#   storage_account_access_key = "${module.slcomputing_saaccount.azurerm_storage_accounttg.storage_account_access_key}"
# }