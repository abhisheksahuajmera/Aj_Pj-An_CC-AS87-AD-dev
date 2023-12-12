resource "azurerm_azuread_b2c_tenant" "b2c_tenants" {
  count                   = length(var.resource_group_backup_multireg_locations)
  country_code            = "${var.resource_group_backup_multireg_locations_country_code[count.index]}"
  data_residency_location = "${var.resource_group_backup_multireg_locations_data_residency_location[count.index]}"
  display_name            = local.display_name
  domain_name             = local.domain_name
  resource_group_name     = "${var.prefix}${replace(var.resource_group_backup_multireg_locations[count.index], " ", "")}"
  sku_name                = local.sku_name 
}