// appusing-securing-adb2c
module "securing_adb2c" {
  source                  = "./modules/adb2c" // Add version after registry
  resource_group_name     = local.resource_group_name
  resource_group_location = local.resource_group_location
  resource_group_location_country_code = local.resource_group_location_country_code
}

// bootstraping-resourcing-rg
resource "azurerm_resource_group" "resource_grouptg" {
  name     = local.resource_group_name
  location = local.resource_group_location
}