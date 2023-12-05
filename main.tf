// bootstraping-resourcing-rg
resource "azurerm_resource_group" "azurerm_resource_grouptg" {
  name     = local.resource_group_name
  location = local.resource_group_location
}

// appusing-securing-adb2c
module "securing_adb2c" {
  source                  = "./modules/adb2c" // Add version after registry
  country_code            = local.resource_group_location_country_code
  data_residency_location = local.resource_group_data_residency_location
  resource_group_name     = azurerm_resource_group.azurerm_resource_grouptg.name
}

// appusing-storing-saaccount
module "securing_saaccount" {
  source                  = "./modules/saaccount" // Add version after registry
  resource_group_name     = azurerm_resource_group.azurerm_resource_grouptg.name
  location                = azurerm_resource_group.azurerm_resource_grouptg.location
}

// appusing-slcomputing-serplan
module "slcomputing_serplan" {
  source                  = "./modules/serplan" // Add version after registry
  location				  = azurerm_resource_group.azurerm_resource_grouptg.location
  resource_group_name     = azurerm_resource_group.azurerm_resource_grouptg.name
}

// appusing-slcomputing-azfunc
module "slcomputing_azfunc" {
  source                     = "./modules/azfunc" // Add version after registry
  location                   = azurerm_resource_group.azurerm_resource_grouptg.location
  resource_group_name        = azurerm_resource_group.azurerm_resource_grouptg.name
  app_service_plan_id        = azurerm_app_service_plan.azurerm_app_service_plantg.id
  storage_account_name       = azurerm_storage_account.azurerm_storage_accounttg.name
  storage_account_access_key = azurerm_storage_account.azurerm_storage_accounttg.primary_access_key
}



// orchestrating-containerizing-azacr
module "containerizing_azacr" {
  source                  = "./modules/azacr" // Add version after registry
  resource_group_name     = azurerm_resource_group.azurerm_resource_grouptg.name
  location                = azurerm_resource_group.azurerm_resource_grouptg.location
}

// appusing-storing-azvault
module "containerizing_azvault" {
  source                  = "./modules/azvault" // Add version after registry
  resource_group_name     = azurerm_resource_group.azurerm_resource_grouptg.name
  location                = azurerm_resource_group.azurerm_resource_grouptg.location
}