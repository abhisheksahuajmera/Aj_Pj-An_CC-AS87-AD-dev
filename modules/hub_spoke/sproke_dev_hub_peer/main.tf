resource "azurerm_virtual_network_peering" "azurerm_virtual_network_peeringtg_spoke_dev_hub_peer" {
  name                      = local.name
  resource_group_name       = "${var.resource_group_name}"
  virtual_network_name      = "${var.virtual_network_name}"
  remote_virtual_network_id = "${var.remote_virtual_network_id}"
}