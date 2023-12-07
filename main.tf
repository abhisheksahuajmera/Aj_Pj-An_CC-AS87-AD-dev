// bootstraping-resourcing-rg
# resource "azurerm_resource_group" "azurerm_resource_grouptg" {
#   name     = local.resource_group_name
#   location = local.resource_group_location
# }

data "azurerm_resource_group" "azurerm_resource_grouptg" {
  name = "Assetronai-dev-101-rg-109"
}

# // appusing-securing-adb2c
# module "securing_adb2c" {
#   source                  = "./modules/adb2c" // Add version after registry
#   country_code            = local.resource_group_location_country_code
#   data_residency_location = local.resource_group_data_residency_location
#   resource_group_name     = data.azurerm_resource_group.azurerm_resource_grouptg.name
# }

# // appusing-storing-storage_account
# module "securing_saaccount" {
#   source                  = "./modules/storage_account" // Add version after registry
#   resource_group_name     = data.azurerm_resource_group.azurerm_resource_grouptg.name
#   location                = data.azurerm_resource_group.azurerm_resource_grouptg.location
# }

# // appusing-slcomputing-service_plan
# module "slcomputing_serplan" {
#   source                  = "./modules/service_plan" // Add version after registry
#   location				  = data.azurerm_resource_group.azurerm_resource_grouptg.location
#   resource_group_name     = data.azurerm_resource_group.azurerm_resource_grouptg.name
# }

# // appusing-slcomputing-azure_function
# module "slcomputing_azfunc" {
#   source                     = "./modules/azure_function" // Add version after registry
#   location                   = data.azurerm_resource_group.azurerm_resource_grouptg.location
#   resource_group_name        = data.azurerm_resource_group.azurerm_resource_grouptg.name
#   app_service_plan_id        = "${module.slcomputing_serplan.app_service_plan_idop}"
#   storage_account_name       = "${module.securing_saaccount.storage_account_nameop}"
#   storage_account_access_key = "${module.securing_saaccount.storage_account_access_keyop}"
# }

# // orchestrating-containerizing-container_registry
# module "containerizing_azacr" {
#   source                  = "./modules/container_registry" // Add version after registry
#   resource_group_name     = data.azurerm_resource_group.azurerm_resource_grouptg.name
#   location                = data.azurerm_resource_group.azurerm_resource_grouptg.location
# }

# // appusing-storing-key_vault
# module "containerizing_azvault" {
#   source                  = "./modules/key_vault" // Add version after registry
#   resource_group_name     = data.azurerm_resource_group.azurerm_resource_grouptg.name
#   location                = data.azurerm_resource_group.azurerm_resource_grouptg.location
# }

// bootstraping-creating-static_site
module "creating_azstsite" {
  source                  = "./modules/static_site" // Add version after registry
  resource_group_name     = data.azurerm_resource_group.azurerm_resource_grouptg.name
}

// bootstraping-generating-azdevops_project
module "generating_creating_azstsite" {
  source             = "./modules/azdevops_project" // Add version after registry
  project_prefix     = var.project_prefix
  project_version    = var.project_version
}

// bootstraping-generating-azdevops_gitproject
# module "generating_gitproject" {
#   source                  = "./modules/azdevops_project" // Add version after registry
# }



