resource "azurerm_network_watcher" "azurerm_network_watchertg_hub" {
  name = local.name
  location = "${var.location}"
  resource_group_name = "${var.resource_group_name}"

  tags = {
    "Critical"    = "${var.tags_Critical}"
    "Solution"    = "${var.tags_Solution}"
    "Costcenter"  = "${var.tags_Costcenter}"
    "Location"    = "${var.tags_Location}"
  }
}