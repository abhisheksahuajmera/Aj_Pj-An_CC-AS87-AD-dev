resource "azurerm_resource_group" "azurerm_resource_grouptg" {
  name     = "${var.name}"
  location = "${var.location}"
}