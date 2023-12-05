# resource "azurerm_container_registry" "azurerm_container_registrytg" {
#   name                = local.azacr_name
#   resource_group_name = "${var.resource_group_name}"
#   location            = "${var.resource_group_location}"
#   sku                 = "${var.azacr_sku}"
#   admin_enabled       = "${var.azacr_admin_enabled}"
# }

# resource "azurerm_container_registry_webhook" "azurerm_container_registry_webhooktg" {
#   name                = local.azacrwh_name
#   resource_group_name = "${var.resource_group_name}"
#   registry_name       = azurerm_container_registry.azurerm_container_registrytg.name
#   location            = "${var.resource_group_location}"

#   service_uri = "${var.azacrwh_service_uri}"
#   status      = "${var.azacrwh_status}"
#   scope       = "${var.azacrwh_scope}"
#   actions     = ["${var.azacrwh_actions}"]
#   custom_headers = {
#     "Content-Type" = "${var.azacrwh_custom_headers_content_type}"
#   }
# }