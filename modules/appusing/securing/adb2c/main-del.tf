// Resource
resource "azurerm_aadb2c_directory" "example" {
  country_code            = "US"
  data_residency_location = "United States"
  display_name            = "example-b2c-tenant"
  domain_name             = "exampleb2ctenant.onmicrosoft.com"
  resource_group_name     = "Assetronai-dev-100-rg-100"
  sku_name                = "PremiumP1"
}