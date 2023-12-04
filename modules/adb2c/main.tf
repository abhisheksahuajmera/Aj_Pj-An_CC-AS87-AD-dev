resource "azurerm_aadb2c_directory" "example" {
  country_code            = "US"
  data_residency_location = "United States"
  display_name            = local.display_name
  domain_name             = local.domain_name
  resource_group_name     = "${var.resource_group_name}"
  sku_name                = local.sku_name 
}