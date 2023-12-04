resource "azurerm_resource_group" "resource_grouptg" {
  name     = local.resource_group_name
  location = local.resource_group_location
}