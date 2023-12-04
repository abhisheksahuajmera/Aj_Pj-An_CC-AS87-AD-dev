# resource "azurerm_resource_group" "example" {
#   name     = "azure-functions-test-rg"
#   location = "West Europe"
# }

resource "azurerm_storage_account" "example" {
  name                     = "functionsapptestsa"
  resource_group_name      = "${modules.resourcing.resource_group_name}"
  location                 = "${modules.resourcing.resource_group_location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

  data_residency_location = "${modules.resourcing.resource_group_location}"
  display_name            = local.display_name
  domain_name             = local.domain_name
  resource_group_name     = "${modules.resourcing.resource_group_name}"


resource "azurerm_app_service_plan" "example" {
  name                = "azure-functions-test-service-plan"
  location            = "${modules.resourcing.resource_group_location}"
  resource_group_name = "${modules.resourcing.resource_group_name}"

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_function_app" "example" {
  name                       = "test-azure-functions"
  location                   = "${modules.resourcing.resource_group_location}"
  resource_group_name        = "${modules.resourcing.resource_group_name}"
  app_service_plan_id        = azurerm_app_service_plan.example.id
  storage_account_name       = azurerm_storage_account.example.name
  storage_account_access_key = azurerm_storage_account.example.primary_access_key
}