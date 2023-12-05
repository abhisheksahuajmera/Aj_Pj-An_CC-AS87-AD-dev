# data "azurerm_client_config" "azurerm_client_configtg" {

# }

# resource "azurerm_key_vault" "example" {
#   name                = local.name
#   resource_group_name = "${var.resource_group_name}"
#   location            = "${var.resource_group_location}"

#   enabled_for_disk_encryption = "${var.enabled_for_disk_encryption}"
#   tenant_id                   = data.azurerm_client_config.azurerm_client_configtg.tenant_id
#   soft_delete_retention_days  = "${var.soft_delete_retention_days}"
#   purge_protection_enabled    = "${var.purge_protection_enabled}"

#   sku_name = "${var.soft_delete_retention_days}"

#   access_policy {
#     tenant_id = data.azurerm_client_config.azurerm_client_configtg.tenant_id
#     object_id = data.azurerm_client_config.azurerm_client_configtg.object_id

#     key_permissions = [
#       "${var.access_policy_key_permissions}"
#     ]

#     secret_permissions = [
#       "${var.access_policy_secret_permissions}",
#     ]

#     storage_permissions = [
#       "${var.access_policy_storage_permissions}",
#     ]
#   }
# }