// Resource
resource "azurerm_aadb2c_directory" "example2" {
  country_code            = "US"
  data_residency_location = "${modules.resourcing.resource_group_location}" //"east us" 
  display_name            = "example-b2c-tenant"
  domain_name             = "exampleb2ctenant.onmicrosoft.com"
  resource_group_name     = "Assetronai-dev-100-rg-100"
  sku_name                = "PremiumP1"
}