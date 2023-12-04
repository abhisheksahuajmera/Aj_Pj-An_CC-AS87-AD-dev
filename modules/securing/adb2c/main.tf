// Resource
# resource "azurerm_aadb2c_directory" "example2" {
#   country_code            = "US"
#   data_residency_location = "${modules.resourcing_rg.resource_group_location}" //"east us" 
#   display_name            = "example-b2c-tenant"
#   domain_name             = "exampleb2ctenant.onmicrosoft.com"
#   resource_group_name     = "Assetronai-dev-100-rg-100"
#   sku_name                = "PremiumP1"
# }

resource "azurerm_aadb2c_directory" "azurerm_aadb2c_directorytg" {
  country_code = "${modules.resourcing_rg.resource_group_country_code}"
  data_residency_location = "${modules.resourcing_rg.resource_group_location}"
  display_name            = local.display_name
  domain_name             = local.domain_name
  resource_group_name     = "${modules.resourcing_rg.resource_group_name}"
  sku_name                = local.sku_name
}