resource "azurerm_virtual_network" "azurerm_virtual_networktg_spoke_dev" {
  name                = local.name
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  address_space       = "${var.address_space}"
} 