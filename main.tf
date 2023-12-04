// appusing-securing-adb2c
module "securing_adb2c" {
  source                  = "./modules/adb2c" // Add version after registry
  country_code = local.resource_group_location_country_code
  data_residency_location = local.resource_group_data_residency_location
  resource_group_name     = local.resource_group_name
}

// appusing-storing-saaccount
module "securing_saaccount" {
  source                  = "./modules/saaccount" // Add version after registry
  resource_group_name     = local.resource_group_name
  location     = local.resource_group_location
}

// appusing-slcomputing-serplan
module "slcomputing_serplan" {
  source              = "./modules/serplan" // Add version after registry
  location     = local.resource_group_location
  resource_group_name     = local.resource_group_name
}

// appusing-slcomputing-azfunc
module "slcomputing_azfunc" {
  source              = "./modules/azfunc" // Add version after registry
  location     = local.resource_group_location
  resource_group_name     = local.resource_group_name

  app_service_plan_id        = "${module.slcomputing_serplan.app_service_plan_idop}"
  storage_account_name       = "${module.securing_saaccount.storage_account_nameop}"
  storage_account_access_key = "${module.securing_saaccount.storage_account_access_keyop}"
}


// bootstraping-resourcing-rg
resource "azurerm_resource_group" "resource_grouptg" {
  name     = local.resource_group_name
  location = local.resource_group_location
}

