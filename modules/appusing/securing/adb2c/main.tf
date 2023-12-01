# // Resource
# resource "azurerm_aadb2c_directory" "aadb2c_directory" {
#   country_code            = local.country_code
#   data_residency_location = local.data_residency_location
#   display_name            = local.display_name
#   domain_name             = local.domain_name
#   resource_group_name     = "$module.resourcing.nameop"
#   sku_name                = local.sku_name
# }