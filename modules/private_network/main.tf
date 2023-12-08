resource "azurerm_virtual_network" "rg103vn100tg" {
  name                = local.name
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  address_space       = "${var.address_space}"
} 