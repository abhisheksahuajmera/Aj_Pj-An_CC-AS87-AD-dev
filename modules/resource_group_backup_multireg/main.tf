resource "azurerm_resource_group" "azurerm_resource_grouptg" {
  count    = length(var.resource_group_backup_multireg_locations)
  name    = "${var.resource_group_name_multireg}-${replace(var.resource_group_backup_multireg_locations[count.index], " ", "")}"
  location = "${var.resource_group_backup_multireg_locations[count.index]}"
}

