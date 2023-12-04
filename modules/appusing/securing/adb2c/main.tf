resource "azurerm_aadb2c_directory" "azurerm_aadb2c_directorytg" {
  country_code            = "${module.resource_grouptg.resource_group_country_code}"
  data_residency_location = "${module.resourcing_resourcegroup.resource_group_location}"
  display_name            = local.display_name
  domain_name             = local.domain_name
  resource_group_name     = "${module.resourcing_resourcegroup.resource_group_name}"
  sku_name                = "${var.sku_name}"
}