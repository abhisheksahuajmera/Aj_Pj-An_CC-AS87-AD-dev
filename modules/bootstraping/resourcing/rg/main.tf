resource "azurerm_resource_group" "azurerm_resource_grouptg" {
  name     = local.resource_group_name
  location = local.resource_group_location
}