# resource "azurerm_app_service_plan" "azurerm_app_service_plantg" {
#   name                = "azure-functions-test-service-plan"
#   location            = "${module.resourcing_rg.resource_group_location}"
#   resource_group_name = "${module.resourcing_rg.resource_group_name}"

#   sku {
#     tier = "${var.sku_tier}"
#     size = "${var.sku_size}"
#   }
# }